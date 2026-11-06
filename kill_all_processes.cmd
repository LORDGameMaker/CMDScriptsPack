@echo off
taskkill /f /fi "status eq not responding" >nul 2>&1
exit /b
