---
title: "Challenge Accepted - IaaS"
date: 2017-04-20T16:32:35+02:00
draft: false
tags: ["ansible", "AWS", "terraform", "IaaS"]
---

{{< image src="/challenge-accepted.jpg" alt="Hello Friend" position="center" style="border-radius: 8px;" >}}
Projet d'école (S4) proposé par Eric Lalitte :

Automatisation de génération d'infrastructure réseau pour permettre aux étudiants de pouvoir mettre en pratique les cours réseaux disponibles sur le site OpenClassroom.

Selon la leçon, il fallait pouvoir mettre à disposition un serveur et/ou une infrastructure préconfigurée ainsi que sa destruction automatique. On fournit toutes les informations nécessaires pour que l'étudiant puisse réalisé un TP.

Pour se faire, nous avons utilisé Ansible, Terraform et AWS.

Grâce à Terraform nous faisions en sorte de générer les machines sur AWS et pour la partie automatisation de la configuration, provisionning nous nous sommes servis de Ansible.

Ce projet reprend un peu le principe de ce site -> https://labex.io/

Mais, à l'époque nous ne connaissions pas ce site et ce fût un véritable challenge puisque nous ne connaissions pas non plus les technologies utilisées. Personnellement, c'était la première fois que j'étais chef de projet donc cela m'a rajouté un challenge supplémentaire.
