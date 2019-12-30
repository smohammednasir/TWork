# Review Questions and Answers - Chapter 6

### 1. What is the name for characters that have special meanings in the Linux shell?
a. special chars

b. marked characters

c. shell characters

__d. shell meta-characters__

### 2. Assume your pwd is ~. If you wanted to list every directory only that started with the letters “Do” what would be the command?
a. ls -l

b. ls -la

c. ls -l Do

__d. ls -l Do*__

### 3. In figure 95 in Chapter 06 which of the 3 blue boxes is the step where shell meta-characters are transformed into text?
a. Lexical analysis and parse

b. Execution

c. Builtins

__d. Expansion__

### 4. Which meta-character allows you to string commands together regardless of the successful execution of the previous command?
a. &&

__b. ;__

c. \+

d. ||

### 5. Which meta-character allows you to string commands together but will exit if one of the commands fails?
__a. &&__

b. ;

c. \+

d. ||

### 6. Which meta-character is the wildcard (0 or more matches.?
a. ?

b. **

c. &

__d. *__

### 7. Which meta-character is the single character wildcard?
__a. ?__

b. ’

c. &

d. *

### 8. Square braces [] indicate sets or ______ of characters to be processed
a. numbers

b. letters

c. characters

__d. ranges__

### 9. If you wanted to use brace expansion and create a series of nine files named: file1, file2, file3, etc etc all at once–what command would you use? (type the full command using touch .
touch file{1..9}

### 10. If you wanted to assign the value of /etc/alternatives/java to a shell variable named JAVA_HOME– what would be the proper syntax?
a. JAVA_HOME = /etc/alternatives/java

b. /etc/alternatives/java = JAVA_HOME

__c. JAVA_HOME=/etc/alternatives/java__

d. $JAVA_HOME=/etc/alternatives/java

### 11. What would be the proper syntax to display the content of a variable named JAVA_HOME in the shell?
a. echo JAVA_HOME

b. cat JAVA_HOME

c. print JAVA_HOME

__d. echo $JAVA_HOME__

### 12. There are 3 standard I/O devices in a Linux system, standard in, standard out, and ________
a. standard air

b. standard I/O

c. standard x

__d. standard error__

### 13. Standard In is what device by default?
a. mouse

b. screen

c. tty

__d. keyboard__

### 14. Standard Out is what device by default?
a. mouse

__b. screen__

c. X

d. keyboard

### 15. What meta-character can you use to redirect standard out to a file? (Choose all that apply.
__a. >__

__b. >>__

c. <

d. >>>

### 16. What meta-character is used to redirect the standard output of one command as the standard input of another command?
a. ->

b. &&

c. ||

__d. |__

### 17. Which command is a shortcut to display the kernel’s output messages?
a. kern

b. &kern

c. top

__d. dmesg__

### 18. Which command is used to search within files using textual filter patterns?
a. find

b. locate

c. slocate

__d. grep__

### 19. When you combine a tar (tape archive) and an additional compression method–what is the name for the resulting file?
a. tar

b. tarx

c. tarall

__d. tarball__

### 20. What is the name of the GNU compression tool project released in 1992?
a. xz

b. zip

c. DEFLATE

__d. gzip__
