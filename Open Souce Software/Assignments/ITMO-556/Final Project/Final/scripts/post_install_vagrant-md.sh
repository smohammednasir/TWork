#!/bin/bash 
set -e
set -v

# http://superuser.com/questions/196848/how-do-i-create-an-administrator-user-on-ubuntu
# http://unix.stackexchange.com/questions/1416/redirecting-stdout-to-a-file-you-dont-have-write-permission-on
# This line assumes the user you created in the preseed directory is vagrant
echo "%admin  ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/init-users
sudo groupadd admin
sudo usermod -a -G admin vagrant

# Installing vagrant keys
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
sudo mkdir -p /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
cat ./vagrant.pub >> /home/vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant /home/vagrant/.ssh/authorized_keys
echo "All Done!"

##################################################
# Add User customizations below here
##################################################

# Using the Vagrantfile, configure the system to use a Private Network with the IP: 192.168.33.10 -- uncomment the config.vm.network

# Rename the host to: dbhost
echo 'dbhost' | sudo tee /etc/hostname

# Add an entry to /etc/hosts file of: 192.168.33.10 dbhost.example.com dbhost 
# Add an entry to /etc/hosts file of: 192.168.33.11 webhost.example.com webhost 
 
echo 'Adding webhost and dbhost entry' | sudo tee -a /etc/hosts
echo '192.168.33.10   dbhost.example.com dbhost'| sudo tee -a /etc/hosts
echo '192.168.33.11   webhost.example.com webhost'| sudo tee -a /etc/hosts

# Install needed packages – zfsutils and mysql-server.
sudo apt-get install -y zfsutils-linux mysql-server

# Preseed the root database password in the debconf set-selection section
export DEBIAN_FRONTEND=noninteractive
FRISTPASS="mariadb-server mysql-server/root_password password $DBPASS"
SECONDPASS="mariadb-server mysql-server/root_password_again password $DBPASS"
echo $FIRSTPASS | sudo debconf-set-selections
echo $SECONDPASS | sudo debconf-set-selections

# Preseed the contents of the root password in a ~/.my.cnf file to use later in running database CREATE and INSERT scripts

touch ~/.my.cnf

sudo echo "[client]" >> ~/.my.cnf
sudo echo "user=vagrant" >> ~/.my.cnf
sudo echo "password=vagrant" >> ~/.my.cnf
sudo echo "" >> ~/.my.cnf
sudo echo "[mysql]" >> ~/.my.cnf
sudo echo "user=root" >> ~/.my.cnf
sudo echo "password=root" >> ~/.my.cnf

# A second and third hard drive partition attached will be attached at creation time -- handled in Packer

# Create a zpool called datapool across /dev/sdb and /dev/sdc - Change permissions and ownership of /datapool so that user vagrant owns it

sudo zpool create datapool /dev/sdb /dev/sdc
sudo chown vagrant:vagrant /datapool

# Modify the default location of the MySQL database to be on /datapool

sudo systemctl stop mysql
sudo rsync -av /var/lib/mysql /datapool
sudo mv /var/lib/mysql /var/lib/mysql.bak
sudo sed -i "s/\/var\/lib\/mysql/\/datapool\/mysql/" /etc/mysql/mysql.conf.d/mysqld.cnf

sudo echo "alias /var/lib/mysql/ -> /datapool/mysql/," >> /etc/apparmor.d/tunables/alias
sudo systemctl restart apparmor
sudo mkdir /var/lib/mysql/mysql -p
sudo systemctl start mysql
sudo rm -Rf /var/lib/mysql.bak
sudo systemctl restart mysql

# Modify the default setting to allow MySQL to listen on external connections

sudo sed -i "s/127\.0\.0\.1/0\.0\.0\.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql

# Create a zpool snapshot.

sudo zfs snapshot datapool@today

# Enable mysql to start at boot and start the mysql service

sudo systemctl enable mysql
sudo systemctl  start mysql

# Find the 3 sample SQL files in the source code for the text. In files > Appendix-D > sql. Copy these files into your Git repo and make the changes needed in the code relating to the FQDNs for database connections. (The database connection rules have the wrong IPs you need to adjust these).

wget https://github.com/smohammednasir/scripts/archive/master.zip
unzip master.zip

sudo mysql -s < scripts-master/create.sql
sudo mysql -s < scripts-master/insert.sql

sudo mysql -Bse "CREATE USER '$DATABASEUSERNAME'@'$WEBSERVERIP' IDENTIFIED BY '$USERPASS';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON comments.* TO '$DATABASEUSERNAME'@'$WEBSERVERIP' IDENTIFIED BY '$USERPASS'; 
FLUSH PRIVILEGES;"

#  Enable firewall (firewalld or ufw) – Open Firewall port connection to 3306 for only the webserver’s IP – Open Firewall port to allow connections for SSH on port 22 from any IP

sudo apt-get install -y firewalld
sudo firewall-cmd --zone=internal --add-port=3306/tcp --permanent
sudo firewall-cmd --zone=internal --add-source=192.168.33.11/24 --permanent

sudo firewall-cmd --zone=public --add-port=22/tcp --permanent
sudo firewall-cmd --zone=public --add-service=ssh --permanent

sudo systemctl restart firewalld

# Choose one of the Secrets Management methods discussed in Chapter 13.








