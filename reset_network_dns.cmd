@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1
netsh int ip reset >nul 2>&1
netsh winsock reset >nul 2>&1
exit /b
