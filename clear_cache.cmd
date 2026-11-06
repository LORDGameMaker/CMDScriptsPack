@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
del /f /q /s "%SystemRoot%\Temp\*.*" >nul 2>&1
del /f /q /s "%USERPROFILE%\AppData\Local\Temp\*.*" >nul 2>&1
del /f /q /s "%SystemRoot%\SoftwareDistribution\Download\*.*" >nul 2>&1
exit /b
