@echo off
rem Double-click: sab commit + GitHub pe push
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0_scripts\sync.ps1" %*
pause
