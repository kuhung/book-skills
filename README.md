# Weread-Book-Skills: Don't Just Read. Execute.

> Compile your **WeRead (微信读书)** highlights into executable **AI Agent Skills** (`SKILL.md`) — mount them once and run across **Claude Code, Cursor, Codex, and Gemini CLI**. A second brain that doesn't just store knowledge, it runs it.

[中文版](#中文版-拒绝做数字仓鼠把你的微信读书笔记变成可执行的-ai-代码)

## The Problem: "Digital Hamsters"
You’ve read hundreds of books. Your **WeRead (微信读书)** library is full of highlights and margin notes. Yet, when you face a high-stakes negotiation or write a critical email, your mind goes blank. 

If your reading notes just sit in a database, they are dead. You are merely hoarding knowledge.

## The Solution: Books as Code
What if books could be run, not just read?

Book-Skills is the environment where we compile your **WeRead (微信读书)** highlights and personal notes into executable **AI Agent Skills** — a universal `SKILL.md` that runs across Claude Code, Cursor, Codex, and Gemini CLI. When you face a challenge, you don't search your notes—you mount the skill.

We are injecting top-tier human strategy directly into your AI workflow.

### Active Skills (The Arsenal)
- **The Art of Persuasion (Pitch Anything)**
  - Stop sounding needy. Start controlling the frame.
  - Note: [notes/说服的艺术_笔记.md](notes/说服的艺术_笔记.md)
  - Skill: [skills/persuasion-pitch/SKILL.md](skills/persuasion-pitch/SKILL.md)
- **Running Programmer (Hello Startup)**
  - Stop over-designing. Start evolving your product, tech, and team.
  - Note: [notes/奔跑吧程序员_笔记.md](notes/奔跑吧程序员_笔记.md)
  - Skill: [skills/running-programmer/SKILL.md](skills/running-programmer/SKILL.md)
- **Momentum Strategy (Trading Evolved)**
  - Stop guessing. Start building systematic, backtested trading models.
  - Note: [notes/动量策略_笔记.md](notes/动量策略_笔记.md)
  - Skill: [skills/momentum-strategy/SKILL.md](skills/momentum-strategy/SKILL.md)
- **Build (Tony Fadell)**
  - Stop polishing ideas in your head. Start making the intangible tangible.
  - Note: [notes/创造_笔记.md](notes/创造_笔记.md)
  - Skill: [skills/product-creation/SKILL.md](skills/product-creation/SKILL.md)
- **Agentic Design Patterns (Antonio Gulli)**
  - Stop asking if agents can. Start asking what each pattern costs.
  - Note: [notes/智能体设计模式_笔记.md](notes/智能体设计模式_笔记.md)
  - Skill: [skills/agent-design-patterns/SKILL.md](skills/agent-design-patterns/SKILL.md)
- **Solo (单干)**
  - Stop selling knowledge. Start selling outcomes with leverage.
  - Note: [notes/单干_笔记.md](notes/单干_笔记.md)
  - Skill: [skills/solo-operator/SKILL.md](skills/solo-operator/SKILL.md)
- **Coaching for Performance (高绩效教练)**
  - Stop trading advice for responsibility. Start asking questions that build awareness.
  - Note: [notes/高绩效教练_笔记.md](notes/高绩效教练_笔记.md)
  - Skill: [skills/coaching-grow/SKILL.md](skills/coaching-grow/SKILL.md)

### How to Add a New Book

Mount the workflow skill and tell your AI which book to process:

```
@skills/book-to-skill/SKILL.md 帮我把[书名]的微信读书笔记转化成技能
```

The pipeline will: archive raw highlights -> synthesize structured notes -> extract an executable skill -> update this README. See [skills/book-to-skill/SKILL.md](skills/book-to-skill/SKILL.md) for the full SOP.

### Compile Once, Run Anywhere

`skills/` is the single source of truth. One command mounts every skill onto all your AI agents:

```bash
./install.sh
```

| Agent | Mount point | Mechanism |
|-------|-------------|-----------|
| Codex / Cursor / Gemini CLI (global) | `~/.agents/skills/` | Symlinks to the cross-vendor standard dir; all three read native SKILL.md |
| Claude Code (global) | `~/.claude/skills/` | Symlinks (Cursor also reads this path for compatibility) |
| All four (this repo) | `.agents/skills`, `.claude/skills` | Symlinks to `skills/`, include the pipeline skill |
| Any AGENTS.md reader | `AGENTS.md` | Generated skill index with routing instructions |

Never copy skill folders by hand—copies drift. The generated index is marked "do not edit by hand"; always edit `skills/` and re-run the script.

The feedback loop rides the same symlinks: when a skill gets corrected in real-world use, tell your agent—Claude Code, Cursor, or Codex, from any project—to append the lesson to that skill's "Field Notes" section. The edit lands directly in this repo's working tree; come back and commit it.

### Project Structure

```
book-skills/
  private/        # Raw highlights archive (gitignored, never committed)
  notes/          # Structured reading notes (public)
  skills/         # Executable AI Agent Skills (public, single source of truth)
    book-to-skill/  # The pipeline skill itself
  install.sh      # Distribution layer: symlinks skills onto Claude Code / Cursor / Codex / Gemini
  AGENTS.md       # Generated skill index (cross-agent context file)
  README.md       # This file (skill registry)
```

## The Prize Frame
This isn't just another markdown knowledge base. It's an executable extension of your brain. We are building this for action-takers who want to test these models in real-world combat. If you want to stop hoarding knowledge and start deploying it, welcome. 

---

# 中文版: 拒绝做数字仓鼠，把你的微信读书笔记变成可执行的 AI 代码

> 把你的**微信读书**划线与想法，编译成可执行的 **AI Agent Skill**（`SKILL.md`）——一次挂载，即可在 **Claude Code、Cursor、Codex、Gemini CLI** 四家 AI 中运行。这是一个不只是存知识、而是让知识"跑起来"的第二大脑。

## 痛点：笔记的困境
你买了几百本书，在**微信读书**里划了无数金句、写了无数想法。但在真正高压的会议上、在写关键邮件的那一秒，大脑依然一片空白。

如果读书笔记不能在实战中被调用，那它就是死的，你只是在制造“我学到了”的虚假快感。

## 破局：让知识“运行”起来
既然代码可以运行，为什么读书笔记不能被“运行”？

Book-Skills 的理念是：把你在**微信读书**里的划线与想法，直接封装编译成 AI Agent 的通用 “Skill”（`SKILL.md` 技能指令），一份技能通吃 Claude Code、Cursor、Codex、Gemini CLI。当你面临谈判或决策时，你不是去翻找笔记，而是直接挂载这个技能。AI 会立刻以这套认知框架来审查你的输出、指导你的对话。

We are not building a knowledge base, we are writing "drivers" for your external brain.

### 已经挂载的技能外挂
- **《说服的艺术》(Pitch Anything)**
  - 消除饥渴感，掌控权力框架。让每一次沟通直击对方决策的“鳄鱼脑”。
  - 理论笔记: [notes/说服的艺术_笔记.md](notes/说服的艺术_笔记.md)
  - 可执行技能: [skills/persuasion-pitch/SKILL.md](skills/persuasion-pitch/SKILL.md)
- **《奔跑吧，程序员》(Hello Startup)**
  - 拒绝过度设计，让产品、技术和团队在进化中走向成功。
  - 理论笔记: [notes/奔跑吧程序员_笔记.md](notes/奔跑吧程序员_笔记.md)
  - 可执行技能: [skills/running-programmer/SKILL.md](skills/running-programmer/SKILL.md)
- **《动量策略》(Trading Evolved)**
  - 拒绝拍脑袋交易，用系统回测和风险量化构建可靠的量化策略。
  - 理论笔记: [notes/动量策略_笔记.md](notes/动量策略_笔记.md)
  - 可执行技能: [skills/momentum-strategy/SKILL.md](skills/momentum-strategy/SKILL.md)
- **《创造》(Build)**
  - 拒绝停留在脑海里打磨想法，用新闻稿和触点图把无形变有形。
  - 理论笔记: [notes/创造_笔记.md](notes/创造_笔记.md)
  - 可执行技能: [skills/product-creation/SKILL.md](skills/product-creation/SKILL.md)
- **《智能体设计模式》(Agentic Design Patterns)**
  - 拒绝为用 Agent 而用 Agent，先看每个模式的代价再选型。
  - 理论笔记: [notes/智能体设计模式_笔记.md](notes/智能体设计模式_笔记.md)
  - 可执行技能: [skills/agent-design-patterns/SKILL.md](skills/agent-design-patterns/SKILL.md)
- **《单干》(Solo)**
  - 拒绝直接出售知识，用杠杆撬动稀缺、瞄准效果定价。
  - 理论笔记: [notes/单干_笔记.md](notes/单干_笔记.md)
  - 可执行技能: [skills/solo-operator/SKILL.md](skills/solo-operator/SKILL.md)
- **《高绩效教练》(Coaching for Performance)**
  - 拒绝用建议交换责任，用 GROW 提问创建觉察与担当。
  - 理论笔记: [notes/高绩效教练_笔记.md](notes/高绩效教练_笔记.md)
  - 可执行技能: [skills/coaching-grow/SKILL.md](skills/coaching-grow/SKILL.md)

### 如何添加一本新书

挂载工作流技能，告诉 AI 要处理哪本书：

```
@skills/book-to-skill/SKILL.md 帮我把[书名]的微信读书笔记转化成技能
```

完整流程：存档原始划线 -> 结构化重组笔记 -> 提取可执行技能 -> 更新本 README。详见 [skills/book-to-skill/SKILL.md](skills/book-to-skill/SKILL.md)。

### 一次编译，处处运行

`skills/` 目录是唯一事实源。一条命令，把所有技能挂载到你的全部 AI Agent：

```bash
./install.sh
```

| Agent | 挂载点 | 机制 |
|-------|--------|------|
| Codex / Cursor / Gemini CLI（全局） | `~/.agents/skills/` | 软链接到跨厂商标准目录，三者均原生读取 SKILL.md |
| Claude Code（全局） | `~/.claude/skills/` | 软链接（Cursor 兼容读取此路径，双保险） |
| 四家通用（本仓库） | `.agents/skills`、`.claude/skills` | 指向 `skills/` 的软链接，含流水线技能 |
| 任何读 AGENTS.md 的工具 | `AGENTS.md` | 生成的技能索引与路由指令 |

严禁向 Agent 技能目录手工拷贝文件夹——拷贝必漂移。生成的索引文件标注"勿手工编辑"——永远只改 `skills/`，然后重跑脚本。

反馈回路走的是同一条软链接：技能在实战中被修正时，无论你在 Claude Code、Cursor 还是 Codex 里、身处哪个项目，让 Agent 把经验追加到该技能的 "Field Notes (实战修正)" 章节，改动会直接写回本仓库的工作区，回来提交即可。

### 项目结构

```
book-skills/
  private/        # 原始划线存档（已 gitignore，不会提交到公开仓库）
  notes/          # 结构化读书笔记（公开）
  skills/         # 可执行 AI Agent 技能（公开，唯一事实源）
    book-to-skill/  # 转化流程本身的 SOP
  install.sh      # 分发层：把技能软链接到 Claude Code / Cursor / Codex / Gemini
  AGENTS.md       # 生成的技能索引（跨 Agent 上下文文件）
  README.md       # 本文件（技能注册表）
```

---

**Keywords / 关键词**: 微信读书 (WeRead) · 微信读书笔记导出 · 读书笔记 · Agent Skills · SKILL.md · Claude Code · Cursor · Codex · Gemini CLI · 跨平台 AI 技能 · 知识管理 · 第二大脑 (Second Brain) · AI Agent · 划线与想法
