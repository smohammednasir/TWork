# Review Questions and Answers - Chapter 11

### 1) What is the fdisk program?
__a) a dialog-driven program for the creation and manipulation of partition tables.__

b) a filesystem creation tool

c) a tool for formatting floppy disks

d) a tool for removing disks from a system

### 2) What is the default Virtual Box disk type?
__a) VDI__

b) HDD

c) COW

d) VDD

### 3) After attaching a new virtual disk what is the next step?
__a) partitioning__

b) make a filesystem

c) mount a filesystem

d) add an extent

### 4) Which command will print out currently all the block devices, their device name, and their partitions in a nice tree based format.
a) lspci

__b) lsblk__

c) lsusb

d) lstree

### 5) fdisk is part of what package?
a) utils

b) GNU

__c) utils-linux__

d) utils-unix

### 6) What would be the name of the second sata disk attached to your system?
a) sda

__b) sdb__

c) sdc

d) sdd

### 7) What is the name of the first native Linux filesystem released in 1992?
a) ext2

b) minix

c) ext4

__d) ext__

### 8) What is the name of the current default Linux Filesystem?
a) ext

b) btrfs

c) ext3

__d) ext4__

### 9) Ext4 breaks up data into __________, which is the smallest sized piece of data that can be read or written?
a) sectors

b) tracks

__c) blocks__

d) clusters

### 10) If you use the ext2 filesystem and choose a 4 KiB block, what is the maximum filesystem size?
a) 2 TiB

__b) 16 TiB__

c) 4 TiB

d) 4 GiB

### 11) What is the name of the maintainer of the ext4 filesystem?
a) Brian Kernighan

__b) Theodore Ts’o__

c) Andrew Tanenbaum

d) Google

### 12) What is the name of the filesystem that the ext4 maintainer, Theodore Ts’o, is recommending to replace ext4?
a) XFS

__b) Btrfs__

c) ZFS

d) HAMMER

### 13) What is the name of the filesystem that RedHat adopted on their RHEL 7 platform to replace ext4 and support better performance on large filesystems?
a) ZFS

__b) XFS__

c) Btrfs

d) HAMMER

### 14) What is the name of the package needed to install on Ubuntu to be able to create XFS filesystems?
__a) sudo apt-get install xfsprogrs__

b) sudo apt-get install zprogs

c) sudo apt-get install file-progs

d) sudo apt-get install zfsprogs

### 15) What is the name of the combined filesystem and logical volume manager designed by Sun Microsystems?
a) XFS

b) SunFS

__c) ZFS__

d) Btrfs

### 16) Which command is valid for making an ext4 filesystem on a partition /dev/sdb1
a) sudo mkfs.ext4 /dev/sdb

__b) sudo mkfs.ext4 /dev/sdb1__

c) sudo mkfs /dev/sdb1

d) sudo makefs

### 17) What is the command to mount an ext4 filesystem, /dev/sdb1 on a mount point /mnt/data-drive-2?
a) sudo mnt /dev/sdb1 /mnt/data-drive-2

b) sudo mnt -t ext4 /dev/sdb1 /mnt/data-drive-2

__c) sudo mount -t ext4 /dev/sdb1 /mnt/data-drive-2__

d) sudo mount /dev/sdb1 /mnt/data-drive-2

### 18) What is the command used to list the current mountpoints, that will be mounted automatically at boot?
a) /etc/mtab

b) /etc/default/grub.conf

__c) /etc/fstab__

d) /etc/tab

### 19) What is the command used to create a LVM physical volume?
__a) pvcreate__

b) pvck

c) pvadd

d) pvscan

### 20) What is the command used to create a LVM volume group?
__a) vgcreate__

b) vgck

c) vgdisplay

d) vgmknodes
