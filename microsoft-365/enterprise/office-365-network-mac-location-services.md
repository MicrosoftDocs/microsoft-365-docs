---
title: "Microsoft 365 Network Connectivity Location Services"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/06/2021
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
ms.custom: admindeeplinkMAC
description: "Microsoft 365 Network Connectivity Location Services"
---

# Microsoft 365 Network Connectivity Location Services

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> now shows **Network Insights and performance recommendations**, which are live performance metrics that are collected from your Microsoft 365 tenant. These metrics can be viewed only by administrative users in your tenant. Organizational network connectivity is designed per office location through a network egress location to the Internet. Microsoft 365 client connectivity uses that route and then across the Internet to Microsoft service front door servers. Identifying office locations is key to being able to show these network insights.

## Location in network measurements

An organization's administrator can opt in for location to be included in the network measurements used by this feature. This enables auto-discovery of the city where each office is located. Location information is not precise and is obfuscated to 300m and categorized by city. At the time when location is captured on a Windows device, the device will show a **Location In-Use** icon in the tool tray. Administrators may want to notify users of the appearance of this icon. With this processing, the location is treated as the organization office location and not the location of a person or a device. Network insights can be shown at these discovered office location cities. If you want higher accuracy in the recommendations, you can enter specific office location addresses. The network insights will be aggregated to those locations instead. Office locations cannot be aggregated more closely than 300 meters.

## Location in the Microsoft 365 Admin Center

In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, Bing map controls are used to show where organization office locations are. The controls also show network perimeter topology for a selected office location. When an administrator adds specific address details for office locations, Bing Maps is also used to suggest addresses to make data entry easier.

## Terms of Use

Any content provided through Bing Maps, including geocodes, can only be used within the product through which the content is provided. Customer's use of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> Location Services feature, powered by Bing Maps, is governed by the _Bing Maps End-User Terms of Use_ available at <https://go.microsoft.com/?linkid=9710837> and the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?LinkID=248686).

This feature, provided through Bing Maps, is also supported by **TomTom**. More information about TomTom's products and services may be found at [https://www.tomtom.com/legal](https://www.tomtom.com/legal).

## Related topics

[Network connectivity in the Microsoft 365 Admin Center](office-365-network-mac-perf-overview.md)

[Microsoft 365 network performance insights](office-365-network-mac-perf-insights.md)

[Microsoft 365 network assessment](office-365-network-mac-perf-score.md)

[Microsoft 365 connectivity test in the Microsoft 365 admin center](office-365-network-mac-perf-onboarding-tool.md)
