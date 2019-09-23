---
title: "Agrandir Stockage Vm"
date: 2019-05-28T16:12:16+02:00
draft: false
tags: ["tuto", "système", "virtualisation"]
comments: true
---

### Prérequis
Il faut avoir augmenté la taille de l'espace disque (donc là je le fais sur vsphere avec une VM)

J'avais initialement 16Go et je rajoute 134Go donc on se retrouve avec un disque de 150Go
![screen vsphere](/screen_vsphere.PNG)
Ensuite on va faire au plus simple, on va se mettre en liveCD (un iso de gparted fera très bien l'affaire)
### Se mettre en LiveCD sur vSphere
Comment j'ai procédé pour insérer le cd :

On est dans vSphere

1. Modifier les paramètres
2. Dans l'onglet **Matériel** -> clic sur Lecteur CD/DVD -> Fichier ISO banque de données (faut avoir mis l'iso dans la banque de données avant)
![screen vsphere](/vsphere_lecteurCD.PNG)
3. Dans l'onglet **Options** -> Option de démarrage -> Forcer la configuation BIOS
![screen vsphere](/vsphere_option_boot.PNG)
4. Démarrer la machine -> Menu du BIOS -> Onglet **Boot** -> appuyer sur **+** pour mettre le CD en premier boot
![screen vsphere](/vsphere_bios.PNG)
5. Cliquer sur le logo CD -> **Connexion à une image ISO sur une banque de données...**
![screen vsphere](/vsphere_logo_cd.PNG)
6. F10 et ça devrait booter sur gparted (ou l'iso selectionné)
![gparted](/boot_gparted.PNG)

### Création d'une nouvelle partition
On peut voir avec la commande `fdisk` que j'ai bien un disque de 150Go mais qu'il n'est pas encore attribué
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
Sur Gparted, on devrait voir notre partition en `non allouée`, dans mon cas j'ai été bloqué je ne pouvais pas modifié `/dev/sda2` qui est ma partition 'extended', il faut faire **clic droit** sur `dev/sda5` et **désactiver**
![gparted lock](/gparted_lock.PNG)

Il ne faut plus qu'il y ai le logo de clés ou d'un cadenas !

Ensuite clic droit sur la partition extended `dev/sda2` et **Redimensionner/Déplacer**, utiliser tout notre espace non alloué.

Appliquer et on a notre `/dev/sda2` qui est de 149.52Go

Mais ça ne suffira pas

Seule la liste des PE (partition extended) du système LVM a été modifiée par ce qui vient d'être fait avec GParted,
maintenant, il va falloir attribuer ces nouveaux PE au VolumeGroup qui contient le VolumeLogique **/ubuntuLTS-16--vg-root** en agrandissant ce VolumeGroup

puis agrandir le VolumeLogique **/ubuntuLTS-16--vg-root**

pour enfin pouvoir faire un **resize2fs** sur le système de fichiers de **/ubuntuLTS-16--vg-root**

Commande pour voir quel nomDeGroupe/nomDeVolume
```bash
root@SRV-ELK01:/home/fdugat# sudo -i -- sh -c pvs;vgs;lvs
  PV         VG              Fmt  Attr PSize  PFree
  /dev/sda5  ubuntuLTS-16-vg lvm2 a--  15.52g    0
  VG              #PV #LV #SN Attr   VSize  VFree
  ubuntuLTS-16-vg   1   2   0 wz--n- 15.52g    0
  LV     VG              Attr       LSize  Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  root   ubuntuLTS-16-vg -wi-ao---- 13.52g
  swap_1 ubuntuLTS-16-vg -wi-ao----  2.00g
```
Dans mon cas ce sera **ubuntuLTS-16-vg**

Let's do this
```bash
➜  ~ sudo pvresize /dev/sda5
  Physical volume "/dev/sda5" changed
  1 physical volume(s) resized / 0 physical volume(s) not resized
```

```bash
➜  ~ sudo vgchange -ay ubuntuLTS-16-vg
  2 logical volume(s) in volume group "ubuntuLTS-16-vg" now active
```
```bash
➜  ~ sudo lvextend -l +100%FREE ubuntuLTS-16-vg/root
  Size of logical volume ubuntuLTS-16-vg/root changed from 13.52 GiB (3461 extents) to 147.52 GiB (37765 extents).
  Logical volume root successfully resized.
```
On peut voir que nous sommes bien passé de 13.52Go à 147.52Go !
Il nous reste 2 commandes à effectuer mais il faut que la partition `dev/ubuntuLTS-16-vg/root` soit démontée...

Et pour ceux qui sont parti du liveCD vous aurez ces messages d'erreurs :
```bash
➜  ~ sudo e2fsck -f /dev/ubuntuLTS-16-vg/root
e2fsck 1.42.13 (17-May-2015)
/dev/ubuntuLTS-16-vg/root is mounted.
e2fsck: Cannot continue, aborting.


➜  ~ sudo umount /dev/ubuntuLTS-16-vg/root
umount: /: target is busy
        (In some cases useful info about processes that
         use the device is found by lsof(8) or fuser(1).)
```
Donc restez bien en liveCD (ou retournez-y pour ceux qui en sont partis)
![last cmd](/vsphere_last_cmd.PNG)

On reboot tout et on peut voir que ça a fonctionné !
```bash
Disk /dev/mapper/ubuntuLTS--16--vg-root: 147.5 GiB, 158397890560 bytes, 309370880 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mapper/ubuntuLTS--16--vg-swap_1: 2 GiB, 2147483648 bytes, 4194304 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
```
ou encore
```bash
➜  ~ df -h
Filesystem                          Size  Used Avail Use% Mounted on
udev                                3.9G     0  3.9G   0% /dev
tmpfs                               799M  8.9M  790M   2% /run
/dev/mapper/ubuntuLTS--16--vg-root  146G   13G  125G  10% /
tmpfs                               3.9G     0  3.9G   0% /dev/shm
tmpfs                               5.0M     0  5.0M   0% /run/lock
tmpfs                               3.9G     0  3.9G   0% /sys/fs/cgroup
/dev/sdb1                            99G  3.7G   90G   4% /media/partition1
/dev/sda1                           472M  159M  289M  36% /boot
tmpfs                               799M     0  799M   0% /run/user/1002
```
