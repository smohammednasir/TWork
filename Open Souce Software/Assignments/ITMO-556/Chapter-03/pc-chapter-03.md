Listen/watch the FLOSS podcast number 130 with the VirtualBox Developers - http://twit.tv/floss/130

# Podcast Questions and Answers - Chapter - 3

## ~2:35 Who is Andy Hall and Achim Hasenmuller?

Andy Hall is a product manager for Oracle VM VirtualBox and Achim Hasenmuller is the lead architect. 
	 
## ~3:00 What is Simon Phipps relationship to the VirtualBox project?
Simon used to work with Sun and part of the management team and helped to acquire this company back couple of years.
	 
## ~4:45 What does VirtualBox do in Andy Hall’s words?
VirtualBox is a hypervisor. A hypervisor let you run multiple virtual machines at the same time on the same piece of hardware. The difference between VirtualBox and other hypervisor technologies is that VirtualBox extends the Operating System of your existing system. It extends the capability of the platform then you can run multiple Operating System at the same time. 
	  
## ~6:30 What other company previously owned VirtualBox?
Oracle VM VirtualBox created by Innotek acquire by Sun Microsystems in 2008, which was, in turn, acquired by Oracle in 2010
	
## ~11:20 According to Simon, what is the definition of open core?
Open core is a business model which is an open source edition which lacks important functions while offering add-ons as proprietary software. It has got a huge user community around 28 million users.
	   
## ~14:17 How does VirtualBox fit into Oracle’s business model?
When the acquisition was announced Oracle was very keen on VirtualBox. They broadcast and committed on developing VirtualBox. Not much had changed as the development team was the same, roadmap had not really changed and there are minute things like Oracle is a different process, but Oracle is very interested in having a Client-side hypervisor, VirtualBox technology and is very committed to VirtualBox.
		
## ~16:15 As of the time of the podcast (2010) how many downloads did VirtualBox have?
30 million downloads and millions of active users. 
	 
## ~20:25 How does VirtualBox handle virtualized I/O?
Play station was totally different CPU architecture than the Macintosh and had to translate everything. And same was true for running windows on the Mac back then so it was slow. If you run x86 or intel on intel, then you don’t have to translate everything and over time there were different techniques like VMware they always analyze all the code after virtual machine and then they do binary translation that is a very difficult way of doing things because you need to understand every code and every situation and every behavior of x86. VirtualBox was a small team and they went with something called ‘Raw mode execution’ basically executed code as is and identify places that need little help and hypervisor would rewrite them on the fly but basically the code will still be in place, the memory layout will not change. Hypervisor switches context from a main operating system to a guest operating system. Complete operating system will get swapped completely out and guest operating system gets swapped in under control of the hypervisor and after couple of microseconds the main operating system gets swapped in again. Hypervisor is taking over the system.
	   
## ~22:40 What did Intel and AMD introduce to help ease virtualization in VirtualBox?
Intel and AMD introduced virtualization ease to their CPU’s called VT-x and AMD called AMDV virtualization.
		
## ~26:00 What two models of network card did VirtualBox choose to represent their virtual hardware and why?
AMD pcnet, all the operating system supports that card, it is very efficient card to virtualize and the second network card is e 1000 gigabit which is well supported. We can emulate a couple of variants where some operating systems support only one variant not the other and lately Virtio network support has been adopted. It is a fully virtual network card who’s only purpose is to support hypervisor and it is part of the Linux kernel. 
		
## ~27:40 What does VirtualBox almost get native performance on?
Storage is tricky as for storage a lot of data needs to be processed. If we have to touch a lot of data, rewrite it , adopt it that cost a lot so Serial ATA was implemented as SATA allows to take command from the guest basically just route them to the host Operating Systems and don't touch the data at all. So there VirtuaBox almost gets native performance on.

## ~29:29 How does VirtualBox treat USB devices in Guest OSes?
VirtualBox allows to capture USB devices and these devices can only be operated by single device driver. If u attach it to your virtual machine the host operating system will give it up and then the driver will load in the virtual machine. If you attach USB, then it will disappear in the host machine and pop up in the guest machine. 
	   
## ~31:00 What are 4 virtual networking modes in VirtualBox?
Internal networking, Host-only networking, Network address Translation and Bridged networking.       
		
## ~32:30 What is the difference between NAT and Bridged networking?
NAT – guest can access the internet but it cannot be accessed from the internet whereas Bridged networking will receive direct access to the network, even though it doesn’t have the cable but that requires to get a real IP address and it can be reached from outside, but NAT is preferred  
	   
## ~39:30 What Type of hypervisor is VirtualBox?
VirtualBox is a Type 2 hypervisor, also called as hosted hypervisor which runs on Windows, Linux, Mac OSX, Solaris and free BSD (Community Support and not Oracle support).
		
## ~51:30 Why can’t you virtualize Mac OSX on VirtualBox (as of 2014)?
Apple have designed in a way where MacOS checks on the underline hardware. VirtualBox pass through those checks because they don’t have Apple system management chip which is a special piece of hardware which it uses as VirtualBox doesn’t emulate one of those and pass it through.


