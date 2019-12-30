# Lab - Chapter 9

### 1) What would be the command to add a user named �controller� to your system - using the system default values?
sudo useradd controller

### 2) What would be the command to modify the user�s group to add them to a superuser group (sudo on Ubuntu or wheel on Fedora based)?
sudo usermod -a -G wheel controller

### 3) What would be the command to delete a user account named nsa-spy? (Note you also have to include the steps to add this user� unless the NSA is already in your system =)
#### sudo useradd nsa-spy 
#### sudo userdel nsa-spy 

### 4) What would be the command to edit the /etc/sudoers file and give the user �mysql-backup� sudo privilege? (Show the /etc/sudoers being edited and enter the relevant line that you add to that file)
#### sudo visudo 
#### mysql-backup ALL=(ALL:ALL) ALL   
   ![Lab 4](/Images/Chapter-09/lab4.PNG)

### 5) What would be the command to edit the /etc/sudoers file and give the group �mysql-admins� sudo privilege? (Show the /etc/sudoers being edited and enter the relevant line that you add to that file)
#### sudo visudo
#### %mysql-admins ALL=(ALL) ALL
   ![Lab 5](/Images/Chapter-09/lab5.PNG)

### 6) What would be the command to edit the /etc/sudoers file to give the user �mysql-admin� sudo privilege to only use the mysql database backup command �mysqldump� ? (Show the /etc/sudoers being edited and enter the relevant line that you add to that file)
#### sudo visudo
#### mysql-admin ALL=(ALL) /usr/bin/mysqldump
   ![Lab 6](/Images/Chapter-09/lab6.PNG)

### 7) What would be the command to edit the /etc/sudoers file to give the user �mysql-admin� sudo privilege to only execute the mysql command and not require a password?
   ![Lab 7](/Images/Chapter-09/lab7.PNG)

### 8) When you execute the command tail journalctl - you receive an error? Show the error in a screenshot and explain why the error comes?
#### journalctl is a binary file
   ![Lab 8](/Images/Chapter-09/lab8.PNG)

### 9) What would be the command to execute to find all the occurences of logs generated by SSHD in journalctl? P.168 in the text book � you may need to install openssh-server package if the command returns no results
   ![Lab 9](/Images/Chapter-09/lab9.PNG)

### 10) What would be the command to execute to find all the logs generated by _PID=1 (systemd itself) and since yesterday?
   ![Lab 10](/Images/Chapter-09/lab10.PNG)
   
### 11) What would be the command to execute to see the logs of the current boot only using journalctl?
   ![Lab 11](/Images/Chapter-09/lab11.PNG)
   
### 12) Which file and what value would I modify to change the journal�s settings to make the logs be stored in memory (volatile)?
   ![Lab 12](/Images/Chapter-09/lab12.PNG)
   
### 13) The journald values SystemMaxUse= and RuntimeMaxUse= default to 10% and 15% of the system disk respectively. How would you modify that value to be 20% and 30% respectively? (Note you can�t add percentages, you have to use your system and do some scratch math - you can execute a df -H command to see the size of your root partition)

#### SystemMaxUse=220M
#### RuntimeMaxUse=330M

   ![Lab 13](/Images/Chapter-09/lab13.PNG)

### 14) What would be the command to edit the cron service and run this command �mysqldump �xml -u root world City� (Assume you have mysql installed) at 2 am every Sunday?
	
#### crontab -e 
#### * 2 * * 0 /usr/bin/mysqldump �xml -u root world City

### 15) What would be the command to edit the cron service and run this command �mysqldump �xml -u root world City� (Assume you have mysql installed) at the 1st day of every month?
	
#### crontab -e 
#### 0 0 1 * * /usr/bin/mysqldump -xml -u root world City

### 16) What would be the command to edit the cron service and run this command �mysqldump �xml -u root world City� (Assume you have mysql installed) every 45 minutes?
	
#### crontab -e
#### /45 * * * * /usr/bin/mysqldump -xml -u root world City

### 17) What would be the command to edit the cron service and run this command �mysqldump �xml -u root world City� (Assume you have mysql installed) on every 45 minutes past the hour on Sundays?
	
#### crontab -e
#### /45 * * * 0 /usr/bin/mysqldump -xml -u root world City

### 18) What would be the command to edit the cron service and run this command �mysqldump �xml -u root world City� (Assume you have mysql installed) at 2:45am on this coming Tuesday only?

#### 45 2 * * 2 /usr/bin/mysqldump -xml -u root world City; crontab -r

### 19) What command would you use to change the group ownership of the file todo-list.txt to be owned by the �accounting� group? (If that group doesn�t exist then create it on your system)
sudo chgrp accounting todo-list.txt

### 20) What would be the command you would type to generate a RSA key pair?
ssh-keygen

### 21) What would be the command to transfer an RSA key pair to a remote system named logserver with the username worker?
ssh-copy-id worker@logserver

### 22) What would be the command to connect via ssh using the identity logserver and connect to the non-standard port of 5555 instead of the default 22?
ssh -i logserver -p 5555 worker@logserver

### 23)The next questions require some setup:
i. You need two virtual mahcines for this part: One Ubuntu based and one Fedora based (or two comparablely different OSes, FreeBSD, Trisquel, etc etc).
ii. You will need to modify the Network settings to Bridged in Virtualbox to get a public IP (if you are at home your router should suffice, if you are on campus you can come to the lab).
iii. Install openssh-server on Fedora.
iv. Clone the repository https://github.com/arthepsy/ssh-audit to both the client and server system
v. Run the ssh audit on the client and server, list the weak ciphers installed by default 

   ![Lab 23f](/Images/Chapter-09/lab23_f.PNG)
   
   ![Lab 23u](/Images/Chapter-09/lab23Ubuntu.PNG)

### 24) Modify the client and servers using the example in the text to increase cipher strength, run the sshaudit tool again and report any weak ciphers or security anomolies.

   ![Lab 24f](/Images/Chapter-09/lab24_fedora.PNG)
   
   ![Lab 24u](/Images/Chapter-09/lab24_ubuntuCiphers.PNG)

### 25) On the SSH server make the following changes to the sshd_config file and paste them at the end of the ReadMe.md file
i. Not accept any password based authentication attempts
ii. Change the default port to be 5555
iii. Disable the value PermitRootLogin

   ![Lab 25](/Images/Chapter-09/lab25.PNG)
   
### 26) Install fail2ban on both of the above systems:
i. Configure fail2ban to start the service and enable it via systemctl command.
ii. Configure the fail2ban to parse the systemd jounrnalctl logs
iii. From the first system (Ubuntu) try to SSH into the second system (Fedora) with an incorrect
username and password 5 times and get yourself banned.
iv. Submit the fail2ban config file to blackboard as part of the deliverable

   ![Lab 26](/Images/Chapter-09/lab26ban.PNG)
   
   ![Lab 26jail](/Images/Chapter-09/lab26Jailconf.PNG)