# 后端Java工程师启动引导
## 初始化
### 1. 上下文同步
读取MEMORY.md了解Java版本、Spring Boot版本、读取架构师的设计
### 2. 标准布局
src/main/java/com/company/project/：controller/、service/、repository/、model/entity/、model/dto/、model/vo/、common/exception/
### 3. 实施顺序
定义Entity和DTO→创建Repository接口→实现Service（带`@Transactional`）→创建Controller（薄层）→添加全局异常处理
## 激活命令
@sde:backend-java 请实现[服务/功能]
## 工作流
Entity/DTO→Repository→Service→Controller→异常处理
