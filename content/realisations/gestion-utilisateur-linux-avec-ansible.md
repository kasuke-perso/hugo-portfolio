---
title: "Gestion clés ssh Linux avec Ansible"
date: 2019-05-29T14:29:12+02:00
draft: false
tags: ["tuto", "ansible", "devops", "automatisation", "système"]
comments: true
---

Il arrive assez souvent de créer plein de VM ou de machine physique avec les mêmes utilisateurs qui vont s'en servir avec la même configuration.
Rajouter leur clé ssh, être dans le groupe admin, créer leur /home, etc...

Des tâches répétitives qu'on aimerait bien automatiser. C'est pourquoi Ansible est là !

Pour se faire, plusieurs méthodes s'offrent à nous :

* Faire de A à Z un playbook avec le module [user](https://docs.ansible.com/ansible/latest/modules/user_module.html#user-module), la doc d'ansible est plutôt bien.
* Faire les flemmards et trouver un rôle qui fasse tout ça 😎 sur [ansible galaxy](https://galaxy.ansible.com/) ou github par exemple.

Les 2 options peuvent convenir, mais généralement les rôles qu'il y a sur ansible galaxy sont prévus pour gérer tellement de cas que cela semble encore plus compliqué de s'en servir que de le refaire sois-même.

C'est pourquoi aujourd'hui, je vous propose ma solution qui va utiliser les deux méthodes, car je veux quelque chose de **SIMPLE** et facile d'utilisation sans avoir à replonger dans une doc pour pouvoir m'en servir.

### Petits rappels

* Les rôles sont situés dans votre /home `~/.ansible/roles`

* Les variables passées dans `--extra-vars` écrasent toutes celles que vous avez ailleurs

* De base Ansible se sert des clés ssh pour communiquer, mais nous pouvons aussi utiliser un login mot de passe pour s'y connecter. Il faut alors rajouter `--ask-pass` et quand on a besoin des droits 'sudo' il faut aussi ajouter `--ask-become-pass`.
En utilisant ask, lorsque vous lancerez votre playbook on vous demandera un mot de passe. Pour éviter celà, on peut alors ajouter en variable `ansible_user=youruser` et `ansible_password=yourpassword` et `ansible_sudo_password=yourpassword` pour les droits sudo.

* L'option `-i` permet de préciser quel fichier host utiliser (par défaut c'est `etc/ansible/hosts`)


------

Je vais partir de ça https://github.com/nickjj/ansible-user

Je précise qu'on est sur ubuntu server 16.04

Il faut faire un petit `ansible-galaxy install nickjj.user`

Cela va créer un dossier dans votre `~/.ansible/roles`
```batch
fdugat@SRV-ANSIBLE01:~/.ansible/roles/nickjj.user$ tree
.
├── CHANGES.md
├── defaults
│   └── main.yml
├── LICENSE
├── meta
│   └── main.yml
├── README.md
├── tasks
│   └── main.yml
└── tests
    └── test.yml
```
**Toute les variables sont dans** `defaults/main.yml`

Ce sera THE fichier à modifier pour pouvoir l'adapter pour n'importe quel utilisateur.

### Mais ma nouvelle VM ne connait pas mes clés SSH justement ! Comment faire ?

Hé bien mon petit Jamie, il y a une option dans Ansible qui permet ce genre de choses. Je considère que vous avez au moins un utilisateur qui peut se logger avec un mot de passe.

Je vous conseil de faire ça juste pour ce cas précis. Créez un fichier dans votre `/home` que vous nommerez `.ansible.cfg`. Ce fichier contiendra des variables de configuration pour Ansible qui seront propres à un utilisateur (et non en global)

Dans ce fichier vous pouvez mettre ceci :
```YAML
[defaults]
host_key_checking = False
```
Ce qui aura pour conséquences de ne pas vérifier le fichier known_hosts et ainsi rajouter une nouvelle machine sans vérif ... (pas bien)

On peut rajouter des variables soit directement dans notre fichier `hosts` (pas /etc/host hein) soit on peut les passer quand on exécute le playbook avec l'option `--extra-pass`

* Exemple avec commande ansible-playbook:

```bash
ansible-playbook -i hosts /
    --extra-vars "ansible_user=root /
    ansible_sudo_password="yourpassword" /
    ansible_password=yourpassword"
```
* Ou avec le fichier hosts:

```bash
10.0.5.54 ansible_user="admin" ansible_password="yourpassword" /
ansible_sudo_password="yourpassword" /
ansible_python_interpreter="/usr/bin/python3"
```
Si vous ne mettez pas `ansible_sudo_password` vous aurez une erreur puisque dans le playbook on se sert des droits sudo.

---

### Exemple concret
Je veux rajouter robert lafondue avec sa clé publique qui est sur le serveur sur un serveur qui est en `192.168.0.12` par exemple.

Contenu du fichier `~/.ansible/roles/nickjj.user/defaults/main.yml` :
```YAML
---
# Optionally create additional user groupss. If empty, the user you create will
# automatically be a part of their user's group, ie. deploy:deploy.
user_groups: ["rlafondue", "adm", "cdrom", "sudo", "dip", "plugdev", "lxd", "lpadmin"]

# The user you want to create.
user_name: "rlafondue"

# Which shell should you default to? Typically "bash" or "sh".
user_shell: "/bin/bash"

# Do you want to create an SSH keypair for this user? You probably don't for a
# regular user that you plan to login as which is why it's disabled by default.
user_generate_ssh_key: False

# When set, this will copy your local SSH public key from this path to your
# user's authorized keys on your server.
#
# If you don't want this behavior then use an empty string as the value but keep
# in mind this role does not set a default password for the user you create, so
# you will be locked out if you don't supply your public SSH key.
user_local_ssh_key_path: "/home/rlafondue/.ssh/authorized_keys"

# Do you want to enable running root commands without needing a password?
user_enable_passwordless_sudo: True
```

Contenu du fichier `playbook.yml` :
```YAML
---

- name: "Test transfert clé ssh"
  hosts: "all"
  become: True

  roles:
    - { role: "nickjj.user", tags: "user" }
```

Conteu du fichier `hosts` :
```YAML
192.168.0.12 ansible_user="root" ansible_password="passW0rd" ansible_sudo_password="passW0rd" ansible_python_interpreter="/usr/bin/python3"
```

Et enfin la commande pour lancer tout ça :

`(sudo) ansible-playbook -i hosts playbook.yml`

Et voilà ! Aussi simple que ça.
