# Review Questions and Answers - Chapter 13

### 1. What is a common title given to IT workers who are responsible for the ongoing operations of applications and their environments?
a) saints

b) devs

c) devops

__d) ops__

### 2. What would describe Mitchell Hashimoto’s design goals in created Vagrant?
__a) Automation__

b) Separation of Duties

c) Profit

d) Inspection

### 3. What is the name of the tool originally built as an abstraction layer on top of VirtualBox to deploy virtual machines?
a) Packer

b) VirtualBox

c) Terraform

__d) Vagrant__

### 4. What is the name of the tool originally built as a way to automate the installation of any operating system into an artifact?
__a) Packer__

b) VirtualBox

c) Terraform

d) Vagrant

### 5. What year approximately was Vagrant introduced?
a) 2019

b) 2001

__c) 2010__

d) 2015

### 6. Fill in the blank. Think of Vagrant as _______________ between you and VirtualBox, Hyper-V, Docker, or even VMware desktop
an abstraction layer

### 7. What is the name of the file type Vagrant uses that contains an vmdk and and ovf?
a) *.vdi

b) *.vhd

__c) *.box__

d) *.zip

### 8. Name the file that contains the configuration file for each Vagrant box file.
vagrantfile

### 9. What is the correct command to add the Vagrant Box centos/7?
a) vagrant add box centos/7

__b) vagrant box add centos/7__

c) vagrant init centos/7

d) vagrant add centos/7

### 10. What is the command used to list all Vagrant Boxes being managed by Vagrant?
a) vagrant list box

b) vagrant boxes list

__c) vagrant box list__

d) vagrant list

### 11. What is the correct command to initialize a Vagrant file for Vagrant Box named centos/7 that has already been added to the system?
a) vagrant init

__b) vagrant init centos/7__

c) vagrant box add centos/7

d) vagrant init 7

### 12. What is the Vagrant command to start or turn on a Vagrant Box?
vagrant up

### 13. What is the Vagrant command to restart a Vagrant Box?
vagrant reload

### 14. What is the Vagrant command to shutdown or poweroff a Vagrant Box?
vagrant halt

### 15. For Packer.io, what is the descriptive name of the json file used for building artifacts?
a) image template

b) machine.json

__c) build template__

d) provisioner

### 16. What is the name of the stage that runs after the builder portion of a build template?
a) imager

__b) provisioner__

c) vboxmanage

d) post-processor

### 17. What is the name of the stage that runs after building and provisioning of Packer artifacts is complete?
a) imager

b) provisioner

c) vboxmanage

__d) post-processor__

### 18. If there is an error in any part of the Packer build command what will happen?
a) nothing

b) an error will be logged but the process will continue

__c) the command will terminate and any artifacts will be deleted__

d) the user will be prompted

### 19. What is the generic name of the file that is provided to Packer to help it complete the manual question part of the install?
a) secret file

__b) answer file__

c) question file

d) pxe file

### 20. What are the respective names of the RedHat and Debian based answer files?
a) jumpstart and preseed

b) kickstart and jumpstart

__c) kickstart and preseed__

d) Chef and Puppet