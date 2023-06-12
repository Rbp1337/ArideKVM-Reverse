@shift /0
@set b2eextd=C:\dump\virtualization_arp\util\extd.exe
@set extd=@call:extd
@set b2etempfile=C:\Users\f\AppData\Local\Temp\3D39.tmp\3D3A.tmp\3D3C.tmp
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

:extd
@set result=
@%b2eextd% "%~1" "%~2" "%~3" "%~4" "%~5" "%~6" "%~7" "%~8" "%~9" > "%b2etempfile%"
@set /p result= < "%b2etempfile%"
@del "%b2etempfile%"
@goto:eof