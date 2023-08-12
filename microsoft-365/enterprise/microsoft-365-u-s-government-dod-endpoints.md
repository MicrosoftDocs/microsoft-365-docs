---
title: Office 365 US Government DOD endpoints
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 07/31/2023
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection:
- scotvorg 
- M365-subscription-management
- Strat_O365_Enterprise
search.appverid:
- OGA150
- OGC150
- OGD150
- MOE150
ms.assetid: 5d7dce60-4892-4b58-b45e-ee42fe8a907f
f1.keywords:
- NOCSH
description: Office 365 requires connectivity to the Internet. The endpoints below should be reachable for customers using Office 365 U.S. Government DoD plans only.
hideEdit: true
ms.custom: seo-marvel-mar2020
---

# Office 365 U.S. Government DoD endpoints

*Applies To: Office 365 Admin*

Office 365 requires connectivity to the Internet. The endpoints below should be reachable for customers using Office 365 U.S. Government DoD plans only.
  
**Office 365 endpoints:** [Worldwide (including GCC)](urls-and-ip-address-ranges.md) \| [Office 365 operated by 21 Vianet](urls-and-ip-address-ranges-21vianet.md) \| *Office 365 U.S. Government DoD* \| [Office 365 U.S. Government GCC High](microsoft-365-u-s-government-gcc-high-endpoints.md)

<br>
****

|Notes|Download|
|---|---|
|**Last updated:** 07/31/2023 - ![RSS.](../media/5dc6bb29-25db-4f44-9580-77c735492c4b.png) [Change Log subscription](https://endpoints.office.com/version/USGOVDoD?allversions=true&format=rss&clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)|**Download:** the full list in [JSON format](https://endpoints.office.com/endpoints/USGOVDoD?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)|
|

Start with [Managing Office 365 endpoints](managing-office-365-endpoints.md) to understand our recommendations for managing network connectivity using this data. Endpoints data is updated as needed at the beginning of each month with new IP Addresses and URLs published 30 days in advance of being active. This lets customers who don't yet have automated updates to complete their processes before new connectivity is required. Endpoints may also be updated during the month if needed to address support escalations, security incidents, or other immediate operational requirements. The data shown on this page below is all generated from the REST-based web services. If you're using a script or a network device to access this data, you should go to the [Web service](microsoft-365-ip-web-service.md) directly.

Endpoint data below lists requirements for connectivity from a user's machine to Office 365. It doesn't include network connections from Microsoft into a customer network, sometimes called hybrid or inbound network connections. For more information, see [Additional endpoints not included in the web service](additional-office365-ip-addresses-and-urls.md).

The endpoints are grouped into four service areas. The first three service areas can be independently selected for connectivity. The fourth service area is a common dependency (called Microsoft 365 Common and Office) and must always have network connectivity.

Data columns shown are:

- **ID**: The ID number of the row, also known as an endpoint set. This ID is the same as is returned by the web service for the endpoint set.

- **Category**: Shows whether the endpoint set is categorized as "Optimize", "Allow", or "Default". You can read about these categories and guidance for management of them at [https://aka.ms/pnc](./microsoft-365-network-connectivity-principles.md). This column also lists which endpoint sets are required to have network connectivity. For endpoint sets that aren't required to have network connectivity, we provide notes in this field to indicate what functionality would be missing if the endpoint set is blocked. If you're excluding an entire service area, the endpoint sets listed as required don't require connectivity.

- **ER**: This is **Yes** if the endpoint set is supported over Azure ExpressRoute with Office 365 route prefixes. The BGP community that includes the route prefixes shown aligns with the service area listed. When ER is **No**, this means that ExpressRoute is not supported for this endpoint set. However, it should not be assumed that no routes are advertised for an endpoint set where ER is **No**. If you plan to use Azure AD Connect, read the [special considerations section](/azure/active-directory/hybrid/reference-connect-instances#microsoft-azure-government) to ensure you have the appropriate Azure AD Connect configuration.

- **Addresses**: Lists the FQDNs or wildcard domain names and IP Address ranges for the endpoint set. Note that an IP Address range is in CIDR format and may include many individual IP Addresses in the specified network.

- **Ports**: Lists the TCP or UDP ports that are combined with the Addresses to form the network endpoint. You may notice some duplication in IP Address ranges where there are different ports listed.

[!INCLUDE [Office 365 U.S. Government DoD endpoints](../includes/office-365-u.s.-government-dod-endpoints.md)]
  
Notes for this table:

- The Security and Compliance Center (SCC) provides support for Azure ExpressRoute for Office 365. The same applies for many features exposed through the SCC such as Reporting, Auditing, eDiscovery (Premium), Unified DLP, and Data Governance. Two specific features, PST Import and eDiscovery Export, currently do not support Azure ExpressRoute with only Office 365 route filters due to their dependency on Azure Blob Storage. To consume those features, you need separate connectivity to Azure Blob Storage using any supportable Azure connectivity options, which include Internet connectivity or Azure ExpressRoute with Azure Public route filters. You have to evaluate establishing such connectivity for both of those features. The Office 365 Information Protection team is aware of this limitation and is actively working to bring support for Azure ExpressRoute for Office 365 as limited to Office 365 route filters for both of those features.

- There are additional optional endpoints for Microsoft 365 Apps for enterprise that are not listed and are not required for users to launch Microsoft 365 Apps for enterprise applications and edit documents. Optional endpoints are hosted in Microsoft datacenters and do not process, transmit, or store customer data. We recommend that user connections to these endpoints be directed to the default Internet egress perimeter.
