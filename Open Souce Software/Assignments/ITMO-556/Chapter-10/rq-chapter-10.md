# Review Questions and Answers - Chapter 10

### 1) What is the name of beep sound heard in the initial boot of a PC (assume you are using BIOS not UEFI)?
a) PERC

__b) POST__

c) GRUB

d) BIOS

### 2) What is the name of the GNU software that is the first software program that runs when a computer with Linux installed starts?
a) BIOS

b) LILO

__c) GRUB__

d) GLOADER

### 3) In what Linux directory is the kernel and initrd image stored?
a) /root

b) /root/kernel

__c) /boot__

d) /boot/vmlinux

### 4) What is the name of the pre-kernel gzip file located in /boot that helps the kernel load?
a) vmlinuz

__b) initrd__

c) initram

d) init

### 5) Where is the file location where the GNU Grub configuration is stored that a user would edit?
a) /boot/grub/grub.cfg

__b) /etc/default/grub__

c) /etc/grub/grub.cfg

d) /boot/kernel/conf

### 6) In the /etc/default/grub file, which of these options below would I edit to dispaly the splash screen on boot so kernel messages are displayed?
__a) GRUB_CMDLINE_LINUX_DEDFAULT__

b) GRUB_BACKGROUND

c) GRUB_GFXMODE

d) GRUB_TIMEOUT

### 7) What is the command to make changes to /etc/default/grub permanent?
a) No special command just edit and save /etc/default/grub

b) sudo apt-get update

__c) sudo update-grub__

d) sudo updatedb

### 8) Under SysVinit - what is the ancestor process that launches first and everyother process is started by it?
a) root

b) sbin

__c) init__

d) systemd

### 9) Under SysVinit - what runlevel is considered multi-user command-line only?
a) 1

b) m

__c) 3__

d) 5

### 10) Under SysVinit - what runlevel is considered multi-user GUI only?
a) 1

b) 0

c) 3

__d) 5__

### 11) Which company created the Upstart init system as an improvement of SysVinit?
a) RedHat

b) Debian

c) Oracle

__d) Ubuntu__

### 12) What is the name of the init system that has replaced SysVinit in every single major Linux distribution (Not including Devuan and Gentoo Linux)?
a) systemX

__b) systemd__

c) systemV

d) initrd

### 13) What is the name of the command you use in systemd to inspect, start, stop, and modify process states?
a) systemd 

b) systemd-init

c) service

__d) systemctl__

### 14) What would be the command to disable (make the service not start at boot time) the httpd service on Fedora using systemd?
a) sudo service apache2 stop

b) sudo systemctl disable apache2.service

c) sudo systemctl stop apache2.service

__d) sudo systemctl disable httpd.service__

### 15) What is the Linux command to inspect processes (not part of systemd)?
a) p

__b) ps__

c) proc

d) meminfo

### 16) SysVinit used the concept of PIDs and PPIDs–what did systemd replace these with?
a) proc-groups

b) sys-groups

__c) cgroups__

d) xgroups

### 17) What is the signal name for a kill -2 command?
a) SIGHUP

__b) SIGINT__

c) SIGKILL

d) SIGTERM

### 18) The /proc filesystem provides you what? (choose all that apply)
__a) Provides you a file based interface to the processes that are running on your system__

__b) It can be regarded as a control and information centre for the kernel__

c) Shows up to the second process usage–updated in real time

d) Is a replacement for the top command

### 19) What command can be used to list all the pci devices attached to your system?
a) ls –pci

b) ls -p

c) lsusb

__d) lspci__

### 20) What is the runlevel target that has a single user only as root, using no password: commonly called single-user mode?
a) runlevel3.target

b) runlevel5.target

c) runlevel0.target

__d) runlevel1.target__
