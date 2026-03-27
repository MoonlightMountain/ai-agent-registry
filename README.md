# ai-agent-registry
一个超一线公司的开发小组
ai-agent-registry/
├── roles/
│   ├── pm/
│   │   └── pm_core.md                 # 核心产品经理
│   ├── ui_ux/                         # ✨ [新增] 视觉与交互设计
│   │   └── ui_ux_designer.md          # 负责将 PRD 转化为 Tailwind/CSS 组件规范
│   ├── architect/
│   │   ├── arch_web.md                # Web/微服务架构师
│   │   └── arch_data.md               # 数据/AI架构师
│   ├── sde/
│   │   ├── sde_frontend_react.md      # 专精 React/TS 的开发
│   │   ├── sde_backend_go.md          # 专精 Go/微服务的开发
│   │   ├── sde_backend_java.md        # ✨ [新增] 专精 Java/Spring Boot 的企业级开发
│   │   ├── sde_python_data.md         # 专精 Python/数据处理的开发
│   │   └── sde_ios_swift.md           # 专精 iOS 的开发
│   ├── qa/
│   │   └── qa_core.md                 # 测试开发工程师
│   └── devops/                        # ✨ [新增] 持续交付与可靠性工程
│       └── devops_sre.md              # 负责 Dockerfile, CI/CD, K8s 部署配置
├── workflows/
│   ├── code_review_standard.md        # 跨角色代码审查规范
│   └── git_commit_spec.md             # ✨ [新增] Git Commit 与分支管理规范 (供 Agent 遵守)
├── templates/                         # ✨ [新增] 项目状态机与记忆模板 (解决 AI 失忆与迷失)
│   ├── MEMORY_template.md             # 架构共识与业务红线模板
│   ├── TODO_AGENTS_template.md        # 多 Agent 协作进度看板模板
│   └── copilot_instructions_tpl.md    # 业务项目根目录的全局路由规则模板
└── scripts/                           # ✨ [新增] 自动化脚手架
    └── init_agents.sh                 # 业务项目用来拉取配置的 Bash 脚本
