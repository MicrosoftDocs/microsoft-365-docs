---
title: "Assessing Microsoft 365 network connectivity"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
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

# Assessing Microsoft 365 network connectivity

*This article applies to Microsoft 365 Enterprise.*

Microsoft 365 is designed to enable customers all over the world to connect to the service using an internet connection. As the service evolves, the security, performance, and reliability of Microsoft 365 are improved based on customers using the internet to establish a connection to the service.
  
Customers planning to use Microsoft 365 should assess their existing and forecasted internet connectivity needs as a part of the deployment project. For enterprise class deployments reliable and appropriately sized internet connectivity is a critical part of consuming Microsoft 365 features and scenarios.
  
Network evaluations can be performed by many different people and organizations depending on your size and preferences. The network scope of the assessment can also vary depending on where you're at in your deployment process. To help you get a better understanding of what it takes to perform a network assessment, we've produced a network assessment guide to help you understand the options available to you. This assessment will determine what steps and resources need to be added to the deployment project to enable you to successfully adopt Microsoft 365.
  
A comprehensive network assessment will provide possible solutions to networking design challenges along with implementation details. Some network assessments will show that optimal network connectivity to Microsoft 365 can be accommodated with minor configuration or design changes to the existing network and internet egress infrastructure.

Some assessments will indicate network connectivity to Microsoft 365 will require additional investments in networking components. For example, enterprise networks that span branch offices and multiple geographic regions may require investments in SD-WAN solutions or optimized routing infrastructure to support internet connectivity to Microsoft 365. Occasionally an assessment will indicate network connectivity to Microsoft 365 is influenced by regulation or performance requirements for scenarios such as [Skype for Business Online media quality](https://support.office.com/article/Media-Quality-and-Network-Connectivity-Performance-in-Skype-for-Business-Online-5fe3e01b-34cf-44e0-b897-b0b2a83f0917). These additional requirements may lead to investments in internet connectivity infrastructure, routing optimization, and specialized direct connectivity.

Some resources to help you assess your network:

- See [Microsoft 365 network connectivity overview](microsoft-365-networking-overview.md) for conceptual information about Microsoft 365 networking.
- See [Microsoft 365 Network Connectivity Principles](./microsoft-365-network-connectivity-principles.md) to understand the connectivity principles for securely managing Microsoft 365 traffic and getting the best possible performance.
- Sign up for [Microsoft FastTrack](https://www.microsoft.com/fasttrack) for guided assistance with Microsoft 365 planning, design and deployment.
- See the [Microsoft 365 connectivity test](assessing-network-connectivity.md#the-microsoft-365-connectivity-test) section below to run basic connectivity tests that provide specific guidance about networking connectivity improvements that can be made between a given user location and Microsoft 365.

> [!NOTE]
> Microsoft authorization is required to use ExpressRoute for Microsoft 365. Microsoft reviews every customer request and only authorizes ExpressRoute for Microsoft 365 usage when a customer's regulatory requirement mandates direct connectivity. If you have such requirements, please provide the text excerpt and web link to the regulation which you interpret to mean that direct connectivity is required in the [ExpressRoute for Microsoft 365 Request Form](https://aka.ms/O365ERReview) to begin a Microsoft review. Unauthorized subscriptions trying to create route filters for Microsoft 365 will receive an [error message](https://support.microsoft.com/kb/3181709).
  
Key points to consider when planning your network assessment for Microsoft 365:
  
- Microsoft 365 is a secure, reliable, high performance service that runs over the public internet. We continue to invest to enhance these aspects of the service. All Microsoft 365 services are available via internet connectivity.

- We are continually optimizing core aspects of Microsoft 365 such as availability, global reach, and performance for internet based connectivity. For example, many Microsoft 365 services leverage an expanding set of internet facing edge nodes. This edge network offers the best proximity and performance to connections coming over the internet.

- When considering using Microsoft 365 for any of the included services such as Teams or Skype for Business Online voice, video, or meeting capabilities, customers should complete an end to end network assessment and meet connectivity requirements using [Microsoft FastTrack](https://www.microsoft.com/fasttrack).

If you're evaluating Microsoft 365 and aren't sure where to begin with your network assessment or have found network design challenges that you need assistance to overcome, please work with your Microsoft account team.

## The Microsoft 365 connectivity test

The [Microsoft 365 connectivity test](https://aka.ms/netonboard) is a proof of concept (POC) network assessment tool that runs basic connectivity tests against your Microsoft 365 tenant and makes specific network design recommendations for optimal Microsoft 365 performance. The tool highlights common large enterprise network perimeter design choices which are useful for Internet web browsing but impact the performance of large SaaS applications such as Microsoft 365.

The Network Onboarding tool does the following:

- Detects your location, or you can specify a location to test
- Checks the location of your network egress
- Tests the network path to the nearest Microsoft 365 service front door
- Provides advanced tests using a downloadable Windows 10 application that makes perimeter network design recommendations related to proxy servers, firewalls, and DNS. The tool also runs performance tests for Skype for Business Online, Microsoft Teams, SharePoint Online and Exchange Online.

The tool has two components: a browser-based UI that collects basic connectivity information, and a downloadable Windows 10 application that runs advanced tests and returns additional assessment data.

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
  - SharePoint Online DNS server
  - Proxy server identification
  - Media connectivity check
  - Media quality packet loss
  - Media quality latency
  - Media quality jitter
  - Media quality packet reorder
- Connectivity tests to multiple feature-specific endpoints
- Network path diagnostics that include tracert and latency data for the Exchange Online, SharePoint Online and Teams services

You can read about the Microsoft 365 connectivity test and provide feedback at the [Updated Microsoft 365 connectivity test POC with new network design recommendations](https://techcommunity.microsoft.com/t5/Office-365-Networking/Updated-Office-365-Network-Onboarding-Tool-POC-with-new-network/m-p/711130#M130) blog post. Information about future updates to this tool and other Microsoft 365 networking updates will be posted to the [Microsoft 365 Networking](https://techcommunity.microsoft.com/t5/Office-365-Networking/bd-p/Office365Networking) blog.
  
Here's a short link you can use to come back: [https://aka.ms/o365networkconnectivity.](./microsoft-365-network-connectivity-principles.md)
  
## Related topics

[Microsoft 365 Network Connectivity Overview](microsoft-365-networking-overview.md)

[Microsoft 365 Network Connectivity Principles](./microsoft-365-network-connectivity-principles.md)

[Managing Microsoft 365 endpoints](managing-office-365-endpoints.md)

[Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md)

[Microsoft 365 IP Address and URL Web service](microsoft-365-ip-web-service.md)

[Microsoft 365 network and performance tuning](network-planning-and-performance.md)

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)
