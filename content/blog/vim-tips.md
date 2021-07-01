---
title: "Vim Tips"
date: 2021-06-04T10:51:43+02:00
draft: false
---
## Navigation:
- Aller en début de ligne: `xG` ou x=le numero de la ligne
- Aller en fin de ligne: `$`
- Aller au premier caractère de la ligne: `^^` ou `0` pour tout début de la ligne
- Aller en début de fichier: `gg` et en fin de fichier `G`

## En mode insertion:
- Pour autocompletion des chemins en mode insertion: `ctl-x + ctrl-f` 


## Ouvrir d'autre fichiers:
- Pour se déplacer depuis vim pour aller dans un autre fichier: `:e em /[TAB]`

- Voir les espaces et tab à la fin des lignes et tout: `set list`
- Remplacer un mot par un autre dans tous le fichier: `:%s/foo/bar/g`
    Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

- Supprimer tout ce qu'il y a à droite du curseur sur une ligne `d$`
- Supprimer tout ce qu'il y a à gauche du curseur sur une ligne `d0`

