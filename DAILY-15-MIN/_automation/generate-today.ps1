# Daily 15-min doc generator. Runs every morning via Task Scheduler (task "Daily15Min").
# Creates <dd-MM-yyyy>.txt in the DAILY-15-MIN folder using Claude Code in headless mode.
# Optional: -Date 30-10-2026 to generate a specific day.
param([string]$Date)

$dir    = 'D:\learning-hub\DAILY-15-MIN'
$claude = 'C:\Users\Anupam Singh\.local\bin\claude.exe'
$log    = Join-Path $dir '_automation\log.txt'

$day = if ($Date) { [datetime]::ParseExact($Date, 'dd-MM-yyyy', $null) } else { Get-Date }
$name = $day.ToString('dd-MM-yyyy')
$file = Join-Path $dir "$name.txt"

function Write-Log($msg) { Add-Content -Path $log -Value "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') $msg" -Encoding UTF8 }

if (Test-Path $file) { Write-Log "$name.txt already exists, skipped"; exit 0 }

$prompt = (Get-Content (Join-Path $dir '_automation\prompt.txt') -Raw -Encoding UTF8).
    Replace('{{DATE}}', $name).
    Replace('{{DAYNAME}}', $day.ToString('dddd dd MMM yyyy', [Globalization.CultureInfo]'en-US'))

Write-Log "generating $name.txt"
Set-Location $dir
$OutputEncoding = New-Object System.Text.UTF8Encoding $false
$out = $prompt | & $claude -p --permission-mode acceptEdits --allowedTools 'Read,Glob,Grep' 2>&1 | Out-String
Add-Content -Path $log -Value $out -Encoding UTF8

if (Test-Path $file) { Write-Log "done: $name.txt" } else { Write-Log "FAILED: $name.txt was not created" }
