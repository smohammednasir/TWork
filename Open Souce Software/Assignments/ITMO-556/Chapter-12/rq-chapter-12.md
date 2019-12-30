# Review Questions and Answers - Chapter 12

### 1) Using the ip2 suite of tools, which command would show your IP address?
a. ifconfig

b. ipconfig

__c. ip address show__

__d. ip a sh__

### 2) Using the ip2 suite of tools, which command would show your routing table?
a. ss

__b. route__

c. ip route show

d. ip -r

### 3) What tool could you use to establish if a server is responding to requests?
a. pong

__b. ping__

c. google

d. traceroute

### 4) What is the purpose of a NETMASK?
A netmask is a 32-bit binary mask used to divide an IP address into subnets and specify the network's available hosts.

### 5) What is the purpose of DNS?
Domain Name Servers (DNS) are the Internet's equivalent of a phone book. They maintain a directory of domain names and translate them to Internet Protocol (IP) addresses. 

### 6) What is a valid class C address?
a. 10.0.0.0

b. 172.24.0.0

__c. 192.168.1.0__

d. 221.0.0.0

### 7) If you had a network with a CIDR block of /23 how many IP addresses would you have control of?
a. 23

b. 254

__c. 512__

d. 256

### 8) If you had a CIDR block of /24 and a network address of 192.168.1.0, how many IP addresses would you have?
a. 10

b. 0

c. 24

__d. 256__

### 9) How does CIDR block addressing differ from Class based networking (A-D)?
CIDR allows to customize bits in netmask while class locks 1 octet, 2 octets, 3 octets

### 10) What tool is used to release a dhcp address from the command line?
a. rhclient

b. ipconfig /release

__c. dhclient -r__

d. xclient -r

### 11) using the ip2 suite, What tool can be used to monitor and examine all current local ports and TCP/IP connections?
__a. ss__

b. net

c. wireshark

d. netstat

### 12) Where are your network card settings located on Ubuntu while using network manager?
__/etc/network/interfaces__

### 13) Where are your network card settings located on CentOS/Fedora using network manager?
__/etc/sysconfig/network-scripts/__

### 14) Where are your network card settings located on Ubuntu 18.04 using netplan?
__/etc/netplan/config.yaml__

### 15) What are the two major opensource webservers?
__a. Apache, Nginx__

b. openhttpd, Nginx

c. Apache, IIS

d. Apache, Tomcat

### 16) What are two related and major opensource relational databases?
a. SQL and MySQL

__b. MariaDB and MySQL__

c. MySQL and Oracle DB

d. Nginx and MySQL

### 17) Name one major No-SQL database mentioned in this chapter?
__Mongodb__

### 18) What is the file location that the system uses as a local DNS for resolving IPs?
a. etc/systemd/hostd

__b. /etc/hosts__

c. /etc/allow

d. /etc/etc/etc

### 19) What is the name of the file that you would place in your home directory, that allows you not to have to type your login password for a MySQL database?
a. ~/my.cnf

b. /etc/mysql/settings.conf

c. ~/allow

__d. ~/.my.cnf__

### 20) Before systemd, NIC interface naming schemes depended on a driver based enumeration process: they switched to a predictable network interface names process that depends on what for the interface names?
a. driver loading order

__b. interface names depend on physical location of hardware (bus enumeration)__

c. kernel version

d. What ever Lennart Poetering feels like naming them