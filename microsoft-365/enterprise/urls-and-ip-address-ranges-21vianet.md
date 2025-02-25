---
title: "URLs and IP address ranges for Microsoft 365 operated by 21Vianet"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 01/30/2025
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-subscription-management
- Strat_O365_Enterprise
search.appverid:
- GMA150
- GPA150
- GEA150
ms.assetid: 5c47c07d-f9b6-4b78-a329-bfdc1b6da7a0
ms.custom: seo-marvel-apr2020
f1.keywords:
- NOCSH
description: This article lists the URLs and IP address ranges for Microsoft 365 when operated by 21Vianet in China.
hideEdit: true
---

# URLs and IP address ranges for Microsoft 365 operated by 21Vianet

*Applies To: Microsoft 365 operated by 21Vianet - Small Business Admin, Microsoft 365 operated by 21Vianet - Admin*

**Summary**: The following endpoints (FQDNs, ports, URLs, IPv4, and IPv6 prefixes) apply to Microsoft 365 operated by 21 Vianet and are designed to deliver productivity services to organizations using only these plans.
  
**Microsoft 365 endpoints:** [Worldwide (including GCC)](urls-and-ip-address-ranges.md)  | *Microsoft 365 operated by 21 Vianet* | [Microsoft 365 U.S. Government DoD](microsoft-365-u-s-government-dod-endpoints.md) | [Microsoft 365 U.S. Government GCC High](microsoft-365-u-s-government-gcc-high-endpoints.md) |
  
**Last updated:** 01/30/2025 - ![RSS.](../media/5dc6bb29-25db-4f44-9580-77c735492c4b.png) [Change Log subscription](https://endpoints.office.com/version/China?allversions=true&format=rss&clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)

**Download:** all required and optional destinations in one [JSON formatted](https://endpoints.office.com/endpoints/China?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7) list.

Start with [Managing Microsoft 365 endpoints](managing-office-365-endpoints.md) to understand our recommendations for managing network connectivity using this data. Endpoints data is updated as needed at the beginning of each month with new IP Addresses and URLs published 30 days in advance of being active. This allows for customers who don't yet have automated updates to complete their processes before new connectivity is required. Endpoints may also be updated during the month if needed to address support escalations, security incidents, or other immediate operational requirements. The data shown on this page below is all generated from the REST-based web services. If you're using a script or a network device to access this data, you should go to the [Web service](microsoft-365-ip-web-service.md) directly.

Endpoint data below lists requirements for connectivity from a user’s machine to Microsoft 365. It doesn't include network connections from Microsoft into a customer network, sometimes called hybrid or inbound network connections.

The Microsoft 365 suite is broken down into four major service areas representing the three primary workloads and a set of common resources. These service areas may be used to associate traffic flows with a particular application, however given that features often consume endpoints across multiple workloads, these service areas cannot effectively be used to restrict access.

Data columns shown are:

- **ID**: The ID number of the row, also known as an endpoint set. This ID is the same as is returned by the web service for the endpoint set.

- **Category**: Shows whether the endpoint set is categorized as “Optimize”, “Allow”, or “Default”. You can read about these categories and guidance for management of them at [https://aka.ms/pnc](./microsoft-365-network-connectivity-principles.md). This column also lists which endpoint sets are required to have network connectivity. For endpoint sets, which aren't required to have network connectivity, we provide notes in this field to indicate what functionality would be missing if the endpoint set is blocked. If you're excluding an entire service area, the endpoint sets listed as required don't require connectivity.

- **ER**: This is **Yes** if the endpoint set is supported over Azure ExpressRoute with Microsoft 365 route prefixes. The BGP community that includes the route prefixes shown aligns with the service area listed. When ER is **No**, this means that ExpressRoute isn't supported for this endpoint set. However, it shouldn't be assumed that no routes are advertised for an endpoint set where ER is **No**.

- **Addresses**: Lists the FQDNs or wildcard domain names and IP Address ranges for the endpoint set. Note that an IP Address range is in CIDR format and may include many individual IP Addresses in the specified network.

- **Ports**: Lists the TCP or UDP ports that are combined with the Addresses to form the network endpoint. You may notice some duplication in IP Address ranges where there are different ports listed.

[!INCLUDE [Microsoft 365 operated by 21Vianet endpoints](../includes/office-365-operated-by-21vianet-endpoints.md)]
