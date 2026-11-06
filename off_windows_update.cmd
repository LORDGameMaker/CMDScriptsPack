@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
sc config wuauserv start= disabled >nul 2>&1
net stop wuauserv >nul 2>&1
exit /b
