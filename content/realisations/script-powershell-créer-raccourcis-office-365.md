---
title: "Script Powershell Créer Raccourcis Office 365"
date: 2019-08-05T09:31:26+02:00
draft: false
---

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
Enregistrez au format .ps1 et exéctuez direct, boom nouvel îcone sur le bureau avec Outlook !

En fait on peut l'apliquer pout tout, mais il faut bien faire attention au chemin qu'il y a d'afficher sur l'explorer
![explorer](/explorer-office.PNG)
qui n'est pas le bon car en réalité c'est plutôt ceci :
```PowerShell
cd '.\Program Files\Microsoft Office\root\Office16'
```
N'hésitez pas à vérifier avec votre terminal et à utilisez le beau `tab` 😉

Pareil pour les dossiers du genre 'Bureau' qui sera plutôt Desktop etc...

C'est pour cela qu'il vaut mieux utiliser aux maximum les variables d'environnement en remplaçant cette ligne : `$objShortCut.TargetPath="C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
` par celle-là `  $objShortCut.TargetPath= $env:ProgramFiles + "\Microsoft Office\root\Office16\OUTLOOK.EXE"
`

Pour voir les variables d'environnement Windows sur PowerShell (équivalent de SET sur le cmd) : `Get-ChildItem env:`

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
  $objShortCut.TargetPath= $env:ProgramFiles + "\Microsoft Office\root\Office16\OUTLOOK.EXE"
  # Création du raccourci
  $objShortCut.Save()
}else
{
  Write-Host "nothing to do"
}
```
