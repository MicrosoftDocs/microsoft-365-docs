---
title: "Set up your network for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- M365-subscription-management
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
- seo-marvel-apr2020
ms.assetid: 
description: Find links to articles with information to help you set up your network for Microsoft 365, including a network connectivity overview and list of endpoints.
---

# Set up your network for Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

An important part of your Microsoft 365 onboarding is to ensure that your network and Internet connections are set up for optimized access. Configuring your on-premises network to access a globally distributed Software-as-a-Service (SaaS) cloud is different from a traditional network that is optimized for traffic to on-premises datacenters and a central Internet connection.

Use these articles to understand the key differences and to modify your edge devices, client computers, and on-premises network to get the best performance for your on-premises users.

## How Microsoft 365 networking works

See these articles for an overview of connectivity for Microsoft 365:

- [Microsoft 365 networking connectivity overview](microsoft-365-networking-overview.md)
- [Microsoft 365 network connectivity principles](microsoft-365-network-connectivity-principles.md)
- [Assessing Microsoft 365 network connectivity](assessing-network-connectivity.md)

For advice on enhancing performance, see [Network planning and performance tuning for Microsoft 365](network-planning-and-performance.md).

## Support Microsoft 365 networking as a network equipment vendor

If you are a network equipment vendor, join the [Office 365 Networking Partner Program](microsoft-365-networking-partner-program.md). Enroll in the program to build Office 365 network connectivity principles into your products and solutions.

## Office 365 endpoints

Endpoints are the set of destination IP addresses, DNS domain names, and URLs for Office 365 traffic on the Internet.

To optimize performance to Office 365 cloud-based services, some endpoints need special handling by your client browsers and the devices in your edge network. These devices include firewalls, SSL Break and Inspect and packet inspection devices, and data loss prevention systems.

See [Managing Office 365 endpoints](managing-office-365-endpoints.md) for the details.

There are currently five different Office 365 clouds. This table takes you to the list of endpoints for each one.

| Endpoints | Description |
|:-------|:-----|
| [Worldwide endpoints](urls-and-ip-address-ranges.md) | The endpoints for worldwide Office 365 subscriptions, which include the United States Government Community Cloud (GCC). |
| [U.S. Government DoD endpoints](microsoft-365-u-s-government-dod-endpoints.md) | The endpoints for United States Department of Defense (DoD) subscriptions. |
| [U.S. Government GCC High endpoints](microsoft-365-u-s-government-gcc-high-endpoints.md) | The endpoints for United States Government Community Cloud High (GCC High) subscriptions. |
| [Office 365 operated by 21Vianet endpoints](urls-and-ip-address-ranges-21vianet.md) | The endpoints for Office 365 operated by 21Vianet, which is designed to meet the needs for Office 365 in China. |
|||

To automate getting the latest list of endpoints for your Office 365 cloud, see the [Office 365 IP Address and URL Web service](microsoft-365-ip-web-service.md).

For additional endpoints, see these articles:

- [Additional endpoints not included in the Web service](additional-office365-ip-addresses-and-urls.md)
- [Network requests in Office 2016 for Mac](network-requests-in-office-2016-for-mac.md)

## Additional topics for Microsoft 365 networking

See these articles for specialized topics in Microsoft 365 networking:

- [Content delivery networks](content-delivery-networks.md)
- [IPv6 support in Office 365 services](ipv6-support.md)
- [NAT support with Office 365](nat-support-with-microsoft-365.md)

## ExpressRoute for Microsoft 365

See these articles for information on the use of ExpressRoute for Microsoft 365 traffic:

- [Azure ExpressRoute for Microsoft 365](azure-expressroute.md)

> [!NOTE]
> We **do not recommend** ExpressRoute for Microsoft 365 because it does not provide the best connectivity model for the service in most circumstances. As such, Microsoft authorization is required to use this connectivity model. We review every customer request and authorize ExpressRoute for Microsoft 365 only in the rare scenarios where it is necessary. Please read the [ExpressRoute for Microsoft 365 guide](https://aka.ms/erguide) for more information and following a comprehensive review of the document with your productivity, network, and security teams, work with your Microsoft account team to submit an exception if needed.
