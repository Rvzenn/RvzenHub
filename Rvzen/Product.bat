@echo off
mode 50,6
color a
goto I
:emptyoption
cls
echo.
echo Computer name cannot be empty
pause>nul
cls
goto I
:I
echo What's the computer name? (Folder Name)
set /p namecomputer=
if "%namecomputer%" EQU "" (goto emptyoption)
md %namecomputer%
start ProduKey.exe /stext ProductPasswords.txt
cls
Extraying.
timeout /t 1 /nobreak > nul
cls
Extraying..
timeout /t 1 /nobreak > nul
cls
Extraying...
timeout /t 1 /nobreak > nul
move "ProductPasswords.txt" %namecomputer%
start PEX.vbe
cls
exit