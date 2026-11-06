@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 255 /f >nul 2>&1
exit /b
