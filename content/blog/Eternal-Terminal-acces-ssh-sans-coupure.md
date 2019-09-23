---
title: "Eternal Terminal - Accès ssh sans coupure"
date: 2019-07-22T14:28:13+02:00
draft: false
tags: ["appcool", "crossplateforme"]
comments: true
---

Ce shell s’installe sur le client et sur le serveur (port 2022) et permet de se reconnecter à votre session sans interruption.

Contrairement à une session SSH classique, les sessions ET survivront à une coupure réseau ou à un changement d’adresse IP. Inspiré de Mosh, SSH et AutoSSH, Eternal Terminal utilise SSH pour la mise en relation et le chiffrement et supporte le mode « control » de tmux, ce qui vous permet de disposer de fenêtres, d’onglets et de barres de défilement dans votre terminal.

Eternal Terminal est donc à réserver aux impatients qui veulent pouvoir se remettre en selle directement après une coupure ou aux admins travaillant dans un environnement un peu chaotique avec des déconnexions fréquentes ou des changements d’IP fréquents.

Voici le github pour savoir comment l'installer. C'est crossplateforme donc dispo sur tout (enfin je crois que sur windows c'est sur la console linux)
[Eternal Terminal](https://github.com/MisterTea/EternalTerminal)
