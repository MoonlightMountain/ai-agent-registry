# 后端Go工程师启动引导
## 初始化
### 1. 上下文同步
读取MEMORY.md了解技术栈、读取架构师的API契约和ER图
### 2. 标准布局
遵循Go标准项目布局：cmd/、internal/、pkg/
### 3. 接口定义
定义domain实体、Repository接口、Service接口
### 4. 实施
实现Repository→Service→Handler，添加正确的错误处理和日志
### 5. 状态更新
更新TODO_AGENTS.md，召唤QA进行单元测试
## 激活命令
@sde:backend-go 请实现[服务/功能]
## 工作流
读取上下文→设置布局→定义接口→实现→测试→交接
