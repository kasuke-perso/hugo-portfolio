---
title: "Installation AWX"
date: 2018-08-05T09:45:10+02:00
draft: false
---

On va se servir d'Ubuntu 17.10 et on aura besoin d'une connexion internet.

Nous allons installer quelques paquets qui seront utiles pour que Ansible et AWX fonctionnent correctement.

Premièrement, il faudra mettre à jour son source-list.
```shell
sudo apt update
```
Ensuite procédé à l'installation de quelques paquets:
```shell
sudo apt install python-minimal open-ssh htop
```
Ceci va installer python2.7.x, un serveur ssh pour avoir accès à la machine via ssh et `htop` un meilleur `top`

Ensuite nous allons télécharger Ansible mais on va le faire via les sources d'Ansible car dans  les repo officiel, la version d'Ansible n'est pas la bonne pour que tout fonctionne, il faut absolument être à une version >= 2.4 sinon AWX ne sera pas installable.
```shell
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
```
Nous aurons besoin aussi de docker pour installer AWX car s'en est dépendend et AWX ne fonctionnera qu'avec un container si on veut un AWX local. La version des repo officiel suffira.
```shell
sudo apt install docker.io
```
Pour vérifier si l'installation s'est bien déroulé, éxécutez cette commande:
```shell
sudo docker run hello-world
```
Ceci devrait activer le service docker, téléchargeons l'image 'hello world' et executons la. Pour vérfier si le service est en train de fonctionner executons cette commande :
```shell
systemctl status docker
```
Cela devrait nous dire que Docker est actif et en fonctionnement. Pour avoir le service docker à chaque démarrage il suffit de faire ceci :
```shell
systemctl enable docker
```
Nous aurons besoin de 'pip' pour l'installation des paquets python, nous aurons aussi besoin de git mais il devrait être déjà installé par défaut sur Ubuntu serveur.
```shell
sudo apt install python-pip
```
Nous aurons besoin d'installer la library python docker aussi
```shell
pip install docker
```
Si vous voulez avoir un 'man' un peu plus facile d'utilisation avec des exemples, je vous suggère d'installer ces deux paquets python
```shell
pip install eg cheat
```
Je suggère également d'installer 'tree' qui va nous faciliter la tâche pour avoir une vue d'ensemble des fichiers et des dossiers.
```shell
sudo apt install tree
```
Maintenant, nous allons passer à l'installation d'AWX, nous aurons besoin de cloner le github d'AWX, nous avons déjà github (2.14.1)
```shell
git clone https://github.com/ansible/awx 	
```
Ensuite allons dans le dossier d'installation d'AWX
```shell
cd awx/installer
```
Nous avons besoin de changer quelques lignes dans le fichier d'inventaire
```shell
vim inventory
```
décommentons cette ligne
```shell
# project_data_dir=/var/lib/awx/projects
```
Il faudra aussi changer cette ligne
```shell
dockerhub_version=latest
```
par celle-là
```shell
dockerhub_version=1
```
Décommentons cette ligne
```shell
# use_docker_compose=false
```
Puisque nous voulons que nos données persistent, on  va changer cette ligne
```shell
postgres_data_dir=/tmp/pgdocker
```
Par celle-ci
```shell
postgres_data_dir=/opt/pgdocker
```
Ensuite nous pouvons procéder à l'execution du playbook pour  l'installation.
```shell
sudo ansible-playbook –i inventory install.yml
```
Si tout s'est bien déroulé, on peut voir la progression de l'installation en regardant les logs d'awx_task dans le container
```shell
sudo docker logs –f awx_task
```
Nous allons voir des logs semblable à ceci :
```shell
Using /etc/ansible/ansible.cfg as config file
127.0.0.1 | SUCCESS => {
    "changed": false,
    "db": "awx"
}
Operations to perform:
  Synchronize unmigrated apps: solo, api, staticfiles, messages, channels, django_extensions, ui, rest_framework, polymorphic
  Apply all migrations: sso, taggit, sessions, djcelery, sites, kombu_transport_django, social_auth, contenttypes, auth, conf, main
Synchronizing apps without migrations:
  Creating tables...
    Running deferred SQL...
  Installing custom SQL...
Running migrations:
  Rendering model states... DONE
  Applying contenttypes.0001_initial... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0001_initial... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying taggit.0001_initial... OK
  Applying taggit.0002_auto_20150616_2121... OK
  Applying main.0001_initial... OK
...
```
Quand la migration est finie, nous verrons ces logs, indiquant que la migration est terminée:
```shell
>>> <User: admin>
>>> Default organization added.
Demo Credential, Inventory, and Job Template added.
Successfully registered instance awx
(changed: True)
Creating instance group tower
Added instance awx to tower
(changed: True)
...
```
La prochaine étape est de créer un dossier au sein du projet AWX
```shell
sudo mkdir /var/lib/awx/projects/your_project_name
```
Et  d'y mettre tout ce dont on aura besoin : playbooks, ressources, fichiers, dossiers. Si vous ne  mettez pas tout dans ce dossier précis, AWX ne le verra pas et si vous ne créez pas le dossier, AWX ne vous laissera pas faire un projet local.
