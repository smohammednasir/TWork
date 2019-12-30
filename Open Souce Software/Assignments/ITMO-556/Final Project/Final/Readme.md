## Steps to run:

#### Step 1:
Do packer build for the .json of both centos and ubuntu using the following command by passing the variables.json in order to maintain secret management. cd into the project folder's packer-script

eg: packer build --var-file=./variables-sample.json .\ubuntu18043-vanilla-multi-drives.json

similarly for centos

packer build --var-file=./variables-sample.json .\centos-7-vanilla-multi-disks.json

#### Step 2:
Once the build is done, go to the build folder and create two folders for eg. centos and ubuntu. You can also create directory by using command - 

eg: mkdir {centos,ubuntu}

then add vagrant box using the following command

eg: vagrant box add {centos box file name goes here} --name centos

vagrant box add {ubuntu box file name goes here} --name ubuntu

#### Step 3:
cd into the centos directory and do vagrant init

eg: vagrant init centos

cd into the ubuntu directory and do vagrant init

eg: vagrant init ubuntu
	
#### Step 4:
Once the vagrant init is done it creates the vagrant file in respective boxes. Go to centos vagrant file and uncomment the following lines
1. config.vm.network "private_network", ip: "192.168.33.10" and change the ip to "192.168.33.11"
2. config.vm.network "forwarded_port", guest: 80, host: 8080 and change the guest to 443

Go to ubuntu's vagrant file and just uncomment the following line

config.vm.network "private_network", ip: "192.168.33.10"

#### Step 5:
Now open one more power shell window and do vagrant up inside the respective folders for both centos and ubuntu.

eg:vagrant up    
  
#### Step 6:
once the vagrant up is done you can either vagrant ssh and check the connection whether or not connected also can open the browser to check the connection of the php file to see if the connection has happened and the data is been retrieved successfully.

eg. https://localhost:8080/sample.php   (sample.php is my php file name).

Output looks like this
   ![Final Project](/Images/FinalProject/finalprojectDemo.PNG) 