---
title: "Voron 2.4"
date: 2022-05-16T00:21:53+02:00
draft: false
tags: ["3D", "printer",  "DIY"]
---

# Let's make a 3D printer !

Pour ceux qui ne connaissent pas du tout l'univers de l'impression 3D (j'aurais jamais du commencer je n'arrive plus à m'arrêter ...) vous ne connaissez sûrement pas ce qu'est une Voron.

Ce n'est pas vraiment une marque, c'est plutôt un projet commun, le concept ressemble beaucoup à linux car c'est totalement opensource et alimenté par une communauté de passioné. 
Tout ce petit monde à permis de pouvoir construire plusieurs imprimante et je vous invite grandement à aller voir le projet en question -> [ici](https://vorondesign.com/)

>Mais il existe plein d'imprimantes pas trop cher déjà pré assemblé et tout ?

Alors oui et pour la plupart des gens ce sera largement suffisant mais je ne sais pas, quand on commence on a tendance à aller beaucoup plus loin, c'est ce que j'avais par ailleurs fait avec mes ordinateurs 😏. Au moment où j'écris ces lignes, je possède pas moins de 3 imprimantes [FDM](https://fr.3dilla.com/imprimante-3d/fused-deposition-modeling/) et une résine (SLA) et personnellement je suis pas du tout un grand fan de la résine pour tout un tas de raison et vu que ce n'est pas le sujet, je ne vais pas m'attarder. 
> Mais pourquoi tu as tant d'imprimantes ? ça ne te suffit pas ?

Alors oui et non 😅 Si je pouvais affirmer qu'elles fonctionnent toutes correctement, oui ça me suffirait, sauf QU'AUCUNE d'entre elle ne fonctionne correctement 😮

J'ai commencé l'impression 3D avec une vidéo [d'Heliox](https://youtu.be/dtI-r2uUCMs) car il n'y avait pas énormément de choses à faire durant le tout premier confinement ... et quelle erreur ! Désormais j'y passe beaucoup (trop) de temps dessus et je m'amuse bien avec (pas tout le temps ...) 

J'ai commencé avec une Creality Ender 3 pro du coup, machine réputée pour être pas cher et très personnalisable car il lui manque quand même pas mal de fonctionnalité de base et ce n'est pas la plus fiable du game. Ce qui fait que je l'ai pimpé comme jamais, j'ai appris beaucoup de choses, notamment CAO, electronique et faire ses cables soit meme tout ça tout ça, j'ai eu plein (plein) de frustrations mais pas que. Aujourd'hui c'est un peu ma machine "Tweak" c'est sur elle que je test plein de choses et où je m'amuse à l'améliorer encore et toujours. 

Je vais pas entrer dans les détails avec toute les galères que j'ai eu avec mes différentes imprimantes (même la résine) mais sur quasiment toute, j'ai changé des choses. Je ne suis pas en train de dire que les imprimantes pas cher chinoise sont mauvaise mais il faut sacrifier un peu de son temps pour résoudre les différents problèmes qui leur sont liés, c'est un peu comme quand vous prenez un logiciel Opensource vs un payant avec support officiel plutot que les forums 😉

>Ouais cool ta vie mais tu parlais pas d'une espèce de machine qui s'appelle Voron de base ?

Si si, je remettais un peu de contexte, donc comme j'adore tout ce qui est opensource et bidouiller tout tout le temps, la voron sur la papier m'a l'air super !

Cet article est un petit journal de bord des différentes étapes que je suis en train de réaliser pour permettre la construction de cette fameuse imprimante.

Au moment où j'écris ces lignes j'ai l'impression qu'avec la "pénurie" de composants électronique, les "kits" tout fait pour pouvoir construire sa Voron sont devenu hors de prix et indisponible par la même occasion. Mais honnetement, je vais pas me faire une super imprimante 3D DIY pour être limité par les kits.

Je décide donc de faire mon self sourcing, je ne dis pas que ça va pas être moins cher du tout mais le but étant de la construire tranquillement en achetant les pièces au fur et à mesure et sachant qu'il y a des upgrade constante dessus, ce serait bête d'en rater une majeure.

# Les différents modèles de Voron
Il existe 4 design d'imprimante Voron :
- Voron0 :  Core XY en taille réduit
- Voron Trident : Core YZ (permet d'être plus rapide et existe en différente taille)
- Voron Switchwire : Style i3 comme les ender, prusa MK3 & cie mais quand meme différent :)
- Voron 2 : Core XY avec plusieurs taille (250x250, 300x300, 350x350) mais bien évidemment vous pouvez pimper la taille comme bon vous semble c'est vous qui fabriquez l'imprimante

Tout le monde vous dira qu'il vaut mieux commencer avec une Switchwire ou Voron0 qui seront bien plus facile à monter. Mais moi j'aime les challenges et comme je possède déjà plusieurs imprimantes de différentes taille, je décide de partir sur la Voron 2(2.4R2).

Sur le site, vous pouvez générer une BOM (liste de matériel nécessaire pour réaliser le projet) avec des liens pour acheté les pièces, mais bon généralement c'est aliexpress, amazon de je ne sais quel pays et souvent pas à jour non plus ... 

Donc j'y vais un peu en mode solo paulo, je me débrouille pour avoir les composants sans trop me faire souiller par les fdp et autres. Pour cela, je m'aide beaucoup du discord Voron et de la section [FR- honhonhonbaguette](https://discord.com/channels/460117602945990666/500407802414628876)

Il y a un peu de tout, ça semble assez caothique au début mais on s'y fait 😄 Il faut bien aussi regarder les autres sections qui ont chacune leur spécificité, et checker les messages pinned : ![discord](/pinned.PNG)

# 1ere étape - La frame !
Pour commencer, j'ai décidé de prendre d'abord les profilés aluminium, apparemment sur ce [site](https://www.dold-mechatronik.de/Profile-en-aluminium-20x20-rainure-de-type-B-6) c'est pas mal et c'est beaucoup moins cher que les Misumi recommandé par la BOM  (Bill of Material) officiel de Voron.

Je possédais pas mal de vis mais pour faire plus simple j'ai commandé un set de vis spécial voron qui respect la BOM officiel -> https://fr.aliexpress.com/item/1005003333222664.html comme ça j'ai un peu de spare.

Pour pouvoir monter tout le cadre il me fallait aussi des rails DIN qui sont en fait des rails standardisé pour prendre les appareils électrique comme les disjoncteur et autres. Pratique car on peut y mettre toute l'electronique dessus.
![din](/din.webp)

Il me fallait ensuite la plaque qui va en dessous de l'imprimante et par la même occasion celle qui va derrière.
![plaque-cad](/plaque-voron.PNG)
 Ce sont les plaques en alu que l'on voit souvent dans les magasins de brico au niveau des découpe (bois, plexi, alu). 
 ![plaque-1](/voron-plaque-2.jpg)
 Je peux vous dire que une plaque suffit largement, regardez moi la taille de ce machin !
 ![plaque-2](/voron-plaque-1.jpg)

---
# Les profilés aluminium reçu 
![rails](/mes-rails.jpg)
Il va falloir faire des trous et des tarauds ... Perso je m'y connais pas du tout mais apparemment c'est facile, il suffit d'avoir les outils qu'il faut et pour tarauder l'aluminium c'est simple étant donné que le matériau n'est pas trop dur.

Je vous conseil ces fichiers STL https://github.com/elpopo-eng/VoronFrenchUsers/tree/main/Mod/Blind_Hole_Tools qui vont vous aider pour faire les trous surtout.

On va avoir un soucis avec ceux-la : 
![discord](/mesure-profil.PNG)

Un gars, qui s'y connait bien en taraudage pour le coup, m'a **certifié** qu'il fallait au moins 1mm pour tarauder donc pour faire un pas de vis en M6 il fallait faire un trou de 5mm et non 5,5 comme annoncé ici ... Mais bon apparemment pleins de personnes ont réussi à faire en sorte que ça bouge pas. Il m'a dit que c'était faisable mais qu'il fallait pas serré comme un goret.

Après avoir essayé de tarauder, je peux vous dire que ça fonctionne pas trop... donc ce que j'ai fais c'est de visser directement la vis dedans, l'aluminium étant assez tendre, ça passe, j'aurais préféré pouvoir faire un vrai taraudage donc je ne suis pas sûr de recommandé les profilés aluminium que j'ai pris. Toutefois il était possible de pouvoir mettre un taraudage M6 lors de la commande, mais à 1,19X2 (pour les deux côtés) X 10 = 24€ sachant que c'est 6€ le mètre ...

Il y a déjà de bon tutos sur le sujet de comment avoir une frame bien carré : 
{{< youtube GSg7RDLgYV0 >}} et  {{< youtube TCMxw5fH0VA >}}


# 2 - Les rails linéaires
Toujours en se basant sur la BOM officiel, désormais pour l'axe X, il ne faut plus deux rails MG9H mais un rail MG12H, je prends un truc pas cher chez ali qui a de bons retours  -> https://fr.aliexpress.com/item/32829826159.html

# 3 - Découpe de la plaque de dibond

ça n'a pas été une mince affaire 😕 mais avec un cutter, de la patience et une perceuse (surtout pour tout ce qui sera les ronds).

Je vous conseil, si vous faites comme moi, de couper déjà la plaque en plusieurs morceaux car elle est super grande de base quand vous la prenez chez leroy merlin ou autre. Pour se faire, prenez une règle et essayer de suivre quand vous couper avec le cutter, allez y progressivement, on force de plus en plus pour aller le plus profond possible car la deuxieme couche en dessous est assez compliqué à avoir. Une fois plusieurs coupe passée, je vous conseil de ne pas aller jusqu'au bout mais à partir d'un moment de plier la plaque, vous allez voir que ça part plutot simplement au final.

Servez vous du guide qui est dans le github -> Drawings_DFX -> Panels -> [la_taille]_Deck_Panel.dxf, ouvrez le avec fusion 360 ou autre et utilisez l'outil inspecter pour avoir vos mesures : 
![inspecter](./2022-0inspecter-fusion.png)  