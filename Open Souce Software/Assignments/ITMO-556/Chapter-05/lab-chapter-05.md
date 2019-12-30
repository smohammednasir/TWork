# Lab - Chapter 5

The objectives of this lab is to use the shell commands we learned in this chapter and understand their proper usage and form. The outcome will your ability to successfully use the Linux Shell for navigation, file creation, and file modification. Resist the temptation to use the GUI file manager and a web browser. All actions will be done through the shell unless noted. All work can be done on either Ubuntu desktop or
Fedora desktop unless noted.

### 1) From the commandline and in your home directory use your systems package manager (yum or apt) and install the git client.
i) issue the command git --version 

   ![Lab 1](/Images/Chapter-05/git_version.PNG)

### 2) Navigate to this location: ~/Documents. Issue the command git clone https://github.com/jhajek/Linux-text-book-part-1.git (If you have done this command previously, no need to redo it).

   ![Lab 2](/Images/Chapter-05/lab_2_smohammednasir.PNG)

### 3) Issue the cd command to change directory into Linux-text-book-part-1. Issue the command to display what type of file ./title/metadata.yaml is. Issue that same command to display what type of file Appendix-A is.

   ![Lab 3](/Images/Chapter-05/lab_3_smohammednasir.PNG)

### 4) Use the wget command to retrieve a copy of the Packer.io binary for Linux. Use this URL as the argument for wget:https://releases.hashicorp.com/packer/1.4.3/ 

   ![Lab 4](/Images/Chapter-05/lab_4_smohammednasir.PNG)

### 5) Use the unzip command to unzip the binary and extract the packer executable. Issue the move command, mv to move the executable to this location: /usr/local/bin. Hint: you will need to use sudo to get the permission needed for this operation.

   ![Lab 5](/Images/Chapter-05/lab_5_smohammednasir.PNG)

### 6) Use the wget command to retrieve an archived copy of the Hadoop binaries from the web. You can use this address as an argument to your wget command: https://www-us.apache.org/dist/hadoop/ common/hadoop-2.9.2/hadoop-2.9.2.tar.gz

   ![Lab 6](/Images/Chapter-05/lab_6_smohammednasir.PNG)

### 7) Use the tar -xvzf command to extract the files, we will cover tar in a later chapter. tar is the
command -xvzf is the options and you need to provide the argument of the hadoop*.tar.gz 

   ![Lab 7](/Images/Chapter-05/lab_7_smohammednasir.PNG)

### 8) Find the command that is used to rename a file or directory and rename the Hadoop directory to be just hadoop

   ![Lab 8](/Images/Chapter-05/lab_8_smohammednasir.PNG)

### 9) What would be the command to delete the file hadoop*.zip?
i) Issue the command ls, then type the command to remove the .tar.gz file, the type the ls command again to show it has been remove.

   ![Lab 9](/Images/Chapter-05/lab_9_smohammednasir.PNG)

### 10) Using a Web Browser from your GUI, navigate to and open the file named chapter-05-file-path-exercise.html located under the directory ./Linux-text-book-part-1-master/files/Chapter-05/images/: Note that the images on the web page are broken. Take a look at the source code (view source) and move the stallman.jpg to the proper directory to make the webpage render that image properly in a single command using the command line.

### 11) Using the commandline again, move the ms-loves-linux.png image to the proper directory using the
mv command in a single command:

   ![Lab 10 and 11](/Images/Chapter-05/lab_10_11_smohammednasir.PNG)

### 12) Assume your PWD is your Home directory: In a series of commands, cd to Documents, then create a directory named packer-scripts. Under this directory create 5 sub-directories, ubuntu16-04, ubuntu18-04, fedora28, centos7, OmniOS.
i) With your PWD as ~/Documents/packer-scripts, execute the command that will give a long listing of the contents of the directory. 

   ![Lab 12](/Images/Chapter-05/lab_12_smohammednasir.PNG)

### 13) the the git command and clone your own repository to your Linux system. In the folder created for this class, issue the commands to create directories for each chapter of the book starting from 01 and upto 15. For example: chapter-01, chapter02. Then issue the command to create a file named Readme.md in each directory (Note: if you already have a folder for a particular chapter and
a Readme.md created for previous assignments then you can skip created that entry). 
 
   ![Lab 13](/Images/Chapter-05/lab_13_smohammednasir.PNG)

### 14) Using the man ssh command, find the command line option that will display verbose version information about ssh.

   ![Lab 14](/Images/Chapter-05/lab_14_smohammednasir.PNG)
   
### 15) Use the man command for the cp command to find how to do a recursive, verbose, and interactive
cp command.
i) Issue the stated command above to copy the directory ~/Documents/Linux-text-book-part-1/Appendix-D/ to ~/Documents/ 

   ![Lab 15](/Images/Chapter-05/lab_15.PNG)

### 16) Use the command to rename the folder ~/Documents/Appendix-D to ~/Documents/Appendix-E.

   ![Lab 16](/Images/Chapter-05/lab_16_smohammednasir.PNG)