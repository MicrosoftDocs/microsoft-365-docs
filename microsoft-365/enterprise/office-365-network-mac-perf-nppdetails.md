---
title: "Network provider details in the Microsoft 365 Admin Center (PREVIEW)"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 04/05/2024
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
description: "Network provider connectivity attribution in the Microsoft 365 Admin Center"
ROBOTS: NOINDEX, NOFOLLOW
---

# Network provider details in the Microsoft 365 Admin Center

We try to detect network provider device interference between your tenant users and Microsoft 365 services. Here are the types of device interference we can detect.

Percentage refers to the percentage of media streams for Teams, and percentage of connections for Exchange and SharePoint.

## SSL break and inspect test

This test detects a private or unknown certificate presented by a network device to your tenant users for data path connections to Microsoft 365 services, a private certificate is typically used when the network device intends to perform break and inspect operation at the SSL or TLS layer for those connections. We may not be able to show you the detected certificate issuer names due to privacy reasons.

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-nppdetails-1.png" alt-text="SSL break and inspect test.":::

## Incorrect destination IP address detected

This indicates that the destination endpoint representing Microsoft 365 endpoints have incorrect or unfamiliar IP addresses assigned to them. Typically, this means there's an intermediate network device acting as a proxy and we'll show you the incorrect or unfamiliar IP address detected.

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-nppdetails-2.png" alt-text="Incorrect destination IP address detected.":::

## VPN or tunneling detected

This indicates that the network taken to connect to Microsoft 365 endpoints involves a VPN or traffic tunneling. A VPN or traffic tunneling might cause backhaul of network traffic and lead to network performance issues that impacts user experience.

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-nppdetails-3.png" alt-text="VPN or tunneling detected.":::

## No device interference detected

This is aligned with our connectivity principles and indicates that there was no device interference detected between your tenant users and Microsoft 365 services.

## Related articles

[Network connectivity in the Microsoft 365 admin center](office-365-network-mac-perf-overview.md)

[Network provider program data calculations](office-365-network-mac-perf-nppdata.md)

[Microsoft 365 network assessment](office-365-network-mac-perf-score.md)

[Microsoft 365 network connectivity test tool](office-365-network-mac-perf-onboarding-tool.md)
