---
title: "Microsoft 365 U.S. Government GCC High endpoints"
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
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid: MET150
ms.assetid: cbd2369c-fd96-464c-bf48-c99826b459ee
description: "In this article, you find endpoints reachable for customers using Microsoft 365 U.S. Government GCC High plans."
hideEdit: true
---

# Microsoft 365 U.S. Government GCC High endpoints

*Applies To: Microsoft 365 Admin*

Microsoft 365 requires connectivity to the Internet. The endpoints below should be reachable for customers using Microsoft 365 U.S. Government GCC High plans only.
  
 **Microsoft 365 endpoints:** [Worldwide (including GCC)](urls-and-ip-address-ranges.md) \| [Microsoft 365 operated by 21 Vianet](urls-and-ip-address-ranges-21vianet.md) \| [Microsoft 365 U.S. Government DoD](microsoft-365-u-s-government-dod-endpoints.md) \| *Microsoft 365 U.S. Government GCC High*

<br>

****

|Notes|Download|
|---|---|
|**Last updated:** 01/30/2025 - ![RSS.](../media/5dc6bb29-25db-4f44-9580-77c735492c4b.png) [Change Log subscription](https://endpoints.office.com/version/USGOVGCCHigh?allversions=true&format=rss&clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)|**Download:** the full list in [JSON format](https://endpoints.office.com/endpoints/USGOVGCCHigh?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)|
|

 Start with [Managing Microsoft 365 endpoints](managing-office-365-endpoints.md) to understand our recommendations for managing network connectivity using this data. Endpoints data is updated as needed at the beginning of each month with new IP Addresses and URLs published 30 days in advance of being active. This lets customers who don't yet have automated updates to complete their processes before new connectivity is required. Endpoints may also be updated during the month if needed to address support escalations, security incidents, or other immediate operational requirements. The data shown on this page below is all generated from the REST-based web services. If you're using a script or a network device to access this data, you should go to the [Web service](microsoft-365-ip-web-service.md) directly.

Endpoint data below lists requirements for connectivity from a user’s machine to Microsoft 365. It doesn't include network connections from Microsoft into a customer network, sometimes called hybrid or inbound network connections.

The Microsoft 365 suite is broken down into four major service areas representing the three primary workloads and a set of common resources. These service areas may be used to associate traffic flows with a particular application, however given that features often consume endpoints across multiple workloads, these service areas cannot effectively be used to restrict access.

Data columns shown are:

- **ID**: The ID number of the row, also known as an endpoint set. This ID is the same as is returned by the web service for the endpoint set.

- **Category**: Shows whether the endpoint set is categorized as “Optimize”, “Allow”, or “Default”. You can read about these categories and guidance for management of them at [https://aka.ms/pnc](./microsoft-365-network-connectivity-principles.md). This column also lists which endpoint sets are required to have network connectivity. For endpoint sets, which aren't required to have network connectivity, we provide notes in this field to indicate what functionality would be missing if the endpoint set is blocked. If you're excluding an entire service area, the endpoint sets listed as required don't require connectivity.

- **ER**: This is **Yes** if the endpoint set is supported over Azure ExpressRoute with Microsoft 365 route prefixes. The BGP community that includes the route prefixes shown aligns with the service area listed. When ER is **No**, this means that ExpressRoute isn't supported for this endpoint set. However, it shouldn't be assumed that no routes are advertised for an endpoint set where ER is **No**. If you plan to use Microsoft Entra Connect, read the [special considerations section](/azure/active-directory/hybrid/reference-connect-instances#microsoft-azure-government) to ensure you have the appropriate Microsoft Entra Connect configuration.

- **Addresses**: Lists the FQDNs or wildcard domain names and IP Address ranges for the endpoint set. Note that an IP Address range is in CIDR format and may include many individual IP Addresses in the specified network.

- **Ports**: Lists the TCP or UDP ports that are combined with the Addresses to form the network endpoint. You may notice some duplication in IP Address ranges where there are different ports listed.

[!INCLUDE [Microsoft 365 U.S. Government GCC High endpoints](../includes/office-365-u.s.-government-gcc-high-endpoints.md)]

Notes for this table:

- The Security and Compliance Center (SCC) provides support for Azure ExpressRoute for Microsoft 365. The same applies for many features exposed through the SCC such as Reporting, Auditing, eDiscovery (Premium), Unified DLP, and Data Governance. Two specific features, PST Import and eDiscovery Export, currently don't support Azure ExpressRoute with only Microsoft 365 route filters due to their dependency on Azure Blob Storage. To consume those features, you need separate connectivity to Azure Blob Storage using any supportable Azure connectivity options, which include Internet connectivity or Azure ExpressRoute with Azure Public route filters. You have to evaluate establishing such connectivity for both of those features. The Microsoft 365 Information Protection team is aware of this limitation and is actively working to bring support for Azure ExpressRoute for Microsoft 365 as limited to Microsoft 365 route filters for both of those features.

- There are additional optional endpoints for Microsoft 365 Apps for enterprise that aren't listed and aren't required for users to launch Microsoft 365 Apps for enterprise applications and edit documents. Optional endpoints are hosted in Microsoft data centers and don't process, transmit, or store customer data. We recommend that user connections to these endpoints be directed to the default Internet egress perimeter.
