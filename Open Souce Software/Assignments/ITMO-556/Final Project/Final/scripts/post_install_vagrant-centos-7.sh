#!/bin/bash
set -e
set -v

# http://superuser.com/questions/196848/how-do-i-create-an-administrator-user-on-ubuntu
# http://unix.stackexchange.com/questions/1416/redirecting-stdout-to-a-file-you-dont-have-write-permission-on
# This line assumes the user you created in the preseed directory is vagrant
echo "vagrant ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/init-users
sudo cat /etc/sudoers.d/init-users

# Installing vagrant keys
sudo yum install -y wget
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
sudo mkdir -p /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
cat ./vagrant.pub >> /home/vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant /home/vagrant/.ssh/authorized_keys
echo "All Done!"

# Using the Vagrantfile, configure the system to use a Private Network with the IP: 192.168.33.11 - uncomment the config.vm.network

# Rename the host to: webhost -- can be done in the following way or also on the vagrant file by adding config.vm.hostname = "webhost"
sudo chown vagrant:vagrant /etc/hosts
echo 'webhost' | sudo tee /etc/hostname

# Add an entry to /etc/hosts file of: 192.168.33.10 dbhost.example.com dbhost
# Add an entry to /etc/hosts file of: 192.168.33.11 webhost.example.com webhost

echo 'Adding webhost and dbhost entry' | sudo tee -a /etc/hosts
echo '192.168.33.10   dbhost.example.com dbhost'| sudo tee -a /etc/hosts
echo '192.168.33.11   webhost.example.com webhost'| sudo tee -a /etc/hosts

################Install Apache2 or Nginx, php, php-mysql, and mysql-client library (just the client)

# Install Apache2 or Nginx, php, php-mysql, and mysql-client library (just the client)
sudo yum install -y httpd 
sudo systemctl start httpd.service

#Install mysql-client
sudo yum install -y mysql

#Install PHP on Centos7
sudo yum install -y php php-mysql
sudo systemctl restart httpd.service

# We will be generating a self-signed cert (follow the Digital Ocean tutorial) – You can generate the cert manually or there is a process to automate the creation of a self-signed cert

# Step one: Install SSL module
sudo yum install -y mod_ssl

# Step two: Create a new certificate
sudo mkdir /etc/ssl/private

# Change the permission so that only root can access
sudo chmod 700 /etc/ssl/private

# Create SSL key and certificates
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=US/ST=Illinois/L=Chicago/O=IIT/OU=ITM/CN=Sayeeda Tasmia/emailAddress=smohammednasir@hawk.iit.edu"

# Creatin a strong Diffie-Hellman group which is used in negotiating Perfect Forward Secrecy with clients
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
cat /etc/ssl/certs/dhparam.pem | sudo tee -a /etc/ssl/certs/apache-selfsigned.crt

# Step three: set up the certificate
sudo sed -i "s/\#DocumentRoot/DocumentRoot/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/\#ServerName/ServerName/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/www\.example\.com\:443/192\.168\.33\.11\:443/" /etc/httpd/conf.d/ssl.conf

sudo sed -i "s/SSLProtocol/\#SSLProtocol/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/SSLCipherSuite/\#SSLCipherSuite/" /etc/httpd/conf.d/ssl.conf

sudo cat /etc/httpd/conf.d/ssl.conf | grep SSLCertificateFile | awk '!/^ *#/ && NF' | cut -d ' ' -f2 | sudo tee /tmp/SSLCertFile.txt
OLDFILE="$(sudo cat /tmp/SSLCertFile.txt)"
NEWFILE="/etc/ssl/certs/apache-selfsigned.crt"
sudo sed -i "s|$OLDFILE|$NEWFILE|g" /etc/httpd/conf.d/ssl.conf

OLDKEY="$(sudo cat /etc/httpd/conf.d/ssl.conf | grep SSLCertificateKeyFile | cut -d ' ' -f2)"
NEWKEY="/etc/ssl/private/apache-selfsigned.key"
sudo sed -i "s|$OLDKEY|$NEWKEY|g" /etc/httpd/conf.d/ssl.conf

echo "SSLCipherSuite EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH" >> /etc/httpd/conf.d/ssl.conf
echo "SSLProtocol All -SSLv2 -SSLv3" >> /etc/httpd/conf.d/ssl.conf
echo "SSLHonorCipherOrder On" >> /etc/httpd/conf.d/ssl.conf
echo "Header always set Strict-Transport-Security \"max-age=63072000; includeSubdomains\"" >> /etc/httpd/conf.d/ssl.conf
echo "Header always set X-Frame-Options DENY" >> /etc/httpd/conf.d/ssl.conf
echo "Header always set X-Content-Type-Options nosniff" >> /etc/httpd/conf.d/ssl.conf
echo "SSLCompression off" >> /etc/httpd/conf.d/ssl.conf
echo "SSLUseStapling on" >> /etc/httpd/conf.d/ssl.conf
echo "SSLStaplingCache \"shmcb:logs/stapling-cache(150000)\"" >> /etc/httpd/conf.d/ssl.conf

# Step four: Activate the certificate
sudo apachectl configtest
sudo systemctl restart httpd.service

# Enable and start the firewall service allowing connections on port 22 and port 80 and 443 – Enable and start the Webserver Service

sudo firewall-cmd --zone=public --add-port=22/tcp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=443/tcp --permanent
sudo firewall-cmd --permanent --zone=public --add-service=ssh --permanent
sudo firewall-cmd --permanent --zone=public --add-service=http --permanent
sudo firewall-cmd --permanent --zone=public --add-service=https --permanent

sudo systemctl restart firewalld

sudo systemctl enable httpd.service
sudo systemctl restart httpd.service

# Attach two additional virtual disks -- handled in Packer

# You will create an XFS formatted LVM logical volume using /dev/sdb and /dev/sdc. – Create an LVM volume: PVs, VG, and LGs and a single LG and format with XFS on this logical volume (Chapter 11). – Using the sample in chapter 11, create a systemd .mount file to mount this partition at boot time – You will need to install the proper package to use XFS

sudo mkdir -p /mnt/disk2
sudo mkdir -p /mnt/disk3

sudo yum install -y lvm2
sudo yum install -y libudev-devel
sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdc
sudo vgcreate vg_centfp /dev/sdb /dev/sdc
sudo lvcreate -n vol_centfp --size 19G /dev/vg_centfp

sudo yum install -y xfsprogs
sudo mkfs.xfs -f /dev/vg_centfp/vol_centfp

sudo touch /etc/systemd/system/centfinal.mount
#sudo chown vagrant:vagrant /etc/systemd/system/centfinal.mount
cat << EOT >> /etc/systemd/system/centfinal.mount
[Unit]
Description=Mount

[Mount]
What=/dev/disk/by-uuid
Where=/mnt/disk2
Type=xfs
Options=defaults

[Install]
WantedBy=multi-user.target
EOT

UUID=$(blkid -s UUID -o value /dev/vg_centfp/vol_centfp)
sudo sed -i "s/\/dev\/disk\/by-uuid/\/dev\/disk\/by-uuid\/$UUID/" /etc/systemd/system/centfinal.mount

# Choose one of the Secrets Management methods discussed in Chapter 13.
# packer build --location of variables.json .\centos-7-vanilla-multi-disks.json
cd /var/www/html/
sudo touch sample.php

#sudo chown vagrant:vagrant /var/www/html/sample.php

cat << EOT >> /var/www/html/sample.php

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<?php

\$hostname = "$HNAME";
\$username = "$UNAME";
\$password = "$UPASS";
\$db = "$DB";

\$dbconnect=mysqli_connect(\$hostname,\$username,\$password,\$db);

if (\$dbconnect->connect_error) {
  die("Database connection failed: " . \$dbconnect->connect_error);
}

?>

<table border="1" align="center">
<tr>
  <td>ID</td>
  <td>TITLE</td>
  <td>POSTERNAME</td>
  <td>CONTENT</td>
</tr>

<?php

\$query = mysqli_query(\$dbconnect, "SELECT * FROM comment")
   or die (mysqli_error(\$dbconnect));

while (\$row = mysqli_fetch_array(\$query)) {
  echo
   "<tr>
    <td>{\$row['ID']}</td>
    <td>{\$row['Title']}</td>
    <td>{\$row['PosterName']}</td>
    <td>{\$row['Content']}</td>
   </tr>\n";

}

?>
</table>
</body>
</html>
EOT
