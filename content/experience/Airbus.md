---
title: "Airbus"
date: 2020-12-01T10:17:34+02:00
draft: false
---
Durée x mois (Décembre 2020 - ?)

Dans une équipe de 7 personnes, je suis responsable du déploiement d'un socle composé de BM (HP) et de VM (Nutanix) ainsi que de nombreuses autres solutions techniques. Le but est de le faire de la manière la plus automatisé possible, chacun développe un élément du socle, par exemple une personne est en charge de toute la partie supervision/remonté de logs, et je suis en charge de regroupé toute les parties de tout le monde, déployer de façon séquentielle dans l'ordre nécessaire et faire en sorte que cela fonctionne. Mais bien souvent cela ne se passe pas comme prévu et je doit vérifier les différents composants, par exemple je debug un conteneur mal déployé.

Le tout étant hébergé sur un gitlab privée afin d'avoir un suivi de versions ainsi que la gestion de projet offerte par celui-ci

J'ai d'ailleurs implémenté une partie d'automatisation des configs BIOS et ILO des serveurs Baremetal, une partie automatisation de déploiement et configuration de VM de tests quand je n'étais pas parti pour déployer chez différents clients cible. Pour se faire j'ai utilisé les technos suivantes: Ansible, Terraform, API Ilorest, cloud-init.

#### Univers techniques :
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