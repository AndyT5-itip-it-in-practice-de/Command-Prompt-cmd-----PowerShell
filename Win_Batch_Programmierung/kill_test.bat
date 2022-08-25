@echo off
echo.
echo  ** Test Taskkill **
echo.
pause
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
echo 1. Warte 10sec dann starte programm
Timeout /t 10 
echo .

start  mspaint
echo .
echo 2. Warte 10sec dann kille programm
Timeout /t 10 

echo .
echo .
:: # pause



taskkill /f /im mspaint.exe /t %vis%


:: # taskkill /f /im Paint /t %vis%
:: # taskkill /f /im mspaint /t %vis%

:: ## TASKKILL /F /FI "PID ge 1000" /FI "WINDOWTITLE ne unbenan*"
:: ## TASKKILL /F /FI "PID ge 1000" /FI "*Unbenannt - Paint*"

:: ## powershell -Executionpolicy ByPass -Command "Get-Process | 
:: ## ?{$_.MainWindowTitle -like '*Unbenannt*'} | Stop-Process -Force"

echo .
echo .
pause


echo.
echo  ** Done... **
echo.
pause


start C:\Users\KRA4CR\Desktop\kill_test.bat


