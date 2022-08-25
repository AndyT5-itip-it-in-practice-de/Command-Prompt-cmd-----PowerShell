@echo off
cls
rem batch um alle PA-PH Laufwerke zu verbinden - RAS ZUGANG			
rem da lokal auch mit Domaenen-User eingeloggt wird, koennen Domaene und Domaenenuser verwendet werden
rem Anpassung auf konkreten User entfaellt
rem auf CR angepasst
echo --
echo Angepasstes Script - verbinden Laufwerke     21.08.2020 Andreas Krämer
echo ----
echo -----------------------
echo ------------------------------------------------------------------					
echo es erfolgt nun die Verbindung zu den Laufwerken in Crailsheim:
echo --------------------------------------------------------------
echo .
echo Voraussetzung: Sie sind erfolgreich ueber RAS angemeldet
echo .

pause

:Startpos

if exist f:\. goto fdel1
if exist t:\. goto fdel2
if exist x:\. goto fdel3
if exist y:\. goto fdel4
if exist z:\. goto fdel5
if exist m:\. goto fdel6
goto fnodel



:fdel1
net use f: /d
goto Startpos

:fdel2
net use t: /d
goto Startpos

:fdel3
net use x: /d
goto Startpos

:fdel4
net use y: /d
goto Startpos

:fdel5
net use z: /d
goto Startpos

:fdel6
net use m: /d
goto Startpos

:fnodel
net use f: \\patec.group\dfspa\DfsDE\LOC\Cr												/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use t: \\patec.group\dfspa\DfsDE\LOC\Cr\Transfer\Tausch_Cr										/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use x: \\patec.group\dfspa\DfsDE\LOC\Cr\Technical\Messkurven_HQL									/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use y: \\patec.group\dfspa\DfsDE\LOC\Cr\Manufacturing\Montage_MOE\20_Teams_MOE\61_W61						/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use z: \\patec.group\dfspa\DfsDE\LOC\Cr\Manufacturing\Montage\Montageberichte\Montageberichte\W61_Montageberichte\Krämer Andreas	/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use m: \\cr0cad03.patec.group\solidworks$												/user:%USERDOMAIN%\%USERNAME% /persistent:no


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