---
title: "Assessing Microsoft 365 network connectivity"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/15/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom: 
- Adm_O365
- seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: 64b420ef-0218-48f6-8a34-74bb27633b10
description: "Microsoft 365 is designed to enable customers all over the world to connect to the service using an internet connection. As the service evolves, the security, performance, and reliability of Microsoft 365 are improved based on customers using the internet to establish a connection to the service."
---

# Assessing Enterprise network last mile 

*This article applies to Enterprise customers connecting to Microsoft 365 services.*

![Diagram showing enterprise network last mile](media/assessing-network-connectivity/enterprisenetworklastmile3.jpg)

Microsoft 365 is designed to enable customers all over the world to connect to the service using an internet connection. As the service evolves, the security, performance, and reliability of Microsoft 365 are improved based on customers using the internet to establish a connection to the service.

Customers planning to use Microsoft 365 should assess their existing and forecasted internet connectivity needs as a part of the deployment project. For enterprise class deployments reliable and appropriately sized internet connectivity is a critical part of consuming Microsoft 365 features and scenarios.
  
Network evaluations can be performed by many different people and organizations depending on your size and preferences. The network scope of the assessment can also vary depending on where you're at in your deployment process. To help you get a better understanding of what it takes to perform a network assessment, we've produced a network assessment guide to help you understand the options available to you. This assessment determines what steps and resources need to be added to the deployment project to enable you to successfully adopt Microsoft 365.
  
A comprehensive network assessment provides possible solutions to networking design challenges along with implementation details. Some network assessments show that optimal network connectivity to Microsoft 365 can be accommodated with minor configuration or design changes to the existing network and internet egress infrastructure.

Some assessments indicate network connectivity to Microsoft 365 will require additional investments in networking components. For example, enterprise networks that span branch offices and multiple geographic regions might require investments in SD-WAN solutions or optimized routing infrastructure to support internet connectivity to Microsoft 365. Occasionally an assessment indicates network connectivity to Microsoft 365 is influenced by regulation or performance requirements for scenarios such as [Microsoft Teams media quality](/microsoftteams/prepare-network). These additional requirements might lead to investments in internet connectivity infrastructure, routing optimization, and specialized direct connectivity.

Some resources to help you assess your network:

- See [Microsoft 365 network connectivity overview](microsoft-365-networking-overview.md) for conceptual information about Microsoft 365 networking.
- See [Microsoft 365 Network Connectivity Principles](./microsoft-365-network-connectivity-principles.md) to understand the connectivity principles for securely managing Microsoft 365 traffic and getting the best possible performance.
- See [Network Connectivity in Microsoft 365 admin center](office-365-network-mac-perf-overview.md) for network health assessment, this is based on the optics received from your tenant users connecting to Microsoft 365 services. It includes assessment of the network path connecting your users to Microsoft 365, network providers used for the network path and insights detected for your locations. See our recent announcements for network connectivity in Microsoft 365 admin center in [this ](https://techcommunity.microsoft.com/discussions/deploymentnetworking/optimizing-customer-network-connectivity-for-microsoft-365-copilot/4374772)blog post. 
- See the [Microsoft 365 connectivity test](assessing-network-connectivity.md#the-microsoft-365-connectivity-test) section to run basic connectivity tests that provide specific guidance about networking connectivity improvements that can be made between a given user location and Microsoft 365. Use this option if you do not have Microsoft 365 apps installed and if you would like to test by using a web browser from a specific location. 
- Sign up for [Microsoft FastTrack](https://www.microsoft.com/fasttrack) for guided assistance with Microsoft 365 planning, design, and deployment.
> [!NOTE]
> Microsoft authorization is required to use ExpressRoute for Microsoft 365. Microsoft reviews every customer request and only authorizes ExpressRoute for Microsoft 365 usage when a customer's regulatory requirement mandates direct connectivity. If you have such requirements, please provide the text excerpt and web link to the regulation which you interpret to mean that direct connectivity is required in the [ExpressRoute for Microsoft 365 Request Form](https://aka.ms/O365ERReview) to begin a Microsoft review. Unauthorized subscriptions trying to create route filters for Microsoft 365 will receive an [error message](https://support.microsoft.com/kb/3181709).
  
Key points to consider when planning your network assessment for Microsoft 365:
  
- Microsoft 365 is a secure, reliable, high performance service that runs over the public internet. We continue to invest to enhance these aspects of the service. All Microsoft 365 services are available via internet connectivity.
- We're continually optimizing core aspects of Microsoft 365 such as availability, global reach, and performance for internet based connectivity. For example, many Microsoft 365 services leverage an expanding set of internet facing edge nodes. This edge network offers the best proximity and performance to connections coming over the internet.
- When considering using Microsoft 365 for any of the included services such as Teams voice, video, or meeting capabilities, customers should complete an end to end network assessment and meet connectivity requirements using [Microsoft FastTrack](https://www.microsoft.com/en-us/fasttrack). 
- Customers can also use the [Teams Network Assessment Tool](https://www.microsoft.com/en-us/download/details.aspx?id=103017&lc=1033&msockid=2dc7410f01b361853273545c009060bb) to assess network performance and connectivity specifically for Teams calls. 

If you're evaluating Microsoft 365 and aren't sure where to begin with your network assessment or have found network design challenges that you need assistance to overcome, work with your Microsoft account team.

## The Microsoft 365 connectivity test
The [Microsoft 365 connectivity test](https://aka.ms/netonboard) is a network assessment tool that runs basic connectivity tests against your Microsoft 365 tenant and makes specific network design recommendations for optimal Microsoft 365 performance. The tool highlights common large enterprise network perimeter design choices that are useful for Internet web browsing but impact the performance of large SaaS applications such as Microsoft 365.
The Network Onboarding tool does the following:
- Detects your location, or you can specify a location to test
- Checks the location of your network egress
- Tests the network path to the nearest Microsoft 365 service front door
- Provides advanced tests using a downloadable Windows 10 application that makes perimeter network design recommendations related to proxy servers, firewalls, and DNS. The tool also runs performance tests for Microsoft 365 Copilot, Microsoft Teams, SharePoint and Exchange Online.

The tool has two components: a browser-based UI that collects basic connectivity information, and a downloadable Windows application (exe) that runs advanced tests and returns additional assessment data.
The browser-based tool displays the following information:
- Results and impact tab
  - The location on a map of the in-use service front door
  - The location on a map of other service front doors that would provide optimal connectivity
  - Relative performance compared to other Microsoft 365 customers near you
- Details and solutions tab
  - User location by city and country/region
  - Network egress location by city, state and country/region
  - User to network egress distance
  - Microsoft 365 Exchange Online service front door location
  - Optimal Microsoft 365 Exchange Online service front door(s) for user location
  - Customers in your metro area with better performance

The Advanced Tests downloadable application provides the following additional information:
- Details and solutions tab (appended)
  - User's default gateway
  - Client DNS Server
  - Client DNS Recursive Resolver
  - Exchange Online DNS server
  - SharePoint DNS server
  - Proxy server identification
  - Media connectivity check
  - Media quality packet loss
  - Media quality latency
  - Media quality jitter
  - Media quality packet reorder
- Connectivity tests to multiple feature-specific endpoints
- Network path diagnostics that include tracert and latency data for the Exchange Online, SharePoint Online and Teams services

You can read about the Microsoft 365 connectivity test and provide feedback at this [Microsoft 365 Networking](https://techcommunity.microsoft.com/discussions/deploymentnetworking/announcing-microsoft-365-network-connectivity-test-for-microsoft-365-copilot-pub/4355778) blog post. 
Information about future updates to this tool and other Microsoft 365 networking updates will be posted to the [Microsoft 365 Networking](https://techcommunity.microsoft.com/t5/Office-365-Networking/bd-p/Office365Networking) blog.
Here's a short link you can use to come back: [https://aka.ms/pnc](https://aka.ms/pnc)

## Related articles
[Microsoft 365 Network Connectivity Overview](microsoft-365-networking-overview.md)
[Microsoft 365 Network Connectivity Principles](./microsoft-365-network-connectivity-principles.md)
[Managing Microsoft 365 endpoints](managing-office-365-endpoints.md)
[Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md)
[Microsoft 365 IP Address and URL Web service](microsoft-365-ip-web-service.md)
[Microsoft 365 network and performance tuning](network-planning-and-performance.md)
[Microsoft 365 Enterprise overview](microsoft-365-overview.md)
