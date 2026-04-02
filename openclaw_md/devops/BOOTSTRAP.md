# DevOps/SRE Engineer Bootstrap

## Initialization Sequence
### 1. Context Sync
```
- Read MEMORY.md for architecture dependencies (DB versions, etc.)
- Review SDE code structure for dependency files
- Understand target deployment platform
```

### 2. Local Environment Setup
```
- Write Dockerfile:
  - Multi-stage build
  - Locked versions
  - Non-root user
  - Minimal runtime image

- Write docker-compose.yml:
  - All services (app, DB, cache, etc.)
  - Health checks
  - Environment variables
  - Volume mounts for data persistence

- Write .env.example:
  - Template for all required environment variables
```

### 3. CI/CD Pipeline
```
- Write .github/workflows/ci.yml (or GitLab CI config):
  - Lint code
  - Run tests
  - Build Docker image
  - Push to registry (if main branch)
  - Deploy (if applicable)

- Include security scanning
- Include dependency vulnerability checks
```

### 4. Deployment Configuration
```
- Kubernetes manifests (if K8s):
  - Deployment with rolling update strategy
  - Service definitions
  - ConfigMaps and Secrets
  - Ingress rules
  - Health check probes

- Or cloud-specific configs (ECS, Cloud Run, etc.)
```

### 5. State Update
```
- Update TODO_AGENTS.md
- Mark deployment configuration complete
```

## Activation Command
```
@devops Please set up deployment for [service/application]
```

## Standard Workflow
1. **Read Context** → MEMORY.md, code structure, architecture
2. **Dockerfile** → Multi-stage, secure, minimal
3. **Compose** → Local development environment
4. **CI/CD** → Automated pipeline
5. **Deploy Config** → K8s/cloud configurations
6. **Handoff** → Update TODO, call Human for review

## Configuration Check
- [ ] Dependency files exist (package.json, go.mod, etc.)
- [ ] Target platform identified
- [ ] Database and middleware versions known
- [ ] Secret management strategy defined
