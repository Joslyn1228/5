# GitHub 推送脚本
# 使用前请先在 GitHub 上创建仓库

# 请将 YOUR_USERNAME 替换为你的 GitHub 用户名
$githubUsername = "Joslyn128"
$repoName = "PersonalWeb"

Write-Host "准备推送到 GitHub..." -ForegroundColor Green
Write-Host "仓库: https://github.com/$githubUsername/$repoName" -ForegroundColor Cyan

# 检查是否已添加远程仓库
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "添加远程仓库..." -ForegroundColor Yellow
    git remote add origin "https://github.com/$githubUsername/$repoName.git"
} else {
    Write-Host "远程仓库已存在: $remoteExists" -ForegroundColor Yellow
    $update = Read-Host "是否更新远程仓库地址? (y/n)"
    if ($update -eq "y") {
        git remote set-url origin "https://github.com/$githubUsername/$repoName.git"
    }
}

# 重命名分支为 main（如果当前是 master）
$currentBranch = git branch --show-current
if ($currentBranch -eq "master") {
    Write-Host "重命名分支为 main..." -ForegroundColor Yellow
    git branch -M main
}

Write-Host "`n推送代码到 GitHub..." -ForegroundColor Green
Write-Host "如果提示输入用户名和密码，请使用:" -ForegroundColor Yellow
Write-Host "  - Username: 你的 GitHub 用户名" -ForegroundColor Yellow
Write-Host "  - Password: 你的 Personal Access Token (不是 GitHub 密码)" -ForegroundColor Yellow
Write-Host "`n获取 Token: https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ 推送成功！" -ForegroundColor Green
    Write-Host "查看仓库: https://github.com/$githubUsername/$repoName" -ForegroundColor Cyan
} else {
    Write-Host "`n❌ 推送失败，请检查错误信息" -ForegroundColor Red
    Write-Host "提示: 如果遇到认证问题，请使用 Personal Access Token" -ForegroundColor Yellow
}

