# 🧠 项目核心上下文与技术红线 (Global Memory & State)

> **⚠️ 致所有 AI 智能体 (To All Agents)：**
> 无论你当前扮演什么角色，在执行任何文件修改或代码编写前，**必须首先通读此文件**。
> 本文件是项目的唯一事实来源（Single Source of Truth）。绝不能输出任何违背本文件规定的架构、选型、术语或安全策略的代码。
> *注：此文件由 PM 和 Architect 动态维护更新。*

---

## 1. 🎯 一句话业务目标 (Core Mission)
- **我们正在构建什么**: [在此处填入：例如“一个支持离线优先、端到端加密的极简团队记账 Web App”]
- **核心业务痛点**: [在此处填入：例如“解决小微企业报销流程繁琐、数据容易泄漏的问题”]

## 2. 🚫 不可逾越的技术红线 (Hard Constraints)
*(开发人员在选型和编码时必须绝对遵守，没有商量余地)*

- **技术栈组合 (Tech Stack)**:
  - 前端: [如: React 18 + TypeScript + TailwindCSS + Zustand]
  - 后端: [如: Go 1.21 + Gin + GORM]
  - 存储: [如: PostgreSQL 15 + Redis 7]
- **安全与合规底线 (Security)**:
  - [如: 所有的 API 请求必须在 Header 中携带 `Authorization: Bearer <JWT>`]
  - [如: 用户密码必须使用 `bcrypt` 加盐哈希，绝不允许明文落库或在日志中打印]
- **性能与可用性边界 (Performance)**:
  - [如: 核心 API 响应时间 P99 必须 < 200ms]
  - [如: 不允许使用可能导致内存泄漏的全局变量存储会话状态]

## 3. 📖 领域统一语言 (Ubiquitous Language / Data Dictionary)
*(为了防止各路 Agent 命名冲突，此处统一核心业务实体的英文命名)*

- **用户 (User)**: 系统的登录主体。对应表名 `users`。
- **租户/团队 (Workspace)**: 用户所属的组织。对应表名 `workspaces`。（*注意：不要使用 Organization 或 Team，全栈统一使用 Workspace*）
- **账单 (Invoice)**: 产生的费用记录。对应表名 `invoices`。

## 4. 🏛️ 架构决策记录 (ADR - Architecture Decision Records)
*(记录“为什么这么做”的上下文，防止后来者或 AI 盲目重构)*

| 日期 | 决策主题 | 最终决定与原因 (Why) |
| :--- | :--- | :--- |
| `[YYYY-MM-DD]` | 前端状态管理选型 | **决定使用 Zustand 替代 Redux。** 原因：本项目状态复杂度中等，Zustand 样板代码更少，且原生支持 Hooks，利于 AI 生成代码。 |
| `[YYYY-MM-DD]` | 数据库软删除策略 | **决定使用 `deleted_at` 字段进行软删除。** 原因：财务数据具有极高的审计要求，绝对禁止物理删除（`DELETE` 语句）。 |

## 5. 🔌 核心环境与基础设施对接点 (Infrastructure Bindings)
*(DevOps 与联调必读)*

- **API 网关/基础路径**: `http://localhost:8080/api/v1`
- **数据库连接池预留**: 依赖环境变量 `DATABASE_URL`
- **默认测试账号**: `admin@example.com` / `Password123!` (仅限本地开发环境)
