@echo off
net session >nul 2>&1
if %errorLevel% neq 0 exit /b
net stop spooler >nul 2>&1
del /q /f /s "%systemroot%\System32\Spool\Printers\*.*" >nul 2>&1
net start spooler >nul 2>&1
exit /b
