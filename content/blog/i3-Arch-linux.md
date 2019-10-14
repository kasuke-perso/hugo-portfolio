---
title: "I3 Arch Linux"
date: 2019-09-27T09:56:58+02:00
draft: false
tags: ["tuto", "i3", "ricing", "ArchLinux"]
comments: true
---

Sur Arch il n'y a pas beaucoup de packages de base ... No shit sherlock

Il faut installer un minimum de paquet rien que pour le lancer donc soit avec pacman ou yaourt (ça revient au même de toute façon)

̀`sudo pacman -S i3`
là plusieurs choix s'offrent à vous `1) i3-gaps  2) i3-wm  3) i3blocks  4) i3lock  5) i3status`

Soit vous prenez i3-gaps vous permettant d'avoir des bordures de fenêtre, soit vous prenez i3-wm pour ne pas en avoir, généralement les gens préfèrent i3-gaps mais moi je m'en fou, c'est sur un ordi portable ou avec peu d'affichage donc je pars sur du i3-wm.

Sélectionnez tous les autres packages aussi sinon vous aurez une belle erreur au lancement.

De façon général tout va se configurer dans ce fichier `~/.config/i3/config` on va revenir sur ce fichier tout au long de ce "tuto" plus une doc ++ que je me fais.

#### Voici une liste de packages qui vous seront bien utiles :
* ranger - gestionnaire de fichier en ligne de commande (pas mal)
* rofi - lanceur d'application (qui remplacera dmenu)
* feh - en gros pour avoir un fond d'écran
* `sudo pacman -S NetworkManager` - pour gérer le wifi :)
* polybar - remplace la vieille barre dégueulasse de base
* compton - si vous voulez rajouter des trucs jolies
* flameshot - pour prendre des captures d'écran
* urxvt - Terminal
* pywal - gestion xressources selon fond d'écran

Je vous conseil de prendre des powerline fonts aussi. Si vous voulez un git avec pleins de dotfiles plutôt propre -> https://github.com/NicklasLallo/dotfiles

Pratiquement chacun de ces packages ont besoin de se faire config. Personnellement j'ai ranger toute mes config dans `~/.config`

Bien souvent les config (design) de ces apps sont aussi lié au `~/.Xressources`

# Gestion wifi

Il faut installer `NetworkManager` puis rajouter cette ligne dans le fichier de configuration de i3 (`~/.config/i3/config`) :
```sh
# network manager (always runs)
exec --no-startup-id nm-applet
```
De base ce c*n ne retient pas les mots de passe wifi et il faut les retaper sans cesse ... sauf si vous installer ceci :
```sh
pacman -S gnome-keyring
```
🤔 D'après mes recherches et mon expérience, je vais plutôt utiliser `nmtui` qui permet d'avoir une interface "graphique" en ligne de commande.
Vos réseaux sont enregistrés automatiquement et dès que vous croiser un réseau connu, il s'y connecte automatiquement à condition d'avoir cocher les cases nécessaire.
# Rofi

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

Sinon vous pouvez le custom vous même dans le `~/.Xressources`

**Je vous conseil ce site si vous voulez custom les Xressources :** https://terminal.sexy/
### Dès que vous changer le moindre truc dans votre config i3, il faut le relancer : `i3-msg restart` ou `mod+shift+c`

# URXVT
Prenez plutot celui-là : `pacman -S rxvt-unicode-pixbuf` qui vous permettra d'avoir les previews d'image dans ranger (on en parle juste après)

Pour ce terminal le fichier de conf sera soit dans le `.Xressources` soit on fera appel à un fichier dédié que l'on nommera `.urxvt`. On peut rajouter des extensions perl à urxvt par exemple une extension pour faire en sorte que les liens soient cliquables.

* Pour copier - Ctrl+Inser
* Pour coller - Ctrl+Shift+Inser

Un peu de personnalisation

# Ranger
Il est déjà très bien de base, je veux juste un truc en plus les previews d'images quand on passe dessus, pour ne pas avoir à les ouvrir avec un logiciel

Donc pour se faire, je pense qu'il faut ajouter ces lignes ici `~/.config/ranger/rc.conf`
```bash
set preview_images true
#set use_preview_script true
#set preview_script /usr/share/doc/ranger/config/scope.sh
set preview_images_method urxvt
```

(ok moi ça fonctionne pas mais je vais creuser car j'ai une erreur w3mimgdisplay)

# Polybar
Sur le git c'est très bien expliqué comment installer [polybar](https://github.com/polybar/polybar)
, si vous avez des soucis avec yaourt, il faudra juste le builder et cela fonctionne très bien.

**Si vous avez build faites attention quand vous faites un update des apps via yaourt, ça va vous casser votre polybar**
(si vous avez casser votre polybar, il suffit de le rebuild et ça roule nickel)

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
Certains modules ne sont pas trop compatibles selon les machines du coup parfois il faut faire des scripts. Sauf qu'on s'en fou c'est juste pour afficher des infos sur polybar.

C'est découpé en modules et chaque module va vous afficher des trucs dans la bar(re)

Ce qu'il faut changer dans le fichier de configuration de i3 `~/.config/i3/config` :
```sh
# Faut retirer cette ligne
bar {
    i3bar_command i3bar
}
```  
Pour lancer polybar au démarrage cf la partie Pywal.

### Custom Polybar
Perso je me suis pas embêté, j'ai clone ce git https://github.com/adi1090x/polybar-themes.git

J'ai pris le polybar-4, il faut juste ajouter les polices :
```sh
~/polybar-themes/polybar-4
cd fonts
cp * /usr/local/share/fonts/
#reload les fonts
fc-cache
```
Vous avez un script qui vous permet de tester les différents modules `tester.sh`

Mais c'est pas tout, il va falloir pimper à sa sauce quand même. On a une belle base mais il y a des trucs qui me plaise pas.

Déjà j'ai changé la position de base de la bar `vim ~/.config/polybar/config.ini` :
```sh
; Put the bar at the bottom of the screen
# De base il était à true
bottom = false
```

Il faudra gérer aussi les modules `vim ~/.config/polybar/modules.ini`

Mais ce serait trop long de dire un par un ce que j'ai changé, je le mettrais sur mon [git](https://github.com/kasuke5) ce qu'il faut surtout savoir c'est que polybar fonctionne avec des modules, donc regarder les différents modules, voir leur configuation sur github ou sur unixporn si y'en a un qui vous a plus. Vous pouvez aussi faire vos propres modules, dans mon cas ils sont ici `~/.config/polybar/user_modules.ini` qui font eux même appel aux scripts situés dans le dossier `~/.config/polybar/scripts`

Je vous conseil de vous mettre en mode debug pour voir tout ce qui est chargé en temps réel pour ainsi identifier les éléments qui ne fonctionnent pas (qui sont propre à chacun)

# Quelques configuration d'i3
Par exemple moi j'utilise un script pour pouvoir gérer la luminosité vu que le module xbacklight ne fonctionne pas.

Voici mon `brightness.sh`
```sh
#!/bin/sh
#./brightness.sh + eDP1     Increase brightness of eDP1 display by 0.1
CURRBRIGHT=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- -d:)
if [ "$1" = "+" ] && [ $(echo "$CURRBRIGHT < 1" | bc) -eq 1 ]
then
xrandr --output $2 --brightness $(echo "$CURRBRIGHT + 0.1" | bc)
elif [ "$1" = "-" ] && [ $(echo "$CURRBRIGHT > 0" | bc) -eq 1 ]
then
xrandr --output $2 --brightness $(echo "$CURRBRIGHT - 0.1" | bc)
fi
```

Il faudra bien évidemment rajouter une petite ligne dans le fichier de configuation de i3 (`~/.config/i3/config`):
```sh
# Sreen brightness controls dont work
bindsym XF86MonBrightnessUp exec ~/brightness.sh + eDP-1-1 # increase screen brightness
bindsym XF86MonBrightnessDown exec ~/brightness.sh - eDP-1-1 # decrease screen brightness
```
La particularité est de mettre + ou - avec le nom de votre écran, dans mon cas c'est eDP-1-1 (souvent le nom qu'un écran d'ordinateur portable va avoir). Pour voir le nom de l'écran, on peut éxecuter polybar cf au dessus quand je le lance.

Je vous invite à regarder sur mon github pour les différents scripts que j'ai du faire entre autre pour gérer le "backlight" et aussi un petit script pour lock l'écran en floutant sur ce que je vous êtes en train de faire. Normalement c'est assez flou pour que personne chope la moindre infos ne vous inquietez pas. Ensuite libre à vous de faire autrement.

# Mettre un fond d'écran
Il existe une multitude de façon de faire pour avoir un fond d'écran avec i3, personnellement j'utilise `feh`. On l'installe et ensuite j'ai rajouté cette ligne dans mon fichier de configuration d'i3 :
```sh
exec --no-startup-id feh --bg-scale ~/Images/hackerman.png
```
Plusieurs options viennent avec feh, dans mon cas j'ai mis l'option pour que la taille s'adapte en fond d'écran `--bg-scale` mais il y a d'autres options :
```sh
--bg-tile FILE
--bg-center FILE
--bg-max FILE
--bg-fill FILE
```
On est d'accord le chemin pointe vers une image qui existe ...
Plus d'info sur feh ici https://wiki.archlinux.org/index.php/Feh

Mais on peut faire autrement ...
# Pywal
Pywal est un outil qui génère une palette de couleur à partir des couleurs dominante d'une image. Ensuite il l'applique à tout le système à la volée sur la plupart des programmes.

Alors pas grand chose à configurer pour que ça fonctionne, ensuite vous pouvez aller voir sur son [git](https://github.com/dylanaraps/pywal)

Petite configuration à rajouter dans le `~.config/i3/config`
```sh
###--- i3 coloring ---###
# Make it clear when failed using red - otherwise set i3 colors with wal from xresources
set_from_resource $bg           i3wm.color0 #ff0000
set_from_resource $bg-alt       i3wm.color14 #ff0000
set_from_resource $fg           i3wm.color15 #ff0000
set_from_resource $fg-alt       i3wm.color2 #ff0000
set_from_resource $hl           i3wm.color13 #ff0000

# class                 border      backgr. text indicator      child_border
client.focused          $fg-alt     $bg     $hl  $fg-alt        $hl
client.focused_inactive $fg-alt     $bg     $fg  $fg-alt        $fg-alt
client.unfocused        $fg-alt     $bg     $fg  $fg-alt        $fg-alt
client.urgent           $fg-alt     $bg     $fg  $fg-alt        $fg-alt
client.placeholder      $fg-alt     $bg     $fg  $fg-alt        $fg-alt

client.background       $bg

# Active les couleurs de pywal avant de lancer polybar
exec --no-startup-id sleep 2; sh ~/beautify.sh
```
Le script `beautify.sh` :
```sh
#!/bin/bash

# Waits for wal to set colors and then starts polybar
while true; do
    if [[ ! $color15 ]]; then
        source "${HOME}/.cache/wal/colors.sh"
        sh ~/.config/polybar/launch.sh
        exit 1
    fi
    sleep 0.1
done
```

Et rajouter cette option dans le fichier de configuation de ranger `~/.config/ranger/rc.conf`
```sh
map bw shell wal -i %s
```
Ce qui permettra de pouvoir utiliser et appliquer pywal, depuis ranger en étant sur une image,  en appuyant juste sur `bw`

# Avoir de belles fenêtres 🤩

Alors de base il y a une police dégueulasse sur le titre des fenêtres et il suffit de changer cette ligne dans le fichier de configutation de i3 :
```sh
font pango:monospace 8
```
Et de la remplacer par une un peu plus jolie :
```sh
font pango:monospace 12
```
Faut que je trouve quelque chose de mieux mais déjà c'est moins pire.

# Résoudre les problèmes de tearing et ajouter des effets (transparent, fade ...)
ça va être le boulot de compton ... non pas celui-là (même si on l'adore) ![compton](/Straight_Outta_Compton_logo.jpg)

Dans vos recherche je vous conseil de mettre compton window manager sinon vous allez tomber sur N.W.A 😅

Pareil ici cela reste assez simple, il va falloir configurer à sa sauce.

# Reminder de mes raccourcis
* mod+d - rofi
* mod+f - fullscreen
* mod+v - mode vertical (ouvre les fenêtres de haut en bas)
* mod+h - mode horizontal (remettre comme d'hab je crois)
* mod+shift+c - reload config i3
* mod+shift+e - pour quitter session
* mod+shit+space - passer de mode tiling a floating
* mod+shift+q - pour kill une app (faites attention dans la conf c'est marqué a mais on est en azerty donc c'est q)
* mod+r - pour resize des fenêtres
* mod+l - pour lock
* dans ranger bw sur une image pour changer xressources
