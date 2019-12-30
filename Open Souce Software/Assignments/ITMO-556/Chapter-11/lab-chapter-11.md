# Lab - Chapter 11

### 1. Create 1 virtual drive in VirtualBox
a. Use fdisk to create a primary partition

b. Format it with ext4

c. Mount it to /mnt/disk1

d. Add it to your fstab

   ![Lab 1a](/Images/Chapter-11/lab1a.PNG)
   ![Lab 1b](/Images/Chapter-11/lab1b.PNG)
   ![Lab 1ca](/Images/Chapter-11/lab1c_a.PNG)
   ![Lab 1cb](/Images/Chapter-11/lab1c_b.PNG)
   ![Lab 1d](/Images/Chapter-11/lab1d.PNG)
   ![Lab 1d](/Images/Chapter-11/lab1d_2.PNG)
   ![Lab 1d](/Images/Chapter-11/lab1Lsblk.PNG)

### 2. Create 2 more virtual drives
a. Create a single volume group named vg-group

b. Create 1 logical volume named lv-group using the two drives

c. Format it with XFS

d. Mount it to /mnt/disk2

e. Add the lv-group to your fstab, reboot the system and cat the /etc/fstab and show that your entry is present.

  ![Lab 1a](/Images/Chapter-11/lab2a.1.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2a.2.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2a.3.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2b.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2c1.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2c2.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2d.PNG)
  ![Lab 1a](/Images/Chapter-11/lab2e.PNG)
  
### 3. Using the same LVM as before
a. add an additional VirtualBox disk and the create a LVM physical disk

b. Grow the volume group and logical volume

c. Grow the XFS file system

   ![Lab 1a](/Images/Chapter-11/lab3a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab3b.PNG)

### 4. Using LVM of the previous exercise on the logical volume lv-group
a. Using either fallocate or truncate commands, create a file 25 megabytes in size and name it datadump.txt

b. Following this tutorial: http://tldp.org/HOWTO/LVM-HOWTO/snapshotintro.html create an LVM snapshot of the logical volume named lv-backup

c. Mount the snapshot to /mnt/disk3 (create this location if not existing)

d. ls -l the contents of /mnt/disk3

   ![Lab 1a](/Images/Chapter-11/lab4a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab4b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab4cd.PNG)   

### 5. Launch a copy of Fedora 30 and follow the all the instructions to install ZFS on Fedora 30: https://github.com/zfsonlinux/zfs/wiki/Fedora
a. Attach two additional virtual disks to the Fedora 30 Virtual Machine

b. Create a zpool stripe containing both disks

c. Execute a zpool status command to display the contents of the zpool
 
   ![Lab 1a](/Images/Chapter-11/lab5.png)   

### 6. Using Ubuntu 18.04 set networking to bridged mode (take note of your public IP by typing: ip a sh
a. Attach a virtual disk

b. Using this tutorial: https://www.hiroom2.com/2018/05/05/ubuntu-1804-tgt-en/ configure the system using as an ISCSI target

c. Use the proper iscsi command to list the current targets

   ![Lab 1a](/Images/Chapter-11/lab6.PNG)
   ![Lab 1a](/Images/Chapter-11/lab6a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab6b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab6c.PNG)

### 7. Using a second Ubuntu 18.04 instance with its network mode set to bridged (note the public IP)
a. Using this tutorial: https://help.ubuntu.com/lts/serverguide/iscsi-initiator.html configure and complete iSCSI initiator

b. List the currently available iSCSI targets on your network

c. Create two files on the connected iSCSI target - file1.txt and file2.txt and list those files

   ![Lab 1a](/Images/Chapter-11/lab7a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab7c.PNG)

### 8. Create 3 Virtual disks and install the ZFS package
a. Attach it to an existing Ubuntu 18.04 system

b. Create a zpool stripe with two disks name it datapool

c. Execute a zpool status and a zpool list command

d. Expand the capacity of the zpool by adding the third disk in

e. Execute the zpool status command

f. Execute the command to take the first disk out of the zpool, this command fails, why? Capture the error message in a screenshot

   ![Lab 1a](/Images/Chapter-11/lab8a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab8b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab8c.PNG)
   ![Lab 1a](/Images/Chapter-11/lab8d.PNG)
   ![Lab 1a](/Images/Chapter-11/lab8e.PNG)
   ![Lab 1a](/Images/Chapter-11/lab8f.PNG)

### 9. From the previous exercise using your ZFS pool named datapool create a 25 megabyte file named datadump.txt
a. Attach a third virtual disk to the system and create a zpool named backup

b. Execute the ls -l command to display the file and its size

c. Take a ZFS snapshot of the datapool named @today

d. Using the ZFS send and recv commands copy the @today snapshot to the zpool named backup

e. Execute ls -l command on the zpool backup

f. Using the commandline, append an additional 25 mb to /datapool/datadump.txt

g. Execute an ls -l on zpool datapool and backup to compare the two files

   ![Lab 1a](/Images/Chapter-11/lab9.PNG)
   ![Lab 1a](/Images/Chapter-11/lab9a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab9b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab9c.PNG)
   ![Lab 1a](/Images/Chapter-11/lab9d.PNG)
   ![Lab 1a](/Images/Chapter-11/lab9e.PNG)
   ![Lab 1a](/Images/Chapter-11/lab9f.PNG)

### 10. On the same Ubuntu 18.04 system create a systemd mount.unit file for both ZFS partitions created in the previous exercise.
a. List both contents here

b. Reboot the system and make sure it works

   ![Lab 1a](/Images/Chapter-11/lab10b.PNG)

### 11. Using the 2 Ubuntu 18.04 systems you used in exercises 7 and 8 create a 25 megabyte file named databasedump.txt on the zpool datapool
a. On the first system (the system without zpool datapool) create a datapool name backuppool (you might need to attach a virtual disk to do this)

b. Take a snapshot of the zpool datapool and name it @now

c. Execute the remote send and recv command over ssh to migrate the snapshot to the pool backuppool (You may need to exchange SSH keys via ssh-keygen and ssh-copy-id first to make this work)

   ![Lab 1a](/Images/Chapter-11/lab11.PNG)
   ![Lab 1a](/Images/Chapter-11/lab11b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab11c.PNG)

### 12. On the zpool named datapool on Ubuntu
a. Execute a zpool status command

b. Enable LZ4 compression on the zpool datapool

c. Execute a zpool list command to display that compression is enabled
 
   ![Lab 1a](/Images/Chapter-11/lab12a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab12b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab12c.PNG)

### 13. On the zpool named datapool execute a zpool status command
a. Execute a scrub of the zpool datapool

b. Create a cron job that executes a zfs scrub on the zpool datapool at 3 am every Sunday morning
 
   ![Lab 1a](/Images/Chapter-11/lab13a.PNG)
   ![Lab 1a](/Images/Chapter-11/lab13b.PNG)
   
### 14. Using the sample from the text on your Ubuntu 18.04 system add two additional virtual disk
a. Create two partitions on each of these devices

b. Then using the sample code add these two devices as a log and a cache to the zpool datapool

c. Execute a zfs status command for the zpool named datapool

   ![Lab 1a](/Images/Chapter-11/lab14b.PNG)
   ![Lab 1a](/Images/Chapter-11/lab14c.PNG)

### 15. On your Fedora system execute any of the commands listed to print out the disk serial numbers

   ![Lab 1a](/Images/Chapter-11/lab15.PNG)


### 17. Using an OS of your choice, install the btrfs-tools package. Create a 2 GB Virtual Disk. On this disk create a 1 GB Ext4 partition. Using the btrfs-convert program convert the partition from ext4 to btrfs: sudo btrfs-convert /dev/xxx. Take a screenshot of the command output.
No btrfs-convert command found because they are not including btrfs-convert in the current package because; 1. It was buggy and 2. It's being re-written but isn't complete enough to distribute.

   ![Lab 1a](/Images/Chapter-11/lab17.PNG)

### 18. Using an OS of your choice, create 4 2 GB Virtual Disks. Create a btrfs RAID 10 (mirror and stripe) on these four disks. Download one of the Ubuntu 18.04 ISO files onto your btrfs partition. Using the btrfs-replace command. Add a fifth virtual disk and replace device /dev/sde with the new virtualdisk.
a. Run the btrfs filesystem show command and capture the output

b. Using the UID of the btrfs device created in the previous step, add the mount point to the /etc/fstab and add the nocowdata attribute. Mount point options are listed here: btrfs mount-point options

   ![Lab 1a](/Images/Chapter-11/lab18.PNG)
   ![Lab 1a](/Images/Chapter-11/lab18replace.PNG)
   ![Lab 1a](/Images/Chapter-11/lab18Done.PNG)
   ![Lab 1a](/Images/Chapter-11/lab18b.PNG)

### 19. Download a copy of Ubuntu 19.10 and when going through the installer, choose the EXPERIMENTAL erase disk and use zfs. Once the install is complete, upon first login, execute the sudo zpool status command and capture the output.

   ![Lab 1a](/Images/Chapter-11/lab19.png)

### 20. This is a research question regarding current hardware:
a. Using Newegg.com find the current price per Gigabyte for the following along with listing the throughput of the drive and make a chart of the results.

b. Seagate Barracuda 4 TB

c. Western Digital Blue 1 TB

d. Western Digital Red 10 TB

e. Samsung 970 EVO M.2 500 GB

f. Corsair Force MP300 M.2 960 GB

g. Intel Optane M.2 32 GB and explain what 3D XPoint technology is

