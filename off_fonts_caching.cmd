@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
sc config FontCache start= disabled >nul 2>&1
net stop FontCache >nul 2>&1
exit /b
