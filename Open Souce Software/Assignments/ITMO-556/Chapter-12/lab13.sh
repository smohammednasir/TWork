#download  packages which are required
sudo apt-get -y install apache2 mysql-server php php-mysql firewalld openssh-server

#start the services
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl enable firewalld
sudo systemctl start firewalld

#open firewall ports
sudo firewall-cmd --permanent --add-port=22/tcp --zone=public
sudo firewall-cmd --permanent --add-port=80/tcp --zone=public
sudo firewall-cmd --permanent --add-port=443/tcp --zone=public
sudo systemctl restart firewalld

# Download wordpress and extract it
cd /var/www/html/
sudo wget https://wordpress.org/wordpress-5.3.zip
sudo unzip wordpress-5.3.zip 
sudo rm wordpress-5.3.zip 
sudo cp -r ./wordpress/* ./
sudo cp wp-config-sample.php wp-config.php

# change the default variables
sudo sed -i -e "s/database_name_here/tasmiadb/g" /var/www/html/wp-config.php
sudo sed -i -e "s/username_here/tasmia/g" /var/www/html/wp-config.php
sudo sed -i -e "s/password_here//g" /var/www/html/wp-config.php
sudo sed -i -e "s/localhost/192.168.33.12/g" /var/www/html/wp-config.php

# Add a hosts file for mysql
echo '192.168.33.12 mysqldb # this is for mysql' | sudo tee -a /etc/hosts

# deny anyone trying to enter
echo 'sshd : ALL' | sudo tee -a /etc/hosts.deny 

# changed from single computer to computer on my network
echo 'sshd : 192.168.33.0/24' | sudo tee -a /etc/hosts.allow
