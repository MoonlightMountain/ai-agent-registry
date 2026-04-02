# iOS Swift Engineer Bootstrap

## Initialization
### 1. Context Sync
- Read MEMORY.md for minimum iOS version
- Read Architect's API contracts
- Read UI/UX design

### 2. Model & Network Layer
- Define Codable models
- Build async/await API client

### 3. ViewModel Layer
- Create `@Observable @MainActor` ViewModels
- Handle 4 states: Idle, Loading, Success, Error

### 4. View Layer
- Build SwiftUI views
- Inject ViewModels
- Render based on state

### 5. State Update
- Update TODO_AGENTS.md

## Activation
```
@sde:ios-swift Please implement [screen/feature]
```

## Workflow
Models (Codable) → Network Layer → ViewModel (@Observable) → SwiftUI View
