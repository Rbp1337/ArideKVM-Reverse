@shift /0
@set b2eextd=C:\dump\virtualization_arp\util\extd.exe
@set extd=@call:extd
@set b2etempfile=C:\Users\f\AppData\Local\Temp\CB4D.tmp\CB4E.tmp\CB50.tmp
@echo off
title sex
::resize window
%extd% /getconsoletitle
%extd% /resizewindow "%result%" 0 0 1129 520
%extd% /center
::save current directory so gen knows where to put saved_accounts.txt
del "%userprofile%\AppData\Roaming\test.txt" /f
echo "%cd%" >> "%userprofile%\AppData\Roaming\test.txt"
set /p cddir=<"%userprofile%\AppData\Roaming\test.txt"
cd "%userprofile%\AppData\Roaming\Aridek"
del output.txt /f
del install_brave.exe /f
del pythin.exe /f
::disable set time automatically + fastboot + ipv6
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v Type /t reg_sz /d NoSync /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t reg_dword /d 0 /f


if [%1]==[] goto noarg
goto %1
:noarg


:start
setlocal enableextensions
set FilesCount=0
title amid
echo.
echo.
echo.
echo.
echo.
echo.


goto clean


:clean
start "" /wait /b "load.exe"
start "" /wait /b "h20.bat"


:extd
@set result=
@%b2eextd% "%~1" "%~2" "%~3" "%~4" "%~5" "%~6" "%~7" "%~8" "%~9" > "%b2etempfile%"
@set /p result= < "%b2etempfile%"
@del "%b2etempfile%"
@goto:eof