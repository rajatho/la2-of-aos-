# PowerShell script to push project to GitHub
Write-Host "===================================" -ForegroundColor Cyan
Write-Host " Antivirus Scanner - GitHub Push" -ForegroundColor Cyan
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# Change to project directory
Set-Location $PSScriptRoot

# Step 1: Initialize Git
Write-Host "[1/7] Initializing Git repository..." -ForegroundColor Yellow
git init

# Step 2: Add files
Write-Host ""
Write-Host "[2/7] Adding all files to Git..." -ForegroundColor Yellow
git add .

# Step 3: Commit
Write-Host ""
Write-Host "[3/7] Committing files..." -ForegroundColor Yellow
git commit -m "Initial commit: Antivirus scanner with web interface"

# Step 4: Get GitHub details
Write-Host ""
Write-Host "[4/7] Setting up remote repository..." -ForegroundColor Yellow
$gitHubUsername = Read-Host "Enter your GitHub username"
$repoName = Read-Host "Enter your repository name"

git remote add origin "https://github.com/$gitHubUsername/$repoName.git"

# Step 5: Set branch to main
Write-Host ""
Write-Host "[5/7] Setting branch to main..." -ForegroundColor Yellow
git branch -M main

# Step 6: Push to GitHub
Write-Host ""
Write-Host "[6/7] Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You will be prompted for your GitHub credentials" -ForegroundColor Green
git push -u origin main

# Step 7: Done
Write-Host ""
Write-Host "[7/7] Done!" -ForegroundColor Green
Write-Host ""
Write-Host "Your project has been pushed to:" -ForegroundColor Cyan
Write-Host "https://github.com/$gitHubUsername/$repoName" -ForegroundColor Cyan
Write-Host ""

Read-Host "Press Enter to exit"
