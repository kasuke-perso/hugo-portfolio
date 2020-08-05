---
title: "Compétences"
date: 2019-05-22T15:38:26+02:00
draft: false
---

# Compétences techniques
## Linux

Depuis le début de mes études j'ai tout de suite adhérer à Linux, j'avais un peu commencé de mon côté avant l'école mais c'est vraiment là-bas que j'ai pu le plus approfondir mes connaissances.

Pour moi l'OpenSource c'est essentiel et pour des étudiants, c'est bien pratique d'avoir un OS totalement gratuit. De plus, Linux dispose d'un support d'assez bonne qualité sur internet notamment par le biais de groupes de diffusion ou de forums. Bien que les versions de linux soient souvent mis à jour (ce qui est très bien par ailleurs) il reste quand même facile de trouver une solution à son problème en regardant sur des forums.

![linux master race](/97f.png)

Contrairement à windows, ce qui est aussi bien sur linux est que l'on a le controle intégral de son système, pas des milliers de processus, dont on ne sait pas l'utilité, qui fait ramer votre ordinateur. Il est possible ainsi de l'installer sur à peu près tout (même des vieux mac en PowerPC si si), sur de l'arm, des raspberry etc... Et vu qu'on a le controle intégral, il est possible d'optimiser un max votre linux pour que même le vieil ordinateur familial du salon soit fluide et agréable à utiliser au quotidien (on ne va quand même pas pouvoir faire tourner crisis mais c'est normal 😅).

Selon vos besoin il y a forcément une distribution faites pour vous et si vous êtes joueur vous pouvez installer de A à Z tout, comme sur un ArchLinux ou un Gentoo. Vous pouvez notamment faire semblant d'avoir un mac pour ceux qui aiment le style épuré ou pour les plus fous d'entre vous, customiser son linux pour qu'il ressemble à un Windows 🤮. Linux sera plus ou moins "user friendly" selon la distribution que vous possèdez, personnellement j'adore mettre les mains dans la console et me prendre pour Eliot de la série TV Mr Robot mais je comprends que ce soit pas le cas de tout le monde et néanmoins, il reste possible d'avoir un Linux sans être un gros "geek", je le recommande pour pas mal de personnes si vous faites que de la navigation internet. En plus c'est beaucoup plus sûr puisque la plupart des cibles des virus restent les Windows car il y a beaucoup plus d'utilisateurs.

Personnellement j'ai testé ArchLinux, Ubuntu, Gentoo, Debian, Kali, Parrot, Arcolinux, centOS. J'ai eu une multitudes de problèmes avec mes OS car je privilégie le dual (ou plus) boot plutôt que les machines virtuel ou les très récents WSL (Windows subsystem for Linux) et comme d'habitude, j'ai appris beaucoup de choses "grace" à ces problèmes.

A mes heures perdues, je m'amuse à customiser mon ArchLinux en m'inspirant de cette communauté reddit [unixporn](https://www.reddit.com/r/unixporn/) c'est assez formateur si on veut bien comprendre son système. (voici à quoi ça ressemble chez moi)
![clean](/clear.png)

## SSH
{{< image src="/openssh.gif" alt="Hello Friend" position="center" style="border-radius: 8px;" >}}
Dois-je vraiment présenter ce protocole ? SSH est un protocole de communication sécurisé, qui permet notamment à l’administrateur système (adminsys) de se connecter à des machines distantes en s’assurant de l’intégrité et de la confidentialité des informations qui transitent entre les machines. Il est très utile lorsque l'on est pas présent physiquement devant les serveurs ou postes de travail.

S'il y a bien un outil dont je me sers pratiquement quotidiennement c'est bien celui-ci.

En effet je possède des serveurs personnels (dont ce site) et même lors de mes projets à l'école ou encore au travail, je me sers de SSH qui est un "classique" en système et réseau. Cependant, il est bien souvent mal exploité, en effet on privilégie bien (trop) souvent le "il faut que ça fonctionne tout de suite, on verra plus tard" à "on le fait fonctionner et on le fait bien".

Donc on se retrouve avec des configurations assez classique alors que ça n'est pas très compliqué de désactiver la connexion avec un login/mot de passe pour favoriser le login via une clé sécurisée permettant ainsi de se protéger de certains types d'attaque.

## Ansible
{{< image src="/Ansible.png" alt="Hello Friend" position="center" style="border-radius: 8px;" >}}

Une technologie qui est bien à la mode aujourd'hui. En effet, Ansible permet de provisionner rapidement et de façon automatique tout un parc informatique. Il est OpenSource et donc gratuit contrairement à ses rivaux. Il dispose aussi d'une interface graphique appelée Ansible Tower qui est payante avec le support officiel de Red Hat mais aussi d'une version plus communautaire sans support professionnel et gratuit appelé AWX la version "upstream" d'Ansible Tower.

J'ai eu une première expérience dans un de mes projet d'école -> [Challenge Accepted](/projets/challenge-accepted) que je vous invite à aller voir.

J'ai, grâce à l'expérience que j'ai eu à l'école, pu me servir de cette technologie chez [Thales](/experience/thales). J'ai pu approfondir mes connaissances sur Ansible et j'ai notamment plus utilisé les variables et les templates de playbooks. Lors de mon alternance aussi j'ai implémenté sur un petit serveur un Ansible mais je n'ai pas vraiment eu le temps d'en faire grand chose alors il ne sert qu'à mettre à jour les clés SSH sur tous les serveurs vSphere.

J'ai vraiment apprécié travailler avec Ansible car cela m'a permis de voir à quel point il pouvait être un outil puissant et pratique, surtout si l'on a de nombreuses machines ou des tâches répétitives à executer. La documentation officielle est très bien fournie et on s'y retrouve facilement aussi. Le tout en OpenSource sur linux comme j'adore.

Il est possible avec Ansible de créer de toute pièces des machines comme on pourrait le faire avec Terraform mais, pour avoir déjà essayé, il n'est vraiment pas adapté pour cette utilisation et je ne le recommande pas du tout. Ansible = provisioning point.

## vSphere
{{< image src="/vsphere.jpg" alt="Hello Friend" position="center" style="border-radius: 8px;" >}}

vSphere est un logiciel d'infrastructure de "Cloud Computing", c'est un hyperviseur de type 1 (Bare metal), pour faire simple on est plus proche du hardware que sur du type 2 (comme un VirtualBox) ce qui permet d'avoir plus de performances.

J'ai pu me familiariser avec cet outil lors de mon alternance chez l'Agefi, on gérait tous nos serveurs via vSphere.
J'avais installé, sur une machine à part, un ESXi pour faire quelque test de déploiement automatique de machines virtuelles, j'ai pu mieux comprendre le fonctionnement derrière.

## Docker
{{< image src="/docker.png" alt="Hello Friend" position="center" style="border-radius: 8px;" >}}
Docker permet la mise en œuvre de conteneurs s'exécutant en isolation, via une API de haut-niveau. Construit sur des capacités du noyau Linux (surtout les cgroups et espaces de nommage), un conteneur Docker, à l'opposé de machines virtuelles traditionnelles, ne requiert aucun système d'exploitation séparé et n'en fournit aucun. Il s'appuie plutôt sur les fonctionnalités du noyau et utilise l'isolation de ressources (comme le processeur, la mémoire, les entrées et sorties et les connexions réseau) ainsi que des espaces de noms séparés pour isoler le système d'exploitation tel que vu par l'application. Docker accède aux capacités de virtualisation du noyau Linux, soit directement à travers la bibliothèque runc (disponible depuis Docker 0.9), soit indirectement via libcrt, LXC (Linux Containers) ou systemd-nspawn

![Docker interface](/Docker-linux-interfaces.svg.png)

J'ai pu m'en servir un peu lorsque j'étais chez Thales quand il a fallu installer AWX -> [AWX](/realisations/installation-awx)

Il m'a fallu un peu de temps avant de bien comprendre comment fonctionnait les conteneurs mais une fois que l'on a bien compris l'architecture, cela devient plus clair. C'est comme avoir un petit linux isolé de son système sans avoir la "lourdeur" d'une machine virtuelle.

## Sécurité informatique

La problématique de la sécurité informatique est très interessante, malheuresement asssez complexe parfois à mettre en place puisque beaucoup de recherches et pas forcément les infras disponibles pour tester. Mais aussi, demande beaucoup de temps et de gymnastique intellectuelle.

Heureusement il y a des sites tel que [root-me](https://www.root-me.org/) pour pouvoir s'entrainer avec tout type de challenges avec les infras/machines nécessaire.

A l'heure où j'écris ces lignes, j'ai un score de 1105. Il me reste beaucoup de chemins à parcourir j'en suis conscient mais avec de la pratique et beaucoup (trop 😅) de documentation, je devrais arriver les différents challenges proposé. Faisant cela sur mon temps libre, il m'est de plus en plus difficile d'y consacrer du temps.

![page root-me](/Root-me.PNG)

En CTF, c'est souvent la même chose : on fait un petit nmap pour voir ce qui est ouvert et récupérer quelques infos qui pourraient être utiles, on fait souvent un dirb pour voir s'il y a des chemins que l'on peut exploiter pour obtenir  un reverse shell et une fois avec un shell, un moyen d'obtenir les droits de root.

J'ai pu faire un projet sur la cybersécurité quand j'étais à l'école que je vous invite à aller voir -> [Nemesis](/realisations/nemesis)

Via twitter, je reste alerté des diverses failles et exploitations.
# Compétences transverses
## Polyvalent, adaptabilité
Durant mon alternance, j'ai particulièrement exploité cette compétence puisque nous étions une équipe de 3 (moi compris) pour effectuer tout ce qui touche de près ou de loin à l'informatique. J'ai du m'adapter à toute sorte de situation et d'outils que je n'avais jamais vu auparavant.

Ayant travaillé dans un EPHAD pendant 5 ans en tant que serveur essentiellement mais parfois en commis de cuisine, j'ai du m'adapter à un nombre incalculable de situations. Si vous voulez un exemple, une fois il y a eu un départ de feu dans les cuisines et il a fallu évacuer tout le monde et trouver un moyen de réorganiser cela dans l'urgence puisqu'il n'y avait plus de restaurant ni de cuisine. ça a pris des heures voir des jours mais nous avons réussi à trouver une solution viable.

## Sociable, souriant, sympathique
Appelez ça comme vous voulez, pour moi c'est un tout.

Selon moi, ce sont des compétences essentiel au sein d'un travail en équipe. Cela permet de garder une bonne ambiance malgré les difficultés. Ambiance qui est essentiel d'avoir dans un travail auquel cas on risque de le subir même s'il est intéressant et enrichissant à la base. A moins de faire un métier avec 0 interactions avec les gens, ces compétences sont toujours appréciées, en tous cas pour ma part, on m'en a toujours dit du bien et ceux même si durant une de mes expèrience cela s'est mal déroulé.

Tout ceux qui me connaissent vous le diront, je suis souriant, souvent de bonne humeur et drôle.

## Curieux
En informatique il est essentiel d'être curieux. En effet, les technologies sont vraiment vastes, variées et évoluent extrêmement vite, il est donc important de rester à jour sur ce qui se fait dans son domaine mais pas que.

Personnellement je suis interessé par une multitude de choses comme le sport, la mécanique, l'électronique, la musique, la bricole etc ... Il y a toujours quelque chose à apprendre d'intéressant et la vie est un apprentissage permanent plus on croit savoir, moins on sait, tant les choses changent, et avec elles les mentalités.

Selon moi rester curieux et vouloir en apprendre tout le temps permet de ne pas devenir un "vieux con" bien borné, vous savez celui qui a toujours fais comme ça et qui ne changera jamais de sa vie. Le "c'était mieux de mon époque", "internet et les réseaux c'est de la 💩" etc... Pour avoir travaillé dans une maison de retraite je peux vous dire que ça me donne pas envie 😅

C'est d'ailleurs grâce à cette curiosité que je fais ce métier aujourd'hui, j'ai essentiellement appris les choses grâce à cela. A l'école on nous fourni un cadre, ensuite c'est à nous d'aller chercher les informations et de se former un peu tout seul.
