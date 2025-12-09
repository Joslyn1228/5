# Vercel 部署指南

## 准备工作

✅ 项目已成功构建 (`npm run build` 执行成功)
✅ 已连接到 GitHub 仓库: https://github.com/Joslyn1228/5.git
✅ 工作区干净，没有未提交的更改

## 通过 Vercel 官网部署（推荐）

### 步骤 1: 登录 Vercel

1. 访问 Vercel 官网: https://vercel.com/
2. 点击右上角的 "Log in"
3. 选择使用 "GitHub" 登录
4. 授权 Vercel 访问您的 GitHub 账户

### 步骤 2: 导入项目

1. 登录成功后，您会看到 Vercel 控制台
2. 点击 "Add New Project"（添加新项目）
3. 在 "Import Git Repository" 部分，找到 "Joslyn1228/5" 仓库
4. 点击仓库右侧的 "Import" 按钮

### 步骤 3: 配置项目

1. 项目名称会自动填充为 "5"，您可以保留或修改
2. 在 "Framework Preset" 部分，Vercel 应该会自动检测到 "Next.js"
   - 如果没有自动检测到，请手动选择 "Next.js"

3. **配置构建设置**（通常 Vercel 会自动配置，但请确认）:
   - 构建命令: `npm run build`
   - 输出目录: `out`
   - 环境变量: 暂时不需要配置

4. 点击 "Deploy" 按钮开始部署

### 步骤 4: 等待部署完成

1. Vercel 会自动执行以下操作:
   - 克隆您的 GitHub 仓库
   - 安装依赖
   - 构建项目
   - 部署到 Vercel 服务器

2. 部署过程中，您可以看到实时的构建日志

### 步骤 5: 访问您的网站

1. 部署完成后，Vercel 会显示 "Deployment Complete"
2. 您将获得一个自动生成的 Vercel 域名，例如: `https://5.vercel.app`
3. 点击域名即可访问您部署的网站

### 步骤 6: 配置自动部署（可选但推荐）

Vercel 会自动为您配置 GitHub 集成，当您向 GitHub 仓库推送新代码时，Vercel 会自动重新部署您的网站。

## 自定义域名（可选）

如果您想使用自己的域名:

1. 在 Vercel 项目设置中，找到 "Domains" 部分
2. 点击 "Add" 按钮，输入您的域名
3. 按照 Vercel 的指示在您的域名注册商处配置 DNS 记录

## 部署成功后的注意事项

1. 每次向 GitHub 推送代码时，Vercel 会自动重新部署
2. 您可以在 Vercel 控制台查看部署历史和日志
3. 如果遇到部署问题，可以查看构建日志寻找错误信息

## 常见问题排查

### 部署失败
- 检查构建日志中的错误信息
- 确保本地可以成功运行 `npm run build`
- 检查依赖是否正确安装

### 页面显示空白
- 打开浏览器开发者工具（F12）查看控制台错误
- 检查是否有 JavaScript 错误或资源加载失败

### 样式不显示
- 确保 Tailwind CSS 配置正确
- 检查 `globals.css` 是否正确导入

## 联系方式

如果您在部署过程中遇到任何问题，可以参考项目中的 `TROUBLESHOOTING.md` 文件，或通过 GitHub Issues 提问。

---

祝您部署成功！🎉