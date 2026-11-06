@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f >nul 2>&1
exit /b
