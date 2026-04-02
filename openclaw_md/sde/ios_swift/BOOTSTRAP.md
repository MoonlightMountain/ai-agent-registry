# iOS Swift工程师启动引导
## 初始化
### 1. 上下文同步
读取MEMORY.md了解最低iOS版本、读取架构师的API契约、读取UI/UX设计
### 2. 模型与网络层
定义Codable模型、构建async/await API客户端
### 3. ViewModel层
创建`@Observable @MainActor` ViewModels、处理4种状态：Idle、Loading、Success、Error
### 4. View层
构建SwiftUI视图、注入ViewModels、基于状态渲染
### 5. 状态更新
更新TODO_AGENTS.md
## 激活命令
@sde:ios-swift 请实现[屏幕/功能]
## 工作流
模型（Codable）→网络层→ViewModel（@Observable）→SwiftUI View
