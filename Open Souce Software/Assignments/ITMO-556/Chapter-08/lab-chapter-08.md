# Lab - Chapter 8

### 1) What would be the command to create an array in Bash named itemARRAY?

declare -a itemARRAY

### 2) Write a shell script that declares an array in Bash named dirarr. Using the mapfile command - redirect the output of the ls -l ~ command into the array previously named and echo out the 3rd and 4th elements of that array.

#### declare -a dirarr
#### mapfile -t dirarr < <(ls -l)
#### echo ${dirarr[2]}
#### echo ${dirarr[3]}

   ![Lab 2](/Images/Chapter-08/lab2.PNG)

### 3) Write a WHILE loop that will read the content of the file names.txt, (located in the files > Chapter08 > lab folder) and create a directory based on the value on the line in the /tmp directory (one per users). Include an if statement to detect if the directory already exists, if it does exist, write the duplicate name out to a text file named: duplicates.txt located in the /tmp directory.

#### while read LINE
#### do 
#### if [ -a /tmp/$LINE ]
#### then 
#### echo $LINE &>> /tmp/duplicates.txt
#### else 
#### mkdir -v /tmp/$LINE
#### fi
#### done < names.txt
   

### 4) Write the syntax to make a cronjob execute 5 minutes past every hour everyday to execute the shellscript you previously made to store the content of ls -l ~ into an array named dirarr.

#### 5 * * * * /bin/lsl

### 5) Locate the file install-java8.sh located in the files > Chapter-08 > lab directory. Modify the script to include IF statements to check for the existence of the path /datapool1 and to print an error message if the path does not exist. 

#### if [ -d datapoool1 ]
#### then 
####	//some code
#### else
####	echo "path does not exists"

   ![Lab 5](/Images/Chapter-08/lab5.PNG)
   

### 6) Modify install-java8.sh again–this time take a positional parameter and put that in place of the directory name /datapool1 (this will allow you to customize the install location of the shell script).

#### if [ -d $1 ]
#### then 
####	//some code
#### else
####	echo "datapool does not exist"
#### fi

   ![Lab 6](/Images/Chapter-08/lab6.PNG)

### 7) Modify the install-java8.sh from the previous question to count the number of positional parameters and if less than 1 or more than 1 stop execution of the script (exit).

#### if [ $# -lt 1 ] || [ $# -gt 1 ]
#### then 
####	echo "less than one or more than one parameter passed"
#### else
####	//some code
#### fi

   ![Lab 7](/Images/Chapter-08/lab7.PNG)

### 8) Create a directory in ~ named topsecret. In that directory create a file named xfile.txt. Write a shell script to check if that file has executable permission by passing the filename as a positional parameter. If TRUE print a message. If FALSE print an error message that the positional parameter name of the file is not executable.

   ![Lab 8](/Images/Chapter-08/lab8.PNG)

### 9) Write a shell script to check in the ~/topsecret directory to see if a given file name exists (passed in by postional parameters). If TRUE print a message else print an error message with the given file name being passed.

   ![Lab 9](/Images/Chapter-08/lab9.PNG)

### 10) Write a shell script to check if a given PATH is a file or a directory. If TRUE print a message, else print an error message using the given file name.

   ![Lab 10](/Images/Chapter-08/lab10.PNG)

### 11) Write a shell script that takes 4 positional parameters. In the shell script print out $0, $#, and $@ with an explanation of what these variables contain.

   ![Lab 11](/Images/Chapter-08/lab11.PNG)

### 12) Repeat the previous cron command but this time redirect the standard out and standard error to a file named ~/Documents/my.log

   ![Lab 12](/Images/Chapter-08/lab12.PNG)

### 13) Using awk and other tools, how would you find which ip caused the most HTTP 404 errors? Take a screenshot of the command and the output. Use these two files in files/Chapter-08/logs: u_ex150721.log, u_ex151002.log.

   ![Lab 13](/Images/Chapter-08/lab13.PNG)

### 14) Using awk and other tools, how would you capture the top 5 offending IPs? Take a screenshot of the command and the output. Use these two files in files/Chapter-08/logs: u_ex150721.log, u_ex151002.log.

   ![Lab 14](/Images/Chapter-08/lab14.PNG)

### 15) Using sed, type the command to find the line bind-address located in the mariadb database server config file (you might need to install mariadb-server). The file locations are: Fedora /etc/my.cnf.d/mariadb-server.cnf and Ubuntu /etc/mysql/mariadb.conf.d/50-server.cnf.
Comment out the value, change the IP value to 0.0.0.0, and write the change back to the original file. Take a screenshot of the output.

   ![Lab 15](/Images/Chapter-08/lab15.PNG)