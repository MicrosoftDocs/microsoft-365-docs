---
title: "Microsoft 365 Network Insights"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/24/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
description: "Microsoft 365 Network Insights"
---

# Microsoft 365 Network Insights

Network insights are actionable issues that might affect user experience when using Microsoft 365 apps, we detect insights based on network optics received from Microsoft 365 apps for your tenant users. Insights are available to view only by administrative users in your tenant. Insights can be viewed from [Network Connectivity](https://admin.cloud.microsoft/#/networkperformance) in Microsoft 365 Admin Center. 

Insights are intended to help address issues at your network perimeters for your office locations. Each insight provides live details about a specific issue for each geographic location where users are accessing your tenant.

> [!TIP]
> Admins can now view Service health notifications in Microsoft 365 admin center for Network insights detected for their tenant. You may also receive an email if you opted to receive email notifications. The service health notification has a deep link that takes you directly to the detected network insight for your tenant. You will receive one notification per insight detected. 

These are network insights that might be shown for each office location:

#### 1. Your connectivity to critical Microsoft 365 domains is failing

We are detecting connectivity (HTTPS) failures to the following domains: `*.cloud.microsoft`, `*.static.microsoft`, `*.usercontent.microsoft`.

- 1a What does this insight mean?

  This means some or all your users can't connect to subdomains or hosts within the above-mentioned wild card domains.
  
- 1b What should I do?

  Check your network perimeter devices or proxy to ensure HTTPS connectivity is allowed to hosts in the wildcard domains `*.cloud.microsoft`, `*.static.microsoft`, `*.usercontent.microsoft` or any of their subdomains. 
  
#### 2. WebSocket connection to critical Microsoft 365 domains is failing

We are detecting WebSocket (WSS) connection failures to the domain: `*.cloud.microsoft`. This will result in Copilot not working correctly for your users.

- 2a What does this insight mean?

  This means some or all your users can't connect using WebSocket protocol to hosts that are part of the wildcard domain `*.cloud.microsoft` or its subdomains.
  
- 2b What should I do?

  Check your network perimeter devices or proxy to ensure WebSocket protocol is allowed for connections to hosts in the wildcard domain `*.cloud.microsoft` or its subdomains. 
  
#### 3. Network provider devices are affecting your network

There is one or more cloud proxy-like services that are affecting your connectivity to Microsoft 365 services. These services are causing higher latency and lower throughput for users in your network as compared to other users in your area.

- 3a What does this insight mean?

  For traffic coming from your tenant users, we detected devices in the network path that perform interception by decrypting the HTTPS traffic to Microsoft 365 services.
  
- 3b What should I do?

  We recommend you bypass Microsoft 365 domains from TLS decryption, traffic interception, deep packet inspection, and network packet and content filtering.
  
## Related articles

[Network connectivity in the Microsoft 365 Admin Center](office-365-network-mac-perf-overview.md)

[Microsoft 365 network assessment](office-365-network-mac-perf-score.md)

[Microsoft 365 network connectivity test tool](office-365-network-mac-perf-onboarding-tool.md)

[Microsoft 365 Network Connectivity Location Services](office-365-network-mac-location-services.md)
