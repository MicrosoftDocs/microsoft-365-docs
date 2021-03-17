---
title: "Network and migration planning for Office 365"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 6/29/2018
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- BCS160
ms.assetid: f5ee6c33-bcd7-4b0b-b0f8-dc1d9fb8d132
description: This article contains links to information about network planning, testing, and migration to Office 365.
---

# Network and migration planning for Office 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

This article contains links to information about network planning and testing, and migration to Office 365.
  
Before you deploy for the first time or migrate to Office 365, you can use the information in these topics to estimate the bandwidth you need and then to test and verify that you have enough bandwidth to deploy or migrate to Office 365.

This article is part of [Network planning and performance tuning for Office 365](./network-planning-and-performance.md).

For the steps to optimize your network for Microsoft 365 and other Microsoft cloud platforms and services, see the [Microsoft Cloud Networking for Enterprise Architects](../solutions/cloud-architecture-models.md) poster.
   
## Estimate network bandwidth requirements
<a name="EstimateBandwidthRequirements"> </a>

Using Office 365 may increase the utilization of your organization's internet circuit. It's important to determine if the amount of bandwidth currently available is enough to handle the estimated increase once Office 365 is fully deployed while leaving at least 20% capacity to handle the busiest of days.
  
To estimate the bandwidth, use the following steps:
  
1. Assess the number of clients that will use each Internet egress. Let our multi-terabit network handle as much of the connection as possible. 
    
2. Determine which Office 365 services and features will be available for clients to use. You will likely have groups of people with different services or usage profiles.
    
3. Measure the network use for a pilot group of clients. Ensure the pilot clients are representative of the different profiles of people in the organization as well as the different geographic locations. You can cross-check your results against our old calculators for [Exchange](https://techcommunity.microsoft.com/t5/exchange-team-blog/announcing-the-exchange-client-network-bandwidth-calculator-beta/ba-p/601744) and [Microsoft Teams](/microsoftteams/prepare-network) or the [case study](https://www.microsoft.com/itshowcase/Article/Content/631/Optimizing-network-performance-for-Microsoft-Office-365) we performed on our own network. 
    
4. Use the measurements from the pilot group to extrapolate the entire organization's needs and re-test to validate the estimations before making any changes to your network.
    
## Test your existing network
<a name="calculators"> </a>

 **Network tools.** Test and validate your Internet bandwidth to determine download, upload, and latency constraints. These tools will help you determine the capabilities of your network for migration as well as after you're fully deployed. 
    
- [Microsoft Remote Connectivity Analyzer](https://go.microsoft.com/fwlink/p/?LinkId=517243): Tests connectivity in your Exchange Online environment.
    
- Use the [Microsoft Support and Recovery Assistant for Office 365](https://diagnostics.office.com/#/Download?env=SOC) to fix Outlook and Office 365 problems. 
    
## Best practices for network planning and improving migration performance for Office 365
<a name="BestPractices"> </a>

Dig a little deeper into these best practices for more information about improving your Office 365 experience.
  
1. Want to get started helping your users right away? See [Best practices for using Office 365 on a slow network](https://support.office.com/article/fd16c8d2-4799-4c39-8fd7-045f06640166) for tips on using Office 365, including SharePoint Online, Exchange Online, and Lync Online, when your network just isn't cooperating. This article links out to loads of content on TechNet and Support.office.com for optimizing your Office 365 experience and includes information on easy ways to customize your web pages and how to set your Internet Explorer settings for the best Office 365 experience. 
    
2. Read [Office 365 Network Connectivity Principles](./microsoft-365-network-connectivity-principles.md) to understand the connectivity principles for securely managing Office 365 traffic and getting the best possible performance. This article will help you understand the most recent guidance for securely optimizing Office 365 network connectivity. 
    
3. Improve mail migration performance by carefully managing the schedule for Windows Updates. You can update your client computers in batches and ensure that all client computers are updated before migrating to Office 365 to regulate the use of network bandwidth. For more information, see [Manually update and configure desktops for Office 365 for the latest updates](https://support.microsoft.com/gp/office-2013-365-update).
    
4. Office 365 network traffic performs best when it's treated as a trusted Internet service and allowed to bypass much of the traditional filtering and scanning that some organizations place on network traffic to untrusted Internet services. This typically includes removing outbound processing such as proxy user authentication and packet inspection, as well as ensuring local egress to the Internet with the proper Network Address Translation (NAT) and enough bandwidth capacity to handle the increased network requests. Refer to [Managing Office 365 endpoints](https://support.office.com/article/99cab9d4-ef59-4207-9f2b-3728eb46bf9a)for additional guidance on configuring your network to handle Office 365 as a trusted Internet service on your network.
    
1. Ensure [Managing Office 365 endpoints](https://support.office.com/article/99cab9d4-ef59-4207-9f2b-3728eb46bf9a). The additional traffic going to Office 365 results in an increase of outbound proxy connections as well as an increase in secure traffic over TLS/SSL.
    
2. If your outbound proxies require user authentication you may experience slow connectivity or a loss of functionality. Bypassing the authentication requirement for the Office 365 domains can reduce this overhead.
    
3. If you have a large number of shared calendars and mailboxes, you may see an increase in the number of connections from Outlook to Exchange. For instance, the Outlook client may open up to two additional connections for each shared calendar in use. In this situation, ensure that the egress proxy can handle the connections, or bypass the proxy for connections to Office 365 for Outlook.
    
4. Determine the maximum number of supported devices for a public IP address and how to load balance across multiple IP addresses. For more information, see [NAT support with Office 365](nat-support-with-microsoft-365.md).
    
5. If you're inspecting outbound connections from computers on your network, bypassing this filtering to the Office 365 domains will improve connectivity and performance. Additionally, bypassing outbound inspection often removes the need for a single Internet egress and enables local Internet egress for Office 365 destined network requests.
    
6. Some customers find internal network settings may affect performance. Settings such as maximum transmission unit (MTU) size, network auto-negotiation or auto-detection, and sub-optimal routes to the Internet are common places to look.
    
## Network planning reference for Office 365
<a name="NetReference"> </a>

These topics contain detailed Office 365 network reference information.
  
- [Managing Office 365 endpoints](https://support.office.com/article/99cab9d4-ef59-4207-9f2b-3728eb46bf9a)
    
- [Content delivery networks](content-delivery-networks.md)
    
- [External Domain Name System records for Office 365](external-domain-name-system-records.md)
    
- [IPv6 support in Office 365 services](ipv6-support.md)
    
- [Office 365 Network Connectivity Principles](./microsoft-365-network-connectivity-principles.md)
    
- [Office 365 video networking Frequently Asked Questions (FAQ)](office-365-video-networking-faq.md)
    
- [Plan for network devices that connect to Office 365 services](plan-for-network-devices.md)
    
- [Setup guides for Office 365 services](setup-guides-for-microsoft-365.md)
 
## See also

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)