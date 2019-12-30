# Lab - Chapter 6

The objectives of this lab will be to use the shell and understand meta-characters, pipes, search, and tools. The outcome will be that you will be able to successfully use meta-characters for file creation, location, modification, and manipulation. You will successfully master the concept of pipes and redirection as well. Resist the temptation to use the GUI file manager and a web browser. All actions will be done through the shell.

### 1) Your PWD is ~. Make a new directory called text. In that directory Use the wget command to retrieve a compressed file (zip) of the class textbook from: https://github.com/jhajek/Linux-textbook-part-1/archive/master.zip and extract it. 

   ![Lab 1](/Images/Chapter-06/lab1_smohammednasir.PNG)

### 2) Now cd into the directory you just decompressed. Type the command that will create folders named Chapter-16..31 in one command.

   ![Lab 2](/Images/Chapter-06/lab2_smohammednasir.PNG)

### 3) What command will list every file in the textbook directory that has any number of characters and a .sh two character file extension of any name?

   ![Lab 3](/Images/Chapter-06/lab3_smohammednasir.PNG)

### 4) What command inside the textbook directory will do a long listing of Chapters-02,04,06, and 08 only?

   ![Lab 4](/Images/Chapter-06/lab4_smohammednasir.PNG)

### 5) What command will copy the content of file Chapter-02/chapter-02.md to a directory named Chapter00/chapter-02.md. Use meta-characters to string together commands.

   ![Lab 5](/Images/Chapter-06/lab5_smohammednasir.PNG)

### 6) Create a shell variable named UT, assign the contents of the command uptime to UT and print a string to the screen with its value and with a string stating, “The system has been up for:” and then the value of UT

   ![Lab 6](/Images/Chapter-06/lab6_smohammednasir.PNG)

### 7) Execute the following commands: sudo apt-get -y update 1>/tmp/01.out 2>/tmp/01.err sudo apt-get -y install nginx 1>/tmp/02.out 2>/tmp/02.err sudo systemctl start nginx 1>/tmp/03.out 2>/tmp/03.err Note if you are on Fedora replace apt-get with dnf and skip the first instruction. Display the contents of the *.out files in one command and pipe its output to the less command. Display the contents of the *.err files in one command and pipe its output to the less command.

   ![Lab 7](/Images/Chapter-06/lab7_smohammednasir.PNG)

### 8) You are typing the command ls -l /topsecret and you want to redirect both standard out and standard error to a file named /tmp/out-and-error.txt, how would you do it?

   ![Lab 8](/Images/Chapter-06/lab8_smohammednasir.PNG)

### 9) You will find a file named hosts.deny located in the files directory of the download of the textbook. It contains a list of IP addresses - what command would you use to count ONLY the number of lines?

   ![Lab 9](/Images/Chapter-06/lab9_smohammednasir.PNG)

### 10) Using the error.log file located in the files directory - what command would you use to count only unique lines and to display their count and only if there is more than 1 occurrence?

   ![Lab 10](/Images/Chapter-06/lab10_smohammednasir.PNG)

### 11) What command would let you display the content of the hosts.deny file, cut out the the second column and sort it?

   ![Lab 11](/Images/Chapter-06/lab11_smohammednasir.PNG)

### 12) What command would let you search the file error.log for the lines that contain the term “robots.txt”?

   ![Lab 12](/Images/Chapter-06/lab12_smohammednasir.PNG)

### 13) What command would let you count the number of lines that have the term “robots.txt” in the file error.log?
 
   ![Lab 13](/Images/Chapter-06/lab13_smohammednasir.PNG)

### 14) Using the hosts.deny file, what command would you type to display the last 10 lines of the file, cut out the field with the IP address and sort them in ascending order?

   ![Lab 14](/Images/Chapter-06/lab14_smohammednasir.PNG)
   
### 15) Use the grep tool to search the file error.log for the line “Invalid method in request” and print to the screen the lines found.

   ![Lab 15](/Images/Chapter-06/lab15_smohammednasir.PNG)

### 16) Using tools discussed in this chapter, create a commandline based reporting tool based the contents of error.log. Inthe report type the commands to find the following: How many unique IPs did the error messages come from? Home many unique URLs based errors (last column), and list all of the unique type of errors (second to last column).

### Unique Ids
	
   ![Lab 16-unique-Ids](/Images/Chapter-06/lab_16_Ids.PNG)
	
### Unique URLs
	
   ![Lab 16-unique-Urls](/Images/Chapter-06/lab_16_urls.PNG)
	
### Unique Errors
	
   ![Lab 16-unique-Errors](/Images/Chapter-06/lab_16_errors.PNG)
   
### 17) Using the find command and starting from the ~ directory what would be the command to find all files with the name .md?

   ![Lab 17](/Images/Chapter-06/lab17_smohammednasir.PNG)

### 18) Using the find command and starting from the ~ directory what would be the command to find all the files that have been modified in the last hour prior?

   ![Lab 18](/Images/Chapter-06/lab18_smohammednasir.PNG)

### 19) Using the file sotu -> 2005-sotu.txt and sotu -> 2013-sotu.txt using pipes, display the file of text, determine the 10 most frequently used words, and print out a sorted list of those words along with their frequencies. Use the tr command to generate a list of tokenized all lowercased words, start with cat 2005-sout.txt | tr -cs A-Za-z '\n' | tr A-Z a-z.

   ![Lab 19](/Images/Chapter-06/lab19_smohammednasir.PNG)

### 20) In the files > chapter-06 > sample-data directory, compress the entire directory structure of sample-data as a single tar archive called inputfiles.tar.

   ![Lab 20](/Images/Chapter-06/lab20_smohammednasir.PNG)

### 21) In the folder, files > chapter-06 > weather-data, uncompress the .xz file. Recompress the original text file using gzip, bzip2, xz, and Brotli.

   ![Lab 21](/Images/Chapter-06/lab21_smohammednasir.PNG)

### 22) Download the Linux kernel archive via wget from: (use the latest version), an example: https://cdn. kernel.org/pub/linux/kernel/v4.x/linux-4.14.77.tar.xz or any other mainline stable kernel. Extract this xzip and tar in one command. Then type the command to delete the xz tarball. Now type the command to re-tar and re-compress it with xzip.
 
   ![Lab 23-xzipandtar](/Images/Chapter-06/lab23_xzipandtar.PNG)
   
   ![Lab 23-del_xz_tarball](/Images/Chapter-06/lab23_del_xz_tarball.PNG)
   
   ![Lab 23-retar_rezip](/Images/Chapter-06/lab23_retar_rezip.PNG)
