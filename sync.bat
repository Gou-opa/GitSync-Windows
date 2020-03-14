@echo off

echo Checking internet connection
Ping 8.8.8.8 -n 1 -w 1000
if errorlevel 0 (
echo Connected
set destination_folder="%~1"

rem set "string=%destination_folder%"
rem echo day la %string%
echo day la dest "%~1"
pause
set "str=start /B .\sync_worker.bat %~1:;=" & start /B .\sync_worker.bat "%"
echo .
echo "final str:%str%"
echo .

%str%
) else (
echo No internet connection
)
goto :eof
