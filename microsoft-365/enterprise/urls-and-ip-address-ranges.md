---
title: "Office 365 URLs and IP address ranges"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 07/31/2023
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- scotvorg
- M365-subscription-management
- Strat_O365_Enterprise
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
description: "Summary: Office 365 requires connectivity to the Internet. The endpoints below should be reachable for customers using Office 365 plans, including Government Community Cloud (GCC)."
hideEdit: true
---

# Office 365 URLs and IP address ranges

Office 365 requires connectivity to the Internet. The endpoints below should be reachable for customers using Office 365 plans, including Government Community Cloud (GCC).
  
*Office 365 Worldwide (+GCC)* \| [Office 365 operated by 21 Vianet](urls-and-ip-address-ranges-21vianet.md) \| [Office 365 U.S. Government DoD](microsoft-365-u-s-government-dod-endpoints.md) \| [Office 365 U.S. Government GCC High](microsoft-365-u-s-government-gcc-high-endpoints.md) \|

|Notes|Download|Use|
|---|---|---|
|**Last updated:** 07/31/2023 - ![RSS.](../media/5dc6bb29-25db-4f44-9580-77c735492c4b.png) [Change Log subscription](https://endpoints.office.com/version/worldwide?allversions=true&format=rss&clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7)|**Download:** all required and optional destinations in one [JSON formatted](https://endpoints.office.com/endpoints/worldwide?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7) list.|**Use:** our proxy [PAC files](managing-office-365-endpoints.md#pacfiles)|
|

Start with [Managing Office 365 endpoints](managing-office-365-endpoints.md) to understand our recommendations for managing network connectivity using this data. Endpoints data is updated as needed at the beginning of each month with new IP Addresses and URLs published 30 days in advance of being active. This cadence allows for customers who don't yet have automated updates to complete their processes before new connectivity is required. Endpoints may also be updated during the month if needed to address support escalations, security incidents, or other immediate operational requirements. The data shown on this page below is all generated from the REST-based web services. If you're using a script or a network device to access this data, you should go to the [Web service](microsoft-365-ip-web-service.md) directly.

Endpoint data below lists requirements for connectivity from a user's machine to Office 365. For detail on IP addresses used for network connections from Microsoft into a customer network, sometimes called hybrid or inbound network connections, see [Additional endpoints](additional-office365-ip-addresses-and-urls.md) for more information.

The endpoints are grouped into four service areas representing the three primary workloads and a set of common resources. The groups may be used to associate traffic flows with a particular application, however given that features often consume endpoints across multiple workloads, these groups can't effectively be used to restrict access.

Data columns shown are:

- **ID**: The ID number of the row, also known as an endpoint set. This ID is the same as is returned by the web service for the endpoint set.

- **Category**: Shows whether the endpoint set is categorized as **Optimize**, **Allow**, or **Default**. This column also lists which endpoint sets are required to have network connectivity. For endpoint sets that aren't required to have network connectivity, we provide notes in this field to indicate what functionality would be missing if the endpoint set is blocked. If you're excluding an entire service area, the endpoint sets listed as required don't require connectivity.

   You can read about these categories and guidance for their management in [New Office 365 endpoint categories](microsoft-365-network-connectivity-principles.md#new-office-365-endpoint-categories).

- **ER**: This is **Yes** if the endpoint set is supported over Azure ExpressRoute with Office 365 route prefixes. The BGP community that includes the route prefixes shown aligns with the service area listed. When ER is **No**, this means that ExpressRoute is not supported for this endpoint set.

   Some routes may be advertised in more than one BGP community, making it possible for endpoints within a given IP range to traverse the ER circuit, but still be unsupported. In all cases, the value of a given endpoint set's ER column should be respected.

- **Addresses**: Lists the FQDNs or wildcard domain names and IP address ranges for the endpoint set. Note that an IP address range is in CIDR format and may include many individual IP addresses in the specified network.

- **Ports**: Lists the TCP or UDP ports that are combined with listed IP addresses to form the network endpoint. You may notice some duplication in IP address ranges where there are different ports listed.

> [!NOTE]
> Microsoft has begun a long-term transition to providing services from the **cloud.microsoft** namespace to simplify the endpoints managed by our customers. If you are following existing guidance for allowing access to required endpoints as listed below, there’s no further action required from you.

[!INCLUDE [Office 365 worldwide endpoints](../includes/office-365-worldwide-endpoints.md)]

> [!NOTE]
> For recommendations on Viva Engage IP addresses and URLs, see [Using hard-coded IP addresses for Viva Engage is not recommended](https://techcommunity.microsoft.com/t5/yammer-Blog/Using-hard-coded-IP-addresses-for-yammer-is-not-recommended/ba-p/276592) on the Viva Engage blog.

## Related Topics

[Additional endpoints not included in the Office 365 IP Address and URL Web service](additional-office365-ip-addresses-and-urls.md)

[Managing Office 365 endpoints](managing-office-365-endpoints.md)

[General Microsoft Stream endpoints](/stream/network-overview#general-microsoft-stream-endpoints)
  
[Monitor Microsoft 365 connectivity](./monitor-connectivity.md)

[Root CA and the Intermediate CA bundle on the third-party application system](../compliance/encryption-office-365-certificate-chains.md)
  
[Client connectivity](https://support.office.com/article/client-connectivity-4232abcf-4ae5-43aa-bfa1-9a078a99c78b)
  
[Content delivery networks](https://support.office.com/article/content-delivery-networks-0140f704-6614-49bb-aa6c-89b75dcd7f1f)
  
[Microsoft Azure IP Ranges and Service Tags – Public Cloud](https://www.microsoft.com/download/details.aspx?id=56519)

[Microsoft Azure IP Ranges and Service Tags – US Government Cloud](https://www.microsoft.com/download/details.aspx?id=57063)

[Microsoft Azure IP Ranges and Service Tags – China Cloud](https://www.microsoft.com/download/details.aspx?id=57062)
  
[Microsoft Public IP Space](https://www.microsoft.com/download/details.aspx?id=53602)

[Service Name and Transport Protocol Port Number Registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)
