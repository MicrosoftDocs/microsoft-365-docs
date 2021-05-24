---
title: "Using BGP communities in ExpressRoute for Office 365 scenarios"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 6/26/2018
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Ent_O365
- SPO_Content
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: 9ac4d7d4-d9f8-40a8-8c78-2a6d7fe96099
description: Learn how to use BGP communities in Azure ExpressRoute to manage the number of IP prefixes and required bandwidth for Office 365 scenarios.
---

# Using BGP communities in ExpressRoute for Office 365 scenarios

Connecting to Office 365 using Azure ExpressRoute is based on BGP advertisements of specific IP subnets that represent networks where Office 365 endpoints are deployed. Due to the global nature of Office 365 and the number of services that constitute Office 365, customers often have a need to manage the advertisements they accept on their network. Reducing the number of IP subnets; referred to as IP prefixes throughout the remainder of this article, to align with the BGP network management terminology, serves the following end-goals for customers:
  
- **Manage the number advertised IP prefixes accepted** - Customers who have an internal network infrastructure or network carrier that only supports a limited number of IP prefixes and customers who have a network carrier that charges for accepting prefixes above a limited number will want to evaluate the total number of prefixes already advertised to their network and select which Office 365 applications are best suited for ExpressRoute.

- **Manage the amount of bandwidth required on the Azure ExpressRoute circuit** - Customers may want to control the bandwidth envelope of the Office 365 services over the ExpressRoute path vs. Internet path. This allows customers to reserve ExpressRoute bandwidth for specific applications such as Skype for Business and route the remaining Office 365 applications over the Internet path.

To assist customers with these goals, Office 365 IP prefixes that are advertised over ExpressRoute are tagged with service specific BGP community values as shown in the example below.
  
> [!NOTE]
> You should expect some network traffic associated with other applications to be included in the community value. This is expected behavior for a global Software as a Service offering with shared services and datacenters. This has been minimized where possible with the above two goals, managing prefix count and/or bandwidth in mind.

|**Service**|**BGP Community Value**|**Notes**|
|:-----|:-----|:-----|
|Exchange Online\*  <br/> |12076:5010  <br/> |Includes Exchange and EOP services\*  <br/> |
|SharePoint Online\*  <br/> |12076:5020  <br/> |SharePoint Online  <br/> |
|Skype for Business\*  <br/> |12076:5030  <br/> |Skype for Business Online & Microsoft Teams services  <br/> |
|Other Office 365 services\*  <br/> |12076:5100  <br/> |Includes Azure Active Directory (Authentication and Directory Synchronization scenarios) as well as Office 365 Portal services  <br/> |
|\* The scope of service scenarios included in ExpressRoute is documented in the [Office 365 endpoints](./urls-and-ip-address-ranges.md) article.  <br/> \*\*Additional services and BGP community values may be added in the future. [See the current list of BGP Communities](/azure/expressroute/expressroute-routing).  <br/> |

## What are the most common scenarios for using BGP communities?

Customers may use BGP communities to regulate groups of IP prefixes that are accepted by their network through Azure ExpressRoute, thus influencing the total IP prefix count and expected bandwidth envelope of certain Office 365 services. It is important to understand that all Office 365 will require internet bound traffic regardless of the use of Azure ExpressRoute or BGP Communities. The following three scenarios are the most common uses of this functionality.
  
### Scenario 1: Minimizing the number of Office 365 IP prefixes

Contoso Corporation is a 50,000 person company that currently uses Office 365 for Exchange Online and SharePoint Online. In reviewing ExpressRoute requirements Contoso determines its network devices in many regional locations can't handle routing table sizes above 100 additional route entries. Contoso reviewed the total number of IP prefixes that ExpressRoute would advertise for the full set of Office 365 services and concluded that it exceeds 100. To stay under the 100 additional route entries, Contoso scopes the use of ExpressRoute for Office 365 to just the SharePoint Online BGP community value, 12076:5020, received through ExpressRoute Microsoft peering.

|**BGP community tag used**|**Functionality routable over Azure ExpressRoute**|**Internet routes required**|
|:-----|:-----|:-----|
|SharePoint  <br/> (12076:5020)  <br/> |SharePoint Online &amp; OneDrive for Business  <br/> | DNS, CRL, &amp; CDN requests  <br/>  All other Office 365 services not specifically supported over Azure ExpressRoute  <br/>  All other Microsoft cloud services  <br/>  Office 365 portal, Office 365 authentication, &amp; Office in a browser  <br/>  Exchange Online, Exchange Online Protection, and Skype for Business Online  <br/> |

> [!NOTE]
> To achieve lower prefix counts for each service, a minimal amount of overlap between services will persist. This is expected behavior.
  
### Scenario 2: Scoping ExpressRoute and internal bandwidth use to some Office 365 services

Fabrikam Inc, a large multi-national enterprise with a distributed heterogeneous network, is a subscriber of many Office 365 services including; Exchange Online, SharePoint Online, and Skype for Business Online. Fabrikam's internal routing infrastructure can handle thousands of IP prefixes in its routing tables; however, Fabrikam only wants to provision ExpressRoute and internal bandwidth for Office 365 applications that are the most sensitive to network performance and use their existing Internet bandwidth for all other Office 365 applications.
  
For that reason, Fabrikam scopes its Azure ExpressRoute bandwidth to just Skype for Business Online BGP Community value, 12076:5030, received through ExpressRoute Microsoft peering. The remaining network traffic associated with Office 365 continues to use the internet egress points.

|**BGP community tag used**|**Functionality routable over Azure ExpressRoute**|**Internet routes required**|
|:-----|:-----|:-----|
|Skype for Business  <br/> (12076:5030)  <br/> |Skype SIP signaling, downloads, voice, video, and desktop sharing  <br/> | DNS, CRL, &amp; CDN requests  <br/>  All other Office 365 services not specifically supported over Azure ExpressRoute  <br/>  All other Microsoft cloud services  <br/>  Office 365 portal, Office 365 authentication, &amp; Office in a browser  <br/>  Skype for Business telemetry, Skype client quick tips, public IM connectivity  <br/>  Exchange Online, Exchange Online Protection, and SharePoint Online  <br/> |

### Scenario 3: Scoping Azure ExpressRoute for Office 365 services only

Woodgrove Bank is a customer of several Microsoft cloud services including Office 365. After evaluating their network capacity and consumption Woodgrove Bank decides to deploy Azure ExpressRoute as the preferred path for the supported Office 365 services. The routing tables can support the full set of Office 365 IP prefixes and the Azure ExpressRoute circuits they have provisioned support all projected bandwidth and latency needs.
  
To ensure network traffic associated with Microsoft cloud services other than Office 365, Woodgrove Bank scopes the use of ExpressRoute for Office 365 to all IP prefixes tagged with Office 365 specific BGP community values, 12076:5010, 12076:5020, 12076:5030, 12076:5100.

|**BGP community tag used**|**Functionality routable over Azure ExpressRoute**|**Internet routes required**|
|:-----|:-----|:-----|
|Exchange, Skype for Business & Microsoft Teams, SharePoint, &amp; other services  <br/> (12076:5010, 12076:5020, 12076:5030, 12076:5100)  <br/> |Exchange Online &amp; Exchange Online Protection  <br/> SharePoint Online &amp; OneDrive for Business  <br/> Skype SIP signaling, downloads, voice, video, and desktop sharing  <br/> Office 365 portal, Office 365 authentication, &amp; Office in a browser  <br/> | DNS, CRL, &amp; CDN requests  <br/>  All other Office 365 services not specifically supported over Azure ExpressRoute  <br/>  All other Microsoft cloud services  <br/> |

## Key planning considerations to using BGP communities

Customers who choose to take advantage of BGP communities to influence how ExpressRoute is advertised and propagated through the customer network should take the following considerations into account:
  
- When using BGP communities in your network design it is important to ensure route symmetry is still maintained. In some cases, the addition or removal of BGP communities may create a situation where symmetric routing is broken and your routing configuration must be updated to re-establish symmetric routing.

- Scoping Azure ExpressRoute with BGP community values is a customer action. Microsoft will advertise all IP prefixes associated with the peering relationship regardless of any scoping configured by the customer.

- Azure ExpressRoute doesn't support any actions on Microsoft's network based on customer assigned BGP communities.

- The IP prefixes used by Office 365 are only marked with service specific BGP community values, location specific BGP communities are not supported. Office 365 services are global in nature, filtering prefixes based on the location of the tenant or data within the Office 365 cloud is not supported. The recommended approach is to configure your network to coordinate the shortest or most preferred network path from the user's network location into the Microsoft global network, regardless of the physical location of the IP address of the Office 365 service they're requesting.

- The IP prefixes included in each BGP community value represent a subnet that contains IP addresses for the Office 365 application associated with the value. In some cases, more than one Office 365 application has IP addresses within a subnet resulting in an IP prefix existing in more than one community value. This is expected, though seldom, behavior due to allocation fragmentation and does not impact the prefix count or bandwidth management goals. Customers are encouraged to use the "allow what's needed" approach as opposed to "deny what's not needed" when taking advantage of BGP communities for Office 365 to minimize the effect.

- Using BGP communities doesn't change the underlying network connectivity requirements or configuration required to use Office 365. Customers who want to access Office 365 are still required to be able to access the Internet.

- Scoping Azure ExpressRoute with BGP communities only affects the routes your internal network can see over the Microsoft peering relationship. You may need to make additional application level configurations such as the use of a PAC or WPAD configuration in conjunction with the scoped routing.

- In addition to using the Microsoft assigned BGP communities, customers may choose to assign their own BGP communities to Office 365 IP prefixes learned through Azure ExpressRoute to influence internal routing. A popular use case is assigning a location based BGP community to all routes learned through each given ExpressRoute peering location and then using that information downstream in the customer network to coordinate the shortest or most preferred network path into Microsoft's network. The use of customer assigned BGP communities with ExpressRoute for Office 365 scenarios is outside of scope of Microsoft control or visibility.

Here's a short link you can use to come back: [https://aka.ms/bgpexpressroute365]().
  
## Related Topics

[Assessing Office 365 network connectivity](assessing-network-connectivity.md)
  
[Azure ExpressRoute for Office 365](azure-expressroute.md)
  
[Managing ExpressRoute for Office 365 connectivity](managing-expressroute-for-connectivity.md)
  
[Routing with ExpressRoute for Office 365](routing-with-expressroute.md)
  
[Network planning with ExpressRoute for Office 365](network-planning-with-expressroute.md)
  
[Media Quality and Network Connectivity Performance in Skype for Business Online](https://support.office.com/article/5fe3e01b-34cf-44e0-b897-b0b2a83f0917)
  
[ExpressRoute and QoS in Skype for Business Online](https://support.office.com/article/20c654da-30ee-4e4f-a764-8b7d8844431d)
  
[Call flow using ExpressRoute](https://support.office.com/article/413acb29-ad83-4393-9402-51d88e7561ab)
  
[Implementing ExpressRoute for Office 365](implementing-expressroute.md)
  
[Support for BGP communities](/azure/expressroute/expressroute-routing)
  
[Office 365 performance tuning using baselines and performance history](performance-tuning-using-baselines-and-history.md)
  
[Performance troubleshooting plan for Office 365](performance-troubleshooting-plan.md)
  
[Azure ExpressRoute for Office 365 Training](https://channel9.msdn.com/series/aer)