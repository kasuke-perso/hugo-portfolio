---
title: "Script Powershell Créer Raccourcis Office 365"
date: 2020-08-05T09:33:33+02:00
draft: false
---

Here is an example with Outlook (Office 365 or Office 2019 Pro Plus) :

```PowerShell
# We prepare the creation of the shortcut
$objShell = New-Object -ComObject ("WScript.Shell")
# Where the shortcut go
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Desktop" +"\Outlook.lnk")
# Where the shortcut point to
$objShortCut.TargetPath= $env:ProgramFiles + "\Microsoft Office\root\Office16\OUTLOOK.EXE"
# Creation of the shortcut
$objShortCut.Save()
```
Save it as .ps1 and execute it directly, boom new icon with Outlook on the desktop !

Remember to use Windows variables, to list them use this command :
`Get-ChildItem env:`

We can do it for every applications you want.

We can add a condition to be able to deploy it with GPO while session start and not recreate it at EVERY starts:
```PowerShell
$raccourci = $env:USERPROFILE+"\Desktop\Outlook.lnk"
if (-not (Test-Path $raccourci))
{
  # We prepare the creation of the shortcut
  $objShell = New-Object -ComObject ("WScript.Shell")
  # Where the shortcut go
  $objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Desktop" +"\Outlook.lnk")
  # Where the shortcut point to
  $objShortCut.TargetPath= $env:ProgramFiles + "\Microsoft Office\root\Office16\OUTLOOK.EXE"
  # Creation of the shortcut
  $objShortCut.Save()
}else
{
  Write-Host "nothing to do"
}
```
