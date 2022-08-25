﻿

##Verknüpfung 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

#Console Ausblenden

#$window = Add-Type-memberDefinition @"
#[DllImport("user32.dll")]
#public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
#name "Win32ShowWindowAsync"-namespace Win32Functions passThru

#$window::ShowWindow((Get-Process -id $pid).MainWindowHandle,0)






##### GUI selber
$Form = New-Object system.Windows.Forms.Form
$Form.Text = "PC-Infos"
$Form.TopMost = $true
$Form.Width = 1000
$Form.Height = 500

#--------------------------------------------------------------------------------------------

#### Label TestGui
$Label1 = New-Object system.windows.Forms.Label
$Label1.Text = "TestGui 12"
$Label1.Width = 180
$Label1.Height = 40
$Label1.BackColor = [System.Drawing.Color]::FromARGB(245, [System.Drawing.Color]::FromName("Black")) #transparency 0-254
$Label1.ForeColor = "Red"
$Label1.location = new-object system.drawing.point(400,7) # left,top
$Label1.Font = "Microsoft Sans Serif,20"
$Form.controls.Add($Label1)



#Left Side -----------------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------------------------

#### Computer Button
$button1 = New-Object system.windows.Forms.Button
$button1.Text = "Computer Info"
$button1.Width = 130
$button1.Height = 32
#$button1.BackColor = "Blue"
#$button1.ForeColor = "Yellow"
$button1.location = new-object system.drawing.point(35,54) # left,top
$button1.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button1)

####### Festplatte Button
$button2 = New-Object system.windows.Forms.Button
$button2.Text = "Festplatte Info"
$button2.Width = 130
$button2.Height = 32
$button2.BackColor = "Black"
$button2.ForeColor = "Yellow"
$button2.location = new-object system.drawing.point(180,54) # left,top
$button2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button2)

####### del files
$button00 = New-Object system.windows.Forms.Button
$button00.Text = "Del Info-files"
$button00.Width = 150
$button00.Height = 28
$button00.BackColor = "Red"
$button00.ForeColor = "Yellow"
$button00.location = new-object system.drawing.point(340,54) # left,top
$button00.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button00)



###### Graphics Button
$button3 = New-Object system.windows.Forms.Button
$button3.Text = "Graphics Info"
$button3.Width = 130
$button3.Height = 32
#$button3.BackColor = "Blue"
#$button3.ForeColor = "Yellow"
$button3.location = new-object system.drawing.point(35,94) # left,top
$button3.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button3)


###### Prozessor Button
$button4 = New-Object system.windows.Forms.Button
$button4.Text = "Prozessor Info"
$button4.Width = 130
$button4.Height = 32
$button4.BackColor = "Black"
$button4.ForeColor = "Yellow"
$button4.location = new-object system.drawing.point(180,93) # left,top
$button4.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button4)



###### Prozesse - in txtfile
$button7 = New-Object system.windows.Forms.Button
$button7.Text = "Prozesse List"
$button7.Width = 147
$button7.Height = 32
$button7.BackColor = "Black"
$button7.ForeColor = "Yellow"
$button7.location = new-object system.drawing.point(320,93) # left,top
$button7.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button7)

#----------------------------------------------------------------------------------------------------------------------------------

#### Label Listview
$Label2 = New-Object system.windows.Forms.Label
$Label2.Text = "Listview:"
$Label2.Width = 150
$Label2.Height = 30
$Label2.BackColor = [System.Drawing.Color]::FromARGB(245, [System.Drawing.Color]::FromName("Black")) #transparency 0-254
$Label2.ForeColor = "Red"
$Label2.location = new-object system.drawing.point(15,134) # left,top
$Label2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($Label2)


###### Listview 
$listView1 = New-Object system.windows.Forms.ListView
$listView1.View = 'Details'
$listView1.Width = 480
$listView1.Height = 167
#$listView1.Columns.Add('Item')
#$listView1.Columns.Add('First Name')
#$listView1.Columns.Add('Last Name')
$listView1.location = new-object system.drawing.point(15,164) # left,top
$Form.controls.Add($listView1)

#----------------------------------------------------------------------------------------------------------------------------------




#Right Side -----------------------------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

#### Label Listbox
$Label2 = New-Object system.windows.Forms.Label
$Label2.Text = "Listbox Search Variables:"
$Label2.Width = 210
$Label2.Height = 30
$Label2.BackColor = [System.Drawing.Color]::FromARGB(245, [System.Drawing.Color]::FromName("Black")) #transparency 0-254
$Label2.ForeColor = "Red"
$Label2.location = new-object system.drawing.point(510,134) # left,top
$Label2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($Label2)


###### Listbox Listbox_AddSearchVariabl
$Listbox_AddSearchVariabl = New-Object system.windows.Forms.ListBox
#$Listbox_AddSearchVariabl.View = 'Listbox_AddSearchVariabl'
$Listbox_AddSearchVariabl.Width = 450
$Listbox_AddSearchVariabl.Height = 80
#$Listbox_AddSearchVariabl.Columns.Add('Item')
#$Listbox_AddSearchVariabl.Columns.Add('First Name')
#$Listbox_AddSearchVariabl.Columns.Add('Last Name')
$Listbox_AddSearchVariabl.location = new-object system.drawing.point(510,164) # left,top
$Form.controls.Add($Listbox_AddSearchVariabl)



###### Such Variable Eintragen Button
$button11 = New-Object system.windows.Forms.Button
$button11.Text = "Suche Eintragen"
$button11.Width = 160
$button11.Height = 32
$button11.BackColor = "Black"
$button11.ForeColor = "Yellow"
$button11.location = new-object system.drawing.point(510,60) # left,top
$button11.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button11)

##### Suchliste in datei schreiben
$button12 = New-Object system.windows.Forms.Button
$button12.Text = "Listbox-savetoFile"
$button12.Width = 200
$button12.Height = 32
$button12.BackColor = "Black"
$button12.ForeColor = "Yellow"
$button12.location = new-object system.drawing.point(760,95) # left,top
$button12.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button12)

###### Suchliste von Datei laden
$button13 = New-Object system.windows.Forms.Button
$button13.Text = "Suchliste von Datei laden"
$button13.Width = 230
$button13.Height = 32
$button13.BackColor = "Black"
$button13.ForeColor = "Yellow"
$button13.location = new-object system.drawing.point(730,130) # left,top
$button13.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button13)

#----------------------------------------------------------------------------------------------
##Textfeld Such Variable Eintragen
$txtbx_SuchVar1 = New-Object system.windows.Forms.Textbox
$txtbx_SuchVar1.Text = "*.*"
$txtbx_SuchVar1.Width = 180
$txtbx_SuchVar1.Height = 25
$txtbx_SuchVar1.Multiline = $True
#$txtbx_SuchVar1.ForeColor = "Red"
$txtbx_SuchVar1.location = new-object system.drawing.point(510,100) # left,top
$txtbx_SuchVar1.Font = "Microsoft Sans Serif,9"
$Form.controls.Add($txtbx_SuchVar1)

 
#Left Side  Ground -----------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------------------------

###### Listview_ Clear
$button5 = New-Object system.windows.Forms.Button
$button5.Text = "List Clear"
$button5.Width = 147
$button5.Height = 32
$button5.BackColor = "Black"
$button5.ForeColor = "Yellow"
$button5.location = new-object system.drawing.point(15,341) # left,top
$button5.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button5)


#----------------------------------------------------------------------------------------------
##Textfeld Ordner öffnen
$txtbx1 = New-Object system.windows.Forms.Textbox
$path_to_txtfile = 'C:\Users\KRA4CR\Desktop\!PowerShell\folderpath.txt'
$inputtxt = Get-Content $path_to_txtfile
$txtbx1.Text = $inputtxt
$txtbx1.Width = 300
$txtbx1.Height = 32
$txtbx1.Multiline = $True
$txtbx1.ForeColor = "Black"
$txtbx1.location = new-object system.drawing.point(15,385) # left,top
$txtbx1.Font = "Microsoft Sans Serif,9"
$Form.controls.Add($txtbx1)
#----------------------------------------------------------------------------------------------



#### Label unter Textfeld
$Label4 = New-Object system.windows.Forms.Label
$Label4.Text = "(Variable wird von einer datei geladen)"
$Label4.Width = 350
$Label4.Height = 20
$Label4.BackColor = [System.Drawing.Color]::FromARGB(245, [System.Drawing.Color]::FromName("Black")) #transparency 0-254
$Label4.ForeColor = "Red"
$Label4.location = new-object system.drawing.point(15,420) # left,top
$Label4.Font = "Microsoft Sans Serif,9"
$Form.controls.Add($Label4)



###### open_Explorer
$button6 = New-Object system.windows.Forms.Button
$button6.Text = "Open Explorer"
$button6.Width = 147
$button6.Height = 32
$button6.BackColor = "Black"
$button6.ForeColor = "Yellow"
$button6.location = new-object system.drawing.point(335,385) # left,top
$button6.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button6)

#Right Side Ground--------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------


###### Listbox_ Clear
$button41 = New-Object system.windows.Forms.Button
$button41.Text = "List Clear"
$button41.Width = 127
$button41.Height = 32
$button41.BackColor = "Black"
$button41.ForeColor = "Yellow"
$button41.location = new-object system.drawing.point(510,235) # left,top
$button41.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button41)



###### Listbox_ Clear Selected
$button42 = New-Object system.windows.Forms.Button
$button42.Text = "Selected Clear"
$button42.Width = 147
$button42.Height = 32
$button42.BackColor = "Black"
$button42.ForeColor = "Yellow"
$button42.location = new-object system.drawing.point(660,235) # left,top
$button42.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button42)



###### Listbox_ Show Selected
$button43 = New-Object system.windows.Forms.Button
$button43.Text = "Selected show"
$button43.Width = 147
$button43.Height = 32
$button43.BackColor = "Black"
$button43.ForeColor = "Yellow"
$button43.location = new-object system.drawing.point(810,235) # left,top
$button43.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button43)


#---------------------------------------------------------------------------------------------------------------------


###### Button Search Listbox_ShowResult Selected
$button44 = New-Object system.windows.Forms.Button
$button44.Text = "Search Selected..."
$button44.Width = 160
$button44.Height = 32
$button44.BackColor = "Black"
$button44.ForeColor = "Yellow"
$button44.location = new-object system.drawing.point(684,275) # left,top
$button44.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button44)

###### Button Search Listbox_ShowResult SearchAll
$button45 = New-Object system.windows.Forms.Button
$button45.Text = "Search all..."
$button45.Width = 110
$button45.Height = 32
$button45.BackColor = "Black"
$button45.ForeColor = "Yellow"
$button45.location = new-object system.drawing.point(850,275) # left,top
$button45.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button45)


#### Label Listbox_ShowResult
$Label3 = New-Object system.windows.Forms.Label
$Label3.Text = "Listbox Result:"
$Label3.Width = 170
$Label3.Height = 30
$Label3.BackColor = [System.Drawing.Color]::FromARGB(245, [System.Drawing.Color]::FromName("Black")) #transparency 0-254
$Label3.ForeColor = "Red"
$Label3.location = new-object system.drawing.point(510,275) # left,top
$Label3.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($Label3)



###### Listbox ShowResult
$Listbox_ShowResult = New-Object system.windows.Forms.ListBox
#$Listbox_ShowResult.View = 'Listbox_ShowResult'
$Listbox_ShowResult.Width = 450
$Listbox_ShowResult.Height = 80
#$Listbox_AddSearchVariabl.Columns.Add('Item')
#$Listbox_AddSearchVariabl.Columns.Add('First Name')
#$Listbox_AddSearchVariabl.Columns.Add('Last Name')
$Listbox_ShowResult.location = new-object system.drawing.point(510,310) # left,top
$Form.controls.Add($Listbox_ShowResult)



###### Listbox_ShowResult Clear
$button51 = New-Object system.windows.Forms.Button
$button51.Text = "List Clear"
$button51.Width = 127
$button51.Height = 32
$button51.BackColor = "Black"
$button51.ForeColor = "Yellow"
$button51.location = new-object system.drawing.point(510,382) # left,top
$button51.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button51)



###### Listbox_ShowResult openTextfile
$button52 = New-Object system.windows.Forms.Button
$button52.Text = "Open txtfile..."
$button52.Width = 127
$button52.Height = 32
$button52.BackColor = "Black"
$button52.ForeColor = "Yellow"
$button52.location = new-object system.drawing.point(640,382) # left,top
$button52.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button52)

#---------------------------------------------------------------------------------------------------------------------



###### Close_Gui
$button22 = New-Object system.windows.Forms.Button
$button22.Text = "Close"
$button22.Width = 80
$button22.Height = 32
$button22.BackColor = "Black"
$button22.ForeColor = "Yellow"
$button22.location = new-object system.drawing.point(805,418) # left,top
$button22.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button22)


###### Restart _Gui
$button33 = New-Object system.windows.Forms.Button
$button33.Text = "Restart"
$button33.Width = 80
$button33.Height = 32
$button33.location = new-object system.drawing.point(890,418) # left,top
$button33.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button33)

#-------------------------------------------------------------------------------------------------
#Allg 
#-----------------------------------------------------------------------------------------------------------------------------
#Hintergrundbild

[reflection.assembly]::LoadWithPartialName("System.Windows.Forms")
$file = (get-item 'C:\Users\KRA4CR\Pictures\DesktopWallper_Syntegon_02.png')
$img = [System.Drawing.Image]::FromFile($file)

$pictureBox = New-Object Windows.Forms.PictureBox
$pictureBox.Image = $img
#$pictureBox.Width = 100 
#$pictureBox.Height = 100
$pictureBox.location = new-object system.drawing.point(5,5) # left,top
$pictureBox.Size = new-object system.drawing.Size(1000,500) # breite, höhe  ($Form.Width = 535  $Form.Height = 450)
#$pictureBox.SizeMode = "Autosize"
#$pictureBox.Anchor = "Button, left"
$Form.controls.Add($pictureBox)








#-----------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------
#  
# Code
#   
#-----------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------


#--
#Left Oben------------------------------------------------------------------------------
#--



$button00.Add_Click({  ####### del files -----------------------------------------------------------------------------------

Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_ComputerInfo.txt
Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_PCDrives.txt
Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_Grafik.txt
Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_Prozessor.txt
Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_Prozesse.txt

})

$button1.Add_Click({   #### Computer ------------------------------------------------------------------------------------------


# Rufe Computer auf + speichere in txt-file
     Get-ComputerInfo | Out-File -FilePath C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_ComputerInfo.txt
     

#first ##Clear List
     
     $listView1.Items.Clear()
     $listView1.Columns.Clear()

#next add to list

$listView1.Columns.Add("<BiosManufacturer>")



    $allComputerInfo = Get-ComputerInfo |Select-Object BiosManufacturer

     for ($i = 0; $i -Lt $allComputerInfo.Count; $i++) {
        $Lvi = [System.Windows.Forms.ListviewItem]::new()
        $Lvi.Text = $allComputerInfo[$i].BiosManufacturer
        $listView1.Items.Add($Lvi)
     }


$listView1.Columns[0].Width = -2


})

$button2.Add_Click({   ##Festplatten  ---------------------------------------------------------------------------------------

# Rufe Festplatten auf + speichere in txt-file
     Get-PSDrive | Where {$_.Free -gt 0} | Out-File -FilePath C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_PCDrives.txt


# Rufe Festplatten auf + trage es in Listview ein


#first ##Clear List
     
     $listView1.Items.Clear()
     $listView1.Columns.Clear()

#next add to list

$listView1.Columns.Add("<Name>")
$listView1.Columns.Add("<Used>")
$listView1.Columns.Add("<Free>")
$listView1.Columns.Add("<Root>")


    $allPSDrive = Get-PSDrive |Select-Object Name, Used, Free, Root

     for ($i = 0; $i -Lt $allPSDrive.Count; $i++) {
        $Lvi = [System.Windows.Forms.ListviewItem]::new()
        $Lvi.Text = $allPSDrive[$i].Name
        $Lvi.SubItems.Add($allPSDrive[$i].Used)
        $Lvi.SubItems.Add($allPSDrive[$i].Free)
        $Lvi.SubItems.Add($allPSDrive[$i].Root)
        $listView1.Items.Add($Lvi)
     }


$listView1.Columns[0].Width = -2
$listView1.Columns[1].Width = -2
$listView1.Columns[2].Width = -2
$listView1.Columns[3].Width = -2


#Set focus--------------------------------------------------------------
If  ($listView1.Items.Count > 0)
    {
      $listView1.Items[0].Selected = true;
      $listView1.Items[1].Selected = true;
      $listView1.Select();
    }
#----------------------------------------------------------------------------





})

$button3.Add_Click({   ##Graphics -------------------------------------------------------------------------------------------

# Rufe Grafikkarte  auf + speichere in txt-file
     Get-WmiObject Win32_VideoController | Out-File -FilePath C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_Grafik.txt
     

#first ##Clear List
     
     $listView1.Items.Clear()
     $listView1.Columns.Clear()

#next add to list

$listView1.Columns.Add("<Caption>")
$listView1.Columns.Add("<Description>")
$listView1.Columns.Add("<SystemName>")
$listView1.Columns.Add("<PSComputerName>")


    $VideoController = Get-WmiObject Win32_VideoController |Select-Object Caption, Description, SystemName, PSComputerName

     for ($i = 0; $i -Lt $VideoController.Count; $i++) {
        $Lvi = [System.Windows.Forms.ListviewItem]::new()
        $Lvi.Text = $VideoController[$i].Caption
        $Lvi.SubItems.Add($VideoController[$i].Description)
        $Lvi.SubItems.Add($VideoController[$i].SystemName)
        $Lvi.SubItems.Add($VideoController[$i].PSComputerName)
        $listView1.Items.Add($Lvi)
     }


$listView1.Columns[0].Width = -2
$listView1.Columns[1].Width = -2
$listView1.Columns[2].Width = -2
$listView1.Columns[3].Width = -2



})



$button4.Add_Click({   ##Prozessor ----------------------------------------------------------------------------------------------


# Rufe Prozessor auf + speichere in txt-file
     Get-CimInstance -Class Win32_Processor | gm | Out-File -FilePath C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_Prozessor.txt



#first ##Clear List
     
     $listView1.Items.Clear()
     $listView1.Columns.Clear()

#next add to list

$listView1.Columns.Add("<Name>")
$listView1.Columns.Add("<MemberType>")
$listView1.Columns.Add("<Definition>")


    $allProcessor = Get-CimInstance -Class Win32_Processor | gm |Select-Object Name, MemberType, Definition

     for ($i = 0; $i -Lt $allProcessor.Count; $i++) {
        $Lvi = [System.Windows.Forms.ListviewItem]::new()
        $Lvi.Text = $allProcessor[$i].Name
        $Lvi.SubItems.Add($allProcessor[$i].MemberType)
        $Lvi.SubItems.Add($allProcessor[$i].Definition)
        $listView1.Items.Add($Lvi)
     }


$listView1.Columns[0].Width = -2
$listView1.Columns[1].Width = -2
$listView1.Columns[2].Width = -2


})



$button7.Add_Click({    ##Prozesse ------------------------------------------------------------------------------

     # Rufe Prozesse auf + speichere in txt-file
     Get-Process | Out-File -FilePath C:\Users\KRA4CR\Desktop\!PowerShell\Lfd_Prozesse.txt

    
#first ##Clear List
     
     $listView1.Items.Clear()
     $listView1.Columns.Clear()

#next add to list

$listView1.Columns.Add("<Id>")
$listView1.Columns.Add("<Name>")
$listView1.Columns.Add("<CPU>")



    $allProcesses = Get-Process |Select-Object Id, Name, CPU

     for ($i = 0; $i -Lt $allProcesses.Count; $i++) {
        $Lvi = [System.Windows.Forms.ListviewItem]::new()
        $Lvi.Text = $allProcesses[$i].Id
        $Lvi.SubItems.Add($allProcesses[$i].Name)
        $Lvi.SubItems.Add($allProcesses[$i].CPU)
        $listView1.Items.Add($Lvi)
     }

$listView1.Columns[0].Width = -2
$listView1.Columns[1].Width = -2
$listView1.Columns[2].Width = -2

})


$button5.Add_Click({    ##Clear List
     
     $listView1.Items.Clear()
     $listView1.Columns.Clear()
})






#--
#Left Unten------------------------------------------------------------------------------
#--



$button6.Add_Click({     ##open Explorer
   

     $testverzeichnis = $txtbx1.Text

    If (Test-Path $testverzeichnis)
    {
        Write-Host -BackgroundColor Green "Der Ordner $($testverzeichnis) existiert."
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show('Der Ordner: **  ' + $testverzeichnis + ' ** existiert.','WARNING')
        
        Invoke-Item  $testverzeichnis

    }
    else
    {
        Write-Host -BackGroundColor Red "Der Ordner $($testverzeichnis) existiert bisher nicht."
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show('Der Ordner: **  ' + $testverzeichnis + ' ** existiert bisher nicht.','WARNING')

    }



     

})




#--
#Right  Oben  ------------------------------------------------------------------------------
#--




$button11.Add_Click({ ## Such Variable Eintragen Button
     
   $textvariable = $txtbx_SuchVar1.Text
   $Listbox_AddSearchVariabl.Items.Insert(0, $textvariable)

})





$button12.Add_Click({ ## Suchliste in Datei schreiben

     
    $Listbox_AddSearchVariabl.Items | Out-File -FilePath C:\Users\KRA4CR\Desktop\!PowerShell\Searchlist.txt


})


$button13.Add_Click({ ## Suchliste von Datei laden

     
    #$path_to_txtfile = 'C:\Users\KRA4CR\Desktop\!PowerShell\Searchlist.txt'
    #$inputtxt = Get-Content $path_to_txtfile
    #$Listbox_AddSearchVariabl.Items.Insert(0, $inputtxt)

    $path_to_txtfile = 'C:\Users\KRA4CR\Desktop\!PowerShell\Searchlist.txt'
    $inputtxtfile = Get-Content -Path $path_to_txtfile

    $Listbox_AddSearchVariabl.BeginUpdate()

        foreach($SearchVariables in $inputtxtfile)
        {
        $Listbox_AddSearchVariabl.Items.Add($SearchVariables)
        }

    $Listbox_AddSearchVariabl.EndUpdate()

})





#--
#Right  Unten  ------------------------------------------------------------------------------
#--



$button41.Add_Click({ ## Listbox_ Clear


    $Listbox_AddSearchVariabl.Items.Clear()

})



$button42.Add_Click({ ## Listbox_ Clear Selected

     
    
    $Listbox_AddSearchVariabl.Items.Remove($Listbox_AddSearchVariabl.SelectedItem)

})



$button43.Add_Click({ ## Listbox_ show Selected

     
    
    $Listbox_show_selected = ($Listbox_AddSearchVariabl.SelectedItem)

     If ($Listbox_show_selected -eq $null)  #wenn nix ist
    {
       
    }
    else
    {
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show($Listbox_show_selected,'Info')
    }

       

})




$button44.Add_Click({ ## Button Search  Listbox_ShowResult Selected

     
    #first delete Result.txt
    Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt

    #Clear Listbox
    $Listbox_ShowResult.Items.Clear()



    $Listbox_show_selected = ($Listbox_AddSearchVariabl.SelectedItem)

     If ($Listbox_show_selected -eq $null)  #wenn nix ist
    {
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show('Keine Variable ausgewählt....','Warnung')
    }
    else
    {
        #[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        #[System.Windows.Forms.MessageBox]::Show('Such-Variable:' + $Listbox_show_selected,'Info')

         $stammordner = $txtbx1.Text
         $suchmuster = $Listbox_show_selected

         $text_to_textfile = "Search Files Selected" | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
         $text_to_textfile = "..............................................................................................." | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
         $text_to_textfile = "Folder   : " + $stammordner | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
         $text_to_textfile = "Searching: " + $suchmuster | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
         $text_to_textfile = "..............................................................................................." | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt

        #Ergebnisse in txtfile
        Get-ChildItem $stammordner $suchmuster -Recurse | Select-Object Fullname | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt #-NoTypeInformation



        #lade von txtfile to Listbox
        $path_to_txtfile = 'C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt'
        $inputtxtfile = Get-Content -Path $path_to_txtfile

        $Listbox_ShowResult.BeginUpdate()

            foreach($Results in $inputtxtfile)
            {
            $Listbox_ShowResult.Items.Add($Results)
            }

        $Listbox_ShowResult.EndUpdate()
        
       }

       

})


$button45.Add_Click({ ## Button Search  Listbox_ShowResult All

     
    #first delete Result.txt
    Remove-Item -path C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt

    #Clear Listbox
    $Listbox_ShowResult.Items.Clear()

    #Select 1.wert in Listbox
    $Listbox_AddSearchVariabl.SetSelected(0,$true)

   
    $Listbox_show_selected = ($Listbox_AddSearchVariabl.SelectedItem)


     If ($Listbox_show_selected -eq $null)  #wenn nix ist
    {
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show('Keine Variable ausgewählt....','Warnung')
    }
    else
    {
        #[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        #[System.Windows.Forms.MessageBox]::Show('Such-Variable:' + $Listbox_show_selected,'Info')

         $stammordner = $txtbx1.Text


            $text_to_textfile = "Search Files ListAll" | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
            $text_to_textfile = "..............................................................................................." | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
            $text_to_textfile = "Folder   : " + $stammordner | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
            
  
        foreach ($ListVariables in $Listbox_AddSearchVariabl.Items)
        {
       
            #[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
            #[System.Windows.Forms.MessageBox]::Show($ListVariables,'Info')

            $suchmuster = $ListVariables

            $text_to_textfile = "Searching: " + $suchmuster | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt
            $text_to_textfile = "..............................................................................................." | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt

            #Ergebnisse in txtfile
            Get-ChildItem $stammordner $suchmuster -Recurse | Select-Object Fullname | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt #-NoTypeInformation
            $text_to_textfile = "..............................................................................................." | Add-Content C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt


           
          }

           #lade von txtfile to Listbox
            $path_to_txtfile = 'C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt'
            $inputtxtfile = Get-Content -Path $path_to_txtfile

            $Listbox_ShowResult.BeginUpdate()

                foreach($Results in $inputtxtfile)
                {
                $Listbox_ShowResult.Items.Add($Results)
                }

            $Listbox_ShowResult.EndUpdate()  
       }

})


$button51.Add_Click({ ## Listbox_ShowResult Clear

     
     $Listbox_ShowResult.Items.Clear()
})

$button52.Add_Click({ ## Listbox_ShowResult openTextfile

     
       $path_to_txtfile = 'C:\Users\KRA4CR\Desktop\!PowerShell\Result_list.txt'

    If (Test-Path $path_to_txtfile)
    {
        #Write-Host -BackgroundColor Green "Der Ordner $($path_to_txtfile) existiert."
        #[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        #[System.Windows.Forms.MessageBox]::Show('Der Ordner: **  ' + $path_to_txtfile + ' ** existiert.','WARNING')
        
        Invoke-Item  $path_to_txtfile

    }
    else
    {
        Write-Host -BackGroundColor Red "Der Ordner $($path_to_txtfile) existiert bisher nicht."
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show('Der Ordner: **  ' + $path_to_txtfile + ' ** existiert bisher nicht.','WARNING')

    }
})



$button22.Add_Click({ ##Close


      $Form.Close()
     
})



$button33.Add_Click({  ##Restart
     
     $Form.Close()
     $Form.Dispose()
})




#### damit das GUI angezeigt wird.
[void]$Form.ShowDialog()
$Form.Dispose()