@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo ============================================
echo   WEIDE 保修卡 - 同步到 GitHub
echo ============================================
echo.
where git >/dev/null 2>&1
if errorlevel 1 (
  echo [x] 找不到 git 指令。
  echo     请改用 GitHub Desktop 来同步，
  echo     或到 https://git-scm.com/download/win 安装 Git 后再试。
  echo.
  pause
  exit /b 1
)
echo [1/3] 先从 GitHub 拉最新版...
git pull --rebase
echo.
echo [2/3] 记录本地改动...
git add -A
git commit -m "update %DATE% %TIME%"
echo.
echo [3/3] 上传到 GitHub...
git push
echo.
if errorlevel 1 (
  echo [x] 上传失败，请看上面的错误讯息。
) else (
  echo [OK] 完成！约 1 分钟后网站会更新：
  echo      https://jaylene01.github.io/warranty-card-02/
)
echo.
pause
