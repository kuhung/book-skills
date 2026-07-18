# book-skills

> _「读过的书不该只躺着。它应该在你需要的时候自己跑起来。」_

License: MIT | 跨 Agent 通用 Skill

**把你的微信读书划线，编译成 AI Agent 可执行的工作方法。**

微信读书里有你划过的几百条金句、写过的无数想法。但在真正要用的时候——高压会议、关键邮件、辅导下属——大脑一片空白。明明读过相关的书，就是调不出来。

本仓库做的事：把微信读书里的划线与想法，编译成 `SKILL.md` 技能指令，一次挂载，Claude Code / Cursor / Codex / Gemini CLI 四家通用。当你的对话匹配某个技能的触发条件时，AI 自动加载那本书的方法论来指导你。

---

## 看效果

同一个问题：「帮我准备明天和下属的 1:1，他最近状态不好。」

**没挂载技能时：** AI 给你一个通用模板——开场寒暄、了解进展、给建议、结束。正确但无用。

**挂载 coaching-grow 技能后（来自《高绩效教练》）：**

```
AI 给出对话脚本:
- 开场设定意图: "这次想聊聊你最近的状态，你希望聊完有什么收获？"
- 现状用描述性问题: "最近哪些事消耗你最多？到目前为止你试过什么？"
- 注意肢体语言与措辞的落差
- 不急于给方案，先问"你觉得有哪些选择？"
- 收尾落到他自己选择的一小步行动
```

差距：**没技能时给的是模板，有技能时给的是基于《高绩效教练》GROW 模型的专业教练式对话策略。** AI 知道"建议交换责任"所以不急着给答案，知道"为什么"改为"是什么原因"更安全，知道先让对方自评再补充观察。

---

## 已挂载的技能

26 个技能，为作者的阅读记录提取，按**使用场景**分六类。书名可点进对应的 `SKILL.md`。

### 🧭 带团队 · 管理下属

| 书名 | 解决什么问题 | 触发话术 |
|------|-------------|---------|
| [《高绩效教练》](skills/coaching-grow/SKILL.md) | 用 GROW 提问辅导他人 | "帮我准备和下属的 1:1" |
| [《关键跨越（新手篇）》](skills/first-time-manager/SKILL.md) | 从业务高手转型管理者 | "该自己做还是交给下属" |
| [《关键冲突》](skills/crucial-accountability/SKILL.md) | 问责对话与承诺追踪 | "下属总是说到做不到怎么办" |
| [《大厂人才》](skills/talent-assessment/SKILL.md) | 人才盘点与大厂工具祛魅 | "我们要不要上 OKR" |
| [《效率脑科学》](skills/brain-efficiency/SKILL.md) | SCARF 模型与前额皮质工作法 | "团队会议总是低效怎么改" |

### 🏛 组织 · 战略

| 书名 | 解决什么问题 | 触发话术 |
|------|-------------|---------|
| [《高效能团队模式》](skills/team-topologies/SKILL.md) | 逆康威定律设计工程组织 | "我们团队该怎么拆" |
| [《凤凰项目》+《独角兽项目》](skills/devops-three-ways/SKILL.md) | DevOps 三步工作法与五大理念 | "我们的交付流程哪里有瓶颈" |
| [《奈飞文化手册》+《不拘一格》](skills/netflix-culture/SKILL.md) | 自由与责任的高密度人才文化 | "我们要不要学奈飞去管控" |
| [《从优秀到卓越》](skills/good-to-great/SKILL.md) | 飞轮模型与刺猬理念诊断企业跃迁 | "我们公司怎么从优秀到卓越" |
| [《战略历程》](skills/strategy-safari/SKILL.md) | 十大学派透镜审视战略 | "帮我评审这份战略规划" |

### 💬 销售 · 说服 · 激励

| 书名 | 解决什么问题 | 触发话术 |
|------|-------------|---------|
| [《说服的艺术》](skills/persuasion-pitch/SKILL.md) | 谈判/路演/销售中掌控框架 | "帮我准备 pitch" |
| [《销售巨人》](skills/spin-selling/SKILL.md) | SPIN 提问推进大订单销售 | "帮我准备大客户拜访" |
| [《混合信号》](skills/incentive-design/SKILL.md) | 激励机制与信号设计 | "帮我设计考核方案" |

### 🚀 产品 · 增长 · 技术

| 书名 | 解决什么问题 | 触发话术 |
|------|-------------|---------|
| [《创造》](skills/product-creation/SKILL.md) | 产品从 0 到 1 的关键判断 | "这个想法值不值得做" |
| [《硅谷增长黑客实战笔记》](skills/growth-hacking/SKILL.md) | 北极星指标与增长实验 | "帮我定个北极星指标" |
| [《奔跑吧，程序员》](skills/running-programmer/SKILL.md) | 创业期产品、技术与团队决策 | "这个技术选型该怎么做" |
| [《智能体设计模式》](skills/agent-design-patterns/SKILL.md) | Agent 架构选型 | "该用什么编排模式" |
| [《用数据讲故事》](skills/data-storytelling/SKILL.md) | 数据可视化与商业叙事 | "图表做了但老板看不懂" |
| [《声纹技术》](skills/voiceprint-tech/SKILL.md) | 声纹识别系统设计与工程落地 | "声纹验证系统该怎么选型" |

### 🎯 个人成长 · 效能

| 书名 | 解决什么问题 | 触发话术 |
|------|-------------|---------|
| [《深度工作》](skills/deep-work/SKILL.md) | 注意力管理与深度工作系统 | "我总是被打断没法专注" |
| [《掌控习惯》+《福格行为模型》](skills/behavior-design/SKILL.md) | 行为设计与习惯养成 | "我想养成一个习惯" |
| [《单干》](skills/solo-operator/SKILL.md) | 一人公司商业决策 | "专业能力怎么产品化" |
| [《如何避免孤独终老》+《寻找你的维他命人》](skills/relationship-design/SKILL.md) | 关系决策框架与维他命人识别 | "为什么我总遇到同类型的人" |

### 📈 投资 · 交易

| 书名 | 解决什么问题 | 触发话术 |
|------|-------------|---------|
| [《动量策略》](skills/momentum-strategy/SKILL.md) | 量化交易模型设计与回测 | "设计一个动量因子方案" |
| [《麦克米伦谈期权》](skills/options-strategy/SKILL.md) | 期权策略矩阵与波动率交易 | "该用什么期权策略保护持仓" |
| [《投资组合再平衡》+《主动投资组合管理》](skills/portfolio-management/SKILL.md) | 再平衡Alpha分解与信息率评估 | "这个组合该怎么再平衡" |

每个技能都有完整的理论笔记（`notes/`）和可执行指令（`skills/`），书名即可点进查看。

> **为什么是这 26 本？** 微信读书里有划线的书 130+ 本，但只有"含可复用、可执行方法论"的书才编译得成技能——GROW、SPIN、飞轮、DevOps 三步法这类"照着做"的框架。叙事/历史/传记/科普/备考类划线再精彩，也压不成一套动作，故不收。选书卡的是**方法论密度，不是划线数量**。

---

## 装上就能用

**前置依赖**：先装官方 weread skill（[weread.qq.com/r/weread-skills](https://weread.qq.com/r/weread-skills)），按页面指引拿到 API Key。

然后 clone 本仓库，跑一条命令：

```bash
git clone https://github.com/kuhung/book-skills.git
cd book-skills
./install.sh
```

完成。26 个技能已软链接挂载到你的 Claude Code / Cursor / Codex / Gemini CLI。

**添加新书**——挂载流水线技能，告诉 AI 要处理哪本：

```
@skills/book-to-skill/SKILL.md 帮我把《书名》的微信读书笔记转化成技能
```

流水线自动跑完五步：存档原始划线 -> 结构化重组 -> 提取 Skill -> 更新 README -> 软链接分发。

---

## 五步流水线

```mermaid
flowchart LR
    A[私有存档] --> B[结构化重组]
    B --> C[提取 Skill]
    C --> D[README 映射]
    D --> E[多 Agent 分发]
```

| 步骤 | 做什么 | 产出 |
|------|--------|------|
| Step 1 | 微信读书原始划线 -> `private/`（gitignore 隔离） | 不可篡改的原始备份 |
| Step 2 | 个人划线 + 社区热门划线重组为逻辑主题 | `notes/书名_笔记.md` |
| Step 3 | 从笔记中提取可落地的方法论框架 | `skills/技能名/SKILL.md` |
| Step 4 | 更新 README 技能注册表 | README.md 新增条目 |
| Step 5 | `install.sh` 软链接到四家 Agent | 全局可用 |

核心设计：**残差思维**——社区热门划线是共识基线，你的个人划线是独特补充，两者合并才是"你对这本书的完整理解"。

详细 SOP 见 [skills/book-to-skill/SKILL.md](skills/book-to-skill/SKILL.md)。

---

## 一次编译，处处运行

`skills/` 目录是唯一事实源。`install.sh` 把每个技能软链接到四家 Agent 的标准读取路径：

| Agent | 挂载点 | 机制 |
|-------|--------|------|
| Codex / Cursor / Gemini CLI | `~/.agents/skills/` | 软链接，三者均原生读取 SKILL.md |
| Claude Code | `~/.claude/skills/` | 软链接（Cursor 兼容读取） |
| 本仓库项目级 | `.agents/skills`、`.claude/skills` | 指向 `skills/` |
| AGENTS.md | 根目录 | 生成的技能索引 |

严禁手工拷贝——拷贝必漂移。反馈回路也走软链接：技能在实战中被修正时，无论你身处哪个项目、用哪家 Agent，让它追加到 Field Notes 章节，改动直接落回本仓库。

---

## Fork 后快速开始

想用你自己的微信读书数据编译 AI 技能？

1. **Fork** 本仓库
2. **配置** weread skill 的 API Key
3. **挂载流水线**：`@skills/book-to-skill/SKILL.md 帮我把《书名》的微信读书笔记转化成技能`
4. **分发**：`./install.sh`
5. **日常使用**：正常对话，匹配时自动触发

格式模板在 `templates/`，现有的 27 个 notes 和 26 个 skills 是实际参照。从你最常用的一本书开始。

---

## 项目结构

```
book-skills/
  private/        # 原始划线存档（已 gitignore，绝不公开）
  notes/          # 结构化读书笔记（公开）
  skills/         # 可执行 AI Agent 技能（公开，唯一事实源）
    book-to-skill/  # 流水线 SOP 本身
  templates/      # 格式模板（Skill / 笔记 / 私有存档）
  install.sh      # 一键分发脚本
  AGENTS.md       # 生成的技能索引
  README.md       # 本文件
```

---

## 隐私

- `private/` 已 gitignore，原始划线绝不进公开仓库
- API Key 不入仓库
- `notes/` 是脱敏后的结构化重组，不是原书照搬

---

## License

MIT — 随便用。

---

**关键词**: 微信读书 · 微信读书笔记导出 · 读书笔记 · Agent Skills · SKILL.md · Claude Code · Cursor · Codex · Gemini CLI · 知识管理 · 第二大脑 · AI Agent · 划线与想法

*作者: kuhung | hi@kuhung.me*
