---
title: "I3 Arch Linux"
date: 2019-09-27T09:56:58+02:00
draft: false
comments: true
---

Donc sur Arch il n'y a pas beaucoup de package de base ... No shit sherlock

Il faut installer un minimum de paquet rien que pour le lancer donc soit avec pacman ou yaourt (ça revient au même de toute façon) 

̀sudo pacman -S i3̀`
là plusieurs choix s'offrent à vous 1) i3-gaps  2) i3-wm  3) i3blocks  4) i3lock  5) i3status

Soit vous prenez i3-gaps vous permettant d'avoir des bordures de fenêtre, soit vous prenez i3-wm pour ne pas en avoir, généralement les gens préfèrent i3-gaps mais moi je m'en fou, c'est sur un ordi portable ou avec peu d'affichage donc je pars sur du i3-wm.

Sélectionnez tous les autres packages aussi sinon vous aurez une belle erreur au lancement.

De façon général tout va se configurer dans ce fichier  ̀.config/i3/config` on va revenir sur ce fichier tout au long de ce "tuto" plus une doc ++ que je me fais.

Voici une liste de packages qui vous seront bien utiles :
* ranger - gestionnaire de fichier en ligne de commande (pas mal)
* rofi - lanceur d'application (qui remplacera dmenu)
* feh - en gros pour avoir un fond d'écran
* `sudo pacman -S NetworkManager` - pour gérer le wifi :)
* polybar - remplace la vieille barre dégueulasse de base
* compton - si vous voulez rajouter des trucs jolies
* flameshot - pour prendre des captures d'écran

Je vous conseil de prendre des powerline fonts aussi. Si vous voulez un git avec pleins de dotfiles plutôt propre -> https://github.com/NicklasLallo/dotfiles

Pratiquement chacun de ces packages ont besoin de se faire config. Personnellement j'ai ranger toute mes config dans `~/.config`

Bien souvent les config (design) de ces apps sont aussi lié au `.Xressources` 

#Rofi
Pour que rofi fonctionne bien, il faut rajouter une ligne dans le fichier `.config/i3/config`

`bindsym $mod+d exec rofi -show drun`
Donc quand on appuie sur (Windows) + d, on aura rofi qui se lancera.

Mais il y a plusieurs "mode" de lancement. `rofi -show run` va montrer toute les commandes possibles, tandis que drun va juste montrer que des "executables". 
Voici les autres options :  
 * windowcd
 * run
 * ssh
 * drun
 * combi
 * keys
 	

Je crois que de base c'est moche et si vous êtes un master flemmard comme moi et bien vous pouvez utiliser un thème qui existe déjà en faisant `rofi-theme-selector` vous permettant d'avoir une preview d'un thème et en faisant `alt+a` vous pouvez appliquer ce thème et voilà ! Finis aussi simple que ça.

### Dès que vous changer le moindre truc dans votre config i3, il faut le relancer : `i3-msg restart` ou `mod+shift+c`

#URXVT
Terminal

Pour copier - Ctrl+Inser
Pour coller - Ctrl+Shift+Inser 

#Ranger
Il est déjà très bien de base, je veux juste un truc en plus les previews d'images quand on passe dessus, pour ne pas avoir à les ouvrir avec un logiciel

Donc pour se faire, je pense qu'il faut ajouter cette ligne ici `~/.config/ranger/rc.conf`
`set preview_images true`

#Polybar
En vrai sur le git c'est très bien expliqué comment installer polybar, si vous avez des soucis avec yaourt juste builder le et c'est tranquille.

Ensuite va falloir résoudre moulte problèmes. Vous pouvez lancer `polybar example` et il y a de grande chance que vous ayez une bar toute jolie ok super mais avec pleins de messages d'erreur en dessous, genre :
``` bash
kasuke@ArchSSD  ~  polybar example                                                                                                                                                         ✔  1987  12:34:27
warn: No monitor specified, using "eDP-1-1"
error: Disabling module "bspwm" (reason: Could not find socket: /tmp/bspwm_0_0-socket)
error: module/xbacklight: Could not get data (err: XCB_NAME (15))
error: Disabling module "xbacklight" (reason: Not supported for "eDP-1-1")
warn: pulseaudio: using default sink alsa_output.pci-0000_00_1f.3.analog-stereo
error: tray: Failed to put tray above 0x1200002 in the stack (XCB_MATCH (8))
warn: Systray selection already managed (window=0x060000c)
``` 
Certains modules sont pas trop compatible selon les machines du coup parfois il faut faire des scripts.

Je vous invite à regarder sur mon github pour les différents scripts que j'ai du faire entre autre pour gérer le "backlight" et aussi un petit script pour lock l'écran en floutant sur ce que je vous êtes en train de faire. Normalement c'est assez flou pour que personne chope la moindre infos ne vous inquietez pas. Ensuite libre à vous de faire autrement. 

#Reminder de mes raccourcis
* mod+d - rofi
* mod+f - fullscreen
* mod+v - mode vertical (ouvre les fenêtres de haut en bas)
* mod+h - mode horizontal (remettre comme d'hab je crois)
* mod+shift+c - reload config i3
* mod+shift+e - pour quitter session
* mod+shit+space - passer de mode tiling a floating
* mod+shift+q - pour kill une app
* mod+r - pour resize des fenêtres
* mod+l - pour lock
