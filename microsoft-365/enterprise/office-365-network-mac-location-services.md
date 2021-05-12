---
title: "Microsoft 365 Network Connectivity Location Services"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 09/21/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
description: "Microsoft 365 Network Connectivity Location Services (preview)"
---

# Microsoft 365 Network Connectivity Location Services

The Microsoft 365 Admin Center now shows **Network Insights and performance recommendations**, which are live performance metrics collected from your Microsoft 365 tenant and available to view only by administrative users in your tenant. Organizational network connectivity is designed per office location through a network egress location to the Internet. Microsoft 365 client connectivity uses that route and then across the Internet to Microsoft service front door servers. Identifying office locations is key to being able to show these network insights.

## Location in network measurements

An organization's administrator can opt in for location to be included in the network measurements used by this feature. This enables auto-discovery of the city where each office is located. Location information is not precise and is obfuscated to 300m and categorized by city. At the time when location is captured on a Windows device it will show a **Location In-Use** icon in the tool tray and administrators may want to notify users of this. With this processing, the location is treated as the organization office location and not the location of a person or a device. Network insights can be shown at these discovered office location cities. If greater accuracy of recommendations is desired, an administrator can enter specific office location addresses and the network insights will be aggregated to those instead. Office locations cannot be aggregated more closely than 300 meters.

## Location in the Microsoft 365 Admin Center

In the Microsoft 365 Admin Center, Bing map controls are used to show where organization office locations are and to show network perimeter topology for a selected office location. When an administrator adds specific address details for office locations, Bing Maps is also used to suggest addresses to make data entry easier.

## Terms of Use

Any content provided through Bing Maps, including geocodes, can only be used within the product through which the content is provided. Customer's use of the Microsoft 365 Admin Center Location Services feature, powered by Bing Maps, is governed by the _Bing Maps End User Terms of Use_ available at <https://go.microsoft.com/?linkid=9710837> and the _Microsoft Privacy Statement_ available at <https://go.microsoft.com/fwlink/?LinkID=248686.>

This feature, provided through Bing Maps, is also supported by **Here Technologies**. How Bing Maps leverages location services provided by Here Technologies is governed by the _Here Technologies Service Terms_ available at <https://legal.here.com/en-gb/terms>.

## Related topics

[Network connectivity in the Microsoft 365 Admin Center (preview)](office-365-network-mac-perf-overview.md)

[Microsoft 365 network performance insights (preview)](office-365-network-mac-perf-insights.md)

[Microsoft 365 network assessment (preview)](office-365-network-mac-perf-score.md)

[Microsoft 365 connectivity test in the M365 Admin Center (preview)](office-365-network-mac-perf-onboarding-tool.md)
