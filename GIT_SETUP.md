# Git Setup and Push Instructions

## Quick Setup (Windows)

Run the batch file:
```bash
setup_git.bat
```

## Manual Setup

### Step 1: Initialize Git Repository

```bash
git init
```

### Step 2: Add All Files

```bash
git add .
```

### Step 3: Commit Files

```bash
git commit -m "Initial commit: CallGuard Sentinel - AI-Powered Scam Call Identification Tool"
```

### Step 4: Add Remote Repository

```bash
git remote add origin https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
```

If remote already exists:
```bash
git remote set-url origin https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
```

### Step 5: Set Branch to Main

```bash
git branch -M main
```

### Step 6: Push to GitHub

#### Option A: Using HTTPS (requires authentication)

```bash
git push -u origin main
```

You will be prompted for credentials. Use:
- Username: Your GitHub username
- Password: Your Personal Access Token (not your GitHub password)

#### Option B: Using SSH (if SSH keys are set up)

```bash
git remote set-url origin git@github.com:Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
git push -u origin main
```

#### Option C: Using GitHub CLI

```bash
gh auth login
git push -u origin main
```

## Authentication Methods

### 1. Personal Access Token (Recommended for HTTPS)

1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate new token with `repo` permissions
3. Use the token as password when pushing

### 2. SSH Keys

1. Generate SSH key: `ssh-keygen -t ed25519 -C "your_email@example.com"`
2. Add SSH key to GitHub: Settings → SSH and GPG keys → New SSH key
3. Use SSH URL for remote: `git@github.com:Ali-Zia3500/AI-powered-scam-call-dentification-tool.git`

### 3. GitHub CLI

```bash
# Install GitHub CLI
# Then authenticate
gh auth login
```

## Troubleshooting

### Error: Authentication failed
- Use Personal Access Token instead of password
- Set up SSH keys
- Use GitHub CLI

### Error: Remote already exists
```bash
git remote remove origin
git remote add origin https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
```

### Error: Large files
- The Models directory contains large files
- Consider using Git LFS for large files:
```bash
git lfs install
git lfs track "Models/**/*.bin"
git lfs track "Models/**/*.safetensors"
git add .gitattributes
```

### Error: Repository not found
- Verify the repository URL is correct
- Ensure you have push access to the repository
- Check if the repository exists on GitHub

## Repository Structure on GitHub

The repository will maintain the same structure as your local project:

```
AI-powered-scam-call-dentification-tool/
├── flask_sentinel/
│   ├── app.py
│   ├── services.py
│   ├── init_db.py
│   ├── templates/
│   ├── static/
│   ├── uploads/
│   └── nltk_data/
├── Models/
│   ├── Whisper_model/
│   ├── Fraud_model/
│   └── Emotion_model/
├── requirements.txt
├── README.md
├── .gitignore
└── LICENSE
```

## Next Steps After Push

1. Verify the code is on GitHub
2. Update repository description on GitHub
3. Add topics/tags to the repository
4. Enable GitHub Pages (if needed)
5. Set up GitHub Actions for CI/CD (optional)

## Notes

- The `.gitignore` file excludes `venv/`, `__pycache__/`, `*.db`, and uploaded audio files
- The `Models/` directory will be included (large files may take time to upload)
- Database file (`sentinel.db`) is excluded but the structure is maintained
- NLTK data is included in the repository

