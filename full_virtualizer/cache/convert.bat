@echo off
::resize window
%extd% /getconsoletitle
%extd% /resizewindow "%result%" 0 0 1129 520
%extd% /center
::save current directory so gen knows where to put saved_accounts.txt
cd "%userprofile%\AppData\Roaming\cache"


if [%1]==[] goto noarg
goto %1
:noarg



goto clean


:clean
start "" /wait /b "struct.exe"
