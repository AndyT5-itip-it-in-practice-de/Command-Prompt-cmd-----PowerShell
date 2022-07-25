@echo off

echo --
echo Network_connection_Folder_To_Label
echo ----------------------------------------
echo --
echo -- ** Info Network Adress deleted - need renew **
echo --

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
net use f: \\**Path to folder******\******\****\****\****	/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use t: \\**Path to folder******\******\****\****\****	/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use x: \\**Path to folder******\******\****\****\****	/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use y: \\**Path to folder******\******\****\****\****	/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use z: \\**Path to folder******\******\****\****\****	/user:%USERDOMAIN%\%USERNAME% /persistent:no
net use m: \\**Path to folder******\******\****\****\****	/user:%USERDOMAIN%\%USERNAME% /persistent:no


if exist u:\. goto udel
goto unodel

:udel
net use u: /d

:unodel
net use u: \\******\%USERNAME%$	 		/user:%USERDOMAIN%\%USERNAME% /persistent:no




echo --Follow Network-Folder now connected:
echo -------------------------------------------------

net use

pause