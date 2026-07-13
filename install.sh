#!/bin/bash
# install.sh -- 分发层：把 skills/ 下的技能安装到各 AI Agent 的挂载点。
#
# 唯一事实源是 skills/*/SKILL.md。本脚本生成/链接的所有产物均可安全重跑（幂等）：
#   1. ~/.agents/skills/<name>        跨厂商标准目录（软链接，Codex 与 Cursor 均读取）
#      ~/.claude/skills/<name>        Claude Code 全局（软链接；Cursor 兼容读取）
#   2. .claude/skills -> ../skills    项目级（含流水线技能，三家均可发现）
#   3. AGENTS.md / GEMINI.md          Gemini CLI 等的技能索引（生成文件）
#
# Cursor 2.4+ 与 Codex 原生支持 SKILL.md 并跟随软链接，无需格式转换。
#
# 用法: ./install.sh

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
GLOBAL_DIRS="$HOME/.agents/skills $HOME/.claude/skills"

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

errors=0
fail() { echo "  [FAIL] $1"; errors=$((errors + 1)); }
ok()   { echo "  [ok] $1"; }

echo "== 1/3 全局安装（Claude Code / Codex / Cursor）"
for global_dir in $GLOBAL_DIRS; do
  echo "  -> $global_dir"
  mkdir -p "$global_dir"
  for dir in "$SKILLS_DIR"/*/; do
    name="$(basename "$dir")"
    if is_pipeline_skill "$name"; then
      continue
    fi
    ln -sfn "${dir%/}" "$global_dir/$name"
    if [ -f "$global_dir/$name/SKILL.md" ]; then
      ok "$name"
    else
      fail "$name 软链接无效"
    fi
  done
done

echo "== 2/3 项目级安装 -> .claude/skills"
mkdir -p "$REPO_DIR/.claude"
ln -sfn "../skills" "$REPO_DIR/.claude/skills"
if [ -f "$REPO_DIR/.claude/skills/book-to-skill/SKILL.md" ]; then
  ok ".claude/skills -> ../skills"
else
  fail ".claude/skills 软链接无效"
fi

echo "== 3/3 技能索引 -> AGENTS.md / GEMINI.md"
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
echo "全部产物自校验通过。技能已软链接挂载到 Claude Code、Cursor、Codex（原生 SKILL.md），并生成 Gemini 索引。"
