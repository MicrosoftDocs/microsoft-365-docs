---
title: "Microsoft 365 global tenant performance optimization for China users"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 6/23/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- remotework
search.appverid: MET150
f1.keywords:
- NOCSH
description: "This article provides guidance for optimizing network performance for China users of global Microsoft 365 tenants."
---

# Microsoft 365 global tenant performance optimization for China users

>[!IMPORTANT]
>This guidance is specific to usage scenarios in which **enterprise Microsoft 365 users located in China** connect to a **global Microsoft 365 tenant**. This guidance does **not** apply to tenants in Office 365 operated by 21Vianet.

For enterprises with global Microsoft 365 tenants and a corporate presence in China, Microsoft 365 client performance for China-based users can be complicated by factors unique to China Telco's Internet architecture.

China ISPs have regulated offshore connections to the global public Internet that go through perimeter devices which are prone to high-levels of cross-border network congestion. This congestion creates packet loss and latency for all Internet traffic going into and out of China.

![Microsoft 365 traffic - unoptimized](../media/O365-networking/China-O365-unoptimized.png)

Packet loss and latency is detrimental to the performance of network services, especially services that require large data exchanges (such as large file transfers) or requiring near real-time performance (audio and video applications).

The goal of this topic is to provide best practices for mitigating the impact of China cross-border network congestion on Microsoft 365 services. This topic does not address other common last-mile performance issues such as issues of high packet latency due to complex routing within China carriers.

## Corporate network best practices

Many enterprises with global Microsoft 365 tenants and users in China have implemented private networks that carry corporate network traffic between China office locations and offshore locations around the world. These enterprises can leverage this network infrastructure to avoid cross-border network congestion and optimize their Microsoft 365 service performance in China.

>[!IMPORTANT]
>As with all private WAN implementations, you should always consult regulatory requirements for your country and/or region to ensure that your network configuration is in compliance.

As a first step, it is crucial that you follow our benchmark network guidance at [Network planning and performance tuning for Microsoft 365](https://aka.ms/tune). The primary goal should be to avoid accessing global Microsoft 365 services from the Internet in China if possible.

- Leverage your existing private network to carry Microsoft 365 network traffic between China office networks and offshore locations that egress on the public Internet outside China. Almost any location outside China will provide a clear benefit. Network administrators can further optimize by egressing in areas with low-latency interconnect with the [Microsoft global network](https://docs.microsoft.com/azure/networking/microsoft-global-network). Hong Kong, Japan, and South Korea are examples.
- Configure user devices to access the corporate network over a VPN connection to allow Microsoft 365 traffic to transit the corporate network's private offshore link. Ensure that VPN clients are either not configured to use split tunneling, or that user devices are configured to ignore split tunneling for Microsoft 365 traffic.
- Configure your network to route all Microsoft 365 traffic across your private offshore link. If you must minimize the volume of traffic on your private link, you can choose to only route endpoints in the **Optimize** category, and allow requests to **Allow** and **Default** endpoints to transit the Internet. This will improve performance and minimize bandwidth consumption by limiting optimized traffic to critical services that are most sensitive to high latency and packet loss.
- If possible, use UDP instead of TCP for live media streaming traffic, such as for Teams. UDP offers better live media streaming performance than TCP.

For information about how to selectively route Microsoft 365 traffic, see [Managing Office 365 endpoints](managing-office-365-endpoints.md). For a list of all worldwide Office 365 URLs and IP addresses, see [Office 365 URLs and IP address ranges](urls-and-ip-address-ranges.md).

![Microsoft 365 traffic - optimized](../media/O365-networking/China-O365-optimized.png)

## User best practices

Users in China who connect to global Microsoft 365 tenants from remote locations such as homes, coffee shops, hotels and branch offices with no connection to enterprise networks can experience poor network performance because traffic between their devices and Microsoft 365 must transit China's congested cross-border network circuits.

If cross-border private networks and/or VPN access into the corporate network are not an option, per-user performance issues can still be mitigated by training your China-based users to follow these best practices.

- Utilize rich Office clients that support caching (e.g. Outlook, Teams, OneDrive, etc.), and avoid web-based clients. Office client caching and offline access features can dramatically reduce the impact of network congestion and latency.
- If your Microsoft 365 tenant has been configured with the _Audio Conferencing_ feature, Teams users can join meetings via the public switched telephone network (PSTN). For more information, see [Audio Conferencing in Office 365](https://docs.microsoft.com/microsoftteams/audio-conferencing-in-office-365).
- If users experience network performance issues, they should report to their IT department for troubleshooting, and escalate to Microsoft support if trouble with Microsoft 365 services is suspected. Not all issues are caused by cross-border network performance.

Microsoft is continually working to improve the Microsoft 365 user experience and the performance of clients over the widest possible range of network architectures and characteristics. Visit the [Office 365 Tech Community](https://techcommunity.microsoft.com/t5/office-365/bd-p/Office365General) to start or join a conversation, find resources, and submit feature requests and suggestions.

## Related topics

[Network planning and performance tuning for Microsoft 365](https://aka.ms/tune)

[Microsoft 365 network connectivity principles](microsoft-365-network-connectivity-principles.md)

[Managing Office 365 endpoints](managing-office-365-endpoints.md)

[Office 365 URLs and IP address ranges](urls-and-ip-address-ranges.md)

[Microsoft global network](https://docs.microsoft.com/azure/networking/microsoft-global-network)
