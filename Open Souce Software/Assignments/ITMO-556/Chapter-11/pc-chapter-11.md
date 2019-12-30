### Podcast Answers: - DragonFly BSD - Listen to this podcast: https://ia802605.us.archive.org/9/items/bsdtalk248/bsdtalk248.mp3

### • ~1:25 What did DragonFly BSD drop with the 4.0 release?
32 bit support. It is not removed yet but not supported anymore.

### • ~1:40 What was the other major feature that DragonFly BSD added?
Workstation support for displays and GPU is significantly better. During the fresh port the Linux radion and intel GPU video setting support  basically Gem and TTM. Open GL accelaration working now. Originally tried to port the new DRM from Free BSD had problem but now has got most of the support. 

### • ~3:40 What modification did they add to the Packet Filter?
Made adjustments to packet filter to allow that to run concurrently on multiple CPUs. Before they had a global lock around packet filter which is gone now.

### • ~10:00 What is the largest system DragonFly BSD has access to?
256 core limit

### • ~11:45 What is the difference between DragonFly BSD’s network stack compared to BSD and Linux?
BSD segregate to each CPU.

### • ~13:25 What is the limitations of the Hammer 1 Filesystem?
Hammer 1 does not do clusterring. It does not have redundancy. No stable data in terms of crash recovery.

### • ~13:45 What features will Hammer 2 Filesystem add?
A significantly higher performing snapshotting feature and actual clusterring.

### • ~15:45 What is the intended use case of Hammer 2 FS?
Multiple nodes over wide area network and its intended to be either multi master type of configuration.

### • ~18:00 What sub-system is still in the works needed to make DragonFly BSD a stable work station?
Getting new sound system working so can run audio reliably which is a major component required.

### • ~25:00 What is package-ng?
It is a Free BSD port system 

### • ~30:00 How does DragonFly BSD handle suspend and resume functions common to laptops?
They monitor the progress of other operating system primarily Linux and Free BSD has made on suspend resume side. Even now it is not reliable enough.

### • ~35:50 What is the growing issue about systemd in relation to BSD?
Log files are in binary format. BSD has been trying to fugure out how much the systemd has to be implemented in order for many of the ports linux targeted. So they need some sort of infrastructure to support it well so that can have build those ports and make them work properly. There is a growing issue there. There are some other things in terms of management of daemons. You lose track of who owned the process or who started it.

### • ~38:00 Of the 20,000 packages available in DragonFly BSD where are they primarily targeted?
targeted to Linux.

### • ~38:30 Out of FreeBSD, OpenBSD, NetBSD, and DragonFly – what is each project focusing on?
Coordinate some APIs between Free BSD. Open BSD or NetBSD working on Systemd replacement, ssl library work. Free VSD is working on network stack.

### • ~40:23 How does GPL based Linux software cross over into BSD distros?
Different part of Linux run under different licences  