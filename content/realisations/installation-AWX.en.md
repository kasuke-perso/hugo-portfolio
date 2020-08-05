---
title: "Installation AWX"
date: 2020-08-05T09:45:34+02:00
draft: false
---

Ubuntu server 17.10 is used, you will need a network connection during the process.

We will install some packages that are useful and needed to get ansible + awx working fine.

First of all, you will need to update your package sources.
```shell
sudo apt update
```
Then we will install some packages:
```shell
sudo apt install python-minimal open-ssh htop
```
This will install python2.7.x, a ssh server to get access to your machine by ssh and htop a better top.

Then you will download Ansible but you need to install by their sources because in the official repository of Ubuntu the version is not updated, and you NEED to have an ansible version >= 2.4 otherwise awx couldn’t be installable.
```shell
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
```
You will also need docker to install awx because it’s depended and can only run in a container if you want a local awx. The version in the official package is good enough.
```shell
sudo apt install docker.io
```
To check if the installation was good just run this:
```shell
sudo docker run hello-world
```
This should enable the docker service, download the hello-world image and run it. To check if the service is running just type:
```shell
systemctl status docker
```
This sould tell you that docker is active and running. To get docker service activated every time you boot just type :
```shell
systemctl enable docker
```
We need pip to install python packages, we also need git but it’s already included by default on Ubuntu.
```shell
sudo apt install python-pip
```
We need to install the docker python library too
```shell
pip install docker
```
If you want to have some “easy” man with real examples then install eg and cheat
```shell
pip install eg cheat
```
I suggest you that you install tree, it will help you with your directories
```shell
sudo apt install tree
```
Now, here’s come the AWX installation, you will need to clone the awx repository from github, you already have github (2.14.1)
```shell
git clone https://github.com/ansible/awx 	
```
Then go to the installer awx directory
```shell
cd awx/installer
```
You have to change some lines in the inventory file
vim inventory
Uncomment this line
```shell
# project_data_dir=/var/lib/awx/projects
```
For some reasons, you need to change this line
```shell
dockerhub_version=latest
```
by
```shell
dockerhub_version=1
```
Uncomment this line
```shell
# use_docker_compose=false
```
Because we want our data to be persistent, change this line
```shell
postgres_data_dir=/tmp/pgdocker
```
By this one
```shell
postgres_data_dir=/opt/pgdocker
```
Then you are ready to execute the playbook for the installation.
```shell
sudo ansible-playbook –i inventory install.yml
```
If everything went right, you can see the progression of the installation by checking the container awx_task log
```shell
sudo docker logs –f awx_task
```
You will see output similar to the following:
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
Once migrations complete, you will see the following log output, indicating that migrations have completed:
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
Next step is to make a directory inside the awx project
```shell
sudo mkdir /var/lib/awx/projects/your_project_name
```
And put everything you need for your project: playbooks, resources, files, directories. If you call a file that is somewhere else than there, awx won’t see it. And if you don’t create the directory, awx won’t let you create a local project
