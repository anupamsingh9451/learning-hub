# Saare changes commit karta hai (pehle secret check), aur remote set ho to push.
# Usage:  .\_scripts\sync.ps1                    (default message)
#         .\_scripts\sync.ps1 "my msg"           (apna commit message)
#         .\_scripts\sync.ps1 -Force             (secret check skip - dhyan se)
# Ya bas repo root pe PUSH.bat double-click karo.
param([string]$Message, [switch]$Force)

$repo = Split-Path $PSScriptRoot -Parent
Set-Location $repo

git add -A
$changes = git status --porcelain
if (-not $changes) {
    Write-Host "Kuch naya nahi hai. Sab up to date." -ForegroundColor Yellow
    exit 0
}

# password / API key / private key jaisi lines mile to commit roko
$pattern = '(?i)(password|passwd|pwd|api[_-]?key|secret|token)\s*[:=]\s*["'']?[^\s"''<>]{6,}|sk-[A-Za-z0-9_-]{20,}|ghp_[A-Za-z0-9]{30,}|AKIA[0-9A-Z]{16}|-----BEGIN [A-Z ]*PRIVATE KEY-----'
$staged = git diff --cached --name-only --diff-filter=AM
$hits = foreach ($f in $staged) {
    if ($f -like '_scripts/*' -or $f -match '\.(docx|pdf|png|jpg)$') { continue }
    Select-String -Path (Join-Path $repo $f) -Pattern $pattern -ErrorAction SilentlyContinue
}
if ($hits -and -not $Force) {
    Write-Host "RUKO! Ye lines secret jaisi lag rahi hain:" -ForegroundColor Red
    $hits | ForEach-Object { Write-Host ("  {0}:{1}  {2}" -f $_.Path, $_.LineNumber, $_.Line.Trim()) }
    Write-Host "Hata do, ya agar sirf example hai to:  .\_scripts\sync.ps1 -Force" -ForegroundColor Yellow
    git reset -q
    exit 1
}

if (-not $Message) { $Message = "learning update: " + (Get-Date -Format "dd-MM-yyyy") }
git commit -m $Message | Out-Null
Write-Host "Commit ho gaya: $Message" -ForegroundColor Green

$remote = git remote
if ($remote) {
    $branch = git branch --show-current
    git push -u origin $branch
    if ($LASTEXITCODE -eq 0) { Write-Host "Push ho gaya." -ForegroundColor Green }
} else {
    Write-Host "Remote set nahi hai - SETUP.md dekho (GitHub jodne ke liye)." -ForegroundColor Yellow
}
