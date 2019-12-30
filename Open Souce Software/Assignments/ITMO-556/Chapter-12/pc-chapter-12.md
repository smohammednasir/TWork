### Podcast Answers: - Nginx: http://twit.tv/show/floss-weekly/283

 
### 1) ~2:02 What is Nginx
Nginx is a web server which can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache.

### 2) ~3:22 What percentage of the world’s websites are served with Nginx?
14-15% of the world's website are served with Nginx.

### 3) ~4:57 What was the challenge that lead to the creation of Nginx?
C10K, 10K concurrent users on a server. Challenge was could someone build something that could serve that.

### 4) ~5:33 What is the main architectural difference between Nginx and Apache webservers?
Nginx is event driven and has a few processes whereas apache has thread for every connection.

### 5) ~8:32 What are some of the main use cases for Nginx?
One can run it as a proxy into an application server, can use it as a proxy to another web server, as an edge cache, a load balancer, SMTP proxy, SSL termination where it does acceleration and termination and a lot more.  

### 6) ~11:00 When did Sarah get involved in Nginx?
2006

### 7) ~12:56 Where did Nginx come from?
Russia

### 8) ~17:41 What is “caching” in relation to websites?
Caching is nothing but pre generating some portion of the dynamic content and have it ready and available as pieces of content to be put together at the frontend with the client so all this loading works into a space where it is pre digested or pre composed in a prefered model. Caching is a way to do that work and deliver the assets much faster after the first load.

### 9) ~19:45 What is “proxying” in relation to websites?
Proxying can do some of the same sort of things not as much repeating things up. It acts as a gateway between you and the internet. It’s an intermediary server separating end users from the websites they browse. Proxy servers act as a firewall and web filter, provide shared network connections, and cache data to speed up common requests. 

### 10) ~29:36 What was the founder’s motive to opensource Nginx?
The founder is a person who want to put something good forward. He wanted to develop a product which is very useful and the intent was to have it opensource from the beginning whic he did in Oct 2004.

### 11) ~34:00 What is the difference in the opensource Nginx and the commercial version? (Freemium?)
Nginx plus has features that are more focussed on enterprise and the users who are willing to pay for support and services primarily and also features that simply the enterprise systems for eg. syslog. Though suslog is not the efficient way to log to disk and they wanted to keep the opensourcse version pristine, fastest possible, best driven non blocking server where as syslog is if the business requirement asks for it they might give it though they don't consider it as a good practise because it could potentially slow the server. 

### 12) ~40:19 Are there Linux Distro packages for Nginx?
Yes. They distribute packes for RedHat and Centos ecosystem. Also distribute Debian Ubuntu package.

### 13) ~53:10 Can Apache and Nginx co-exist or is it a winner take all?
Yes, Apache and Nginx co-exist. Nginx does few things incredibly fast and apache can do everything. Instead of sending everything to apache and loading it down with some of the more highly concurrent contents use apache for the hard things like CTI rendering. 