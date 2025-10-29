# 🚀 GitHub Setup Guide

This guide will help you push your antivirus scanner project to GitHub.

## 📋 Prerequisites

- Git installed on your computer
- GitHub account created
- GitHub repository created (empty repository)

## 📝 Step-by-Step Instructions

### Step 1: Initialize Git Repository

Open your terminal/command prompt in the `antivirus-app` directory and run:

```bash
git init
```

### Step 2: Add All Files to Git

```bash
git add .
```

This will add all files to the staging area. The `.gitignore` file will automatically exclude unnecessary files.

### Step 3: Commit Your Files

```bash
git commit -m "Initial commit: Antivirus scanner with web interface"
```

### Step 4: Add Remote Repository

Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name:

```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

**Example:**
```bash
git remote add origin https://github.com/johnsmith/antivirus-scanner.git
```

### Step 5: Push to GitHub

```bash
git branch -M main
git push -u origin main
```

You will be prompted for your GitHub username and password (or personal access token).

## 🔐 Using Personal Access Token (Recommended)

If you're asked for a password, you'll need a Personal Access Token:

1. Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate new token
3. Select scopes: `repo` (full control of private repositories)
4. Copy the token and use it as your password

## 🎯 Quick Copy-Paste Commands

Copy and paste these commands in order (replace with your details):

```bash
# Navigate to project directory
cd antivirus-app

# Initialize Git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Antivirus scanner with web interface"

# Add remote (REPLACE YOUR_USERNAME and YOUR_REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## 📝 For Future Updates

After making changes to your code:

```bash
# Stage changes
git add .

# Commit changes
git commit -m "Description of changes"

# Push to GitHub
git push
```

## 🐛 Troubleshooting

### Issue: Remote repository already exists
```bash
git remote set-url origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

### Issue: Nothing to commit
- Make sure you're in the correct directory
- Check if files were added: `git status`

### Issue: Authentication failed
- Use Personal Access Token instead of password
- Make sure token has `repo` scope selected

### Issue: Rejected push
If the remote repository already has content:
```bash
git pull origin main --allow-unrelated-histories
git push origin main
```

## ✅ Verify Your Upload

After pushing, visit your GitHub repository to verify all files are uploaded:

`https://github.com/YOUR_USERNAME/YOUR_REPO_NAME`

You should see:
- app.py
- imp.py
- requirements.txt
- templates/ folder
- README.md
- .gitignore

## 🌟 Adding a Description

After uploading, add a description to your repository:
- Click the gear icon (⚙️) next to "About" on your GitHub repository
- Add a description like: "Web-based antivirus scanner with interactive frontend"
- Add topics like: `antivirus`, `python`, `flask`, `web-scanner`, `cybersecurity`
- Add website: `http://localhost:5000` (or your hosted URL)

---

**Need help?** Check out the official [GitHub documentation](https://docs.github.com/en/get-started/getting-started-with-git)
