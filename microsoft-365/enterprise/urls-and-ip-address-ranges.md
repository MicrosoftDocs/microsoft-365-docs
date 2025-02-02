---
title: "Microsoft 365 URLs and IP address ranges"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 01/30/2025
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: high
ms.collection:
- scotvorg
- M365-subscription-management
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid:
- MET150
- MOE150
- MED150
- MBS150
- MOM160
- BCS160
ms.assetid: 8548a211-3fe7-47cb-abb1-355ea5aa88a2
description: "Summary: Microsoft 365 requires connectivity to the Internet. The endpoints in this article should be reachable for customers using Microsoft 365 plans, including Government Community Cloud (GCC)."
hideEdit: true
---

# Microsoft 365 URLs and IP address ranges

Microsoft 365 requires connectivity to the Internet. The endpoints in this article should be reachable for customers using Microsoft 365 plans, including Government Community Cloud (GCC).
  
*Microsoft 365 Worldwide (+GCC)* \| [Microsoft 365 operated by 21 Vianet](urls-and-ip-address-ranges-21vianet.md) \| [Microsoft 365 U.S. Government DoD](microsoft-365-u-s-government-dod-endpoints.md) \| [Microsoft 365 U.S. Government GCC High](microsoft-365-u-s-government-gcc-high-endpoints.md) \|

|Notes|Download|Use|
|---|---|---|
|**Last updated:** 01/30/2025 - ![RSS.](../media/5dc6bb29-25db-4f44-9580-77c735492c4b.png) [Change Log subscription](https://endpoints.office.com/version/worldwide?allversions=true&format=rss&clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)|**Download:** all required and optional destinations in one [JSON formatted](https://endpoints.office.com/endpoints/worldwide?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7) list.|**Use:** our proxy [PAC files](managing-office-365-endpoints.md#pacfiles)|
|

Start with [Managing Microsoft 365 endpoints](managing-office-365-endpoints.md) to understand our recommendations for managing network connectivity using this data. Endpoints data is updated as needed at the beginning of each month with new IP Addresses and URLs published 30 days in advance of being active. This cadence allows for customers who don't yet have automated updates to complete their processes before new connectivity is required. Endpoints may also be updated during the month if needed to address support escalations, security incidents, or other immediate operational requirements. The data shown on this page below is all generated from the REST-based web services. If you're using a script or a network device to access this data, you should go to the [Web service](microsoft-365-ip-web-service.md) directly.

Endpoint data below lists requirements for connectivity from a user's machine to Microsoft 365. For detail on IP addresses used for network connections from Microsoft into a customer network, sometimes called hybrid or inbound network connections, see [other endpoints](additional-office365-ip-addresses-and-urls.md) for more information.

The endpoints are grouped into four service areas representing the three primary workloads and a set of common resources. The groups may be used to associate traffic flows with a particular application, however given that features often consume endpoints across multiple workloads, these groups can't effectively be used to restrict access.

Data columns shown are:

- **ID**: The ID number of the row, also known as an endpoint set. This ID is the same as is returned by the web service for the endpoint set.

- **Category**: Shows whether the endpoint set is categorized as **Optimize**, **Allow**, or **Default**. This column also lists which endpoint sets are required to have network connectivity. For endpoint sets that aren't required to have network connectivity, we provide notes in this field to indicate what functionality would be missing if the endpoint set is blocked.

   You can read about these categories and guidance for their management in [Optimizing connectivity to Microsoft 365 services](microsoft-365-network-connectivity-principles.md#optimizing-connectivity-to-microsoft-365-services).

- **ER**: This is **Yes** if the endpoint set is supported over Azure ExpressRoute with Microsoft 365 route prefixes. The BGP community that includes the route prefixes shown aligns with the service area listed. When ER is **No**, this means that ExpressRoute isn't supported for this endpoint set.

   Some routes may be advertised in more than one BGP community, making it possible for endpoints within a given IP range to traverse the ER circuit, but still be unsupported. In all cases, the value of a given endpoint set's ER column should be respected.

- **Addresses**: Lists the FQDNs or wildcard domain names and IP address ranges for the endpoint set. Note that an IP address range is in CIDR format and may include many individual IP addresses in the specified network.

- **Ports**: Lists the TCP or UDP ports that are combined with listed IP addresses to form the network endpoint. You may notice some duplication in IP address ranges where there are different ports listed.

## [Microsoft 365 Unified Domains](cloud-microsoft-domain.md)

> [!NOTE]
> In response to customer feedback and to streamline endpoint management, Microsoft has initiated the process of consolidating Microsoft 365 apps and services into a select group of dedicated, secured, and purpose-managed domains within the **.microsoft** top level domain (TLD). 
> 
> To avoid connectivity issues for users, ensure that the following essential domains are included in your allowlist and that connectivity to these domains isn't blocked.

| ID | Category | Domain name| Purpose | Ports |
|---|---|---|---|---|
|184|Required|`*.cloud.microsoft`|Dedicated to authenticated user facing Microsoft SaaS product experiences.|**TCP:** 443,80<br>**UDP:** 443|
|184|Required|`*.static.microsoft`|Dedicated to static (not customer generated) content hosted on CDNs.|**TCP:** 443,80<br>**UDP:** 443|
|184|Required|`*.usercontent.microsoft`|Content used in Microsoft 365 experiences that requires domain isolation from applications.|**TCP:** 443,80<br>**UDP:** 443|

[!INCLUDE [Microsoft 365 worldwide endpoints](../includes/office-365-worldwide-endpoints.md)]

Notes for this table:

- The Security and Compliance Center (SCC) provides support for Azure ExpressRoute for Microsoft 365. The same applies for many features exposed through the SCC such as Reporting, Auditing, eDiscovery (Premium), Unified DLP, and Data Governance. Two specific features, PST Import and eDiscovery Export, currently don't support Azure ExpressRoute with only Microsoft 365 route filters due to their dependency on Azure Blob Storage (*.blob.core.windows.net). To consume those features, you need separate connectivity to Azure Blob Storage using any supportable Azure connectivity options, which include Internet connectivity or Azure ExpressRoute with Azure Public route filters. You have to evaluate establishing such connectivity for both of those features. The Microsoft 365 Information Protection team is aware of this limitation and is actively working to bring support for Azure ExpressRoute for Microsoft 365 as limited to Microsoft 365 route filters for both of those features.

## Related Topics

[Other endpoints not included in the Microsoft 365 IP Address and URL Web service](additional-office365-ip-addresses-and-urls.md)

[Managing Microsoft 365 endpoints](managing-office-365-endpoints.md)

[General Microsoft Stream endpoints](/stream/network-overview#general-microsoft-stream-endpoints)
  
[Monitor Microsoft 365 connectivity](./monitor-connectivity.md)
  
[Client connectivity](https://support.office.com/article/client-connectivity-4232abcf-4ae5-43aa-bfa1-9a078a99c78b)
  
[Content delivery networks](https://support.office.com/article/content-delivery-networks-0140f704-6614-49bb-aa6c-89b75dcd7f1f)
  
[Microsoft Azure IP Ranges and Service Tags – Public Cloud](https://www.microsoft.com/download/details.aspx?id=56519)

[Microsoft Azure IP Ranges and Service Tags – US Government Cloud](https://www.microsoft.com/download/details.aspx?id=57063)

[Microsoft Azure IP Ranges and Service Tags – China Cloud](https://www.microsoft.com/download/details.aspx?id=57062)
  
[Microsoft Public IP Space](https://www.microsoft.com/download/details.aspx?id=53602)

[Service Name and Transport Protocol Port Number Registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)
