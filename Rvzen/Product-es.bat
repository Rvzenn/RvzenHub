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
start ProduKey.exe /stext ProductPasswords.txt
cls
echo Extrayendo.
timeout /t 1 /nobreak > nul
cls
echo Extrayendo..
timeout /t 1 /nobreak > nul
cls
echo Extrayendo...
timeout /t 1 /nobreak > nul
move "ProductPasswords.txt" %namecomputer%
cls
start PEX-es.vbe
exit