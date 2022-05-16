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
- Voron 2.4 : Core XY avec plusieurs taille (250x250, 300x300, 350x350) mais bien évidemment vous pouvez pimper la taille comme bon vous semble c'est vous qui fabriquez l'imprimante

Tout le monde vous dira qu'il vaut mieux commencer avec une Switchwire ou Voron0 qui seront bien plus facile à monter. Mais moi j'aime les challenges et comme je possède déjà plusieurs imprimantes de différentes taille, je décide de partir sur la Voron 2.4R2.

Sur le site, vous pouvez générer une BOM (liste de matériel nécessaire pour réaliser le projet) avec des liens pour acheté les pièces, mais bon généralement c'est aliexpress, amazon de je ne sais quel pays et souvent pas à jour non plus ... 

Donc j'y vais un peu en mode, je me débrouille pour avoir les composants sans trop me faire souiller par les fdp et autres. Pour cela, je m'aide beaucoup du discord Voron et de la section [FR- honhonhonbaguette](https://discord.com/channels/460117602945990666/500407802414628876)

Il y a un peu de tout, ça semble assez caothique au début mais on s'y fait 😄 Il faut bien aussi regarder les autres sections qui ont chacune leur spécificité, et checker les messages pinned : ![discord](/static/pinned.PNG)

# Ma BOM et l'ordre de mon procédé
Pour commencer, j'ai décidé de prendre d'abord les profilés aluminium, apparemment sur ce [site](https://www.dold-mechatronik.de/Profile-en-aluminium-20x20-rainure-de-type-B-6) c'est pas mal et c'est beaucoup moins cher que les Misumi recommandé par la BOM.
