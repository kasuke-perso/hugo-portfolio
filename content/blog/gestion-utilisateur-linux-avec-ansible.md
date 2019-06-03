---
title: "Gestion Utilisateur Linux Avec Ansible"
date: 2019-05-29T14:29:12+02:00
draft: false
tags: ["tuto", "ansible", "devops", "automatisation"]
---

Il arrive assez souvent de créer plein de VM ou de machine physique avec les mêmes utilisateurs qui vont s'en servir avec la même configuration.
Rajouter leur clé ssh, être dans le groupe admin, créer leur /home, etc...

Des tâches répétitives qu'on aimerait bien automatiser. C'est pourquoi Ansible est là !

Pour se faire, plusieurs méthodes s'offrent à nous:

* Faire de A à Z un playbook avec le module [user](https://docs.ansible.com/ansible/latest/modules/user_module.html#user-module)
* Faire les flemmards et trouver un rôle qui fasse tout ça 😎 sur [ansible galaxy](https://galaxy.ansible.com/) par exemple

Les 2 options peuvent convenir mais généralement les rôles qu'il y a sur ansible galaxy sont prévus pour gérer tellement de cas que cela semble encore plus compliqué de s'en servir que de le refaire sois-même.

Donc aujourd'hui je vous propose ma solution qui va se servir d'un peu des deux car moi je veux un truc **SIMPLE** et facile d'utilisation sans avoir à replonger dans une doc pour s'en servir.

### Petits rappels

Les rôles sont situés dans votre /home `~/.ansible/roles`

Les variables passés dans `--extra-pass` écrase toute celle que vous avez ailleurs
Je vais essayer d'utiliser un max de variables pour ne rien avoir à faire quand je m'en sers et pouvoir l'adapter à tout utilisateur

------

Je vais essayer de partir de ça https://github.com/nickjj/ansible-user et de le faire à ma sauce

Il faut faire un petit `ansible-galaxy install nickjj.user` 

Cela va créer un dossier dans votre `~/.ansible/roles`
```bash
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

Bien faire attention à celà

### Mais ma nouvelle VM ne connait pas mes clés SSH justement ! Comment faire ?

Hé bien mon petit Jamie, il y a une option dans Ansible qui permet ce genre de chose. Je considère que vous avez au moins un utilisateur qui peut se logger avec un mot de passe.

Je vous conseil de faire ça juste pour ce cas précis. Créer un fichier dans votre `/home` que vous nommerez `.ansible.cfg`. Ce fichier contiendra des variables de configuration pour ansible qui seront propre à un utilisateur (et non en global du coup)

Dans ce fichier vous pouvez mettre ceci :
```YAML
[defaults]
host_key_checking = False
```
Ce qui aura pour conséquence de ne pas vérifier le fichier known_hosts et ainsi rajouter une nouvelle machine sans vérif ... (pas bien)

On peut rajouter des variables soit directement dans notre fichier `hosts` (pas /etc/host hein) soit on peut les passer quand on éxecute le playbook avec l'option `--extra-pass` 

* Exemple avec commande ansible-playbook:

```bash
ansible-playbook -i hosts /
    --extra-vars "ansible_user=root ansible_password=yourpassword"
```
* Exemple avec fichier hosts:

```bash
10.0.5.54 ansible_user="admin" ansible_password="yourpassword" / 
ansible_sudo_password="yourpassword" /
ansible_python_interpreter="/usr/bin/python3"
```
Si vous ne mettez pas `ansible_sudo_password` vous aurez une erreur puisque dans le playbook on se sert des droits sudo.