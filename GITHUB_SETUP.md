# GitHub 推送指南

## 步骤 1: 在 GitHub 上创建新仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角的 **+** 号，选择 **New repository**
3. 填写仓库信息：
   - **Repository name**: `PersonalWeb` (或你喜欢的名字)
   - **Description**: `Personal portfolio website built with Next.js and Tailwind CSS`
   - **Visibility**: 选择 Public 或 Private
   - **不要**勾选 "Initialize this repository with a README"（因为我们已经有了）
4. 点击 **Create repository**

## 步骤 2: 添加远程仓库并推送

在终端中运行以下命令（将 `YOUR_USERNAME` 替换为你的 GitHub 用户名）：

```bash
# 添加远程仓库
git remote add origin https://github.com/YOUR_USERNAME/PersonalWeb.git

# 或者使用 SSH（如果你配置了 SSH key）
# git remote add origin git@github.com:YOUR_USERNAME/PersonalWeb.git

# 推送代码到 GitHub
git branch -M main
git push -u origin main
```

## 如果遇到认证问题

### 方法 1: 使用 Personal Access Token (推荐)

1. 在 GitHub 设置中生成 Personal Access Token：
   - 进入 Settings → Developer settings → Personal access tokens → Tokens (classic)
   - 点击 "Generate new token (classic)"
   - 勾选 `repo` 权限
   - 生成并复制 token

2. 推送时使用 token 作为密码：
   ```bash
   git push -u origin main
   # Username: 你的 GitHub 用户名
   # Password: 粘贴你的 Personal Access Token
   ```

### 方法 2: 使用 GitHub CLI

```bash
# 安装 GitHub CLI (如果还没有)
# 然后登录
gh auth login

# 推送代码
git push -u origin main
```

### 方法 3: 配置 SSH Key

1. 生成 SSH key：
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

2. 将公钥添加到 GitHub：
   - 复制 `~/.ssh/id_ed25519.pub` 的内容
   - 在 GitHub Settings → SSH and GPG keys 中添加

3. 使用 SSH URL：
   ```bash
   git remote set-url origin git@github.com:YOUR_USERNAME/PersonalWeb.git
   git push -u origin main
   ```

## 后续更新

之后每次修改代码后，使用以下命令推送：

```bash
git add .
git commit -m "描述你的更改"
git push
```

## 部署到 Vercel (推荐)

1. 访问 [Vercel](https://vercel.com)
2. 使用 GitHub 账号登录
3. 点击 "Import Project"
4. 选择你的 GitHub 仓库
5. Vercel 会自动检测 Next.js 项目并部署

部署完成后，你的网站将有一个免费的 `*.vercel.app` 域名！

