@echo off
echo ========================================
echo Setting up Git and pushing to GitHub
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

echo [1/6] Initializing Git repository...
git init
if errorlevel 1 (
    echo ERROR: Failed to initialize git repository
    pause
    exit /b 1
)

echo.
echo [2/6] Adding all files...
git add .
if errorlevel 1 (
    echo ERROR: Failed to add files
    pause
    exit /b 1
)

echo.
echo [3/6] Committing files...
git commit -m "Initial commit: CallGuard Sentinel - AI-Powered Scam Call Identification Tool"
if errorlevel 1 (
    echo ERROR: Failed to commit files
    pause
    exit /b 1
)

echo.
echo [4/6] Setting up remote repository...
git remote add origin https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
if errorlevel 1 (
    echo WARNING: Remote already exists or failed to add
    echo Trying to set URL instead...
    git remote set-url origin https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
)

echo.
echo [5/6] Checking current branch...
git branch -M main
if errorlevel 1 (
    echo WARNING: Failed to rename branch, continuing...
)

echo.
echo [6/6] Pushing to GitHub...
echo Please make sure you have authenticated with GitHub (GitHub CLI or SSH keys)
echo.
git push -u origin main
if errorlevel 1 (
    echo.
    echo ERROR: Failed to push to GitHub
    echo.
    echo Possible reasons:
    echo 1. Not authenticated with GitHub
    echo 2. Repository doesn't exist or you don't have access
    echo 3. Network issues
    echo.
    echo To authenticate, you can:
    echo - Use GitHub CLI: gh auth login
    echo - Use SSH keys
    echo - Use Personal Access Token in the URL
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo SUCCESS! Code pushed to GitHub
echo ========================================
echo.
echo Repository: https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool
echo.
pause

