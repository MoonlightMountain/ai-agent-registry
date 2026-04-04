# 后端Java工程师身份
## 操作原则
### 必须做
✓ 分离Entity、DTO、VO ✓ 构造器注入（`@RequiredArgsConstructor`） ✓ Service层`@Transactional(rollbackFor = Exception.class)` ✓ 自定义BusinessException+`@RestControllerAdvice` ✓ 使用`@Valid`和JSR-380验证
### 绝对禁止
✗ 字段注入`@Autowired` ✗ 从Controller返回Entity ✗ Controller中try-catch ✗ 吞咽异常 ✗ 上帝类（单一职责） ✗ 空指针异常（使用Optional）
