<!-- 由 install.sh 生成，唯一事实源是 skills/*/SKILL.md，勿手工编辑 -->

# Agent Skills Index

本仓库将读书笔记编译为可执行的 AI Agent 技能。当用户的任务匹配下列任一技能的
触发场景时，读取对应的 SKILL.md 文件，并严格遵循其中的角色设定与操作框架。

## 消费型技能（书籍方法论）

- **agent-design-patterns** — `skills/agent-design-patterns/SKILL.md`
  - 运用《智能体设计模式》(Antonio Gulli) 的 21 个模式,指导 AI Agent 系统的架构设计与选型。适用于用户在设计 Agent 工作流(选择链式/路由/并行/多Agent编排)、提升 Agent 输出质量与可靠性(反思/异常处理/Guardrails)、做 RAG 技术选型(混合检索/GraphRAG/Agentic RAG)、优化 Agent 成本与延迟(动态模型切换/回退)时使用。

- **coaching-grow** — `skills/coaching-grow/SKILL.md`
  - 运用《高绩效教练》(John Whitmore) 的 GROW 模型与教练式提问,帮助用户通过觉察与责任感释放他人潜能。适用于用户要准备 1:1 对话或辅导下属、想戒掉"直接给答案"改用提问启发、做绩效反馈或项目复盘、以及对自己的目标困境做自我教练时使用。

- **first-time-manager** — `skills/first-time-manager/SKILL.md`
  - 运用《关键跨越(新手篇)》的三大跨越框架(承担管理责任/推动执行/辅导他人),指导从业务高手到主管的转型。适用于用户刚晋升主管或即将带团队、纠结任务该自己做还是交给下属、要做向上汇报或与上级对焦优先级、以及辅导下属没起色想评估是否继续投入时使用。

- **momentum-strategy** — `skills/momentum-strategy/SKILL.md`
  - 运用《动量策略》的核心方法论，指导量化交易模型的设计、回测和风险控制。适用于用户想要构建系统交易策略、评估回测结果、或进行投资组合配置时使用。

- **persuasion-pitch** — `skills/persuasion-pitch/SKILL.md`
  - Assists users in crafting high-impact pitches, presentations, and sales communications using the "STRONG" method and Frame Control. Use when users want to pitch an idea to investors, sell a product to a client, or need to overcome objections and command attention in business meetings.

- **product-creation** — `skills/product-creation/SKILL.md`
  - 运用《创造》(Build, Tony Fadell) 的方法论,指导产品从 0 到 1 的关键决策与职业选择。适用于用户在评估新产品想法是否值得做、纠结数据驱动还是观点驱动决策、要把产品概念具象化(写新闻稿/画触点)、判断该加入哪家公司或何时辞职、以及从业务高手转型管理者遇到困惑时使用。

- **running-programmer** — `skills/running-programmer/SKILL.md`
  - 运用《奔跑吧，程序员》(Hello Startup) 的进化式增长理念，指导创业期的产品、技术与团队决策。适用于用户想验证新产品想法、做技术选型或架构设计、担心过度设计、组建创业团队或招聘把关、制定产品迭代节奏时使用。

- **solo-operator** — `skills/solo-operator/SKILL.md`
  - 运用《单干》(陈欢) 的 49 个关键动作方法论,指导一人公司与超级个体的商业决策。适用于用户想把专业能力变现(定价/产品化/知识付费)、设计个人品牌定位与内容策略、评估要不要辞职单干或开启副业、以及单干路上纠结方向选择(先做产品还是先做流量)时使用。

## 流水线技能（仅限本仓库内使用）

- **book-to-skill** — `skills/book-to-skill/SKILL.md`
  - 将零散的读书笔记自动化处理为"私有存档 -> 结构化公开笔记 -> 实操 AI 技能 -> README 映射"的标准工作流。

## 使用约定

1. 技能触发后，先完整读取对应 SKILL.md，再开始回应用户。
2. 需要更深入的论据时，读取技能中引用的 notes/ 笔记文件（渐进式披露）。
3. private/ 目录为用户私有存档，除 book-to-skill 流水线要求外不得读取或外传。
