@echo off
set destination_folder="%~1"
echo day la dest "%~1"
echo Checking internet connection
Ping 8.8.8.8 -n 1 -w 1000
echo Connected
set "string=%destination_folder%"
set "str=start /B .\sync_worker.bat %string:;=" & start /B .\sync_worker.bat "%"
echo .
echo "final str:%str%"
echo .
%str%

goto :eof