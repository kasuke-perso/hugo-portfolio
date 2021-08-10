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
Je vais être assez bref sur le sujet mais il y a quelques sorte de filament (le plastique qu'on va fondre pour imprimer) :

- **PLA** : Facile à imprimer, parfait pour débuter, plastique dur et biodégradable, mais peu résistant à la chaleur, température d'impression (en moyenne) : 200°C et lit perso je le mets à 60°C
- **ABS** : 230°C
- **PETG** : entre 210°C et 250°C (240°C) et le lit entre 70 et 85
- **TPU** : Filament flexible, il ne faut pas de retraction et il faut utiliser un Direct Drive Extruder (DDE) la buse entre 210°C et 230°C le bed 60°C max

Il y a d'autres filament mais je reste sur les principaux et les infos sont pour toute les imprimantes ensuite ce sera des subtilités par rapport à votre imprimante (par exemple sur la ender 3 sans upgrade il faudra avoir un retraction distance d'à peu près 5 mm et retraction speed: 45mm/sec).

Et je vous invite à lire cet article pour en savoir plus concernant la Ender 3 (je n'ai pas testé beaucoup de filament) : https://all3dp.com/2/ender-3-filament-guide-materials-you-can-3d-print/

# Ender 3 Pro
J'en ai brièvement parlé mais il y a des tas de choses à dire sur cette imprimante !

Pourquoi la pro et pas la normal ? Perso je l'avais pour moins cher que la normal et elle dispose de quelques petits extra, je vous redirige [là](https://all3dp.com/fr/1/creality-ender-3-ender-3-pro-imprimante-3d-printer-face-a-face/) si vous voulez en savoir plus sur les différentes Ender 3. Sachant qu'à l'heure où j'écris, la Ender 3 V2 vient de sortir. De ce que j'ai compris c'est plus silencieux, c'est un peu mieux foutu (on a un raque de base pour ranger ses outils) et surtout on a une carte mère silencieuse de base qui est aussi en 32bits (Contrairement à 8bit pour les anciennes) sur laquelle on peut installer un BL Touch (on en reparle plus tard 😉). [Cet article](https://www.lesimprimantes3d.fr/creality-ender-3-v2-20200502/) en parlera mieux que moi.

C'est une machine géniale, elle est pas cher, il y a donc une communauté très active aussi par exemple sur [Reddit](https://www.reddit.com/r/ender3/). Qui dit pas cher, dit un peu de configuation à faire mais honnêtement, je préfère comme cela, on est obligé de s'y intéresser et du coup on connait vraiment notre matos avec lequel on imprime.


## Les Améliorations
Alors là, il y a de quoi faire ...
- Octoprint (must have pour moi) il vous faudra un Raspberry (ça fonctionne sur un zero mais pas si vous voulez mettre une camera) je vous conseillerai de prendre au moins RPi3, perso j'ai pris la 4 version 4Go comme ça je suis tranquille. -> lien vers vidéo ou tuto octoprint
- BL Touch, ou autre copie chinoise, ça fait la même chose, la aussi je vous invite à aller voir un article plus détaillé sur le sujet. Le plus gros problème avec ces imprimantes c'est le nivellement du lit, la première couche est la plus importante sinon votre impression risque de partir en sucette. Donc si vous avez du mal à régler avec les ressorts sous le plateau (c'est cette technique sur l'ender 3 mais pas forcément pour toute) et bien je vous conseil vivement de prendre cette améliorations !
- Changer les ressorts de base, ça parait rien comme ça mais croyez moi, ça change pas mal de chose, les ressorts de base sont d'une qualité de 💩 et feront en sorte que vous ayez à calibrer votre lit à chaque impression. Vous pouvez en trouver [ici](https://fr.aliexpress.com/item/4000048367289.html) ils sont plus dur et tiennent beaucoup mieux !
- une plaque en verre ? j'ai faut que je test askip c'est mieux en tous cas plus droit c'est sûr
- BLV Ender 3 Pro la https://www.thingiverse.com/thing:4008699
- Changer les ventilos de base (perso j'ai mis un Noctua NF-A4x10 pour le principal en front)
- Changer la carte mère pour une bien mieux pour pas cher (30€), [SKR MINI e3 V2]([celle-ci](https://fr.aliexpress.com/af/skr-mini-e3-v2.html?d=y&origin=n&SearchText=skr+mini+e3+v2&catId=0&initiative_id=AS_20201028002357) non seulement ce sera beaucoup plus fluide votre menu (et tout un tas de chose) mais surtout, le silence 🤫. Vous pourrez aussi installer un BL touch (ou équivalent), un port est prévu aussi pour neopixel (pour avoir des leds 👾👾👾) et un autre port est prévu pour un dual Z
- Changer pour Hero me la
- Changer le tube de base pour un Capricorne PTFE car au bout d'un moment il y a un problème, si vous entendez votre imprimante faire des *clung* petits bruit répétitif, c'est bien possible que ça vous arrive, voici le problème et sa résolution  -> [Fix Bowden Tube gap Ender 3](https://www.youtube.com/watch?v=30qqKUwviww&t=302s) le tube de base commence à fondre et du coup il y a un gap entre la buse et le truc qui chauffe. Vous pouvez l'acheter [ICI](https://fr.aliexpress.com/item/4000447265357.html?spm=a2g0s.9042311.0.0.7b546c37ZnJVRv) je vous conseil de prendre un officiel sinon ça ne sert à rien ce n'est pas la bonne matière ni le bon diamètre.
- Changer le hotend pour un full metal
- Changer le Firmware Marlin mais changer la carte mère alors puisque les cartes 8bits ne feront pas l'affaire il faudra passer sur 32bits, je vous recommande [celle-ci](https://fr.aliexpress.com/af/skr-mini-e3-v2.html?d=y&origin=n&SearchText=skr+mini+e3+v2&catId=0&initiative_id=AS_20201028002357)
- Changer l'extruder en plastique par un en alu [ici](https://fr.aliexpress.com/item/33054001276.html) car au bout d'un moment voila le soucis ![extruder](/extruder_prob.jpg)
- Personnellement je suis passé sur un kit qui comprend un DDE (Direct Drive Extruder) et un full metal (jacket/alchimist ?) hotend. Cela permet d'imprimer d'autres filament tel que le TPU qui est une matière flexible et qui demande que l'on est pas de rétraction. D'autre part il est fournis avec un nouveau système de montage, un nouveau capteur de température plus précis et rapide, ainsi que le truc pour chauffer. Autre avantage, et c'est fournis sans besoin de l'imprimer même s'ils fournissent le plan au cas ou, de pouvoir fixer un système d'auto bed leveling (genre BL touch et autres) directement.
Voici le lien pour acheter ce kit -> [Kit DDE Aliexpress](https://fr.aliexpress.com/item/4000006762144.html), la doc n'est pas tout le temps clair mais au final on s'en sort. Attention, dans la doc il y a marqué qu'il faudra changer des paramètres dans le firmware (oui) mais pour le E-steps, il est totalement faux. Perso j'ai mis : kkkkkkkkk
- De l'alcool isopropylique si possible au moins 90%, pour nettoyer le lit, c'est assez important puisque l'adhesion des pièces en dépendent
- Bombe 3D LAC, hyper important. Mon imprimante au bout d'un moment ne voulait plus du tout adhérer au lit, j'ai essayé de changer toute les pièces de faire tous les réglages possible pour bien régler la hauteur du lit mais rien ne fonctionnait... J'ai acheté cette bombe (on dirait vraiment de la lac pour cheveux ça sent pareil et à mon avis c'est la même chose) et depuis je peux de nouveau imprimer sans soucis d'adhesion, je pense je vais me faire un stock de 100000 bombes pour être sûr 🤪
- Changer le dérouleur de bobine (lien vers thingiverse) et prendre des petits roulements (lien amazon) car ça se déroule pas très bien et les petits roulement pourront vous servir plus tard trust me 😉
- Un "enclosure", en gros mettre l'imprimante dans une "box" alors normalement c'est pour permettre de https://flhoest.blogspot.com/2020/02/3d-printing-famous-ikea-lack-enclosure.html, c'est un dérivé qui à la base avait été fait pour la prusa i3 que vous pouvez d'ailleurs allez voir https://blog.prusaprinters.org/cheap-simple-3d-printer-enclosure_7785/

Mais bon, dans tous les cas avant de changer quoi que ce soit, je vous conseil de passer par les étapes de galère qui vont vous formez et vous comprendrez mieux votre imprimante et les problèmatique de l'impression 3D en général.

# BL Touch
- Pour l'installation d'un BL touch il va falloir toucher au firmware, je vous explique les grandes lignes et je vous invite à aller voir la vidéo de [KaminoKGY](https://youtu.be/1NhAo3xR9HY) en français svp 🧐 spécifique un peu pour ceux qui aurait changer de carte mère (ce que je vous recommande très fortement) pour une [SKR mini E3 V2.0](https://fr.aliexpress.com/af/skr-mini-e3-v2.html?d=y&origin=n&SearchText=skr+mini+e3+v2&catId=0&initiative_id=AS_20201028002357) je vous conseil BIG TREE TECH vu que c'est à eux 😅
- G29 permet d'initialiser le probe point (la calibration)


# Récap liens utiles
- https://m.all3dp.com/2/elephant-s-foot-3d-printing-problem-easy-fixes/
- [Reddit Ender 3](https://www.reddit.com/r/ender3/)  
- Cette chaine youtube est un must follow !!! [Teaching Tech](https://www.youtube.com/channel/UCbgBDBrwsikmtoLqtpc59Bw)
- Guide for mini board skr mini e3 1.2 : https://www.reddit.com/r/ender3/comments/e894j7/marlin_20x_guide_for_ender_3_using_skr_mini_e3_v12/
- Guide pour le skr mini e3V2 : https://www.reddit.com/r/ender3/comments/h8y1ia/marlin_20x_guide_skr_mini_e3_v20_ender_3/
- Pour régler/optimiser/Set son imprimante -> https://teachingtechyt.github.io/calibration.html
- Pour régler son k factor : https://marlinfw.org/tools/lin_advance/k-factor.html + https://youtu.be/n3yK0lJ8TWM
- https://all3dp.com/2/ender-3-calibration-how-to-calibrate-your-ender-3/ -> Calibration ender 3 (plateau, axe X, Y etc...)
- La page de Teaching Tech pour calibrer de façon complète et détaillé une imprimante 😍 -> https://teachingtechyt.github.io/calibration.html#intro
- Pour calibrer son extruder -> https://mattshub.com/blogs/blog/extruder-calibration

# Bed leveling en images :
![bed 1](/bed level 1.jpg)
![bed 2](/bed level 2.png)
![bed 3](/bed level 3.jpg)

# Reprendre une impression foirée :
https://www.cnckitchen.com/blog/guide-resuming-a-failed-3d-print

# Commandes Marlin utiles et Tips G-code :
{{< youtube 2TByiMNduss>}}

https://www.cnckitchen.com/blog/g-code-basics-for-3d-printing

- M500 : sauvegarder les paramètres en cours dans l'EEPROM (à vie même en redémarrant)
- M502 : reset config (reset EPROM) par défaut (utile quand on a changé des paramètres du firmware et qu'ils ne se sont pas sauvegardé, à coupler avec M500)
- M503 : affiche les paramètres de l'imprimante
- M900 : Affiche le K factor (line advance)
 - M900 K0.7 (par exmple) pour définir depuis le terminal le k factor
- G28 : auto home
- G29 : prob test (calibration de l'axe Z avec bl touch ou autre)
- M92 - Set Axis Steps-per-unit -> à faire quand on change d'extruder (ou s'il n'est plus précis)
  - ex: M92 E688.4
- M851 : Pour indiquer à quelle distance le bl touch (ou autre) est de la buse ex : M851 X-1.70 Y-1.30

**Pour avoir toute les commandes Marlins -> https://marlinfw.org/meta/gcode**
# Trucs utiles pour firmware (MARLIN bugfix 2.0)
Quand maj de firmware, ne pas oublier d'aller chercher les fichiers config ici -> https://github.com/MarlinFirmware/Marlin/tree/bugfix-2.0.x/config et mettre dans le **sous dossier** Marlin (dans Marlin, à mes souhaits)
- Lien vidéo de comment bien mettre à jour avec github teaching tech : https://youtu.be/hLvzLYemUn8
- Version un peu plus simplifiée de comment toucher à son firmware avec visual et quelques extensions -> https://www.youtube.com/watch?v=eq_ygvHF29I
- Changer le sens du moteur extruder : dans `configuration.h` -> `#define INVERT_E0_DIR true` ou false
- pour régler le k factor -> lien vidéo teaching tech : `#define LIN_ADVANCE_K 0.0`  

---
## Z-Offset Instructions:

  * Home 3D printer
  *  M851 Z0 - Reset Z0Offset
  *  M500 - Store setting to eeprom
  *  M501 - Set active parameters
  *  M503 - Display Active Parameters
  *  G28 Z - Home Z Axis
  *  G1 F60 Z0 - Move nozzle to true 0 offset
  *  M211 S0 - Switch off soft endstops
  *  Move nozzle towards bed slowly until the paper can barely move
  *  Take note of the Z on the printer display (take that number and add the measurment of the calibration sheet or device used)
  *  M851 Z X.XX (X.XX being your z offset achieved)
  *  M211 S1 - Enable Soft Endstops
  *  M500 - Save settings to Eeprom
  *  M501 - Set Active Parameters
  *  M503 - display current settings
