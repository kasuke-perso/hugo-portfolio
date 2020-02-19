---
title: "PowerShell Script to create office 365 shortcuts"
date: 2019-09-17T09:54:45+02:00
draft: false
tags: ["powershell"]
comments: true
translationKey: script-powershell-pour-créer-raccourcis-office-365
---

I didn't find any post which was talking about this so here I am with my little contribution. And a reminder for myself aswell.

In PowerShell because it's better. We don't have sortcuts so we will create them the simpliest way possible.

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

Sorry, the script is really simple, no error handling, no descriptions etc...
