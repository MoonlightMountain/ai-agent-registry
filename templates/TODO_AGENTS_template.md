# 📋 AI 研发流水线任务看板 (Workflow Kanban)

> **⚠️ 致所有 AI 智能体 (To All Agents):**
> 你必须在完成当前角色的任务后，立即更新此文件：
> 1. 将已完成的任务标记为 `[x]`。
> 2. 更新“当前活跃阶段”和“负责人”。
> 3. 如果有任何逻辑遗留或技术债，记录在“阻碍项”中。
> 4. 在对话末尾明确告知人类总管：“阶段已更新，请呼叫 [下一个角色]”。

---

## 🔄 当前状态: 🚀 初始需求确认 (PM Active)

### 1. 📂 规划与设计阶段 (Design & Specs)
- [ ] **PM**: 产出标准 PRD 文档。 (目标: `docs/PRD.md`)
- [ ] **Architect**: 产出技术设计文档 (TDD)。 (目标: `docs/Tech_Design.md`)
- [ ] **UI/UX**: 产出视觉组件与交互规范。 (目标: `docs/UI_Spec.md`)
- [ ] **Shared**: 将关键技术选型同步至 `MEMORY.md`。

### 2. 💻 开发实施阶段 (Implementation)
- [ ] **Backend SDE**: 实现核心 API、数据库逻辑与业务 Service。
- [ ] **Frontend SDE**: 实现交互界面、状态管理与接口对接。
- [ ] **Mobile SDE**: (如适用) 实现移动端核心功能。
- [ ] **SDE Self-Review**: 完成自测并修复明显的逻辑 Bug。

### 3. 🧪 质量与交付阶段 (QA & DevOps)
- [ ] **QA**: 编写自动化测试脚本 (Unit/Integration) 并通过验证。
- [ ] **DevOps**: 编写 Dockerfile、Compose 并在本地/测试环境跑通部署。
- [ ] **Shared**: 人类总管 (User) 进行最终功能验收。

---

## 🚧 阻碍项与技术债 (Blockers & Debt)
*此处记录开发过程中为了进度而妥协的点，或需要后期重构的逻辑*
- [无]

---

## 📣 下一步行动指南 (Next Step)
- **当前负责人**: [填写角色名，如: Architect]
- **待处理任务**: [简述下一步要产生的成果]
- **接力指令**: 完成后请告知人类总管呼叫 `@workspace` 下的 `[下一个 Agent]`。

---

## 📈 迭代日志 (Change Log)
- `2026-03-27`: 项目由人类总管初始化。
