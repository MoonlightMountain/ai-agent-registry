🤖 AI Agent Registry: 企业级全链路 AI 研发基础设施
将你的个人开发效率，转化为一家“超一线科技公司”的吞吐量。

ai-agent-registry 是一个中心化的 AI 智能体资产库。它通过 Prompt as Code (PaC) 的理念，将大厂级的研发流程、架构标准、编码戒律和质量守门员固化为可配置的 Markdown 资产。

配合 init_agents.sh 引擎，你可以在任何新项目中瞬间唤醒一整支由 PM、架构师、全栈工程师、QA 和 DevOps 组成的特种部队。

---
🏛️ 组织架构图 (Architecture Overview)
本项目将复杂的软件开发生命周期（SDLC）解构为以下核心模块：

1. 🎭 精锐角色 (Roles)
    Product Manager: 产出无歧义的 BDD 格式 PRD。
    
    Architect (Web/Data): 负责高并发设计、ER 图建模与 API 契约。
    
    SDE Matrix: 覆盖 React, Go, Java, Swift, Python 的领域专家，严守工程红线。
    
    UI/UX Designer: 将需求转化为 Tailwind 语义与 DOM 树骨架。
    
    QA (SDET): 自动化测试防线，拒绝任何没有测试的代码。
    
    DevOps/SRE: 容器化、IaC 与 CI/CD 专家。

2. 📜 运行规范 (Workflows)
    Code Review: 批判性审计清单，拒绝平庸代码。
    
    Git Commit: 严格的 Conventional Commits 规范，让版本历史变美。

3. 🧠 记忆与状态 (Templates)
    MEMORY.md: 项目的“思想钢印”，解决 AI 上下文溢出与失忆问题。
    
    TODO_AGENTS.md: 动态看板，驱动 Agent 之间的接力棒传递。

---
🚀 快速开始 (Quick Start)
想要在你的业务项目中使用这套系统？只需简单三步：

第一步：准备声明文件
在你的业务项目根目录创建 .agentrc，声明你需要的阵容：

```Plaintext
# .agentrc
roles/pm/pm_core.md
roles/architect/arch_web.md
roles/sde/sde_frontend_react.md@v2.0
roles/qa/qa_core.md
workflows/code_review_standard.md
```
第二步：运行初始化引擎
在业务项目终端执行（请确保已配置 GITHUB_TOKEN）：

```Bash
curl -s https://raw.githubusercontent.com/[YOUR_USER]/ai-agent-registry/main/scripts/init_agents.sh | bash
```
第三步：唤醒 Copilot
打开 VS Code，在 Copilot Chat / Edits 中输入：

* *"我是人类总管，项目环境已就位。请加载 .github/agents/pm_core.md，开始处理我的初步想法..."

🛠️ 维护与进化 (Maintenance SOP)
本仓库遵循 “本地发现，全球进化” 的原则：

* 识别幻觉: 在业务开发中发现 Agent 反复犯错。

* 修正 Prompt: 在本仓库对应的 .md 文件中添加针对性的 Constraints（红线）。

* 版本发布: 提交更改并打上 Git Tag（如 v1.0.5）。

* 全量更新: 业务项目修改 .agentrc 版本号并重新运行脚本，所有项目瞬间同步最新的 AI 智力。

🛡️ 技术红线 (The Hard Rules)
* NO any: 严禁在任何 TS 代码中出现。

* NO Naked Goroutines: Go 协程必须受控。

* NO Force Unwrapping: Swift 严禁使用 !。

* STATE FIRST: 任何 Agent 动笔前，必须先看 MEMORY.md。

---
🤝 贡献
如果你有更高效的角色设定或自动化脚本，欢迎提交 Pull Request。让我们一起打造最强的赛博研发军团。

Built with ❤️ for the AI-Native Engineers.
