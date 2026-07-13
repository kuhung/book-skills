<!-- 由 install.sh 生成，唯一事实源是 skills/*/SKILL.md，勿手工编辑 -->

# Agent Skills Index

本仓库将读书笔记编译为可执行的 AI Agent 技能。当用户的任务匹配下列任一技能的
触发场景时，读取对应的 SKILL.md 文件，并严格遵循其中的角色设定与操作框架。

## 消费型技能（书籍方法论）

- **momentum-strategy** — `skills/momentum-strategy/SKILL.md`
  - 运用《动量策略》的核心方法论，指导量化交易模型的设计、回测和风险控制。适用于用户想要构建系统交易策略、评估回测结果、或进行投资组合配置时使用。

- **persuasion-pitch** — `skills/persuasion-pitch/SKILL.md`
  - Assists users in crafting high-impact pitches, presentations, and sales communications using the "STRONG" method and Frame Control. Use when users want to pitch an idea to investors, sell a product to a client, or need to overcome objections and command attention in business meetings.

- **running-programmer** — `skills/running-programmer/SKILL.md`
  - 运用《奔跑吧，程序员》的核心理念，指导产品、技术与团队的进化式增长。

## 流水线技能（仅限本仓库内使用）

- **book-to-skill** — `skills/book-to-skill/SKILL.md`
  - 将零散的读书笔记自动化处理为"私有存档 -> 结构化公开笔记 -> 实操 AI 技能 -> README 映射"的标准工作流。

## 使用约定

1. 技能触发后，先完整读取对应 SKILL.md，再开始回应用户。
2. 需要更深入的论据时，读取技能中引用的 notes/ 笔记文件（渐进式披露）。
3. private/ 目录为用户私有存档，除 book-to-skill 流水线要求外不得读取或外传。
