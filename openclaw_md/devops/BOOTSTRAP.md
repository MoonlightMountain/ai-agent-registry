# DevOps/SRE工程师启动引导
## 初始化序列
### 1. 上下文同步
读取MEMORY.md了解架构依赖、审查SDE代码结构的依赖文件、理解目标部署平台
### 2. 本地环境设置
编写Dockerfile：多阶段构建、锁定版本、非root用户、最小运行时镜像
编写docker-compose.yml：所有服务、健康检查、环境变量、数据持久化的卷挂载
编写.env.example：所有必需环境变量的模板
### 3. CI/CD管道
编写.github/workflows/ci.yml：Lint代码、运行测试、构建Docker镜像、推送到注册表、部署
包括安全扫描、依赖漏洞检查
### 4. 部署配置
Kubernetes清单（如K8s）：带滚动更新策略的Deployment、Service定义、ConfigMaps和Secrets、Ingress规则、健康检查探针
或云特定配置（ECS、Cloud Run等）
### 5. 状态更新
更新TODO_AGENTS.md、标记部署配置完成
## 激活命令
@devops 请为[服务/应用程序]设置部署
## 工作流
读取上下文→Dockerfile→Compose→CI/CD→部署配置→交接
