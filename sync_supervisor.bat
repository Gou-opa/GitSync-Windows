@echo off
set destination_folder="%~1"
rem echo day la dest "%~1"
echo Checking internet connection
Ping 8.8.8.8 -n 1 -w 1000

if %errorlevel% == 0 (
    echo Connected
    call :sync %destination_folder%
) else (
    echo No internet connection
    pause
)
goto :eof

:sync
setlocal
echo .
set "string=%destination_folder%"
rem echo day la string %string%
set "str=start /B .\sync_worker.bat %string:;=" & start /B .\sync_worker.bat "%"
rem echo .
rem echo "final str:%str%"
rem echo .
%str%
endlocal
goto :eof
