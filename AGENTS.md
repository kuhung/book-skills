<!-- 由 install.sh 生成，唯一事实源是 skills/*/SKILL.md，勿手工编辑 -->

# Agent Skills Index

本仓库将读书笔记编译为可执行的 AI Agent 技能。当用户的任务匹配下列任一技能的
触发场景时，读取对应的 SKILL.md 文件，并严格遵循其中的角色设定与操作框架。

## 消费型技能（书籍方法论）

- **agent-design-patterns** — `skills/agent-design-patterns/SKILL.md`
  - 运用《智能体设计模式》(Antonio Gulli) 的 21 个模式,指导 AI Agent 系统的架构设计与选型。适用于用户在设计 Agent 工作流(选择链式/路由/并行/多Agent编排)、提升 Agent 输出质量与可靠性(反思/异常处理/Guardrails)、做 RAG 技术选型(混合检索/GraphRAG/Agentic RAG)、优化 Agent 成本与延迟(动态模型切换/回退)时使用。

- **behavior-design** — `skills/behavior-design/SKILL.md`
  - 融合《掌控习惯》(James Clear) 四大定律与《福格行为模型》(B.J. Fogg) B=MAP 的行为设计技能。适用于用户要养成新习惯或戒除坏习惯、诊断"计划总是坚持不下去"的问题、为产品或团队设计行为改变机制、以及把大目标拆解为可持续微行动时使用。

- **brain-efficiency** — `skills/brain-efficiency/SKILL.md`
  - 运用《效率脑科学》的舞台模型、情绪调节、SCARF 社交需求与洞察驱动改变框架,优化个人与团队的工作效率。适用于用户感到多任务过载或决策疲劳、需要设计低威胁反馈/协作对话、团队冲突或士气问题需从神经科学角度诊断、以及推动他人改变但直接给建议无效时使用。

- **coaching-grow** — `skills/coaching-grow/SKILL.md`
  - 运用《高绩效教练》(John Whitmore) 的 GROW 模型与教练式提问,帮助用户通过觉察与责任感释放他人潜能。适用于用户要准备 1:1 对话或辅导下属、想戒掉"直接给答案"改用提问启发、做绩效反馈或项目复盘、以及对自己的目标困境做自我教练时使用。

- **crucial-accountability** — `skills/crucial-accountability/SKILL.md`
  - 运用《关键冲突》(Crucial Conversations 系列) 的 CPR 思维法与安全问责框架,指导用户当他人违反承诺时开展有效面对。适用于用户要谈下属拖延/同事甩锅/老板反悔承诺、反复遇到同一问题却谈不拢、准备高难度问责对话脚本、以及设计承诺跟进机制时使用。

- **data-storytelling** — `skills/data-storytelling/SKILL.md`
  - 运用《用数据讲故事》(科尔·努斯鲍默·纳福利克) 的上下文分析、图表选型、去杂乱、前注意属性与叙事结构框架，指导数据可视化与商业叙事。适用于用户要用图表呈现数据分析结论、准备含数据的汇报 PPT、诊断"图表做了但老板看不懂"的问题、选择合适的图表类型、以及设计数据驱动的商业叙事时使用。

- **deep-work** — `skills/deep-work/SKILL.md`
  - 运用《深度工作》(Cal Newport) 的四准则框架,指导用户设计注意力管理与深度工作系统。适用于用户想提升专注产出、日程被浮浅事务淹没、设计个人深度工作习惯(哲学选型/时间块/固定日程)、评估是否该戒断某网络工具、以及诊断"忙一天却没什么成果"时使用。

- **devops-three-ways** — `skills/devops-three-ways/SKILL.md`
  - 运用《凤凰项目》DevOps 三步工作法与《独角兽项目》五大理念，诊断技术价值流瓶颈并设计流动、反馈与持续学习机制。适用于用户要优化部署流水线或降低变更失败率、诊断 WIP 过载与约束点、建立 blameless 复盘与心理安全文化、以及评估技术债务与架构局部性时使用。

- **first-time-manager** — `skills/first-time-manager/SKILL.md`
  - 运用《关键跨越(新手篇)》的三大跨越框架(承担管理责任/推动执行/辅导他人),指导从业务高手到主管的转型。适用于用户刚晋升主管或即将带团队、纠结任务该自己做还是交给下属、要做向上汇报或与上级对焦优先级、以及辅导下属没起色想评估是否继续投入时使用。

- **good-to-great** — `skills/good-to-great/SKILL.md`
  - 运用《从优秀到卓越》(Jim Collins) 的飞轮模型、刺猬理念与第5级领导力，诊断组织从优秀到卓越的跃迁路径。适用于用户要评估领导层是否具备第5级特质、制定战略取舍与"停止做"清单、用三环交叉检验业务聚焦、设计飞轮积累机制、以及判断技术/并购是否符合刺猬理念时使用。

- **growth-hacking** — `skills/growth-hacking/SKILL.md`
  - 运用《硅谷增长黑客实战笔记》(曲卉) 的北极星指标、增长模型与实验流程设计数据驱动的增长体系。适用于用户要定义产品核心指标或搭建增长模型、设计增长实验或 A/B 测试、诊断新用户激活与留存问题、以及组建增长团队或建立实验文化时使用。

- **incentive-design** — `skills/incentive-design/SKILL.md`
  - 运用《混合信号》(Uri Gneezy) 的信号理论与行为经济学杠杆设计激励机制。适用于用户要设计团队绩效考核或奖金方案、诊断"说一套激励一套"的制度失灵（如喊创新却罚失败）、设计用户增长或习惯养成的奖励机制、以及在定价谈判中运用信号策略时使用。

- **momentum-strategy** — `skills/momentum-strategy/SKILL.md`
  - 运用《动量策略》的核心方法论，指导量化交易模型的设计、回测和风险控制。适用于用户想要构建系统交易策略、评估回测结果、或进行投资组合配置时使用。

- **netflix-culture** — `skills/netflix-culture/SKILL.md`
  - 运用《奈飞文化手册》与《不拘一格》的自由与责任框架,指导高人才密度 x 绝对坦诚 x 移除管控的组织文化设计。适用于用户要诊断团队文化瓶颈、设计反馈机制或取消冗余审批、评估留任与招聘策略、以及从控制型管理转向情景管理时使用。

- **options-strategy** — `skills/options-strategy/SKILL.md`
  - 运用《麦克米伦谈期权》的核心方法论，指导期权策略设计与风险管理。适用于用户要设计期权交易策略（买方/卖方/价差/波动率交易）、评估期权组合的风险收益特性、用隐含波动率和认沽认购比做市场预测、以及管理期权头寸的资金和止盈止损时使用。

- **persuasion-pitch** — `skills/persuasion-pitch/SKILL.md`
  - Assists users in crafting high-impact pitches, presentations, and sales communications using the "STRONG" method and Frame Control. Use when users want to pitch an idea to investors, sell a product to a client, or need to overcome objections and command attention in business meetings.

- **portfolio-management** — `skills/portfolio-management/SKILL.md`
  - 运用《投资组合再平衡》与《主动投资组合管理》的量化框架，指导资产配置、再平衡与主动管理决策。适用于用户要设计资产配置方案或确定再平衡策略、评估组合的风险因子暴露与信息率、判断主动管理是否创造Alpha还是只是承担了额外风险、以及进行组合绩效归因分析时使用。

- **product-creation** — `skills/product-creation/SKILL.md`
  - 运用《创造》(Build, Tony Fadell) 的方法论,指导产品从 0 到 1 的关键决策与职业选择。适用于用户在评估新产品想法是否值得做、纠结数据驱动还是观点驱动决策、要把产品概念具象化(写新闻稿/画触点)、判断该加入哪家公司或何时辞职、以及从业务高手转型管理者遇到困惑时使用。

- **relationship-design** — `skills/relationship-design/SKILL.md`
  - 融合《如何避免孤独终老》(Logan Ury) 关系决策框架与《寻找你的维他命人》(Marian Rojas Estapé) 关系生物学框架。适用于用户想改善亲密关系或社交质量、诊断"为什么总是遇到同类型的人"或"为什么关系总是无法深入"、设计社交策略或约会决策框架、处理关系中的冲突与修复、以及评估一段关系是否值得继续投入时使用。

- **running-programmer** — `skills/running-programmer/SKILL.md`
  - 运用《奔跑吧，程序员》(Hello Startup) 的进化式增长理念，指导创业期的产品、技术与团队决策。适用于用户想验证新产品想法、做技术选型或架构设计、担心过度设计、组建创业团队或招聘把关、制定产品迭代节奏时使用。

- **solo-operator** — `skills/solo-operator/SKILL.md`
  - 运用《单干》(陈欢) 的 49 个关键动作方法论,指导一人公司与超级个体的商业决策。适用于用户想把专业能力变现(定价/产品化/知识付费)、设计个人品牌定位与内容策略、评估要不要辞职单干或开启副业、以及单干路上纠结方向选择(先做产品还是先做流量)时使用。

- **spin-selling** — `skills/spin-selling/SKILL.md`
  - 运用《销售巨人》(Neil Rackham) 的 SPIN 提问序列与晋级承诺方法推进大订单/B2B 复杂销售。适用于用户要准备大客户拜访或售前会谈、设计销售提问话术、诊断"聊得很好但单子不动"的僵局、以及规划多轮销售的阶段目标时使用。与 persuasion-pitch（框架控制与融资路演）互补：pitch 管气场与叙事，SPIN 管提问与需求挖掘。

- **strategy-safari** — `skills/strategy-safari/SKILL.md`
  - 运用《战略历程》(Mintzberg) 的十大战略学派作为分析透镜审视战略问题。适用于用户要制定或评审公司/业务/个人战略、诊断战略规划为何沦为形式、拆解咨询报告或管理话术的理论出身与盲区、以及在深思熟虑与随机应变之间找平衡时使用。

- **talent-assessment** — `skills/talent-assessment/SKILL.md`
  - 运用《大厂人才》(娄珺) 的祛魅框架与人才盘点方法评估组织的人才管理实践。适用于用户要做团队人才盘点或梯队规划、评估是否引入 OKR/价值观考核/去 KPI 等大厂工具、设计干部选拔与晋升标准、以及诊断考核制度为何流于形式时使用。

- **team-topologies** — `skills/team-topologies/SKILL.md`
  - 运用《高效能团队模式》(Team Topologies) 的逆康威定律、四类团队与认知负荷方法设计工程组织。适用于用户要做团队拆分或组织架构调整、诊断"团队疲于奔命/交付变慢"的认知超载问题、规划平台团队或中台边界、以及评估系统架构与团队结构是否匹配时使用。

- **voiceprint-tech** — `skills/voiceprint-tech/SKILL.md`
  - 运用《声纹技术：从核心算法到工程实践》(王泉) 的方法论,指导声纹识别系统的设计、选型与工程落地。适用于用户要设计声纹识别/说话人验证系统的技术方案、评估声纹特征提取方法(MFCC/i-vector/x-vector/ECAPA-TDNN)的优劣、做声纹反欺诈或活体检测的技术选型、以及将声纹技术落地到实际产品(电话客服/智能音箱/安防)时使用。

## 流水线技能（仅限本仓库内使用）

- **book-to-skill** — `skills/book-to-skill/SKILL.md`
  - 将零散的读书笔记自动化处理为"私有存档 -> 结构化公开笔记 -> 实操 AI 技能 -> README 映射"的标准工作流。

## 使用约定

1. 技能触发后，先完整读取对应 SKILL.md，再开始回应用户。
2. 需要更深入的论据时，读取技能中引用的 notes/ 笔记文件（渐进式披露）。
3. private/ 目录为用户私有存档，除 book-to-skill 流水线要求外不得读取或外传。
