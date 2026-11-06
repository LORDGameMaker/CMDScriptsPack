@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
powercfg -h off >nul 2>&1
exit /b
