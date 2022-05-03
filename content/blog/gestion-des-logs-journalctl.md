---
title: "Gestion Des Logs Journalctl"
date: 2022-05-03T15:16:44+02:00
tags: ["cheatsheet", "logs"]
draft: false
---

Petite notes pour les logs de journalisation linux, journalctl car à chaque fois ça parle mandarin et ça me saoule

# Cheatsheet 

- `journalctl -xe` pour voir tous les logs direct en bas je crois à vérif
- Filtrer par **service** : `journalctl -u service`
- `journalctl -f` pour faire comme tail -f dessus
- Filtrer par **PID** `journalctl _PID=1`
- Filtrer par **programme** `journalctl /usr/bin/tamere`
- Filtrer par niveau de logs genre **err** `journalctl -p err`