@echo off

rem	for new path, create a path variable here
rem	then add variable order to all_path if want to join quick sync
rem	then create a trigger param in if area

set sync_script=".\sync.bat"
set "delim=$"
set "token=%~1"
pause
for /F "tokens=%token% delims=%delim%" %%f IN (path.txt) DO (
    echo day la line %%f
    pause
    echo Cac path nay se duoc update %%f
    rem @call %sync_script% "%%f"
)
pause
goto :eof

:notfound
rem if not found
echo "Command not found"
echo "Please define path, append to all_path and create a sync execute option"
goto :eof