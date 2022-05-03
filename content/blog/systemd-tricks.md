---
title: "Systemd Tricks"
date: 2022-05-03T15:31:05+02:00
tags: ["cheatsheet", "logs"]
draft: false
---

En rapport avec l'autre article :  lien

On peut gérer les options tel que l'utilisateur et groupe.
Faut aller dans `vim /etc/systemd/system/leservice.service`


## Exemple avec logstash

```ini
[Unit]
Description=logstash

[Service]
Type=simple
User=root
Group=root
# Load env vars from /etc/default/ and /etc/sysconfig/ if they exist.
# Prefixing the path with '-' makes it try to load, but if the file doesn't
# exist, it continues onward.
EnvironmentFile=-/etc/default/logstash
EnvironmentFile=-/etc/sysconfig/logstash
ExecStart=/root/logstash-7.16.3/bin/logstash "--path.settings" "/etc/logstash"
Restart=always
WorkingDirectory=/
Nice=19
LimitNOFILE=16384

# When stopping, how long to wait before giving up and sending SIGKILL?
# Keep in mind that SIGKILL on a process can cause data loss.
TimeoutStopSec=infinity

[Install]
WantedBy=multi-user.target
```
On peut voir que j'ai changé le User et le groupe, on peut aussi changer les options de démarrage et les chemins des binaires :)