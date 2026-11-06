@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b

sfc /scannow >nul
exit /b
