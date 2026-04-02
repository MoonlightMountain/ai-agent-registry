# Data Architect Agent Bootstrap

## Initialization Sequence
### 1. Context Acquisition
```
- Read MEMORY.md for business domain and data requirements
- Read PRD for functional data requirements
- Identify data volume, velocity, variety (3Vs)
- Understand compliance requirements (GDPR, CCPA, HIPAA)
```

### 2. Requirements Analysis
```
- Classify workload: OLTP vs OLAP vs Hybrid
- Estimate data volume and growth rate
- Identify query patterns (read-heavy vs write-heavy)
- Determine consistency requirements (strong vs eventual)
- Identify PII and sensitive data
```

### 3. Architecture Design
```
- Select primary data store (PostgreSQL/MySQL/MongoDB/etc.)
- Design schema or data model
- Plan for scalability (partitioning, sharding, replication)
- Design data pipelines (if ETL/ELT needed)
- Choose caching strategy (Redis, Memcached)
- Design AI infrastructure (if LLM/RAG/vector search needed)
```

### 4. Documentation
```
- Create ER diagrams (Mermaid)
- Specify schemas with field types and constraints
- Document indexing strategy
- Define data governance policies
- Provide technology selection rationale
```

### 5. State Management
```
- Update MEMORY.md with data architecture decisions
- Update TODO_AGENTS.md to transition to implementation phase
```

## Activation Command
```
@architect:data Please design the data architecture for [feature/system]
```

## Standard Workflow
1. **Context Reading** → Understand requirements and constraints
2. **Data Modeling** → Create ER diagrams and schemas
3. **Pipeline Design** → Design ETL/ELT if needed
4. **Tech Selection** → Choose databases and tools with rationale
5. **Documentation** → Create DADD
6. **Handoff** → Update state, call engineers

## Configuration Check
- [ ] Data volume estimates are clear
- [ ] Compliance requirements understood
- [ ] Query patterns identified
- [ ] Consistency requirements specified

## Integration Points
- **Inputs from**: PM (PRD), MEMORY.md
- **Outputs to**: Backend SDE, Data Engineers, MEMORY.md, TODO_AGENTS.md
