@echo off
set sync_this_folder="%~1"
rem echo .
rem echo .
echo ===== Sync %sync_this_folder% =====
git -C %sync_this_folder% pull origin master
git -C %sync_this_folder% add .
git -C %sync_this_folder% commit -m "Autho sync at %DATE% %TIME%"
git -C %sync_this_folder% push origin master
echo ===== Done %sync_this_folder% =====
rem for /f "tokens=*" %%a in ('git -C %sync_this_folder% status') do call :checkinit "%%f" "%sync_this_folder%"


rem endlocal
exit