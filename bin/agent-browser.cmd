@echo off
setlocal
set "SCRIPT_DIR=%~dp0"
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set "ARCH=x64") else if "%PROCESSOR_ARCHITECTURE%"=="ARM64" (set "ARCH=arm64") else (set "ARCH=x64")
set "BINARY=%SCRIPT_DIR%agent-browser-win32-%ARCH%.exe"
if exist "%BINARY%" ("%BINARY%" %* & exit /b %errorlevel%)
node "%SCRIPT_DIR%..\dist\index.js" %*
exit /b %errorlevel%
