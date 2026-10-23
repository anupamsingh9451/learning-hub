# Template se naya note (.txt) banata hai aur VS Code me khol deta hai.
# Usage:  .\_scripts\new-note.ps1 -Topic php-laravel -Title "Eloquent Relationships"
# Topic = NOTES ke andar folder ka naam (naya ho to ban jayega)
param(
    [Parameter(Mandatory)][string]$Topic,
    [Parameter(Mandatory)][string]$Title
)

$repo = Split-Path $PSScriptRoot -Parent
$dir  = Join-Path $repo "NOTES\$Topic"
New-Item -ItemType Directory -Force $dir | Out-Null

$slug = ($Title.ToLower() -replace '[^a-z0-9]+', '-').Trim('-')
$file = Join-Path $dir "$slug.txt"
if (Test-Path $file) {
    Write-Host "Note pehle se hai: $file" -ForegroundColor Yellow
} else {
    $heading = $Title.ToUpper()
    $body = Get-Content (Join-Path $repo "_templates\note-template.txt") -Raw -Encoding UTF8
    $body = $body.Replace("{{TITLE}}", $heading).Replace("{{UNDERLINE}}", ("=" * $heading.Length)).Replace("{{DATE}}", (Get-Date -Format "dd-MM-yyyy")).Replace("{{TOPIC}}", $Topic)
    [IO.File]::WriteAllText($file, $body, (New-Object Text.UTF8Encoding $false))
    Write-Host "Naya note: $file" -ForegroundColor Green
}
if (Get-Command code -ErrorAction SilentlyContinue) { code $file }
