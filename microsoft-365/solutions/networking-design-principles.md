---
title: Networking up (to the cloud)—One architect’s viewpoint
description: Learn how to optimize your network for cloud connectivity by avoiding the most common pitfalls.
ms.author: bcarter
author: brendacarter
manager: bcarter
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-identity-device-management
- M365-security-compliance
ms.custom: 
f1.keywords: NOCSH
---

# Networking up (to the cloud)—One architect’s viewpoint

In this article, [Ed Fisher](https://www.linkedin.com/in/edfisher/), Security & Compliance Architect at Microsoft, describes how to optimize your network for cloud connectivity by avoiding the most common pitfalls. 

## About the author

![Ed Fisher photo](../media/solutions-architecture-center/ed-fisher-networking.jpg) 

I'm currently a Principal Technical Specialist in the South East region focusing on Security & Compliance. I've worked with customers moving to Office 365 for the past 10 years. I’ve worked with smaller shops with a handful of locations to government agencies and enterprises with millions of users distributed around the world, and many other customers in between, with the majority having tens of thousands of users, multiple locations in various parts of the world, the need for a higher degree of security, and a multitude of compliance requirements. I've helped hundreds of enterprises and millions of users move to the cloud safely and securely.

With a background over the past 25 years that includes security, infrastructure, and network engineering, and having moved two of my previous employers to Office 365 before joining Microsoft, I’ve been on your side of the table plenty of times, and do remember what that’s like. While no two customers are ever the same, most have similar needs, and when consuming a standardized service such as any SaaS or PaaS platform, the best approaches tend to be the same.

## It’s not the network—it’s how you’re (mis)using it!

No matter how many times it happens, it never fails to amaze me how *creative* security teams and networking teams try to get with how they think they should connect to Microsoft cloud services. There’s always some security policy, compliance standard, or better way they insist on using, without being willing to engage in a conversation about what it is they're trying to accomplish, or *how* they're better, easier, more cost-effective, and more performant ways of doing so.

When this sort of thing is escalated to me, I’m usually willing to take the challenge and walk them through the how's and the why's and get them to where they need to be. But if I'm being completely frank, I have to share that sometimes I want to just let them do what they will, and come back to say I told you so when they finally concede it doesn’t work. I may want to do that sometimes, but I *don’t*. What I do is try to explain all of what I'm going to include in this post. Regardless of your role, if your organization wants to use Microsoft cloud services, there’s probably some wisdom in what follows that can help you out.

## Guiding principles

Let’s start with some ground rules around what we’re doing here. We are discussing how to securely connect to cloud services to ensure the minimum complexity, and the maximum performance, while maintaining real security. None of what follows is counter to any of that, even if you, or your customer, won’t get to use your favorite proxy server for everything.

- **Just because you can, doesn’t mean you should**: Or to paraphrase Dr. Ian Malcolm from the Jurassic Park movie “...Yeah, yeah, but your security team was so preoccupied with whether or not they could that they didn't stop to think if they should.”
- **Security does not mean complexity**: You are not more secure just because you spend more money, route through more devices, or click more buttons.
- **Office 365 is accessed over the Internet**: But that’s not the same thing as Office 365 is the Internet. It’s a SaaS service managed by Microsoft and administered by you. Unlike websites you visit on the Internet, you actually do get to peek behind the curtain, and can apply the controls you need to meet your policies and your compliance standards, as long as you understand that while you can meet your objectives, you may just have to do them in a different way.
- **Chokepoints are bad, localized breakouts are good**: Everybody always wants to backhaul all their Internet traffic for all their users to some central point, usually so they can monitor it and enforce policy, but often because it’s either cheaper than provisioning Internet access in all their locations, or it’s just how they do it. But those chokepoints are exactly that…points where traffic chokes. There’s nothing wrong with preventing your users from browsing to Instagram or streaming cat videos, but don’t treat your mission-critical business application traffic the same way.
- **If DNS ain’t happy, ain’t nothing happy**: The best designed network can be hamstrung by poor DNS, whether that is by recursing requests to servers in other areas of the world or using your ISP’s DNS servers or other public DNS servers that cache DNS resolution information.
- **Just because that’s how you used to do it, doesn’t mean that’s how you should do it now**: Technology changes constantly and Office 365 is no exception. Applying security measures that were developed and deployed for on-premises services or to control web surfing aren’t going to provide the same level of security assurance, and can have a significant negative impact on performance.
- **Office 365 was built to be accessed over the Internet**: That’s it in a nutshell. No matter what you want to do between your users and your edge, the traffic still goes over the Internet once it leaves your network and before it gets onto ours. Even if you are using Azure ExpressRoute to route some latency sensitive traffic from your network directly to ours, Internet connectivity is absolutely required. Accept it. Don’t overthink it.

## Where bad choices are often made

While there are plenty of places where bad decisions are made in the name of security, these are the ones I encounter most often with customers. Many customer conversations involve all of these at once.

### Insufficient resources at the edge

Very few customers are deploying greenfield environments, and they have years of experience with how their users work and what their Internet egress is like. Whether customers have proxy servers or allow direct access and simply NAT outbound traffic, they’ve been doing it for years and don’t consider just how much more they are going to start pumping through their edge as they move traditionally internal applications out to the cloud.

Bandwidth is always a concern, but NAT devices may not have enough horsepower to handle the increased load and may start prematurely closing connections to free up resources. Most of the client software that connects to Office 365 expects persistent connections and a user fully utilizing Office 365 may have 32 or more concurrent connections. If the NAT device is dropping them prematurely, those apps may become unresponsive as they try to use the connections that are no longer there. When they give up and try to establish new connections, they put even more load on your network gear.

### Localized breakout

Everything else in this list comes down to one thing—getting off your network and onto ours as quickly as possible. Backhauling your users’ traffic to a central egress point, especially when that egress point is in another region than your users are in, introduces unnecessary latency and impacts both the client experience and download speeds. Microsoft has points of presence throughout the world with front ends for all our services and peering established with practically every major ISP, so routing your users’ traffic out *locally* ensures it gets into our network quickly with minimum latency.

### DNS resolution traffic should follow the Internet egress path

Of course, for a client to find any endpoint, it needs to use DNS. Microsoft’s DNS servers evaluate the source of DNS requests to ensure we return the response that is, in Internet terms, closest to the source of the request. Make sure your DNS is configured so that name resolution requests go out the same path as your users’ traffic, lest you give them local egress but to an endpoint in another region. That means letting local DNS servers “go to root” rather than forwarding to DNS servers in remote data centers. And watch out for public and private DNS services, which may cache results from one part of the world and serve them to requests from other parts of the world.

### To proxy or not to proxy, that is the question

One of the first things to consider is whether to proxy users’ connections to Office 365. That one’s easy; do not proxy. Office 365 is accessed over the Internet, but it is not THE Internet. It’s an extension of your core services and should be treated as such. Anything you might want a proxy to do, such as DLP or antimalware or content inspection, is already available to you in the service, and can be used at scale and without needing to crack TLS-encrypted connections. But if you really want to proxy traffic that you cannot otherwise control, pay attention to our guidance at [https://aka.ms/pnc](../enterprise/microsoft-365-network-connectivity-principles.md) and the categories of traffic at [https://aka.ms/ipaddrs](../enterprise/urls-and-ip-address-ranges.md). We have three categories of traffic for Office 365. Optimize and Allow really should go direct and bypass your proxy. Default can be proxied. The details are in those docs...read them.

Most customers who insist on using a proxy, when they actually look at what they are doing, come to realize that when the client makes an HTTP CONNECT request to the proxy, the proxy is now just an expensive extra router. The protocols in use such as MAPI and RTC are not even protocols that web proxies understand, so even with TLS cracking you’re not really getting any extra security. You *are* getting extra latency. See [https://aka.ms/pnc](../enterprise/microsoft-365-network-connectivity-principles.md) for more on this, including the Optimize, Allow, and Default categories for Microsoft 365 traffic.

Finally, consider the overall impact to the proxy and its corresponding response to deal with that impact. As more and more connections are being made through the proxy, it may decrease the TCP Scale Factor so that it doesn’t have to buffer so much traffic. I’ve seen customers where their proxies were so overloaded that they were using a Scale Factor of 0. Since Scale Factor is an exponential value and we like to use 8, each reduction in the Scale Factor value is a huge negative impact to throughput.

TLS Inspection means SECURITY! But not really! Many customers with proxies want to use them to inspect all traffic, and that means TLS “break and inspect.” When you do that for a website accessed over HTTPS (privacy concerns notwithstanding) your proxy may have to do that for 10 or even 20 concurrent streams for a few hundred milliseconds. If there’s a large download or maybe a video involved, one or more of those connections may last much longer, but on the whole, most of those connections establish, transfer, and close very quickly. Doing break and inspect means the proxy must do double the work. For each connection from the client to the proxy, the proxy must also make a separate connection back to the endpoint. So, 1 becomes 2, 2 becomes 4, 32 becomes 64...see where I am going? You probably sized your proxy solution just fine for typical web surfing, but when you try to do the same thing for client connections to Office 365, the number of concurrent, long-lived connections may be orders of magnitude greater than what you sized for.

### Streaming isn’t important, except that it *is*

The only services in Office 365 that use UDP are Skype (soon to be retired) and Microsoft Teams. Teams uses UDP for streaming traffic including audio, video, and presentation sharing. Streaming traffic is live, such as when you're having an online meeting with voice, video, and presenting decks or performing demos. These use UDP because if packets are dropped, or arrive out of order, it’s practically unnoticeable by the user and the stream can just keep going.

When you don’t permit outbound UDP traffic from clients to the service, they can fall back to using TCP. But if a TCP packet is dropped, *everything stops* until the Retransmission Timeout (RTO) expires and the missing packet can be retransmitted. If a packet arrives out of order, everything stops until the other packets arrive and can be reassembled in order. Both lead to perceptible glitches in the audio (remember Max Headroom?) and video (did you click something...oh, there it is) and lead to poor performance and a bad user experience. And remember what I put up above about proxies? When you force a Teams client to use a proxy, you force it to use TCP. So now you’re causing negative performance impacts twice.

### Split tunneling may seem scary

But it isn’t. All connections to Office 365 are over TLS. We have been offering TLS 1.2 for quite a while now and will be disabling older versions soon because legacy clients still use them and that’s a risk.

Forcing a TLS connection, or 32 of them, to go over a VPN before they then go to the service doesn't add security. It does add latency and reduces overall throughput. In some VPN solutions, it even forces UDP to tunnel through TCP, which again will have a very negative impact on streaming traffic. And, unless you are doing TLS inspection, there's no upside, all downside. A very common theme among customers, now that most of their workforce is remote, is that they're seeing significant bandwidth and performance impacts from making all their users connect using a VPN, instead of configuring split tunneling for access to [Optimize category Office 365 endpoints](../enterprise/microsoft-365-network-connectivity-principles.md#new-office-365-endpoint-categories).

It’s an easy fix to do split tunneling and it’s one you should do. For more, make sure you review [Optimize Office 365 connectivity for remote users using VPN split tunneling](../enterprise/microsoft-365-vpn-split-tunnel.md).

## The sins of the past

Many times, the reason bad choices are made comes from a combination of (1) not knowing how the service works, (2) trying to adhere to company policies that were written before adopting the cloud, and (3) security teams who may not be easily convinced that there’s more than one way to accomplish their goals. Hopefully the above, and the links below, will help with the first. Executive sponsorship may be required to get past the second. Addressing the security policies’ goals, rather than their methods, helps with the third. From conditional access to content moderation, DLP to information protection, endpoint validation to zero-day threats—any end goal a reasonable security policy may have can be accomplished with what is available in Office 365, and without any dependency upon on-premises network gear, forced VPN tunnels, and TLS break and inspect.

Other times, hardware that was sized and purchased before the organization started to move to the cloud simply cannot be scaled up to handle the new traffic patterns and loads. If you truly must route all traffic through a single egress point, and/or proxy it, be prepared to upgrade network equipment and bandwidth accordingly. Carefully monitor utilization on both, as the experience won’t diminish slowly as more users onboard. Everything will be fine until the tipping point is reached, then everyone suffers.

## Exceptions to the rules

If your organization requires [tenant restrictions](/azure/active-directory/manage-apps/tenant-restrictions), you’ll need to use a proxy with TLS break and inspect to  force some traffic through the proxy, but you don’t have to force all traffic through it.  It’s not an all or nothing proposition, so pay attention to what does need to be modified by the proxy.

If you're going to permit split tunneling but also use a proxy for general web traffic, make sure your PAC file defines what must go direct as well as how you define interesting traffic for what goes through the VPN tunnel. We offer sample PAC files at [https://aka.ms/ipaddrs](../enterprise/urls-and-ip-address-ranges.md) that will make this easier to manage.

## Conclusion

Tens of thousands of organizations, including almost all the Fortune 500, use Office 365 everyday for their mission critical functions. They do so securely, and they do so over the Internet.

No matter what security goals you have in play, there are ways to accomplish them that don’t require VPN connections, proxy servers, TLS break and inspect, or centralized Internet egress to get your users’ traffic off your network and on to ours as quickly as you can, which provides the best performance, whether your network is the company headquarters, a remote office, or that user working at home. Our guidance is based on how the Office 365 services are built and to ensure a secure and performant user experience.

## Further reading

[The Office 365 Network Connectivity Principles](../enterprise/microsoft-365-network-connectivity-principles.md)

[Office 365 URLs and IP address ranges](../enterprise/urls-and-ip-address-ranges.md)

[Managing Office 365 endpoints](../enterprise/managing-office-365-endpoints.md)

[Office 365 IP Address and URL Web service](../enterprise/microsoft-365-ip-web-service.md)

[Assessing Office 365 network connectivity](../enterprise/assessing-network-connectivity.md)

[Office 365 network and performance tuning](../enterprise/network-planning-and-performance.md)

[Assessing Office 365 network connectivity](../enterprise/assessing-network-connectivity.md)

[Office 365 performance tuning using baselines and performance history](../enterprise/performance-tuning-using-baselines-and-history.md)

[Performance troubleshooting plan for Office 365](../enterprise/performance-troubleshooting-plan.md)

[Content Delivery Networks](../enterprise/content-delivery-networks.md)

[Microsoft 365 connectivity test](https://connectivity.office.com/)

[How Microsoft builds its fast and reliable global network](https://azure.microsoft.com/blog/how-microsoft-builds-its-fast-and-reliable-global-network/)

[Office 365 Networking blog](https://techcommunity.microsoft.com/t5/office-365-networking/bd-p/Office365Networking)

[Office 365 connectivity for remote users using VPN split tunneling](../enterprise/microsoft-365-vpn-split-tunnel.md)