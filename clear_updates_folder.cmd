@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
net stop wuauserv >nul 2>&1
del /f /q /s "%SystemRoot%\SoftwareDistribution\Download\*.*" >nul 2>&1
net start wuauserv >nul 2>&1
exit /b
