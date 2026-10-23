# Aaj kya seekha (TIL) - mahine ki journal file (.txt) me ek line jodta hai.
# Usage:  .\_scripts\til.ps1 "Docker multi-stage build se image chhoti hoti hai"
param([Parameter(Mandatory)][string]$Text)

$repo  = Split-Path $PSScriptRoot -Parent
$now   = Get-Date
$en    = [Globalization.CultureInfo]'en-US'
$dir   = Join-Path $repo "JOURNAL\$($now.Year)"
New-Item -ItemType Directory -Force $dir | Out-Null
$file  = Join-Path $dir ($now.ToString("MM-MMMM", $en).ToLower() + ".txt")
$utf8  = New-Object Text.UTF8Encoding $false
$line  = "-" * 60

if (-not (Test-Path $file)) {
    $title = "TIL - " + $now.ToString("MMMM yyyy", $en).ToUpper()
    [IO.File]::WriteAllText($file, "$title`n$("=" * $title.Length)`nRoz jo seekha, ek line me.  (.\_scripts\til.ps1 `"...`")`n", $utf8)
}
$day = $now.ToString("dd-MM-yyyy") + " (" + $now.ToString("ddd", $en).ToUpper() + ")"
$content = [IO.File]::ReadAllText($file, $utf8)
$add = ""
if ($content -notmatch [regex]::Escape($day)) { $add += "`n`n$line`n$day`n$line`n" }
$add += "  - $Text`n"
[IO.File]::AppendAllText($file, $add, $utf8)
Write-Host "TIL jud gaya -> $file" -ForegroundColor Green
