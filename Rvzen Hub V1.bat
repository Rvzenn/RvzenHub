@echo off
title Rvzen Hub
mode 50,24
color a
echo               $$$$$$$$$$$$$b            
echo              $$$$$$$$$$$$$$$$          
echo             4$$$$$$$$$$$$$$$$F        
echo             4$$$$$$$$$$$$$$$$F        
echo            $$$$”  ”$$$$”  ”$$$$          
echo            $F      4$$F      4$”          
echo            $$      $$$$      $P            
echo               4$$$$$”^$$$$$%          
echo                ”$$$$$$$$$$$                
echo                 *$$$$$$$$                 
echo    4$$                              $$r
echo    $$$b                            e$$$”  
echo    d$$$$$e                    z$$$$$b  
echo      4$$$*$$$$$c        .$$$$$*$$$r
echo               *$$$be$$$*”        
echo                  ”$$$$”                    
echo                 .d$$P$$$b                  
echo               d$$P      ^$$$b              
echo       .ed$$$”            ”$$$be.      
echo   $$$$$$P                    *$$$$$$  
echo 4$$$$$P                        $$$$$$”
echo   $$$                        ^$$P 
pause>nul
goto lang
:emptyname
cls
echo.
echo The name cannot be empty.
pause>nul
cls
goto O
:eki
cls
echo.
echo  This key is not valid/ Esa tecla no es valida
pause>nul
cls
goto lang
:emptyoption
echo. 
echo  This option cannot be empty.
pause>nul
cls
goto eng
:notoption
cls
echo.
echo  This key is not valid.
pause>nul
cls
goto eng
:vacionombre
cls
echo.
echo El nombre no puede quedar vacio.
pause>nul
cls
goto nombre
:vaciaopcion
echo. 
echo  Esto no puede quedar vacio.
pause>nul
cls
goto espa
:noopcion
cls
echo.
echo  Esta tecla no es valida.
pause>nul
cls
goto espa

cls
:lang
mode 50,6
echo Select a language/Elije un lenguaje
echo 1 - Spanish/Espanol
echo 2 - English/Ingles
set /p lang=
if %lang%==2 goto O
if %lang%==1 (goto nombre) else (goto eki)
:O
cls
mode 50,6
echo What's your name?

set /p name=

if "%name%" EQU "" (goto emptyname) else (goto I)


:I
cls
color a
title Rvzen Hub User logged: %name%
cls
color b
echo Loading.
timeout /t 1 /nobreak >nul
cls
echo Loading..
timeout /t 1 /nobreak >nul
cls
echo Loading...
timeout /t 1 /nobreak >nul
cls
echo Loading.
timeout /t 1 /nobreak >nul
cls
echo Loaded!
pause
cls
cd Rvzen
md Log 
attrib +h Log 
cls
color a
:eng
cls
color a
mode 50,14
echo Welcome %name%!
echo Chose an option:
echo -------------------
echo 1 to extract product id.
echo .
echo 2 to extract web passwords.
echo .
echo 3 to extract wifi passwords.
echo .
echo 4 to reload script.
echo .
echo 5 to exit.
echo -------------------
@echo off

for /f "tokens=1-3 delims=/- " %%a in ('date /t') do set FECHA="On the day %%a %%b of month %%c"
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set HORA="On the hour %%a and %%b"
set /p ejem=
if %ejem%==1 start Product.bat & cd Log & md "%name%" & cd "%name%" & md Product & cd Product & md %FECHA% %HORA% & cls && exit
if %ejem%==2 start WebPass.bat & cd Log & md "%name%" & cd "%name%" & md WebPass & cd WebPass & md %FECHA% %HORA% & cls && exit
if %ejem%==3 start Wifi.bat & cd Log & md "%name%" & cd "%name%" & md Wifi & cd Wifi & md %FECHA% %HORA% & cls && exit
if %ejem%==5 start Exit.bat & cd Log & md "%name%" & cd "%name%" & md Exit & cd Exit & md %FECHA% %HORA% & cls && exit
if %ejem%==4 cd Log & md "%name%" & cd "%name%" & md Reload & cd Reload & md %FECHA% %HORA% & cls & echo Reloading... & @timeout 2 /nobreak >nul & cls & cd .. & cd .. & cd .. & cd .. & start Hub.bat & exit
if %ejem%==password (cls & color 4 & mode 50,30 & echo Correct Password! && echo Deleting Logs... && timeout /t 3 /nobreak >nul && cls && rmdir /q /s Log && echo Deleted! && timeout 4 /nobreak && pause>nul) else (goto notoption)
if "%ejem%" EQU "" (goto emptyoption)

:nombre
cls
mode 50,6
echo Cual es tu nombre?

set /p name=
if "%name%" EQU "" (goto vacionombre) else (goto Bien)


:Bien
cls
color a
mode 50,14
title Rvzen Hub Usuario: %name%
cls
color b
echo Cargando.
timeout /t 1 /nobreak>nul
cls
echo Cargando..
timeout /t 1 /nobreak>nul
cls
echo Cargando...
timeout /t 1 /nobreak>nul
cls
echo Cargando.
timeout /t 1 /nobreak>nul
cls
echo Cargado!
pause
cls
cd Rvzen
md Log 
attrib +h Log 
cls
color a
:espa
cls
color a
echo Bienvenido %name%!
echo Elije una opcion:
echo -------------------
echo 1 para extraer id del producto.
echo .
echo 2 para extraer contrasenas de la web.
echo .
echo 3 para extraer contrasenas de redes wifi.
echo .
echo 4 para recargar la script
echo .
echo 5 para salir del script
echo -------------------
@echo off

for /f "tokens=1-3 delims=/- " %%a in ('date /t') do set FECHA="En el dia %%a %%b del mes %%c"
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set HORA="A la hora %%a y %%b"
set /p ejem=
if %ejem%==1 start Product-es.bat & cd Log & md "%name%" & cd "%name%" & md Product & cd Product & md %FECHA% %HORA% & cls && exit
if %ejem%==2 start WebPass-es.bat & cd Log & md "%name%" & cd "%name%" & md WebPass & cd WebPass & md %FECHA% %HORA% & cls && exit
if %ejem%==3 start Wifi-es.bat & cd Log & md "%name%" & cd "%name%" & md Wifi & cd Wifi & md %FECHA% %HORA% & cls && exit
if %ejem%==5 start Exit-es.bat & cd Log & md "%name%" & cd "%name%" & md Exit & cd Exit & md %FECHA% %HORA% & cls && exit
if %ejem%==4 cd Log & md "%name%" & cd "%name%" & md Reload & cd Reload & md %FECHA% %HORA% & cls & echo Recargando... & @timeout 2 /nobreak >nul & cls & cd .. & cd .. & cd .. & cd .. & start Hub.bat & exit
if %ejem%==password (cls & color 4 & mode 50,30 & echo Contraseña correcta! && echo Borrando registros... && timeout /t 3 /nobreak>nul && cls && rmdir /q /s Log && echo Registros borrados! && pause>nul && cd .. & start Hub.bat & exit) else (goto noopcion)
if "%ejem%" EQU "" (goto vaciaopcion)

