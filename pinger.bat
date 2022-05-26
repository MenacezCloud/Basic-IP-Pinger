@Echo off
chcp 65001
cls
color 5
title Basic Pinger                                                                                                        
echo.
set /p IP=Enter IP=
color 4
:top
PING -n 1 %IP% | FIND "TTL="
title Pinging - %IP%
IF ERRORLEVEL 1 (echo [No Response] %IP% [No Response])
set /a num= (%Random%%%9)+1
color 5
ping -t 2 0 10 127.0.0.1 >nul
GoTo top