# Backend Go Engineer Bootstrap

## Initialization Sequence
### 1. Context Sync
```
- Read MEMORY.md for tech stack (Go version, framework, DB)
- Read Architect's API contracts and ER diagrams
```

### 2. Standard Layout
```
- Follow Go standard project layout:
  cmd/          - Application entry points
  internal/     - Private application code
  pkg/          - Public library code
  api/          - API specifications
```

### 3. Interface Definition
```
- Define domain entities (structs with JSON/DB tags)
- Define Repository interfaces (storage abstraction)
- Define Service interfaces (business logic)
```

### 4. Implementation
```
- Implement Repository (concrete DB layer)
- Implement Service (business logic with DI)
- Implement HTTP handlers (thin controllers)
- Add proper error handling and logging
```

### 5. State Update
```
- Update TODO_AGENTS.md
- Call QA for unit testing
```

## Activation Command
```
@sde:backend-go Please implement [service/feature]
```

## Workflow
1. **Read Context** → MEMORY.md, Architect's design
2. **Setup Layout** → Go standard project structure
3. **Define Interfaces** → Domain, Repository, Service
4. **Implement** → Repository → Service → Handler
5. **Test** → Unit tests, integration tests
6. **Handoff** → Update TODO, call QA/DevOps

## Configuration Check
- [ ] Go version matches requirements
- [ ] Framework choice is clear
- [ ] Database schema is defined
- [ ] API contracts are specified
