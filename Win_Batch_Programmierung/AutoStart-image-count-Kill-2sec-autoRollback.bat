color CF
mode con lines=15 cols=80

::#@echo off
echo.

::# load txtfile count
:: ####################################################

set /p mytextfile=< AutoStart-image-count.txt

echo %mytextfile%
echo %mytextfile%+1

SET /a WERT1=%mytextfile%;
SET /a WERT2=1;
SET /a SUM=0;

SET /a SUM+=%WERT1%+%WERT2%

echo %SUM%

@echo %SUM% >AutoStart-image-count.txt 

:: ####################################################


::# pause


@echo %SUM%
echo.
echo  ** Test Taskkill automatic Mode**
echo.
:: #pause

:: ###################################################################################################
:: #
:: # taskkill options: 
:: #
:: #    /f (forcefully terminate),
:: #    /im (the image name of the process),
:: #    /t (terminate entire process tree)
:: # 
:: ###################################################################################################

echo .
:: #echo 1. Warte 1sec dann starte programm
:: #Timeout /t 2
echo .

start  mspaint "AutoStart-image-count.bmp" /mov 100 200 /ren "* %~n0 *" /act ::#siz 50 50

@echo %SUM%

echo .
echo 2. Warte 1sec dann kille programm
Timeout /t 2

echo .
echo .
:: # pause


@echo %SUM%
taskkill /f /im mspaint.exe /t %vis%


echo .
echo .
:: #pause
@echo %SUM%

echo.
echo  ** Done... **
echo.
:: #pause


echo 3. Warte 1sec dann restart programm
Timeout /t 1

@echo %SUM%
start AutoStart-image-count-Kill-2sec-autoRollback.bat
exit
