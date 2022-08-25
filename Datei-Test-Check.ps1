# FileCheck in PowerShell
# Das Script prüft ob eine Datei existiert oder nicht
# Mehr auf www.JoeKaDev.de


$testdatei = "C:\Testordner\Testdatei.txt"
If (Test-Path $testdatei)
{
powershell -WindowStyle hidden -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Die Datei $($testdatei) existiert.','WARNING')}"

    #Write-Host -BackGroundColor Green "Die Datei $($testdatei) existiert."
}
else
{
powershell -WindowStyle hidden -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Die Datei $($testdatei) existiert bisher nicht.','WARNING')}"

    Write-Host -BackgroundColor Red "Die Datei $($testdatei) existiert bisher nicht."
}
#EOF
 
