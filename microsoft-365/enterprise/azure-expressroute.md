---
title: "Azure ExpressRoute for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/15/2024
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
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
ms.assetid: 6d2534a2-c19c-4a99-be5e-33a0cee5d3bd
description: Learn about Azure ExpressRoute with Microsoft 365 and plan the network implementation project if you're deploying with it.
---

# Azure ExpressRoute for Microsoft 365

*This article applies to Microsoft 365 Enterprise.*

Learn how Azure ExpressRoute is used with Microsoft 365 and how to plan the network implementation project that will be required if you meet specific requirements for deploying Azure ExpressRoute for use with Microsoft 365.

> [!NOTE]
> We **do not recommend** ExpressRoute for Microsoft 365 because it does not provide the best connectivity model for the service in most circumstances. As such, Microsoft authorization is required to use this connectivity model. We review every customer request and authorize ExpressRoute for Microsoft 365 only in the rare scenarios where it is necessary. Please read the [ExpressRoute for Microsoft 365 guide](https://aka.ms/erguide) for more information and following a comprehensive review of the document with your productivity, network, and security teams, work with your Microsoft account team to submit an exception if needed. Unauthorized subscriptions trying to create route filters for Microsoft 365 will receive an [error message](https://support.microsoft.com/kb/3181709).

## Planning Azure ExpressRoute for Microsoft 365

In addition to internet connectivity, you may choose to route a subset of your Microsoft 365 network traffic over Azure ExpressRoute.

Regardless of whether you have an existing MPLS WAN, ExpressRoute can be added to your network architecture in one of three ways; through a supported cloud exchange colocation provider, an Ethernet point-to-point connection provider, or through an MPLS connection provider. See what [providers are available in your region](/azure/expressroute/expressroute-locations). The direct ExpressRoute connection enables connectivity to the applications outlined in [What Microsoft 365 services are included?](#BKMK_WhatDoIGet). Network traffic for all other applications and services will continue to traverse the internet.

Consider the following high level network diagram, which shows a typical Microsoft 365 customer connecting to Microsoft's datacenters over the internet for access to all Microsoft applications such as Microsoft 365, Windows Update, and TechNet. Customers use a similar network path regardless of whether they're connecting from an on-premises network or from an independent internet connection.

![Microsoft 365 network connectivity.](../media/9d8bc622-4a38-4a3b-a0f3-68657712d460.png)

Now look at the updated diagram, which depicts a Microsoft 365 customer who uses both the internet and ExpressRoute to connect to Microsoft 365. Notice that some connections such as Public DNS and Content Delivery Network nodes still require the public internet connection. Also notice the customer's users who aren't located in their ExpressRoute connected building are connecting over the Internet.

![Microsoft 365 connectivity with ExpressRoute.](../media/251788c4-0937-4584-9b2c-df08e11611fc.png)

## What Microsoft 365 services are included?
<a name="BKMK_WhatDoIGet"> </a>

The following table lists the Microsoft 365 services that are supported over ExpressRoute. Review the [Microsoft 365 endpoints article](./urls-and-ip-address-ranges.md) to understand which network requests for these applications require internet connectivity.

| Applications included |
|:-----|
|Exchange Online<sup>1</sup> <br/> Exchange Online Protection<sup>1</sup> <br/> Delve<sup>1</sup> <br/> |
|Skype for Business Online<sup>1</sup> <br/> Microsoft Teams <sup>1</sup> <br/> |
|SharePoint<sup>1</sup> <br/> OneDrive<sup>1</sup> <br/> Project Online<sup>1</sup> <br/> |
|Portal and shared<sup>1</sup> <br/> Microsoft Entra ID <sup>1</sup> <br/> Microsoft Entra Connect<sup>1</sup> <br/> Office<sup>1</sup> <br/> |

<sup>1</sup> Each of these applications has internet connectivity requirements not supported over ExpressRoute. See the [Microsoft 365 endpoints article](./urls-and-ip-address-ranges.md) for more information.

The services that aren't included with ExpressRoute for Microsoft 365 are Microsoft 365 Apps for enterprise client downloads, On-premises Identity Provider Sign-In, and Microsoft 365 (operated by 21 Vianet) service in China.

> [!NOTE]
> Microsoft Defender for Endpoint does not provide integration with Azure ExpressRoute. While this does not stop customers from defining ExpressRoute rules that enable connectivity from a private network to Microsoft Defender for Endpoint cloud services, it is up to the customer to maintain rules as the service or cloud infrastructure evolves.
>
> Outlook for Android, iOS, and Mac do not support integration with Azure ExpressRoute and have a required IP range to function properly. As such, any rules that impact AutoDiscover services need to be maintained by the customer.

## Implementing ExpressRoute for Microsoft 365

Implementing ExpressRoute requires the involvement of network and application owners and requires careful planning to determine the new [network routing architecture](/azure/architecture/guide/networking/networking-start-here), bandwidth requirements, where security is implemented, high availability, and so on. To implement ExpressRoute, you'll need to:

1. Fully understand the need ExpressRoute satisfies in your Microsoft 365 connectivity planning. Understand what applications use the internet or ExpressRoute and fully plan your network capacity, security, and high availability needs in the context of using both the internet and ExpressRoute for Microsoft 365 traffic.

2. Determine the egress and peering locations for both internet and ExpressRoute traffic<sup>1</sup>.

3. Determine the capacity required on the internet and ExpressRoute connections.

4. Have a plan in place for implementing security and other standard perimeter controls<sup>1</sup>.

5. Have a valid Microsoft Azure account to subscribe to ExpressRoute.

6. Select a connectivity model and an [approved provider](/azure/expressroute/expressroute-locations). Keep in mind, customers can select multiple connectivity models or partners and the partner doesn't need to be the same as your existing network provider.

7. Validate deployment prior to directing traffic to ExpressRoute.

8. Optionally [implement QoS](https://support.office.com/article/ExpressRoute-and-QoS-in-Skype-for-Business-Online-20c654da-30ee-4e4f-a764-8b7d8844431d) and evaluate regional expansion.

<sup>1</sup> Important performance considerations. Decisions here can dramatically impact latency, which is a critical for applications such as Skype for Business.

For additional references, see [What is Azure ExpressRoute?](/azure/expressroute/expressroute-introduction)

To purchase ExpressRoute for Microsoft 365, you'll need to work with one or more [approved providers](/azure/expressroute/expressroute-locations) to provision the desired number and size circuits with an ExpressRoute Premium subscription. There are no additional licenses to purchase from Microsoft 365.

Here's a short link you can use to come back: [https://aka.ms/expressrouteoffice365](https://aka.ms/expressrouteoffice365)

Ready to sign up for [ExpressRoute for Microsoft 365](https://aka.ms/ert)?

## Related articles

[Assessing Microsoft 365 network connectivity](assessing-network-connectivity.md)

[Implementing ExpressRoute for Microsoft 365](implementing-expressroute.md)

[Media Quality and Network Connectivity Performance in Skype for Business Online](https://support.office.com/article/5fe3e01b-34cf-44e0-b897-b0b2a83f0917)

[Microsoft 365 performance tuning using baselines and performance history](performance-tuning-using-baselines-and-history.md)

[Performance troubleshooting plan for Microsoft 365](performance-troubleshooting-plan.md)

[Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md)

[Microsoft 365 network and performance tuning](network-planning-and-performance.md)

## See also

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)
