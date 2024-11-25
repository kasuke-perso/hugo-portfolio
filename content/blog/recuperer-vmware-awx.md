---
title: "Synchroniser VMWare inventory sur AWX"
date: 2024-11-25T10:19:22+01:00
draft: false
---
Dans AWX, il existe de base, un inventaire dynamique basé sur VMWare.

Je trouve la documentation et les ressources sur internet un peu trop vague à ce sujet alors j'écris ce petit article qui pourrait en aider d'autre.

# Creation de l'inventaire VMWare
Tout d'abord il faudra aller dans l'UI `ressources/inventory/add inventory` la vous donner un nom à votre inventaire, ce sera juste pour l'identifier (mettez VMWare inventory par exemple)

Une fois crée, vous devrez aller dans votre inventaire et aller dans l'onglet *sources*, la vous lui donnez un nom (VMWare vcenter par exemple), à vérifier mais je crois que l'extension vmware est intégré de base donc pas forcément besoin de spécifier un environement d'execution (pour rappel, cela permet d'utilliser une version d'ansible spécifique, avec des add-ons ou des plugins qui ne sont plus installé de base avec ansible-core -> lien documentation )

Au préalable vous avez déjà créer vos credentials qui vous permette de communiquer avec l'API de VMWare, vous choisissez cela, je vous conseil vivement de cocher la case *Replace*, cela permettera d'être toujours à jour avec l'inventaire présent sur VMWare, si une machine a été supprimée, elle le sera aussi dans votre inventaire dynamique sur AWX.

# Variables Sources 

Ensuite, voici les **variables sources**


Et c'est ce qui va le plus nous intéresser. De base ce module inventaire, sans rien lui spécifier, va récupérer le nom des VMs + uuid, personnellement je ne vois pas trop l'intéret puisqu'on préfera appeler les VMs par groupe ou par leur nom.

Donc pour se faire, il faudra spécifier que nous voulons récupérer juste le nom de la machine, pour se faire :
``` yaml
hostnames: config.name
```
Mais, en fait on va vouloir aussi récupérer d'autres infos, de base il va nous créer des groupes basé sur `config.guestId` or ce n'est pas toujours la meilleure solution puisque c'est possible que ce ne soit pas en accord avec la version actuellement installée. 

Prenons un exemple concret, vous avez installé une VM il y a des années basé sur une debian 5, votre `config.guestId` sera donc debian5, or vous avez fait pleins de choses dessus et depuis vous l'avez upgrade admettons en debian 10. Sauf que votre `config.guestId` n'a pas changé malgré l'upgrade de la machine. Ce que je vous conseil c'est de se baser plutôt sur le `guest.guestId` qui lui sera (normalement) syncro avec la vraie version installé sur votre VM.

Vous aimeriez aussi bien créer un groupe basé sur le type de VM (par exemple toute les Linux)

Mais, il y a encore un mais, de base on récupere que ces infos ->  
``` yaml
Default: ["name", "config.cpuHotAddEnabled", "config.cpuHotRemoveEnabled", "config.instanceUuid", "config.hardware.numCPU", "config.template", "config.name", "config.uuid", "guest.hostName", "guest.ipAddress", "guest.guestId", "guest.guestState", "runtime.maxMemoryUsage", "customValue", "summary.runtime.powerState", "config.guestId"]
```
On remarque qu'il n'y a pas notre `guest.guestFamily`, mais si on défini à la main ce que l'on veut récupérer, il faut mettre toute les infos que l'on veut récupérer ça va écraser ces valeurs par défaut qui sont récupérées. Je vais vous montrer un exemple concret ça sera plus parlant.

Je veux récupérer `guest.guestId`, je veux récupérer `config.name` (pour avoir le nom de la machine) et je veux récupérer `guest.guestFamily` pour avoir un groupe basé sur le type d'OS (dans notre exemple, Linux)

Pour se faire, je défini d'abord dans properties toute les propriétés que je veux récupérer, ça ne va plus se baser sur le `Default` précédemment mentionné.

Voici ce qu'il faudra mettre dans les variables sources dans AWX : 
``` yaml
properties:
- 'guest.guestFamily'
- 'guest.guestId'
- 'config.name'
hostnames :
- config.name 
keyed_groups:
- key: guest.guestId
  separator: ''
- key: guest.guestFamily
  separator: ''
```
Ainsi nous allons récupérer dans notre inventaire les bonnes informations pour qu'AWX créer les bons groupes. 

*Attention* Si vous mettez `hostnames` avant les properties, vous aurez une erreur car il n'aura pas récupérer les variables. L'ordre à son importance.

Voila dans les grandes lignes, je vous invite à adapter la chose en fonction de votre infra en allant voir directement dans la partie Host dans votre inventaire, vous prenez un host et vous regarder toute les variables que le module VMWare vous a récupérer.
