@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d 0 /f >nul 2>&1
exit /b
