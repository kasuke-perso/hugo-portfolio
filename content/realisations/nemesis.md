---
title: "Nemesis - Sécurité réseaux"
date: 2017-10-20T17:51:46+02:00
draft: false
tags: ["sécurité"]
---
{{< image src="/Logo_nemesis_153x165.png" alt="Hello Friend" position="center" style="border-radius: 8px;background-color: white;" >}}

Projet de sécurité informatique (équipe de 3 personnes).

Sur un Raspberry avec Kali, nous voulions faire un système de récupération d'autant de données que possible de façon totalement indépendante et automatique sur les réseaux wifi et bluetooth.

À l'aide d'une batterie externe et d'un sac à dos, nous voulions montrer aux gens la fragilité des systèmes mais surtout le danger bien réel que représente notre époque et ses technologies.

À la fin de son scan et de l'attaque, on obtient un rapport détaillé sur une interface web que l'on peut exporter par la suite, montrant toutes les failles découvertes, avec leur CVE correspondant et tous les fichiers que l'on a pu extraire.

Puisque nous avions un Raspberry, nous devions utiliser des techniques peu gourmandes en ressources. Ainsi le bruteforce était banni de nos attaques.

Voici une vidéo d'attaque, bien sûr réalisée dans notre école sur un réseau spécial 😉

{{< youtube LdSwzABJ79Q >}}

On ne le voit pas dans cette vidéo actuelle mais on génère un rapport de ce que l'on a trouvé et on a un résumé tout beau

#### Ce que le projet fait :
*	Collecte d’un maximum d'informations d'un point de vue intérieur et extérieur au réseau cible.
*	Se connecter à n’importe quel réseau alentours.
*	Lister les périphériques du réseau ainsi que leurs services.
*	Architecturer un réseau (s’il existe des sous réseaux, VPN, Firewall ...).
*	Déterminer les vulnérabilités disponibles et un moyen de les exploiter.
*	Récupérer des données sensibles sur les hôtes, modifier du contenu web.
*	Escalader les privilèges utilisateurs pour tenter d’obtenir les droits administrateurs.
*	Exporter les données récupérées sur les hôtes vers un serveur ou un outil de stockage amovible.
*	Génération d’un rapport détaillé sur les attaques menées et les vulnérabilités exploitées.


#### Technologies utilisées :
* nmap
* metasploit
* python3
* aircrack-ng
* bash
* tcpdump
* OpenVAS
* SocialEngineerToolKit
* SQLMap
* Commix
* Backdoor-Factory
* KRACK
* Keylogger

#### Ce que m'a apporté le projet
Personnellement, j'ai toujours été fasciné par la sécurité informatique, je voulais vraiment voir en cas concret ce que cela faisait. Dans mon équipe nous étions tous motivés à en découvrir plus sur la sécurité informatique, mais cela n'a pas été évident. En effet, Nous avons rencontré des difficultés à échanger entre nous et pour ma part je n'ai pas eu beaucoup de retours sur l'évolution globale du projet. Un membre de l'équipe était vraiment à fond dessus et nous n'avons eu que très peu d'intéractions avec lui puisqu'il faisait beaucoup de choses chez lui et en mode "perso".

Pour conclure, je dirais que dans lʼensemble, ce projet mʼa appris quelques notions intéressantes, notamment sur le bluetooth, qui était la partie que jʼai géré. Malheuresement, je n'ai pas pu exploiter les failles que j'avais trouvé mais j'ai néanmoins appris de nombreuses choses sur le sujet, donc j'étais plutôt content.
