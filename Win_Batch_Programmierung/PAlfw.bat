@echo off
cls
rem auf CR angepasst								Ströbel, 01.10.2004
rem Laufwerk P entfernt, Server für Home-Laufwerk angepasst			Ströbel, 24.08.2015
echo es erfolgt nun die Verbindung zu den Laufwerken in Crailsheim:
echo --------------------------------------------------------------
echo .
echo Voraussetzung: Sie sind erfolgreich ueber RAS angemeldet
echo .

pause

if exist f:\. goto fdel
goto fnodel

:fdel
net use f: /d

:fnodel
net use f: \\patec.group\dfspa\DfsDE\LOC\Cr				/user:%USERDOMAIN%\%USERNAME% /persistent:no



if exist u:\. goto udel
goto unodel

:udel
net use u: /d

:unodel
net use u: \\cr01fs05.patec.group\%USERNAME%$	 		/user:%USERDOMAIN%\%USERNAME% /persistent:no

echo folgende Laufwerke sind verbunden:
echo ----------------------------------

net use

pause