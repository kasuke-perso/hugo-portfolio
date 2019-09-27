---
title: "Config De Urxvt"
date: 2019-09-09T14:52:33+02:00
draft: true
---

donc la je vais mettre en zbeul:

si on a des icones chelou il faut installer et utiliser une font TTF Powerline, ça arrange tout.

Pour faire du copier(`Ctrl + Insér`), coller (`Shift + Inser`)
ou je crois c'est comme ça maintenant copier `Ctrl + Shift +C` coller `Ctrl + Shift + V`

Pour gérer la taille du font automatically binds Ctrl++ to the 'increase' function, Ctrl+- to 'decrease', and Ctrl+0 to 'reset'

Plusieurs fichiers de conf :
`./Xressources` ou `./Xdefaults` 


Moi dans ma conf actuelle (~.Xressources):

```config
#define fnt1   DejaVu Sans Mono for Powerline
#define fnt2   Bitstream Vera Sans Mono
#define fntsz1   12
#define fntsz2   18

!#include ".xfiles/themes/solarized-dark"
#include ".xfiles/themes/gruvbox"


#include ".xfiles/colors"
#include ".xfiles/urxvt"

budstyle.accent:   blu
budstyle.bg1:      blk
budstyle.bg2:      bg
budstyle.fg1:      fg
budstyle.fg2:      wht2
budstyle.redish:   red
budstyle.font1:    fnt1
budstyle.fontsz1:  fntsz1


! .Xresources syntax:

! include file (OBS! quotes are important):
! #include "PATH_RELATIVE_TO_XRESOURCES"

! define variable:
! #define  VARNAME VALUE

! custom resource:
! name.class.type: value/variable

! -------------------------------

! commandline commands:

! load xresources:
! ~/.xinitrc:
! [[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
!
! ~/.config/i3/config:
! set $HOME ABSOLUTE_PATH_TO_HOMEFOLDER (/home/bud)
! exec --no-startup-id xrdb -merge -I$HOME ~/.Xresources
! exec --no-startup-id exec i3-msg -q restart

! merge new changes:
! xrdb -merge ~/.Xresources

! replace .Xresources
! xrdb -load ~/.Xresources

! list current settings in .Xresources:
! xrdb -query

! list installed fonts:
! fc-list | grep FONTNAME

! instant font test:
! printf '\e]710;%s\007' "xft:FONTNAME"


! :antialias=false <- if it works for you, its good

! -------------------------------

! use xresource in i3:
! set_from_resource $VARIABLE  XRESOURCE  DEFAULT_VALUE

! use xresource in polybar:
! VARNAME = ${xrdb:XRESOURCE:DEFAULT}

! get xresource from script
! VAR=$(xrdb -query | awk '$1 ~ XRESOURCE":" {print $2}')

! subl --command 'two_face {"face":"solarized-dark"}'
! syntax:ssExcla
```

Comme on peut voir dans le fichier précédent, je load `.xfiles/urxvt` donc perso pour changer mes fonts (polices) je passe par ce fichier dont voici le contenu (cf URxvt.font) et en général la conf de urxvt.
Mais je crois que toute ces confs sont possibles à mettre direct dans `.Xressources` le fichier urxvt est totalement facultatif:

```config
! rxvt-unicode-256color settings . 
! curated by budRich since 2015

URxvt*underlineColor:      ylw
URxvt*highlightColor:      blu
URxvt*highlightTextColor:  mag

! URxvt*colorBD:             red
! URxvt*colorIT:             grn
! URxvt*colorUL:             blu

URxvt*perl-ext-common: default,matcher,url-select,keyboard-select,config-reload

URxvt*intensityStyles:     true
URxvt*cursorBlink:         1
URxvt*scrollBar:           false
URxvt*internalBorder:      5
URxvt*saveLines:           32767
URxvt*iso14755:            false
URxvt*iso14755_52:         false


URxvt.font:     xft:DejaVu sans mono for Powerline:size=14:antialias=true
URxvt*boldFont: xft:DejaVu sans mono for Powerline:bold:size=14:antialias=true
      
URxvt*italicFont:     
URxvt*boldItalicFont: 

URxvt.url-launcher:        brws
URxvt.matcher.button: 1
URxvt.url-select.underline: true

URxvt.keysym.C-0: command: \033]710;xft:FixedFixedsys:size=12:antialias=false\007
URxvt.keysym.C-9: command: \033]710;xft:Bitstream Vera Sans Mono:size=12\007

URxvt.keysym.C-g: perl:url-select:select_next
URxvt.keysym.M-Escape: perl:keyboard-select:activate
URxvt.keysym.CM-s: searchable-scrollback:start
URxvt.keysym.M-s: builtin:

URxvt*print-pipe: cat > $(echo /tmp/urxvt-dump.$(date +%Y-%m-%d_%H:%M:%S_%N))

! syntax:ssExcla

URxvt*cutchars: "\"()*,<>[]{}|\'"
``` 

Il y a un dossier pour installer des extensions perl pour le terminal (genre pour faire du copier coller ou pouvoir cliquer sur une url), `.urxvt/ext/` et mettre toutes les extensions perl dedans ou alors 


bon du coup mes putains de fichiers ont changé, va falloir que je mette à jour et que j'explique certaines lignes