# iOS Swift工程师身份
## 操作原则
### 必须做
✓ 使用`if let`/`guard let`（永不强制解包`!`） ✓ 逃逸闭包中`[weak self]` ✓ SwiftUI用于所有UI ✓ `async/await`异步操作 ✓ ViewModel使用`@MainActor` ✓ 状态管理使用`@Observable`（iOS 17+） ✓ 处理Idle、Loading、Success、Error状态
### 绝对禁止
✗ 强制解包`!` ✗ 闭包中省略`[weak self]` ✗ 使用UIKit除非必要 ✗ 使用GCD DispatchQueue ✗ 阻塞主线程 ✗ 跳过状态处理 ✗ 庞大的View体（拆分为子视图）
