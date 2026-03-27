#!/bin/bash
# ==============================================================================
# 🤖 企业级 AI Agent 环境初始化脚手架 (Ultimate Edition)
# 作用: 读取 .agentrc 声明，从中央仓库按需拉取角色设定、通用规范和状态机模板
# ==============================================================================

# ---------------- 配置区 (使用前请修改为你的实际仓库) ----------------
REPO_OWNER="your-username"        # 替换为你的 GitHub 用户名或组织名
REPO_NAME="ai-agent-registry"     # 中央仓库名称
CONFIG_FILE=".agentrc"            # 业务项目根目录的配置文件
TARGET_DIR=".github/agents"       # Agent Markdown 存放的本地目录
# --------------------------------------------------------------------

echo "🌌 开始构建 AI 协同开发环境..."

# 1. 检查鉴权 (私有仓库必需)
if [ -z "$GITHUB_TOKEN" ]; then
    echo "⚠️ 未检测到 GITHUB_TOKEN，将使用公开模式拉取。如果目标是私有仓库，请中止并执行:"
    echo "   export GITHUB_TOKEN=你的个人访问Token"
    AUTH_HEADER=""
else
    echo "🔒 鉴权已开启 (GITHUB_TOKEN ready)"
    AUTH_HEADER="-H \"Authorization: token $GITHUB_TOKEN\""
fi

# 2. 检查 .agentrc 是否存在
if [ ! -f "$CONFIG_FILE" ]; then
    echo "❌ 致命错误: 未在当前目录找到 $CONFIG_FILE"
    echo "💡 请先创建 .agentrc 并写入需要的角色路径，例如: roles/sde/sde_frontend_react.md@v1.0"
    exit 1
fi

# 3. 清理与重建目录
mkdir -p "$TARGET_DIR"
rm -rf "$TARGET_DIR"/*
echo "📁 已清理并准备好 $TARGET_DIR 目录"

# 4. 解析 .agentrc 并拉取 Agent
echo "⬇️ 开始按需拉取 Agent 配置文件..."
while IFS= read -r line || [ -n "$line" ]; do
    # 忽略空行、空格和注释
    line=$(echo "$line" | xargs)
    if [[ -z "$line" ]] || [[ "$line" == \#* ]]; then continue; fi

    # 解析带版本号的语法 (例如 filepath@v1.0.0，默认 main)
    if [[ "$line" == *"@"* ]]; then
        FILE_PATH="${line%@*}"
        VERSION="${line#*@}"
    else
        FILE_PATH="$line"
        VERSION="main"
    fi

    FILE_NAME=$(basename "$FILE_PATH")
    RAW_URL="https://raw.githubusercontent.com/$REPO_OWNER/$REPO_NAME/$VERSION/$FILE_PATH"
    
    # 执行下载
    HTTP_CODE=$(eval "curl -s -w \"%{http_code}\" $AUTH_HEADER -o \"$TARGET_DIR/$FILE_NAME\" \"$RAW_URL\"")
    
    if [ "$HTTP_CODE" -eq 200 ]; then
        echo "   ✅ 成功: $FILE_NAME (Version: $VERSION)"
    else
        echo "   ❌ 失败: $FILE_NAME (HTTP: $HTTP_CODE) -> 请检查路径或版本 Tag 是否正确"
    fi
done < "$CONFIG_FILE"

# 5. 拉取并初始化全局状态机 (MEMORY & TODO_AGENTS)
echo "📦 初始化项目状态机模板..."
TEMPLATES=("templates/MEMORY_template.md:MEMORY.md" "templates/TODO_AGENTS_template.md:TODO_AGENTS.md")

for tpl in "${TEMPLATES[@]}"; do
    SOURCE_PATH="${tpl%%:*}"
    TARGET_FILE="${tpl##*:}"
    
    # 如果本地还没有这个文件，才进行拉取 (防止覆盖已有的项目进度)
    if [ ! -f "$TARGET_FILE" ]; then
        RAW_URL="https://raw.githubusercontent.com/$REPO_OWNER/$REPO_NAME/main/$SOURCE_PATH"
        eval "curl -s $AUTH_HEADER -o \"$TARGET_FILE\" \"$RAW_URL\""
        echo "   🆕 已创建 $TARGET_FILE"
    else
        echo "   ⏭️ 已存在 $TARGET_FILE，跳过初始化"
    fi
done

# 6. 生成 Copilot 强制路由指令 (大脑皮层)
echo "🧠 生成 Copilot 全局指令..."
cat << 'EOF' > .github/copilot-instructions.md
# 🤖 AI 研发协作总控指令 (Global Directive)

你是一个由多位顶级专家组成的 AI 智能体协作系统。你的行为模式将由人类总管（用户）的指令动态决定。

## 📍 第一定律：状态与记忆优先 (State & Memory)
在执行任何代码编写或修改前，你**必须**首先查阅项目根目录下的两个文件：
1. `MEMORY.md`：获取当前项目的技术栈红线和浓缩业务目标。**绝不能写出违背该文件的代码。**
2. `TODO_AGENTS.md`：确认当前的工作阶段。完成当前任务后，你**必须**主动更新此文件的复选框，并提示人类进入下一阶段。

## 🔀 第二定律：按需扮演角色 (Routing)
当你被要求执行特定领域的任务时，请**严格读取并扮演** `.github/agents/` 目录下对应的角色设定文件。
（如果你在当前目录下没看到某个角色，说明本项目无需该角色干预。）

## ⚠️ 第三定律：禁止越权
如果你正在扮演开发工程师（SDE），即使你发现了架构设计上的漏洞，也不要擅自修改底层架构约定。请在对话框中指出问题，并请求人类总管呼叫 Architect 进行方案更新。
EOF
echo "   ✅ 已生成 .github/copilot-instructions.md"

echo ""
echo "🎉 恭喜！企业级 AI 协同研发环境初始化完成！"
echo "👉 下一步: 请打开 TODO_AGENTS.md 确认进度，并在 Copilot Chat 中呼叫 @workspace 开启你的第一个需求吧！"
