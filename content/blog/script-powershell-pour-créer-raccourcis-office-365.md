---
title: "Script PowerShell pour créer raccourcis Office 365"
date: 2019-09-17T09:54:45+02:00
draft: false
tags: ["powershell"]
comments: true
---

N'ayant pas trouvé de post précisément pour office (365), puisqu'il contient une suite de logiciels, je fais ce petit post pour aider des gens (flemmard ou noob) comme moi 😅

En PowerShell parce que c'est mieux. On a pas de raccourci donc on va en créer un de la plus simple des façons.

Voici un exemple avec Outlook (Office 365 ou Office 2019 Pro Plus) :

```PowerShell
# On prépare la création du raccourci
$objShell = New-Object -ComObject ("WScript.Shell")
# Destination du raccourci
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Desktop" +"\Outlook.lnk")
# Vers ou doit pointer le raccourci
$objShortCut.TargetPath="C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
# Création du raccourci
$objShortCut.Save()
```
Enregistrez au format .ps1 et éxectuer direct, boom nouvel îcone sur le bureau avec Outlook !

En fait on peut l'apliquer pout tout, mais il faut bien faire attention au chemin qu'il y a d'afficher sur l'explorer
![explorer](/explorer-office.PNG)
qui n'est pas le bon car en réalité c'est plutôt ceci :
```PowerShell
cd '.\Program Files\Microsoft Office\root\Office16'
```
N'hésitez pas à vérifier avec votre terminal et à utilisez le beau `tab` 😉

Pareil pour les dossiers du genre 'Bureau' qui sera plutôt Desktop etc...

On va rajouter une condition pour pouvoir le mettre dans une GPO au lancement de session et ne pas devoir refaire la création tout le temps:
```PowerShell
$raccourci = $env:USERPROFILE+"\Desktop\Outlook.lnk"
if (-not (Test-Path $raccourci))
{
  # On prépare la création du raccourci
  $objShell = New-Object -ComObject ("WScript.Shell")
  # Destination du raccourci
  $objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Desktop" +"\Outlook.lnk")
  # Vers ou doit pointer le raccourci
  $objShortCut.TargetPath="C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
  # Création du raccourci
  $objShortCut.Save()
}else
{
  Write-Host "nothing to do"
}
```

Désolé le script est très simpliste, il n'y a pas de gestion d'erreurs, de cas, de description etc...
