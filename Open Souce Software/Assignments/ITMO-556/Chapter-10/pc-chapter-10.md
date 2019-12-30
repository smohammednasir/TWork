### Podcast Answers: - View the presentation by FreeBSD developer Benno Rice from BSDCan 2018 at https://www.youtube.com/watch?v=6AeWu1fZ7bY and answer the following questions:

### 1) ~1:00 Who is Benno Rice?
Benno Rice is a FreeBSD committer and Core Team member. He's currently a Senior Software Engineer for iXsystems and has many opinions on the future of FreeBSD.

### 2) ~1:31 What is Contempt Culture?
Content Culture by Oren Shaw is really an interesting piece of talk and it is kind of confronting sometimes because in a lot of the communities that were in part of the way that we show that we are in the community is by heaping on the other communities. This piece is very focused on language stuff.

### 3) ~3:21 What is inits job?
inits job is to get userspace going. The kernel starts up a process calls it init yet it executes this and it is invoked as the last step of the boot procedure. Generally its role is to create a process for each typewriter on which a user may log in. When init comes up multiuser, it invokes a shell, with input taken from the file /etc/rc. This command file performs hopusekeeping functions and then it reads TP wires and creates a process for each type.

### 4) ~6:11 What lead to the concept of a service?
Notion of service started as a superset of daemon because the service can be dealt out by a whole bunch of things. It is a collection of processes, a collection of other services operating in concert to do something and init can start these things.

### 5) ~8:35 What does the traditional rc system not do?
Traditional RC system really does not do automated service management. You can bring in other tools to do that run it or supervisor D or various other things.

### 6) ~9:27 What OS had a strong initial concept of services from the beginning?
Windows

### 7) ~10:00 On MacOS what did launchd replace?
Event handling daemons on Mac offices.

### 8) ~11:53 In 2010 What was Lennart Poeterring looking at?
He was looking at how to manage services on Linux and was looking at upstart from canonical which is also event driven.

### 9) ~13:48 What other service did Lennart say he was heavily borrowing from?
Launchd

### 10) ~14:01 What does Lennart say that systemd is about?
Systemd is about system management.

### 11) ~14:43 What is the layer in-between the kernel and the userspace created by systemd?
System Layer

### 12) ~17:11 Does systemd violate the UNIX philosophy?
Yes.

### 13) ~20:33 What does Benno think is incredible about what Lennart accomplished?
What Benno admires the most about Lennart is that he gets things done. Also he remains incredibly polite given the amount of stuff that has been thrown at him.

### 14) ~25:26 Why is using systemd as a recruiting tool for BSD (which doesn’t have it) a bad idea?
He says because when you think about the kind of people we would bring across if we were to say come to BSD we don't change.

### 15) ~28:20 What are a few features that BSD could gain from systemd?
__RPC framework__ can be built on top of that because system calls are totally kernel based so by having RPC framework one can delegate network management to a daemon. Then comes __Service lifecycle__. All of this gives automation via API.

### 16) ~28:20 Why can’t BSD run containers?
He says we need to look a lot harder at making containers work that means we turn jails into cgroups. Since there is no cgroups cannot run containers.
