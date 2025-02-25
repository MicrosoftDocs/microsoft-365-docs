---
title: "Microsoft 365 endpoints"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 10/10/2024
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg 
- M365-subscription-management
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
- seo-marvel-apr2020
ms.assetid: 
description: For destination IP addresses and URLs for Microsoft 365 traffic, use this list of articles for the Internet endpoints of the different Microsoft 365 clouds.
---

# Microsoft 365 endpoints

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Endpoints are the set of destination IP addresses, DNS domain names, and URLs for Microsoft 365 traffic on the Internet.

To optimize performance to Microsoft 365 cloud-based services, these endpoints need special handling by your client browsers and the devices in your edge network. These devices include firewalls, TLS Break and Inspect and packet inspection devices, and  data loss prevention systems.

See [Managing Microsoft 365 endpoints](managing-office-365-endpoints.md) for the details.

There are currently five different Microsoft 365 clouds. This table takes you to the list of endpoints for each one.

| Cloud | Description |
|:-------|:-----|
| [Worldwide endpoints](urls-and-ip-address-ranges.md) | The endpoints for worldwide Microsoft 365 subscriptions, which include the United States Government Community Cloud (GCC). |
| [U.S. Government DoD endpoints](microsoft-365-u-s-government-dod-endpoints.md) | The endpoints for United States Department of Defense (DoD) subscriptions. |
| [U.S. Government GCC High endpoints](microsoft-365-u-s-government-gcc-high-endpoints.md) | The endpoints for United States Government Community Cloud High (GCC High) subscriptions. |
| [Microsoft 365 operated by 21Vianet endpoints](urls-and-ip-address-ranges-21vianet.md) | The endpoints for Microsoft 365 operated by 21Vianet, which is designed to meet the needs for Microsoft 365 in China. |
|||

To automate getting the latest list of endpoints for your Microsoft 365 cloud, see the [Microsoft 365 IP Address and URL Web service](microsoft-365-ip-web-service.md).

For more endpoints, see these articles:

- [Additional endpoints not included in the Web service](additional-office365-ip-addresses-and-urls.md)
- [Unified cloud.microsoft domain for Microsoft 365 apps](cloud-microsoft-domain.md)
- [Network requests in Office 2016 for Mac](network-requests-in-office-2016-for-mac.md)

If you're a network equipment vendor, join the [Office 365 Networking Partner Program](microsoft-365-networking-partner-program.md). Enroll in the program to build Microsoft 365 network connectivity principles into your products and solutions.

## See also

[Microsoft 365 IP Address and URL Web service](microsoft-365-ip-web-service.md)
