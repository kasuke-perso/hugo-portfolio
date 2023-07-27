---
title: "Airbus - Intégrateur infra - 11 Mois"
date: 2020-12-01T10:17:34+02:00
draft: false
---
Durée 11 mois (Décembre 2020 - Fin novembre 2021)

Dans une équipe de 7 personnes, je suis responsable du déploiement d'un socle composé de BM (HP) et de VM (Nutanix) ainsi que de nombreuses autres solutions techniques. Le but est de le faire de la manière la plus automatisée possible, chacun développe un élément du socle, par exemple une personne est en charge de toute la partie supervision/remonté de logs, et je suis en charge de regroupé toute les parties de tout le monde, déployer de façon séquentielle dans l'ordre nécessaire et faire en sorte que cela fonctionne. Mais bien souvent cela ne se passe pas comme prévu et je doit vérifier les différents composants, par exemple je debug un conteneur mal déployé ou un problème dans un playbook.

Le tout étant hébergé sur un gitlab privée afin d'avoir un suivi de versions ainsi que la gestion de projet offerte par celui-ci

J'ai d'ailleurs implémenté une partie d'automatisation des configs BIOS et ILO des serveurs Baremetal, une partie automatisation de déploiement et configuration de VM de tests quand je n'étais pas parti pour déployer chez différents clients cible. Pour se faire j'ai utilisé les technos suivantes: Ansible, Terraform, API Ilorest, cloud-init.

### Ce que j'ai aimé
- L'équipe dans laquelle je travaillais était bien, constitué de personnes ayant plus ou moins les mêmes profils et même appetance technique. J'ai appris beaucoup de chose grâce à eux.
- L'univers technique ...

### Ce que j'ai pas aimé
- Le gros point noir c'est toujours le même dans ce genre de grosse entreprise, les process lourd et long pour absolument tout.
- Le management a été assez mal géré du coup l'équipe s'est fracturée
- ... L'univers techniques semblait bien sur le papier, mais en réalité mal géré, pas justifié pour les différents besoins.
- Les missions qui m'étaient affectés n'étaient pas du tout celle que j'avais espéré, manque de challenge et je ne me sentais pas du tout écouté.

### Univers techniques :
* SUSE/SLES/OpenSUSE
* Kubernetes
* Rancher
* Ansible
* Terraform
* HP/HPE ilorest
* Cobbler
* Nutanix
* Docker
* Rook/SES
* Grafana
* Cloud-init
* Gitlab
* Ceph
* ilorest api