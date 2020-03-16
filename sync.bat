@echo off

rem	for new path, create a path variable here
rem	then add variable order to all_path if want to join quick sync
rem	then create a trigger param in if area

set sync_script=".\sync_supervisor.bat"
set "delim=$"
set "token=%~1"
for /F "tokens=%token% delims=%delim%" %%f IN (.\path.txt) DO (
    echo Cac path nay se duoc update: %%f
    @call %sync_script% "%%f"
)

goto :eof

:notfound
rem if not found
echo "Command not found"
echo "Please define path, append to all_path and create a sync execute option"
goto :eof