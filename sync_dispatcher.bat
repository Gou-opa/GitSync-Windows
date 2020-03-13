@echo off

rem	for new path, create a path variable here
rem	then add variable order to all_path if want to join quick sync
rem	then create a trigger param in if area

rem ####define path
set "xmind_path=%CD:~0,3%Xmind pool"
set "music_path=%CD:~0,3%Music"
set "packet_tracer_labs_path=%CD:~0,3%Knowledge\IT\Certs\Cisco certificate\packet tracer lab"
set sync_script=".\sync.bat"

rem ####append all
set "all_path=%xmind_path%;%music_path%;%packet_tracer_labs_path%"

rem ####sync execute
rem sync all
if "%1"=="a" set "destination_folders=%all_path%" && goto :do
rem sync specific folder
if "%1"=="m" set "destination_folders=%music_path%" && goto :do
if "%1"=="x" set "destination_folders=%xmind_path%" && goto :do
if "%1"=="p" set "destination_folders=%packet_tracer_labs_path%" && goto :do
rem else
goto :notfound

:do
rem echo final dest = %destination_folders%

@call %sync_script% "%destination_folders%"
goto :eof

:notfound
rem if not found
echo "Command not found"
echo "Please define path, append to all_path and create a sync execute option"
goto :eof