@echo off
echo ===================================
echo  Antivirus Scanner - GitHub Push
echo ===================================
echo.

REM Change to project directory
cd /d "%~dp0"

echo [1/7] Initializing Git repository...
git init

echo.
echo [2/7] Adding all files to Git...
git add .

echo.
echo [3/7] Committing files...
git commit -m "Initial commit: Antivirus scanner with web interface"

echo.
echo [4/7] Setting up remote repository...
echo Please enter your GitHub username:
set /p GITHUB_USERNAME=
echo Please enter your repository name:
set /p REPO_NAME=
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

echo.
echo [5/7] Setting branch to main...
git branch -M main

echo.
echo [6/7] Pushing to GitHub...
echo You will be prompted for your GitHub credentials
git push -u origin main

echo.
echo [7/7] Done!
echo.
echo Your project has been pushed to:
echo https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
echo.
pause
