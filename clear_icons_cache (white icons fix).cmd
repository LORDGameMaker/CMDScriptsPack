@echo off
taskkill /f /im explorer.exe >nul 2>&1
del /f /q "%localappdata%\IconCache.db" >nul 2>&1
start explorer.exe
exit /b
