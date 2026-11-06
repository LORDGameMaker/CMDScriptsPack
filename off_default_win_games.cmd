@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
dism /online /disable-feature /featurename:InboxGames /norestart >nul 2>&1
exit /b
