@echo off
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
echo 1. Warte 2sec dann starte programm
Timeout /t 2
echo .

start  mspaint
echo .
echo 2. Warte 2sec dann kille programm
Timeout /t 2

echo .
echo .
:: # pause



taskkill /f /im mspaint.exe /t %vis%


echo .
echo .
:: #pause


echo.
echo  ** Done... **
echo.
:: #pause

echo 3. Warte 2sec dann restart programm
Timeout /t 2

start C:\Users\KRA4CR\Desktop\kill_test-2sec-auto.bat


