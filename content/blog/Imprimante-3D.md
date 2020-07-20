---
title: "Imprimante 3D"
date: 2020-06-14T17:41:43+02:00
draft: true
---

# Quelle imprimante ?

J'ai longtemps songé à acquérir une imprimante 3D, étant donné que je suis une personne peu soigneuse de mon matériel, il m'arrive souvent de casser des trucs 😔 Et bien souvent c'est un bout de plastique ou un bout de pièce que l'on ne peut pas récupérer/racheter. Plutôt que de racheter un produit en entier, je trouve ça bien plus amusant de le réparer avec des bouts de plastique.

Au delà de ça, il est aussi possible de faire pas mal de chose.

Je pensais que c'était un loisir trop onéreux pour moi, sauf qu'un jour comme ça je me balladais sur youtube et j'ai découvert quelqu'un qui parlait d'imprimante 3D à 150€. Au début j'étais très dibutatif, je pensais pas pouvoir obtenir quelque chose de qualité pour ce prix. Cette imprimante c'était la **Creality Ender 3**. Je vous conseil en francophone cette chaine youtube [le labo d'Heliox](https://www.youtube.com/channel/UCPFChjpOgkUqckj3378jt5w). Elle est de très bon conseil et de qualité, j'adore.

Au cours de la vidéo j'ai remarqué que la qualité était au rendez-vous mais quelque chose d'autre m'embettais. Du peu que je savais de l'impression 3D en général, c'était assez complexe et il fallait prendre plein de paramètres en compte. Alors oui et non. Je vous explique ce qu'il faut savoir et si j'y suis arrivé, vous devriez pas avoir trop de soucis 😉

# Comment ça marche
## Les objets 3D
C'est la partie la moins difficile puisque de nombeux sites et personnes mettent à disposition des modèles 3D

Voici les plus populaires et généralement gratuit :

- [Thingiverse](https://www.thingiverse.com/)
- [Cults 3D](https://cults3d.com/)
- [MyMiniFactory](https://www.myminifactory.com)

Personnellement c 'est surtout Thingiverse dont je me sers, j'ai l'impression que la communauté est plus grosse dessus.

On peut aussi créer des pièces 3D "from scratch" et pour cela il existe un tas de logiciel, je vais citer que les plus populaires.

- [Thinkercad](https://www.tinkercad.com/) -> gratuit et en ligne
- [Blender](https://www.blender.org/) -> gratuit et dispose d'un gros support communautaire
- [Fusion 360](https://www.autodesk.fr/products/fusion-360/overview) -> On peut l'obtenir gratuitement et légal 🧐

Mais personnellement j'avais fais de la CAO au lycée sur **Solidworks** donc c'est celui-ci que j'utilise (payant)

Il en existe pleins d'autres mais ça n'est pas le sujet de l'article. La seule chose à savoir avec c'est qu'il faudra exporter votre modèle 3D en **.STL** (enfin ça fonctionne avec d'autres formats mais c'est le plus populaire) pour que le slicer puisse l'interpréter.
## Le "slicer"
C'est ce qui transcrit la pièce 3D pour l'imprimante. Et c'est la partie la plus difficile à gérer selon moi. Je ne vais pas aborder toute les subtilités qu'un slicer peut avoir mais un conseil : faites pleins de petit test et essayer d'être curieux dessus. Au début je suis allé au plus simple mais je me suis vite rendu compte que j'obtenais pas les résultats attendus.

Il existe 3 gros slicer :

- [Cura](https://ultimaker.com/fr/software/ultimaker-cura) -> gratuit, OpenSource et disposant d'une communauté très active, parfait pour obtenir de l'aide
- [Prusa slicer](https://www.prusa3d.fr/prusaslicer/) -> gratuit et OpenSource, mais un peu plus spécialisé pour les imprimantes Prusa que les autres.
- [Simplify 3D](https://www.simplify3d.com/) -> Payant et pas OpenSource ☹️

Si vous voulez avoir plus de détails (et en français aussi) sur les slicer en général: https://all3dp.com/fr/1/meilleur-slicer-3d-logiciel-decoupe-impression-3d/

Personnellement j'utilise Cura, d'abord car c'est gratuit et OpenSource (on aime) ensuite car il dispose d'une forte communauté et il possède des profils pour pas mal d'imprimante 3D dont la mienne. Le "soucis" est qu'il y a souvent des mise à jour alors quand vous regardez un tuto dessus, bien souvent la version n'est pas la même et l'interface non plus. Bien qu'il soit dispo en Français, je vous recommande de le mettre en anglais étant donné que de nombeux tutos le seront également.

Je vous recommande des petits articles et profiles pour Cura :

- https://all3dp.com/fr/2/cura-ender-3-profil-reglages-configurer-settings/ (FR)
- https://all3dp.com/2/ender-3-cura-settings-best-ender-3-cura-profile/ (EN)
- [Profile Cura CHEP](https://www.chepclub.com/cura-profiles.html)

## Filament
Je vais être assez bref sur le sujet mais en gros il existe 3 sorte de filament (le plastique qu'on va fondre pour imprimer) :

- **PLA** : Facile à imprimer, parfait pour débuter, plastique dur et biodégradable, mais peu résistant à la chaleur, température d'impression (en moyenne) : 200°C
- **ABS** : 230°C
- **PETG** : 240°C

Il y a d'autres filament mais je reste sur ceux que mon imprimante peut imprimer :)

Et je vous invite à lire cet article pour en savoir plus (j'ai testé qu'une sorte de PLA donc ...) : https://all3dp.com/2/ender-3-filament-guide-materials-you-can-3d-print/

# Ender 3 Pro
J'en ai brièvement parlé mais il y a des tas de choses à dire sur cette imprimante !

Pourquoi la pro et pas la normal ? Perso je l'avais pour moins cher que la normal et elle dispose de quelques petits extra, je vous redirige [là](https://all3dp.com/fr/1/creality-ender-3-ender-3-pro-imprimante-3d-printer-face-a-face/) si vous voulez en savoir plus sur les différentes Ender 3. Sachant qu'à l'heure où j'écris, la Ender 3 V2 vient de sortir. De ce que j'ai compris c'est plus silencieux, c'est un peu mieux foutu (on a un raque de base pour ranger ses outils) et surtout on a une carte mère silencieuse de base qui est aussi en 32bits (Contrairement à 8bit pour les anciennes) sur laquelle on peut installer un BL Touch (on en reparle plus tard 😉). [Cet article](https://www.lesimprimantes3d.fr/creality-ender-3-v2-20200502/) en parlera mieux que moi.

C'est une machine génial, elle est pas cher, il y a donc une communauté très active aussi par exemple sur [Reddit](https://www.reddit.com/r/ender3/). Qui dit pas cher, dit un peu de configuation à faire mais honnêtement, je préfère comme cela, on est obliger de s'y intéresser et du coup on connait vraiment notre matos avec lequel on imprime.

Les choses que je configure personnellement assez souvent :
- le niveau (inser img du plateau)
- les vis qui tiennent le fil de filament (inser img pareil) (une fois ça s'est dévissé)
- La buse (on explique les différences de tailles surtout)

## Les Améliorations
Alors là, il y a de quoi faire ...
- Octoprint (must have pour moi)
- BL Touch (pareil)
- les ressorts de merde (on peut trouver sur Aliexpress facile des ressorts)
- une plaque en verre ? j'ai faut que je test askip c'est mieux en tous cas plus droit c'est sûr
- BLV Ender 3 Pro la https://www.thingiverse.com/thing:4008699
- Changer les ventilos de base (perso j'ai mis un Noctua NF-A4x10 pour le principal en front)
- Changer la carte mère pour une bien mieux pour pas cher, montrer ce que ça change, SKR MINI e3 V1.2 ou V2 (j'ai la V2)
- Changer pour Hero me la
- Changer le filament pour un Capricorne mes couilles
- Changer le hotend pour un mieux
- Changer le Firmware Marlin mais changer la carte mère alors (8bits aime pas trop faut passer sur 32bits)
- Changer le truc en plastique par le truc en alu extruder

# BL Touch
- G29 permet d'initialiser le probe point (la calibration)


# Récuap liens utiles
- https://m.all3dp.com/2/elephant-s-foot-3d-printing-problem-easy-fixes/
- [Reddit Ender 3](https://www.reddit.com/r/ender3/)  

- Cette chaine youtube est un must follow !!! [Teaching Tech](https://www.youtube.com/channel/UCbgBDBrwsikmtoLqtpc59Bw)
- guide for mini board skr 1.2 : https://www.reddit.com/r/ender3/comments/e894j7/marlin_20x_guide_for_ender_3_using_skr_mini_e3_v12/
- guide pour le V2 MAMEEEENE : https://www.reddit.com/r/ender3/comments/h8y1ia/marlin_20x_guide_skr_mini_e3_v20_ender_3/
- Pour régler son k factor : https://marlinfw.org/tools/lin_advance/k-factor.html + https://youtu.be/n3yK0lJ8TWM
- https://all3dp.com/2/ender-3-calibration-how-to-calibrate-your-ender-3/ -> Calibration ender 3 (plateau, axe X, Y etc...)
- PID autotune pour re régler les températures si elles font n'importe quoi -> https://www.reddit.com/r/3Dprinting/comments/h8xqrn/pid_autotune/

# Bed leveling en images :
![bed 1](/bed level 1.jpg)
![bed 2](/bed level 2.png)
![bed 3](/bed level 3.jpg)

# Commandes Marlin utiles :

- M500 : sauvegarder les paramètres en cours dans l'EEPROM (à vie même en redémarrant)
- M503 : affiche les paramètres de l'imprimante
- M900 : Affiche le K factor (line advance)
 - M900 K0.7 (par exmple) pour définir depuis le terminal le k factor
- G29 : prob test (calibration de l'axe Z avec bl touch ou autre)
