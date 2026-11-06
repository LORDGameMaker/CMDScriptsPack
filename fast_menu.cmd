@echo off
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "10" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f >nul 2>&1
exit /b
