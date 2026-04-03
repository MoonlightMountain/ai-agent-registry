# 🤖 AI Agent Registry: 企业级全链路 AI 研发基础设施

> 将你的个人开发效率，转化为一家"超一线科技公司"的吞吐量。

ai-agent-registry 是一个中心化的 AI 智能体资产库。它通过 Prompt as Code (PaC) 的理念，将大厂级的研发流程、架构标准、编码戒律和质量守门员固化为可配置的 Markdown 资产。

配合 `init_agents.sh` 引擎，你可以在任何新项目中瞬间唤醒一整支由 PM、架构师、全栈工程师、QA 和 DevOps 组成的特种部队。

---

## 🏛️ 组织架构图 (Architecture Overview)

本项目将复杂的软件开发生命周期（SDLC）和企业管理解构为以下核心模块：

### 1. 🎭 精锐角色 (Roles)

#### 软件研发团队 (Development Team)
- **Product Manager**: 产出无歧义的 BDD 格式 PRD。
- **Architect (Web/Data)**: 负责高并发设计、ER 图建模与 API 契约。
- **SDE Matrix**: 覆盖 React, Go, Java, Swift, Python 的领域专家，严守工程红线。
- **UI/UX Designer**: 将需求转化为 Tailwind 语义与 DOM 树骨架。
- **QA (SDET)**: 自动化测试防线，拒绝任何没有测试的代码。
- **DevOps/SRE**: 容器化、IaC 与 CI/CD 专家。

#### 企业决策层 (C-Level Executives) - 新增！
- **情报官 (Intelligence Officer)**: 全球资讯监控、热点筛选、趋势分析专家。24/7 追踪国际国内新闻动态。
- **经济分析专家 (Economic Analyst)**: 宏观经济分析、政策影响评估、市场趋势预测，使用概率思维提供严谨的经济洞察。
- **首席财务官 (CFO)**: 财务战略、资本管理、投资评估、风险控制，守护企业财务健康。
- **首席技术官 (CTO)**: 技术战略、架构决策、研发管理、创新驱动，引领技术方向。
- **首席运营官 (COO)**: 运营卓越、流程优化、供应链管理、质量保证，确保高效执行。
- **首席营销官 (CMO)**: 品牌战略、市场增长、客户获取、数字营销，驱动业务增长。
- **首席人力资源官 (CHRO)**: 人才战略、组织发展、文化建设、绩效管理，打造高绩效团队。

### 2. 📜 运行规范 (Workflows)

- **Code Review**: 批判性审计清单，拒绝平庸代码。
- **Git Commit**: 严格的 Conventional Commits 规范，让版本历史变美。

### 3. 🧠 记忆与状态 (Templates)

- **MEMORY.md**: 项目的"思想钢印"，解决 AI 上下文溢出与失忆问题。
- **TODO_AGENTS.md**: 动态看板，驱动 Agent 之间的接力棒传递。

### 4. 🌐 OpenClaw 格式专家定义 (OpenClaw Agent Definitions)

在 `openclaw_md/` 目录下，我们为每个专家角色提供了完整的 OpenClaw 格式定义文件，适配 OpenClaw 等 AI Agent 框架：

- **SOUL.md**: 定义专家的核心身份、使命、价值观和能力
- **USER.md**: 用户使用指南，说明何时调用、如何协作
- **IDENTITY.md**: 详细的角色定义、能力模型、操作原则
- **BOOTSTRAP.md**: 初始化序列、启动命令、工作流程

每个 C-level 专家和支持专家都有完整的四件套文件，可直接用于 OpenClaw 或类似 AI Agent 系统。

### 5. 📖 专家协作指导手册 (Expert Collaboration Guide)

详见 `docs/EXPERT_COLLABORATION_GUIDE.md`，包含：
- 专家团队架构和协作模式
- 典型业务场景的协作流程（战略规划、并购决策、危机应对等）
- 专家调用决策树
- 定期协作会议机制
- 快速响应机制

**通过这套体系，将个人开发能力提升为超级跨国集团的智慧决策体系！**

---

## 🚀 快速开始 (Quick Start)

想要在你的业务项目中使用这套系统？只需简单三步：

### 第一步：准备声明文件

在你的业务项目根目录创建 `.agentrc`，声明你需要的阵容：

```text
# .agentrc
roles/pm/pm_core.md
roles/architect/arch_web.md
roles/sde/sde_frontend_react.md@v2.0
roles/qa/qa_core.md
workflows/code_review_standard.md
```

### 第二步：运行初始化引擎

在业务项目终端执行（请确保已配置 GITHUB_TOKEN）：

```bash
curl -s https://raw.githubusercontent.com/[YOUR_USER]/ai-agent-registry/main/scripts/init_agents.sh | bash
```

### 第三步：唤醒 Copilot

打开 VS Code，在 Copilot Chat / Edits 中输入：

> "我是人类总管，项目环境已就位。请加载 .github/agents/pm_core.md，开始处理我的初步想法..."

---

## 📂 手动部署指南

如果你更喜欢手动控制每一步，请按以下流程操作：

### 1. 建立物理目录结构

在你的新项目根目录下，手动创建以下文件夹：

1. 创建一个 `.github` 文件夹。
2. 在 `.github` 内部创建一个 `agents` 文件夹。
3. (可选) 创建一个 `docs` 文件夹，用于存放 Agent 产出的文档。

目录树看起来应该是这样的：

```text
你的项目/
├── .github/
│   └── agents/     <-- 这里放专家手册
├── MEMORY.md       <-- 这里放思想钢印
└── TODO_AGENTS.md  <-- 这里放任务看板
```

### 2. 搬运专家角色 (Roles)

从你的中央仓库 `ai-agent-registry/roles/` 中，把你在 `.agentrc` 里选中的那些 `.md` 文件复制并粘贴到新项目的 `.github/agents/` 目录下。

例如：你需要写后端，就去中央仓库拷贝 `sde_backend_go.md` 到 `.github/agents/sde_backend_go.md`。

### 3. 初始化项目状态 (Memory & TODO)

去中央仓库的 `templates/` 文件夹下：

1. 拷贝 `MEMORY_template.md` 的内容，在项目根目录新建 `MEMORY.md` 并粘贴进去。手动填写你的业务目标和技术栈。
2. 拷贝 `TODO_AGENTS_template.md` 的内容，在项目根目录新建 `TODO_AGENTS.md` 并粘贴进去。

### 4. 配置 Copilot 路由 (关键一步)

这是让 Copilot 变聪明的"开关"。

1. 在项目根目录的 `.github/` 文件夹下，新建一个文件叫 `copilot-instructions.md`。
2. 从中央仓库的 `templates/copilot_instructions_tpl.md` 拷贝内容并粘贴进去。

### 5. 验证是否成功

打开 VS Code 的 Copilot Chat，输入以下指令进行"点名"：

> "@workspace 请检查 .github/agents/ 目录下有哪些专家文件？并根据 MEMORY.md 告诉我本项目的核心技术栈是什么？"

**成功标准**：Copilot 能准确读出你刚才手动粘贴的那些文件名，并能复述出 MEMORY.md 里的技术红线。

### 💡 为什么手动执行也有好处？

手动执行虽然慢了一分钟，但它让你**"深度介入"**了项目的初始设定。特别是 `MEMORY.md` 的填写，那是你作为 Human-in-the-loop (人类总管) 下达的第一道最高指令。

---

## 🛠️ 维护与进化 (Maintenance SOP)

本仓库遵循 "本地发现，全球进化" 的原则：

1. **识别幻觉**: 在业务开发中发现 Agent 反复犯错。
2. **修正 Prompt**: 在本仓库对应的 `.md` 文件中添加针对性的 Constraints（红线）。
3. **版本发布**: 提交更改并打上 Git Tag（如 v1.0.5）。
4. **全量更新**: 业务项目修改 `.agentrc` 版本号并重新运行脚本，所有项目瞬间同步最新的 AI 智力。

---

## 🛡️ 技术红线 (The Hard Rules)

| 规则 | 说明 |
|------|------|
| **NO any** | 严禁在任何 TS 代码中出现。 |
| **NO Naked Goroutines** | Go 协程必须受控。 |
| **NO Force Unwrapping** | Swift 严禁使用 `!`。 |
| **STATE FIRST** | 任何 Agent 动笔前，必须先看 MEMORY.md。 |

---

## 🤝 贡献

如果你有更高效的角色设定或自动化脚本，欢迎提交 Pull Request。让我们一起打造最强的赛博研发军团。

---

*Built with ❤️ for the AI-Native Engineers.*
