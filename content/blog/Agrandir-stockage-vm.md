---
title: "Agrandir Stockage Vm"
date: 2019-05-28T16:12:16+02:00
draft: true
tags: ["tuto", "système", "virtualisation"]
---

Au préalable il faut avoir augmenter la taille de l'espace disque (donc là je le fais sur vsphere avec une VM)

j'avais initialement 16Go et je rajoute 134Go
![screen vsphere](/screen_vsphere.PNG)

### Création d'une nouvelle partition
On doit se servir de fdisk, il faut être admin (sudo)
```shell
➜  ~ sudo fdisk -l
Disk /dev/sda: 150 GiB, 161061273600 bytes, 314572800 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x513bdfba

Device     Boot   Start      End  Sectors  Size Id Type
/dev/sda1  *       2048   999423   997376  487M 83 Linux
/dev/sda2       1001470 33552383 32550914 15.5G  5 Extended
/dev/sda5       1001472 33552383 32550912 15.5G 8e Linux LVM


Disk /dev/sdb: 100 GiB, 107374182400 bytes, 209715200 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x125992dd

Device     Boot Start       End   Sectors  Size Id Type
/dev/sdb1        2048 209715199 209713152  100G 83 Linux


Disk /dev/mapper/ubuntuLTS--16--vg-root: 13.5 GiB, 14516486144 bytes, 28352512 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mapper/ubuntuLTS--16--vg-swap_1: 2 GiB, 2147483648 bytes, 4194304 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
```
Là on peut voir ma partition `/dev/sda` qui est à 150Go or on peut voir juste en dessous que ça ne suffit pas, en effet on peut voir que mes partitions `/dev/sda1`, `/dev/sda2` et `/dev/sda3` n'ont pas 'acquis' les 134Go que j'ai rajouté.

On peut faire cette commande pour confirmer (le -h permet d'avoir les tailles en lisible Mo, Go ...):
```shell
➜  ~ df -h
Filesystem                          Size  Used Avail Use% Mounted on
udev                                3.9G     0  3.9G   0% /dev
tmpfs                               799M  8.8M  790M   2% /run
/dev/mapper/ubuntuLTS--16--vg-root   14G   13G     0 100% /
tmpfs                               3.9G     0  3.9G   0% /dev/shm
tmpfs                               5.0M     0  5.0M   0% /run/lock
tmpfs                               3.9G     0  3.9G   0% /sys/fs/cgroup
/dev/sda1                           472M  159M  289M  36% /boot
/dev/sdb1                            99G  3.7G   90G   4% /media/partition1
tmpfs                               799M     0  799M   0% /run/user/1002

```
Donc on va partitionner tout ça, on rentre en mode edition de partition sur `dev/sda`
```shell
sudo fdisk /dev/sda
Command (m for help):
```
