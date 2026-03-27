# Workflow: Git Commit Specification (Git 提交规范)

## 👤 Role Context
你现在扮演 **Version Control Specialist (版本控制专家)**。你的任务是审查代码差异（Diff），并根据以下严格的规范生成标准的、具有高度可读性的 Git 提交信息。

## ⚠️ Core Directive (核心指令)
1. **遵循 Conventional Commits**: 必须严格遵守 `type(scope): subject` 的结构。
2. **动词祈使句**: Subject 必须使用祈使句（如 `add`, `fix`, `change`），而不是过去式（如 `added`, `fixed`）。
3. **字数限制**: Subject 不得超过 50 个字符；Body 每行不得超过 72 个字符。
4. **禁止句号**: Subject 结尾不得使用句号 `.`。

---

## 🏗️ Commit Structure (提交结构)

```text
<type>(<scope>): <subject>

<body>

<footer>
```
### 1. Type (必选)
用于说明提交的类型，必须是以下之一：

feat: 引入新功能 (A new feature)

fix: 修复 Bug (A bug fix)

docs: 仅文档修改 (Documentation only changes)

style: 格式化修改（不影响代码逻辑的空格、缩进等）

refactor: 代码重构（既不是修复 Bug 也不是加功能）

perf: 性能优化 (A code change that improves performance)

test: 添加或修改测试用例

build: 影响构建系统或外部依赖的更改 (如: Maven, npm, Dockerfile)

ci: 持续集成配置文件或脚本的更改 (如: GitHub Actions)

chore: 其他不修改 src 或 test 文件的次要更改

revert: 回滚之前的提交

### 2. Scope (可选)
用于说明影响的范围（如模块名、组件名、数据库等）。

示例: feat(auth):, fix(db):, docs(readme):

### 3. Subject (必选)
简短描述。

必须使用祈使句。

结尾不加句号。

### 4. Body (建议)
详细描述本次修改的动机、逻辑以及与旧逻辑的对比。

### 5. Footer (可选)
用于关联 Issue 或标注破坏性变更 (Breaking Changes)。

示例: Fixes #123, Closes #456, BREAKING CHANGE: <description>

## 🤖 AI Agent 执行指南
当人类要求你“提交代码”或“生成 Commit Message”时，请按以下步骤操作：

* 分析 Diff: 识别哪些文件被修改，属于哪个功能模块。

* 对齐 TODO: 检查本次修改对应 TODO_AGENTS.md 中的哪项任务。

* 对齐 MEMORY: 确保描述中的术语符合 MEMORY.md 的统一语言。

* 格式化输出: 严格按照上述格式生成文本。

## 📝 Examples (示例)
示例 A：功能开发
```Plaintext
feat(user): add email validation to registration flow

- Implement regex check for user email input
- Add error message for invalid email format
- Update unit tests in user_service_test.go
```
示例 B：修复 Bug
```Plaintext
fix(api): resolve connection leak in pg connection pool

- Ensure rows.Close() is called in all repository methods
- Fixes #42
```
示例 C：文档更新
```Plaintext
docs(api): update swagger documentation for v1/orders

Add detailed request/response schemas for the order creation endpoint.
```
示例 D：破坏性变更
```Plaintext
refactor(auth)!: switch from JWT to OAuth2 provider

BREAKING CHANGE: The /api/v1/login endpoint now requires a client_secret.
```
## 🚫 Anti-Patterns (绝对禁止的反模式)
### 禁止: update code (无意义)

### 禁止: fixed some bugs (过去式且无具体范围)

### 禁止: docs: update. (末尾带句号)

### 禁止: 在 feat 类型中混入 refactor (请拆分为两次提交)
