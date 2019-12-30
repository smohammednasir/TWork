# Lab - Chapter 10

### 1) Change the default grub settings in Ubuntu add a background image (preferably dark) and remove or disable the quiet splash option) make sure to execute update-grub before rebooting or changes won’t be written.
   ![Lab 1](/Images/Chapter-10/lab1.PNG)

### 2) Use the systemd-analyze tools to print out the most recent boot time for your system
   ![Lab 2](/Images/Chapter-10/lab2.PNG)

### 3) Install MariaDB server, sudo dnf install mariadb.
a) Use the command systemctl status <servicename> after MariaDB is installed to display its current status, then enable the service via systemctl, and then start the service. Now reboot your system.
   ![Lab 3](/Images/Chapter-10/lab3.PNG)

### 4) With MariaDB enabled, use the systemd-analyze tools to print out the most recent boot time for your system again and compare if adding this service increased boot times.
   ![Lab 4](/Images/Chapter-10/lab4.PNG)

### 5) Use systemd-analyze blame to collect start times of each element after installing and enabling the MariaDB service
   ![Lab 5](/Images/Chapter-10/lab5.PNG)

### 6) Use systemctl to enable and start the httpd.service (Fedora)
   ![Lab 6](/Images/Chapter-10/lab6.PNG)

### 7) Use systemctl to SIGHUP the httpd.service (Fedora)
   ![Lab 7](/Images/Chapter-10/lab7.PNG)

### 8) Change the systemd target to the systemd commandline only level, display the systemd default target level - then change back to the GUI target (or runlevel5).
   ![Lab 8](/Images/Chapter-10/lab8_runlevelMulti.PNG)
   
   ![Lab 8](/Images/Chapter-10/lab8_changingBackToGraphical.PNG)

### 9) Using systemctl and the --show option, display the “After” and “Wants” of the sshd.service
   ![Lab 9](/Images/Chapter-10/lab9.PNG)

### 10) nice a command - create/compile a C infinite loop program and nice it to lowest priority and then highest priority. Open a second terminal tab/window and use htop (install it if needed) to display that process’ system usage

Created program file infiniteLoop
   ![Lab 10_1](/Images/Chapter-10/lab10_1.PNG)
   
   ![Lab 23](/Images/Chapter-10/lab10_loop.PNG)
Before nicing it to lowest priority
   ![Lab 10](/Images/Chapter-10/lab10.PNG)
After nicing it to lowest priority
   ![Lab 10](/Images/Chapter-10/lab10_LowestPriority.PNG)

### 11) Launch multiple tabs in Firefox using this command:
a)firefox -new-tab -url krebsonsecurity.com -new-tab -url twit.tv/floss/. Find the process IDs via ps -ef and kill those tabs/processes with a kill -2 command
   ![Lab 11a](/Images/Chapter-10/lab11_a.PNG)
### b) Repeat the above launch command and this time use systemd and the proper cgroups to kill the
FireFox processes
   ![Lab 11b](/Images/Chapter-10/lab11_b.PNG)

### 12) Using lsmod and grep list all of the kernel modules loaded on your system that contain VirtualBox (search for vb*).
   ![Lab 12](/Images/Chapter-10/lab12.PNG)

### 13) Run the systemd-systemctl command to list the VirtualBox kernel modules that are loaded
   ![Lab 13](/Images/Chapter-10/lab13.PNG)

### 14) Run the command that will list all the PCI devices attached to your system
   ![Lab 14](/Images/Chapter-10/lab14.PNG)

### 15) Type one of the two commands mentioned in the chapter to display info about your CPU hardware
   ![Lab 15](/Images/Chapter-10/lab15.PNG)


### 16) Using systemctl find the cgroup for the apache2 webserver (known as httpd on Fedora) and issue a SIGHUP to the entire cgroup.
   ![Lab 16](/Images/Chapter-10/lab16.PNG)

### 17) Using systemd-cgls list and filter (grep) and show the sub-process IDs for the httpd.service
   ![Lab 17](/Images/Chapter-10/lab17.PNG)

### 18) Use the timedatectl command to change the clock of your system to UTC.
   ![Lab 18](/Images/Chapter-10/lab18.PNG)

### 19) Use the hostnamectl command to:
a) set-hostname to itmo-556-xyz (xyz is your initials)
b) set-location to: d1r1u22
c) set-chassis to: vm
d) set-deployment to: development
   ![Lab 19](/Images/Chapter-10/lab19.PNG)

### 21) What would be the command to change the systemd target runlevel to recovery mode? Execute this command and take a screenshot of the result.
   ![Lab 21](/Images/Chapter-10/lab21a.PNG)
	
   ![Lab 21](/Images/Chapter-10/lab21b.PNG)
### 22) Review the content of the mysql.service file, list the contents of the [Install] header that must load before and after the mysql service starts.
   ![Lab 22](/Images/Chapter-10/lab22.PNG)

### 23) Using GCC sudo dnf install gcc or sudo apt-get install build essential, create and compile a simple C++ code that is an infinite loop – just put while true in the body of main. Execute this script (note you could do this in Python as well, your choice). Use systemd-cgtop to display the usage and capture that output.
   ![Lab 23](/Images/Chapter-10/lab23.PNG)
### a) use the ps and various filters to show only information related to this process.
   ![Lab 23](/Images/Chapter-10/lab23a.PNG)
### b) use the systemd-cgls command and filters to display the process information
   ![Lab 23](/Images/Chapter-10/lab23_b.PNG)
### c) use the kill command from systemd to kill the cgroup related to the infinite loop process.
   ![Lab 23](/Images/Chapter-10/lab23c.PNG)
   
### 24) Using the sample file located in: files > Chapter-10 > python > write-journal.py and copy it to your home directory. Create a systemd service file called write-journal.service. Have the service file execute this python script (use absolute paths). Use the commands to enable and start the service. Use the sudo journalctl -xe command to show the output in the systemd logs at boot and after the system has loaded.
   ![Lab 24](/Images/Chapter-10/lab24.PNG)