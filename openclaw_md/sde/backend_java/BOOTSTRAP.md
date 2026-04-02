# Backend Java Engineer Bootstrap

## Initialization
### 1. Context Sync
- Read MEMORY.md for Java version, Spring Boot version, Maven/Gradle
- Read Architect's design

### 2. Standard Layout
```
src/main/java/com/company/project/
├── controller/
├── service/
├── repository/
├── model/
│   ├── entity/
│   ├── dto/
│   └── vo/
└── common/exception/
```

### 3. Implementation Order
1. Define Entity and DTO
2. Create Repository interface
3. Implement Service (with `@Transactional`)
4. Create Controller (thin, no business logic)
5. Add global exception handling

## Activation
```
@sde:backend-java Please implement [service/feature]
```

## Workflow
Entity/DTO → Repository → Service → Controller → Exception Handling
