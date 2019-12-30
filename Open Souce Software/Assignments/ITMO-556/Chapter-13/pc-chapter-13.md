### Podcast Answers: - https://www.youtube.com/watch?v=xXWaECk9XqM: The Container Revolution:
Reflections After the First Decade by Bryan Cantrill.

### 1. ~0:30 Where does/did Bryan work, who recently bought that company, and what do they do?
Bryan was the CTO of Joyent which was acquired by Samsung, they make mobile devices.

### 2. ~1:33 What is the birth date of containers?
March 18, 1982

### 3. ~3:25 What was the next iteration of containers?
Introduction of jails from FreeBSD. 

### 4. ~3:49 What is the purpose of a Jail?
To be able to take effectively untrsuted software and run it on the computer as ROOT as UID 0 but it can't actually see the wole box, it can only see what is in its little jail or its little cell.

### 5. ~5:10 What did SUN call their full application environment they created in 2002?
Zones.

### 6. ~6:13 What is every application running on?
Running on a single one operating system kernel so every application that is running in zone is running on a hardware.

### 7. ~8:43 What did Amazon announce in 2006?
Amazon announced the limited data for EC2 (Amazon Elastic Cloud Compute).

### 8. ~9:00 In 2006 what technology was Joyent using to run its Public Cloud? In 2006 what technology was Amazon using to run its Public Cloud?
Joyent was using containers. Amazon was using hardware level virtualization.

### 9. ~9:25 What became de facto for the cloud?
Hardware-level virtualization.

### 10. ~11:18 What happens to the RAM when you give it to an operating system?
When you give an operating system RAM it takes it. The End. From hypervisors perspective its gone.

### 11. ~14:40 What does Joyent’s Manta service allow you to do with containers and objects?
With the power of containers we could build a storage service and when you want to compute upon it you could spin up a container where your object actually lives so you can actually perform arbitrary computation on your object without moving it 

### 12. ~18:58 What command hadn’t been created in 1986?
head

### 13. ~21:45 When did the world figure out containers and what was this product?
Docker

### 14. ~22:57 Why did the container revolution start with Docker?
Bryan says we always emphasize aside from Manta or even with Manta emphasizing the operational characteristics of container. These things are rocket fast.

### 15. ~24:07 Containers allow developers to do what?
Allows developers to think operationally and most importantly it allows developers to move faster.  

### 16. ~26:00 What is Triton and what does it do?
Triton combines the strength of zones, industrial grade strength, proven strengths of zones with the excitement, the energy the enthusiasm and most importantly the accelarated software developer which you get with docker which is called Triton. Triton combines smartOS and cloud management software with a Docker remote API endpoint.

### 17. ~31:42 What are the two approaches to the container ecosystem, and what is the difference?
Framework approach versus the library approach. The framework approach is the control which calls out you in certain contexts that is where you add your functionality. The Library approach is where it provides some libraries as a toolbox that you will pull off and use to build new things. Framework approach in which framework is in control but alternatves are pluggable whereas the library approach in which the developer/operator is in control, composing the functionality out of well defined modules.

### 18. ~33:25 What is the “Hashi” ethos?
Hashi ethos is the library ethos that is library approach.

### 19. ~37:00 What was the mistake that happened with the pilot operator release valve at 3 Mile Island?
Over pressure in the reactor as they did not cool the reactor fast enough. Failure of auxillary pumps was very bad. When the pressure finally dropped the pilot operator relief valve automatically closes but there was an error in the actual light on the control as it was mis designed the light will go off when power is been applied to the solenoid to close it not when it is actually closed.

### 20. ~39:05 With container based systems in what terms must we think in?
Don't look at the ability to survive failure, look at the kind if pathologies they have with cascading timeouts, harder reproduce problems and so on. we need to think not in terms of program but the system. So this is a very real problem.

### 21. ~40:00 Why is scheduling containers inside of Virtual Machines a bad idea? 
Because it cannot possibly survive into the long term especially is we are going to use computers to do more. This is going to be explosive in terms of cost. 

