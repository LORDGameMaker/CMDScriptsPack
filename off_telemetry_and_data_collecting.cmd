@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
sc config WerSvc start= disabled >nul 2>&1
net stop WerSvc >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1
net stop DiagTrack >nul 2>&1
exit /b
