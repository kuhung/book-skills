#!/bin/bash
# install.sh -- 分发层：把 skills/ 下的技能安装到各 AI Agent 的挂载点。
#
# 唯一事实源是 skills/*/SKILL.md。本脚本生成/链接的所有产物均可安全重跑（幂等）：
#   1. ~/.claude/skills/<name>        Claude Code 全局（软链接，消费型技能）
#   2. .claude/skills -> ../skills    Claude Code 项目级（含流水线技能）
#   3. .cursor/rules/<name>.mdc       Cursor 项目级 rules（生成文件）
#   4. AGENTS.md / GEMINI.md          Codex / Gemini CLI 技能索引（生成文件）
#
# 用法: ./install.sh

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
CLAUDE_GLOBAL_DIR="$HOME/.claude/skills"
CURSOR_RULES_DIR="$REPO_DIR/.cursor/rules"

# 流水线技能：依赖本仓库相对路径（private/、notes/），只做项目级安装，不进全局
PIPELINE_SKILLS="book-to-skill"

is_pipeline_skill() {
  local name="$1"
  for p in $PIPELINE_SKILLS; do
    [ "$name" = "$p" ] && return 0
  done
  return 1
}

# 从 SKILL.md 的 YAML frontmatter 中提取单行字段值
frontmatter_field() {
  local file="$1" field="$2"
  awk -v field="$field" '
    NR==1 && $0=="---" { in_fm=1; next }
    in_fm && $0=="---" { exit }
    in_fm && index($0, field ":")==1 {
      sub("^" field ":[[:space:]]*", ""); print; exit
    }
  ' "$file"
}

# 输出 SKILL.md 去掉 frontmatter 之后的正文
skill_body() {
  awk 'NR==1 && $0=="---" { in_fm=1; next }
       in_fm && $0=="---" { in_fm=0; body=1; next }
       body' "$1"
}

errors=0
fail() { echo "  [FAIL] $1"; errors=$((errors + 1)); }
ok()   { echo "  [ok] $1"; }

echo "== 1/4 Claude Code 全局安装 -> $CLAUDE_GLOBAL_DIR"
mkdir -p "$CLAUDE_GLOBAL_DIR"
for dir in "$SKILLS_DIR"/*/; do
  name="$(basename "$dir")"
  if is_pipeline_skill "$name"; then
    echo "  [skip] $name（流水线技能，仅项目级）"
    continue
  fi
  ln -sfn "${dir%/}" "$CLAUDE_GLOBAL_DIR/$name"
  if [ -f "$CLAUDE_GLOBAL_DIR/$name/SKILL.md" ]; then
    ok "$name"
  else
    fail "$name 软链接无效"
  fi
done

echo "== 2/4 Claude Code 项目级安装 -> .claude/skills"
mkdir -p "$REPO_DIR/.claude"
ln -sfn "../skills" "$REPO_DIR/.claude/skills"
if [ -f "$REPO_DIR/.claude/skills/book-to-skill/SKILL.md" ]; then
  ok ".claude/skills -> ../skills"
else
  fail ".claude/skills 软链接无效"
fi

echo "== 3/4 Cursor rules -> .cursor/rules/"
mkdir -p "$CURSOR_RULES_DIR"
for dir in "$SKILLS_DIR"/*/; do
  name="$(basename "$dir")"
  skill_md="$dir/SKILL.md"
  desc="$(frontmatter_field "$skill_md" "description")"
  mdc="$CURSOR_RULES_DIR/$name.mdc"
  {
    echo "---"
    echo "description: $desc"
    echo "alwaysApply: false"
    echo "---"
    echo
    echo "<!-- 由 install.sh 生成，唯一事实源是 skills/$name/SKILL.md，勿手工编辑 -->"
    skill_body "$skill_md"
  } > "$mdc"
  if [ -s "$mdc" ]; then ok "$name.mdc"; else fail "$name.mdc 生成失败"; fi
done

echo "== 4/4 技能索引 -> AGENTS.md / GEMINI.md"
generate_index() {
  cat <<'HEADER'
<!-- 由 install.sh 生成，唯一事实源是 skills/*/SKILL.md，勿手工编辑 -->

# Agent Skills Index

本仓库将读书笔记编译为可执行的 AI Agent 技能。当用户的任务匹配下列任一技能的
触发场景时，读取对应的 SKILL.md 文件，并严格遵循其中的角色设定与操作框架。

## 消费型技能（书籍方法论）
HEADER
  for dir in "$SKILLS_DIR"/*/; do
    name="$(basename "$dir")"
    is_pipeline_skill "$name" && continue
    desc="$(frontmatter_field "$dir/SKILL.md" "description")"
    echo
    echo "- **$name** — \`skills/$name/SKILL.md\`"
    echo "  - $desc"
  done
  cat <<'PIPELINE'

## 流水线技能（仅限本仓库内使用）
PIPELINE
  for p in $PIPELINE_SKILLS; do
    desc="$(frontmatter_field "$SKILLS_DIR/$p/SKILL.md" "description")"
    echo
    echo "- **$p** — \`skills/$p/SKILL.md\`"
    echo "  - $desc"
  done
  cat <<'FOOTER'

## 使用约定

1. 技能触发后，先完整读取对应 SKILL.md，再开始回应用户。
2. 需要更深入的论据时，读取技能中引用的 notes/ 笔记文件（渐进式披露）。
3. private/ 目录为用户私有存档，除 book-to-skill 流水线要求外不得读取或外传。
FOOTER
}
generate_index > "$REPO_DIR/AGENTS.md"
cp "$REPO_DIR/AGENTS.md" "$REPO_DIR/GEMINI.md"
for f in AGENTS.md GEMINI.md; do
  if [ -s "$REPO_DIR/$f" ]; then ok "$f"; else fail "$f 生成失败"; fi
done

echo
if [ "$errors" -gt 0 ]; then
  echo "安装未通过自校验：$errors 处失败"
  exit 1
fi
echo "全部产物自校验通过。技能已挂载到 Claude Code（全局+项目）、Cursor、Codex/Gemini（索引）。"
