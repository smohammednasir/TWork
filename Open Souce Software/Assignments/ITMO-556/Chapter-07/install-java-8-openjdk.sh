#!/bin/bash

cat << EOT >> ~/.bashrc 
########## Inserted by Jeremy
export JAVA_HOME=/usr
export HADOOP_HOME=/datapool1/hadoop-2.8.5
export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/datapool1/hadoop-2.8.5/bin:/datapool1/hadoop-2.8.5/sbin:/usr/local/bin
export HADOOP_CLASSPATH=/usr/lib/jvm/java-8-openjdk-amd64/lib/tools.jar
EOT
#Update and install software properties and jdk
# http://askubuntu.com/questions/493460/how-to-install-add-apt-repository-using-the-terminal
sudo apt-get update && sudo apt-get install -y software-properties-common 
# http://blog.cloudera.com/blog/2009/11/hadoop-at-twitter-part-1-splittable-lzo-compression/
sudo apt-get -y update&& 
sudo apt-get install -y openjdk-8-jdk

#update and install libraries and python
sudo apt-get -y update && sudo apt-get -y install pkgconf wget liblzo2-dev sysstat iotop vim libssl-dev libsnappy-dev libsnappy-java libbz2-dev libgcrypt11-dev zlib1g-dev lzop htop fail2ban python python-dev

#Change directory to tmp and get hadoop and  untar and move hadoop into darapool1
cd /tmp&& wget http://archive.apache.org/dist/hadoop/common/hadoop-2.8.5/hadoop-2.8.5.tar.gz
tar -xvzf hadoop-2.8.5.tar.gz 
mv /tmp/hadoop-2.8.5 /datapool1
 
#creates directory for ssh key and change permission for key and then move into ssh file and read public key into authorize key.
mkdir ~/.ssh
chmod 600 ~/hajek/itmd-521/hadoop-conf/production-cluster/id_rsa 
cp -v ~/hajek/itmd-521/hadoop-conf/production-cluster/id_rsa ~/.ssh&& 
cp -v ~/hajek/itmd-521/hadoop-conf/production-cluster/config ~/.ssh 
cat ~/hajek/itmd-521/hadoop-conf/production-cluster/id_rsa.pub >> ~/.ssh/authorized_keys
 
#move old config file into old file for backup and the copy tarball into lib
mv -v /datapool1/hadoop-2.8.5/lib/native /datapool1/hadoop-2.8.5/lib/native-old
cp -v ~/hajek/itmd-521/hadoop-conf/compiled-native/native.tar.gz /datapool1/hadoop-2.8.5/lib

#Move to the folder and extract .gz and echo that it worked.
cd /datapool1/hadoop-2.8.5/lib/
tar -xzvf native.tar.gz
echo "Extracted new native libraries\n"
 
#Replace ignoreip globally and change ban time to 1 and restart.
sudo sed -i "s/ignoreip = 127.0.0.1\/8/ignoreip = 127.0.0.01\/8 64.131.111.178/g" /etc/fail2ban/jail.conf
# http://www.fail2ban.org/wiki/index.php/MANUAL_0_8#Jails
sudo sed -i "s/bantime=600/bantime=-1/g" /etc/fail2ban/jail.conf
sudo service fail2ban restart
