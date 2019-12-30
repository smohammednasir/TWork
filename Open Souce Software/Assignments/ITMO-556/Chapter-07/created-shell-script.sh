!# /bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common openjdk-8-jdk
sudo apt-get update

sudo wget http://archive.apache.org/dist/hadoop/common/hadoop-2.8.5/hadoop-2.8.5.tar.gz && tar -xf hadoop-2.8.5

sudo apt-get install -y pkgconf wget liblzo2-dev sysstat iotop vim libssl-dev libsnappy-dev libsnappy-java libbz2-dev libgcrypt11-dev zlib1g-dev lzop htop fail2ban

sudo apt-get dist-upgrade 1>/tmp/distupgrade.out

RESULT=`sudo find / -name tools.jar`

echo $RESULT

cat << EOT >> ~/.bashrc

########## Inserted by Tasmia ###########
export JAVA_HOME=/usr
export HADOOP_HOME=$HOME/hadoop-2.8.5
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export HADOOP_CLASSPATH=/usr/lib/jvm/java-8-openjdk-amd64/lib/tools.jsr
EOT

