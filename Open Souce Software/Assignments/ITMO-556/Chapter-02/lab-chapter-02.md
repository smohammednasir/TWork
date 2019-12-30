# Lab Questions - Chapter 02

## Activity 1

Most of the popular and functional pieces of software you use every day involve Free and Opensource. Choose 2 case studies from https://highscalability.com and write a review of the company’s architecture based on these issues:
 
You can find them at https://highscalability.com/blog/category/example or look on the High Scalability website on the lower right hand side for the “All Time Favorites” header to find some of the more popular services. Its best to find a company that you use or support. 
Answer these questions (not all of the Answers are in each case study!) 

## Case Study 1: Pinterest

## 1. What market does that company serve? (What do they do?) And have they always served that market?
Pinterest — “the world’s catalog of ideas” is a social network that allows users to visually share, and discover new interests by posting (known as 'pinning' on Pinterest) images or videos to their own or others' boards (i.e. a collection of 'pins,' usually with a common theme) and browsing what other users have pinned. Using a visual orientation, the social network is very much focused on the concept of a person's lifestyle, allowing you to share your tastes and interests with others and discovering those of likeminded people. The social network's goal is to "connect everyone in the world through the 'things' they find interesting." They have been doing the same since the beginning.

## 2. What Operating System(s) are used? 
Pinterest is built on open source, according to Jon Parise, technical architecture lead and open source program lead at the company. Linux is the Operating System used.
	
## 3. What programming languages/frameworks are used? 
Python + heavily-modified Django at the application layer.

Tornado and (very selectively) node.js as web-servers.  

Memcached and membase / redis for object- and logical-caching, respectively.  
RabbitMQ as a message queue.  

Nginx, HAproxy and Varnish for static-delivery and load-balancing.

Persistent data storage using MySQL.  

MrJob on EMR for map-reduce.

Git.

  ![Pinterest Technology Stack](/Images/Chapter-02/PinterestTechnologyStack.png)
 

## 4. What storage and what database technologies are used? 
Persistent data storage using __MySQL__. Redis Instances and Memcache instances are also used.

http://highscalability.com/blog/2013/4/15/scaling-pinterest-from-0-to-10s-of-billions-of-page-views-a.html

## 5. What Opensource license is the technology stack licensed under? 
Linux foundation -- GPL

https://www.linuxfoundation.org/blog/2017/04/the-companies-that-support-linux-and-open-source-pinterest/

## 6. What is the current stock price and what was the IPO of the company? (if traded publicly.) 
__35.20 USD__  is the current stock price.  __$19__ a share was the IPO of Pinterest.

## 7. What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack? 
NA

## 8. What can you learn from this article relating to technology and infrastructure? 
Pinterest being built on open source is a perfect example on how to use and contribute to open source by open sourcing the technologies that they build as both way to give back to communities and it’s a right thing to do.
As they have grown and are better resourced, They are now a better contributor to open source by designing their software to be modular, reusable and well-documented from the beginning.
Almost all machine learning efforts at Pinterest rely on open source components to some extent. The data processing pipelines run on Hadoop, Cascading and Scalding. They use TensorFlow, Caffe and XGBoost to train their models, and R and Python are widely used for analyzing the results produced.
The Visual Search team uses open source libraries for deep learning and computer vision. Caffe, TensorFlow and OpenCV are critical building blocks at Pinterest and allow them to actively publish their algorithmic and implementation findings for building performant visual search systems.
Lastly, the video and image platform leverages libraries like FFmpeg, GraphicsMagick, and ExoPlayer to power efficient media processing and playback.
They also strive to be additive to the greater open source community by filing bug reports, contributing patches, publishing papers, hosting tech talks and meetups, and speaking at conferences. Those are important things everyone can do, both as individuals and as employees of companies that benefit from open source.


## Case Study 2: Alibaba

## 1. What market does that company serve? (What do they do?) And have they always served that market? 
Alibaba Group is a multinational company specializing in e-commerce, retail, internet and technology. Company provides consumer to consumer, business to business sales services via web portals, as well as electronic payment services, shopping search engines and cloud computing services. It owns and operates a diverse array of businesses around the world in numerous sectors, and is named as one of the world's most admired companies by Fortune.

## 2. What Operating System(s) are used? 
AliOS (formerly Yun OS and Aliyun OS) is a Linux distribution developed by Alibaba Cloud.

## 3. What programming languages/frameworks are used? 
Taobao is a programming language developed by Alibaba Group, and it is based on PHP. The language is available in Chines for the time being. It is mainly used for proxying contents that are static like CSS, static HTML pages, JS and likewise. This is the reason for its faster response time. Taobao platform is completely built on open source and home-grown software. 
Underlying software:
Develop Taobao JVM based open JDK
Maintain Taobao Linux kernel based on RedHat
KVM + Sheepdog for internal testing platform
Load balancing solution based on LVS
Network Mirror System based on open source software 
 
## 4. What storage and what database technologies are used? 
The database is most complicated part of Alibaba not just because the platform has to maintain one of the biggest database collection ever but also due to different technologies used. The company has used 6 technologies so far for database development. For the structured data formats, it uses OpenGraph protocol developed by Facebook. OpenGraph is inspired by RDFa and Alibaba previously used RDFa before shifting to OpenGraph.
Since it is mainly based on PHP, MYSQL is common inclusion in database technology. To handle such huge amount of data, it took the help of oracle and connected to it via Java and its framework Spring. Apache Hadoop software library is used for processing the distributed database system efficient. Furthermore, it speeds up the processing power and the data fetching and sending speed, Redis cache mechanism is used. Along with that levelDB is used for on-disk key-value storage. 

## 5. What Opensource license is the technology stack licensed under? 
GNU Public license     
RALEIGH, N.C. — November 7, 2018 —
Red Hat, Inc. (NYSE: RHT), the world's leading provider of open source solutions, today announced that Adobe, Alibaba, Amadeus, Ant Financial, Atlassian, Atos, AT&T, Bandwidth, Etsy, GitHub, Hitachi, NVIDIA, Oath, Renesas, Tencent, and Twitter have joined an ongoing industry effort to combat harsh tactics in open source license enforcement by adopting the GPL Cooperation Commitment. By making this commitment, these 16 corporate leaders are strengthening long-standing community norms of fairness, pragmatism, and predictability in open source license compliance. 
From the below link

https://www.redhat.com/en/about/press-releases/gpl-initiative-expands-16-additional-companies-joining-campaign-greater-predictability-open-source-licensing

## 6. What is the current stock price and what was the IPO of the company? (if traded publicly.) 
__165.90 USD__ current stock price and On 18 September 2014, Alibaba's IPO priced at __$68__.

## 7. What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack? 
NA

## 8. What can you learn from this article relating to technology and infrastructure? 
Alibaba’s vision is to make it easy to do business anywhere. So it has taken an asset light approach, i.e. no proprietary logistics to compete with 3PLs(3rd Party Logistics), no fulfillment to compete with resellers, nor private labels to compete with brands on its platform. This approach focuses on enabling all types of businesses, big and small, with infrastructure in the marketplace, payment, credit, finance, and big data, etc. So Alibaba’s Taobao and Tmall are all marketplaces as infrastructure for brands to sell anywhere. This way, not only does Alibaba have zero inventory and higher margin, but also it becomes preferable for any brand to go global with. And consumers follow where brands go. 
Alibaba’s success has a lot to do with the fact that it was the first to promote escrow payment system(i.e.Alipay) when there wasn’t much trust online in China. Alipay, a PayPal type of online payment service, now has about 427 million monthly active users and handled three times the amount handled by Paypal in 2014. 
Alibaba has quickened its investment in Alibaba Cloud, now the fastest growing unit of Alibaba, and is helping “Smart City” projects to ease traffic congestion and searching extraterrestrial lives. Alibaba also launched cloud partnership with Intel, Equinix, etc, to boost global expansion.


## Activity 2

Read this stream of three articles. Its a commentary on the Opensource license changes, a response from one of the CEOs, and then a reply to the reponse. 
1) http://dtrace.org/blogs/bmc/2018/12/14/open-source-confronts-its-midlife-crisis/ 
2) [https://medium.com/@jaykreps/a-quick-comment-on-bryan-cantrills-blog-on-licensing-8dccee41d9e6](https://medium.com/@jaykreps/aquick-comment-on-bryan-cantrills-blog-on-licensing-8dccee41d9e6 “Quick Comment on Licensing”) 
3) http://dtrace.org/blogs/bmc/2018/12/16/a-eula-in-foss-clothing/ Answer these questions with a few short sentences: 


## What is Bryan Cantrill’s initial main point in the first article? 
Bryan Cantrill in his article called ‘Open source confronts it’s midlife crisis’ speaks about the mid life crisis of open source where cloud service providers turn into a service offering without giving back to the communities upon which they implicitly depend. Also, at the same time open source has been unsympathetic to the proprietary software models. These cloud service providers are good at selling software as a service which is making some open source companies to deal with this crisis by restricting a way their open source software can be used. They want both the advantage of open source software – the community, the positivity, the energy, the adoption, the downloads and they also want to enjoy the fruits of proprietary software companies. If it were entirely transparent it would be fine but claiming to be entirely open source but twisting the license under which portions of that source are available. They are almost certainly asserting the rights that the copyright holder doesn’t in fact have.
	
## Do you agree with him, why or why not? Agree
Yes, I agree. To be clear, the underlying problem is not licensing but lack of knowledge in money making or running a business. They want open source to be its own business model and seeing that the cloud service providers have operable business model. These cloud service providers are benefitting from both open source and proprietary software which is not right when they claim themselves as open source and not contributing anything to the community back and tweaking the license.

## What is Jay Kreps response/contention in the second article? 
Jay Kreps trying to defend statements made by Bryan Cantrill in the first article called ‘Open source confronts it’s midlife crisis’. He says that Confluent is not trying to get cloud providers to license their proprietary features. They themselves run as a cloud service for their software. None of the companies among MongoDB, Elastic and CockroachDB believe in licensing IP to public cloud providers. He states Bryan remark as a misunderstanding. He continues saying that the analogy for the mid life crisis with open source is not accurate and the other open source users are unimpacted. He further adds the point regarding the Confluent’s license that we have to agree for it, and it has great community of users. According to him they have spent time to design and he is confident that the license is enforceable. He s hoping for a new standard to emerge in this area so that his new approach is warranted. He continues to say that there’s no such fact that open source companies are all failing. In fact, they are doing pretty well in the market and gives examples of MogoDB and Elastic. He says cloud providers are following their economy interest. He also agrees to Bryan’s point that companies that build around an ecosystem have a responsibility to that ecosystem beyond their narrow profit motive but he says this is not just limited to open source ecosystems but also applies to Facebook and AWS.  
	  
## Do you agree with him, why or why not? Disagree
I do not agree to what Jay Kreps response to Bryan’s article on Open source confronts it’s midlife crisis’ because here he talks about being a cloud service provider and at the same time says that the cloud service providers are following economy interest, where he adds that this behavior undermines the cycle of investment in some of the open source projects. He initially states that the limitations they include in the license is narrow and users are not impacted but the company wanting to offer is impacted. When he talks about the responsibility towards the ecosystem around which companies are built upon he adds to the point saying that it is not just limited to open source but also applies to Facebook and AWS as much. He is not clear in his statements hence I disagree. 
	 
## What is the main point of Bryan Cantrill’s rejoinder in the third article?
To the points stated by Jay Kreps about the copy right application to the physical books, software or digital books, Bryan writes that software has code specific to it, but digital books have nothing to do with software. He further adds the point that both the digital books and proprietary software creators don’t let you own the copy you paid for. It means that the software is licensed, not sold. Given the restrictions its not surprising that End User License Agreement is controversial also, legally dubious when they are forced to click through. On the one hand looks like opening of Open source licenses, but next two sentences are the difference that are the focus of the license. 
		
## Do you agree with him, why or why not? 
Yes, I strongly agree because this is nothing but play on words where confluent says they are open source and their license appears to be of open source, but the next sentence says that you don’t own a copy you paid for. You don’t own anything rather you just license a copy that is in fact owned by a software company which itself is wrong and not agreeable.
	 
## What is the solution in your opinion?
The folks who promote these attempts to increase the abilities of companies to monetize their open source software through limiting the rights of others can use any license they wish, as long as they don't call it Open Source would be my solution. Also, we should focus on how to create sustainable communities because it leads to be better software and it is better for business. The need to discuss on principles that can lead to sustainable communities to develop clear social contracts by free and open source software projects that communities can use and educate open source companies. These social contracts can go in to detail the expectations of the community around: contribution, monetary investment, leadership, codes of conduct, and more.
