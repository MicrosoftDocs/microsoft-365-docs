---
title: "Network planning with ExpressRoute for Office 365"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 2/14/2018
audience: ITPro
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: 103208f1-e788-4601-aa45-504f896511cd
description: "In this article, you will learn about Azure ExpressRoute for Office 365 and how to utilize it for Network planning."
---

# Network planning with ExpressRoute for Office 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

ExpressRoute for Office 365 provides layer 3 connectivity between your network and Microsoft's datacenters. The circuits use Border Gateway Protocol (BGP) route advertisements of Office 365's front-end servers. From the perspective of your on-premises devices, when they need to select the correct TCP/IP path to Office 365, Azure ExpressRoute is seen as an alternative to the Internet.
  
Azure ExpressRoute adds a direct path to a specific set of supported features and services that are offered by Office 365 servers within Microsoft's datacenters. Azure ExpressRoute doesn't replace Internet connectivity to Microsoft datacenters or basic Internet services such as domain name resolution. Azure ExpressRoute and your Internet circuits should be secured and redundant.
  
The following table highlights a few differences between the internet and Azure ExpressRoute connections in the context of Office 365.

|**Differences in network planning**|**Internet network connection**|**ExpressRoute network connection**|
|:-----|:-----|:-----|
| Access to required internet services, including;  <br/>  DNS name resolution  <br/>  Certificate revocation verification  <br/>  Content Delivery Networks (CDNs)  <br/> |Yes  <br/> |Requests to Microsoft owned DNS and/or CDN infrastructure may use the ExpressRoute network.  <br/> |
| Access to Office 365 services, including;  <br/>  Exchange Online  <br/>  SharePoint Online  <br/>  Skype for Business Online  <br/>  Office in a browser  <br/>  Office 365 Portal and Authentication  <br/> |Yes, all applications and features  <br/> |Yes, [specific applications and features](./urls-and-ip-address-ranges.md) <br/> |
|On-premises security at perimeter.  <br/> |Yes  <br/> |Yes  <br/> |
|High availability planning.  <br/> |Failover to an alternate internet network connection  <br/> |Failover to an alternate ExpressRoute connection  <br/> |
|Direct connection with a predictable network profile.  <br/> |No  <br/> |Yes  <br/> |
|IPv6 connectivity.  <br/> |Yes  <br/> |Yes  <br/> |

Expand the titles below for more network planning guidance. We've also recorded a 10-part [Azure ExpressRoute for Office 365 Training](https://channel9.msdn.com/series/aer) series that dives deeper.

## Existing Azure ExpressRoute customers

If you're using an existing Azure ExpressRoute circuit and would like to add Office 365 connectivity over this circuit, you should look at the number of circuits, egress locations, and size of the circuits to ensure they'll meet the needs of your Office 365 usage. Most customers require additional bandwidth and many require additional circuits.
  
To enable access to Office 365 over your existing Azure ExpressRoute circuits, [configure the route filters](/azure/expressroute/how-to-routefilter-portal) to ensure the Office 365 services are accessible.
  
The Azure ExpressRoute subscription is customer-centric, meaning subscriptions are tied to customers. As a customer, you can have multiple Azure ExpressRoute circuits and can access many Microsoft cloud resources over those circuits. For example, you can choose to access an Azure hosted virtual machine, an Office 365 test tenant, and an Office 365 production tenant over a pair of redundant Azure ExpressRoute circuits.
  
This table outlines the two types of peering relationships you can choose to implement over your circuits.

|**Peering relationship**|**Azure Private**|**Microsoft**|
|:-----|:-----|:-----|
|**Services** <br/> |IaaS: Azure Virtual Machines  <br/> |PaaS: Azure public services  <br/> SaaS: Office 365  <br/> SaaS: Dynamics 365  <br/> |
|****Connection initiation**** <br/> |Customer-to-Microsoft  <br/> Microsoft-to-Customer  <br/> |Customer-to-Microsoft  <br/> Microsoft-to-Customer  <br/> |
|**QoS support** <br/> |No QoS  <br/> |QoS<sup>1</sup> <br/> |

<sup>1 </sup>QoS supports Skype for Business only at this time.
  
## Bandwidth planning for Azure ExpressRoute

Every Office 365 customer has unique bandwidth needs depending on the number of people at each location, how active they are with each Office 365 application, and other factors such as the use of on-premises or hybrid equipment and network security configurations.
  
Having too little bandwidth will result in congestion, retransmissions of data, and unpredictable delays. Having too much bandwidth will result in unnecessary cost. On an existing network, bandwidth is often referred to in terms of the amount of available headroom on the circuit as a percentage. Having 10% headroom will likely result in congestion and having 80% headroom generally means unnecessary cost. Typical headroom target allocations are 20% to 50%.
  
To find the right level of bandwidth, the best mechanism is to test your existing network consumption. This is the only way to get a true measure of usage and need as every network configuration and applications are in some ways unique. When measuring you'll want to pay close attention to the total bandwidth consumption, latency, and TCP congestion to understand your network needs.
  
Once you have an estimated baseline that includes all network applications, pilot Office 365 with a small group that comprises the different profiles of people in your organization to determine actual usage, and use the two measurements to estimate the amount of bandwidth you'll require for each office location. If there are any latency or TCP congestion issues found in your testing, you may need to move the egress closer to the people using Office 365 or remove intensive network scanning such as SSL decryption/inspection.
  
All of our recommendations on what type of network processing is recommended applies to both ExpressRoute and Internet circuits. The same is true for the rest of the guidance on our [performance tuning site](./network-planning-and-performance.md).
  
## Applying security controls to Azure ExpressRoute for Office 365 scenarios

Securing Azure ExpressRoute connectivity starts with the same principles as securing Internet connectivity. Many customers choose to deploy network and perimeter controls along the ExpressRoute path connecting their on-premises network to Office 365 and other Microsoft clouds. These controls may include firewalls, application proxies, data leakage prevention, intrusion detection, intrusion prevention systems, and so on. In many cases customers apply different levels of controls to traffic initiated from on-premises going to Microsoft, versus traffic initiated from Microsoft going to customer on-premises network, versus traffic initiated from on-premises going to a general Internet destination.
  
Here's a few examples of integrating security with the [ExpressRoute connectivity model](/azure/expressroute/expressroute-connectivity-models) you choose to deploy.

|**ExpressRoute integration option**|**Network security perimeter model**|
|:-----|:-----|
|Co-located at a cloud exchange  <br/> |Install new or leverage existing security/perimeter infrastructure in the co-location facility where the ExpressRoute connection is established.  <br/> Leverage co-location facility purely for routing/interconnect purposes and back haul connections from co-location facility into the on-premises security/perimeter infrastructure.  <br/> |
|Point-to-Point Ethernet  <br/> |Terminate the Point-to-Point ExpressRoute connection in the existing on-premises security/perimeter infrastructure location.  <br/> Install new security/perimeter infrastructure specific to the ExpressRoute path and terminate the Point-to-Point connection there.  <br/> |
|Any-to-Any IPVPN  <br/> |Leverage an existing on-premises security/perimeter infrastructure at all locations that egress into the IPVPN used for ExpressRoute for Office 365 connectivity.  <br/> Hairpin the IPVPN used for ExpressRoute for Office 365 to specific on-premises locations designated to serve as the security/perimeter.  <br/> |

Some service providers also offer managed security/perimeter functionality as a part of their integration solutions with Azure ExpressRoute.
  
When considering the topology placement of the network/security perimeter options used for ExpressRoute for Office 365 connections, following are additional considerations
  
- The depth and type network/security controls may have impact on the performance and scalability of the Office 365 user experience.

- Outbound (on-premises-\>Microsoft) and inbound (Microsoft-\>on-premises) [if enabled] flows may have different requirements. These are likely different than Outbound to general Internet destinations.

- Office 365 requirements for ports/protocols and necessary IP subnets are the same whether traffic is routed through ExpressRoute for Office 365 or through the Internet.

- Topological placement of the customer network/security controls determines the ultimate end to end network between the user and Office 365 service and can have a substantial impact on network latency and congestion.

- Customers are encouraged to design their security/perimeter topology for use with ExpressRoute for Office 365 in accordance with best practices for redundancy, high availability, and disaster recovery.

Here's an example of Woodgrove Bank that compares the different Azure ExpressRoute connectivity options with the perimeter security models discussed above.
  
### Example 1: Securing Azure ExpressRoute
  
Woodgrove Bank is considering implementing Azure ExpressRoute and after planning the optimal architecture for [Routing with ExpressRoute for Office 365](routing-with-expressroute.md) and after using the above guidance to understand bandwidth requirements, they're determining the best method for securing their perimeter.
  
For Woodgrove, a multi-national organization with locations in multiple continents, security must span all perimeters. The optimal connectivity option for Woodgrove is a multi-point connection with multiple peering locations around the globe to service the needs of their employees in each continent. Each continent includes redundant Azure ExpressRoute circuits within the continent and security must span all of these.
  
Woodgrove's existing infrastructure is reliable and can handle the additional work, as a result, Woodgrove Bank is able to use the infrastructure for their Azure ExpressRoute and internet perimeter security. If this weren't the case, Woodgrove could choose to purchase additional equipment to supplement their existing equipment or to handle a different type of connection.
  
## High availability and failover with Azure ExpressRoute
<a name="BKMK_high-availability"> </a>

We recommend provisioning at least two active circuits from each egress with ExpressRoute to your ExpressRoute provider. This is the most common place we see failures for customers and you can easily avoid it by provisioning a pair of active/active ExpressRoute circuits. We also recommend at least two active/active Internet circuits because many Office 365 services are only available over the Internet.
  
Inside the egress point of your network are many other devices and circuits that play a critical role in how people perceive availability. These portions of your connectivity scenarios are not covered by ExpressRoute or Office 365 SLAs, but they play a critical role in the end to end service availability as perceived by people in your organization.
  
Focus on the people using and operating Office 365, if a failure of any one component would affect peoples' experience using the service, look for ways to limit the total percentage of people affected. If a failover mode is operationally complex, consider the peoples' experience of a long time to recovery and look for operationally simple and automated failover modes.
  
Outside of your network, Office 365, ExpressRoute, and your ExpressRoute provider all have different levels of availability.
  
### Service Availability
  
- Office 365 services are covered by well-defined [service level agreements](/office365/servicedescriptions/office-365-platform-service-description/service-level-agreement), which include uptime and availability metrics for individual services. One reason Office 365 can maintain such high service availability levels is the ability for individual components to seamlessly failover between the many Microsoft datacenters, using the global Microsoft network. This failover extends from the datacenter and network to the multiple Internet egress points, and enables failover seamlessly from the perspective of the people using the service.

- ExpressRoute [provides a 99.9% availability SLA](https://azure.microsoft.com/support/legal/sla/expressroute/v1_0/) on individual dedicated circuits between the Microsoft Network Edge and the ExpressRoute provider or partner infrastructure. These service levels are applied at the ExpressRoute circuit level, which consists of [two independent interconnects](/azure/expressroute/expressroute-introduction) between the redundant Microsoft equipment and the network provider equipment in each peering location.

### Provider Availability
  
- Microsoft's service level arrangements stop at your ExpressRoute provider or partner. This is also the first place you can make choices that will influence your availability level. You should closely evaluate the architecture, availability, and resiliency characteristics your ExpressRoute provider offers between your network perimeter and your providers connection at each Microsoft peering location. Pay close attention to both the logical and physical aspects of redundancy, peering equipment, carrier provided WAN circuits, and any additional value add services such as NAT services or managed firewalls.

### Designing your availability plan
  
We strongly recommend that you plan and design high availability and resiliency into your end-to-end connectivity scenarios for Office 365. A design should include;
  
- no single points of failure, including both Internet and ExpressRoute circuits.

- minimizing the number of people affected and duration of that impact for most anticipated failure modes.

- optimizing for simple, repeatable, and automatic recovery process from most anticipated failure modes.

- supporting the full demands of your network traffic and functionality through redundant paths, without substantial degradation.

Your connectivity scenarios should include a network topology that is optimized for multiple independent and active network paths to Office 365. This will yield a better end-to-end availability than a topology that is optimized only for redundancy at the individual device or equipment level.
  
> [!TIP]
> If your users are distributed across multiple continents or geographic regions and each of those locations connects over redundant WAN circuits to a single on-premises location where a single ExpressRoute circuit is located, your users will experience less end-to-end service availability than a network topology design that includes independent ExpressRoute circuits that connect the different regions to the nearest peering location.
  
We recommend provisioning at least two ExpressRoute circuits with each circuit connecting to with a different geographic peering location. You should provision this active-active pair of circuits for every region where people will use ExpressRoute connectivity for Office 365 services. This allows each region to remain connected during a disaster that affects a major location such as a datacenter or peering location. Configuring them in as active/active allows end user traffic to be distributed across multiple network paths. This reduces the scope of people affected during device or network equipment outages.
  
We don't recommend using a single ExpressRoute circuit with the Internet as a backup.
  
### Example 2: Failover and High Availability
  
Woodgrove Bank's multi-geographic design has undergone a review of routing, bandwidth, security, and now must go through a high availability review. Woodgrove thinks about high availability as covering three categories; resiliency, reliability, and redundancy.
  
Resiliency allows Woodgrove to recover from failures quickly. Reliability allows Woodgrove to offer a consistent outcome within the system. Redundancy allows Woodgrove to a move between one or more mirrored instances of infrastructure.
  
Within each edge configuration, Woodgrove has redundant Firewalls, Proxies, and IDS. For North America, Woodgrove has one edge configuration in their Dallas datacenter and another edge configuration in their Virginia datacenter. The redundant equipment at each location offers resiliency to that location.
  
The network configuration at Woodgrove Bank is built based on a few key principles:
  
- Within each geographic region, there are multiple Azure ExpressRoute circuits.

- Each circuit within a region can support all of the network traffic within that region.

- Routing will clearly prefer one or the other path depending on availability, location, and so on.

- Failover between Azure ExpressRoute circuits happens automatically without additional configuration or action required by Woodgrove.

- Failover between Internet circuits happens automatically without additional configuration or action required by Woodgrove.

In this configuration, with redundancy at the physical and virtual level, Woodgrove Bank is able to offer local resiliency, regional resiliency, and global resiliency in a reliable way. Woodgrove elected this configuration after evaluating a single Azure ExpressRoute circuit per region as well as the possibility of failing over to the internet.
  
If Woodgrove was unable to have multiple Azure ExpressRoute circuits per region, routing traffic originating in North America to the Azure ExpressRoute circuit in Asia Pacific would add an unacceptable level of latency and the required DNS forwarder configuration adds complexity.
  
Leveraging the internet as a backup configuration isn't recommended. This breaks Woodgrove's reliability principle, resulting in an inconsistent experience using the connection. Additionally, manual configuration would be required to failover considering the BGP advertisements that have been configured, NAT configuration, DNS configuration, and the proxy configuration. This added failover complexity increases the time to recover and decreases their ability to diagnose and troubleshoot the steps involved.
  
Still have questions about how to plan for and implement traffic management or Azure ExpressRoute? Read the rest of our [network and performance guidance](./network-planning-and-performance.md) or the [Azure ExpressRoute FAQ](/azure/expressroute/expressroute-faqs).
  
## Working with Azure ExpressRoute providers
<a name="BKMK_high-availability"> </a>

Choose the locations of your circuits based on your bandwidth, latency, security, and high availability planning. Once you know the optimal locations you'd like to place circuits [review the current list of providers by region](/azure/expressroute/expressroute-locations).
  
Work with your provider or providers to select the best connectivity options, point-to-point, multi-point, or hosted. Remember, you can mix and match the connectivity options so long as the bandwidth and other redundant components support your routing and high availability design.
  
Here's a short link you can use to come back: [https://aka.ms/planningexpressroute365]()
  
## Related Topics
<a name="BKMK_high-availability"> </a>

[Assessing Office 365 network connectivity](assessing-network-connectivity.md)
  
[Azure ExpressRoute for Office 365](azure-expressroute.md)
  
[Managing ExpressRoute for Office 365 connectivity](managing-expressroute-for-connectivity.md)
  
[Routing with ExpressRoute for Office 365](routing-with-expressroute.md)
  
[Implementing ExpressRoute for Office 365](implementing-expressroute.md)
  
[Using BGP communities in ExpressRoute for Office 365 scenarios](bgp-communities-in-expressroute.md)
  
[Media Quality and Network Connectivity Performance in Skype for Business Online](https://support.office.com/article/5fe3e01b-34cf-44e0-b897-b0b2a83f0917)
  
[Optimizing your network for Skype for Business Online](https://support.office.com/article/b363bdca-b00d-4150-96c3-ec7eab5a8a43)
  
[ExpressRoute and QoS in Skype for Business Online](https://support.office.com/article/20c654da-30ee-4e4f-a764-8b7d8844431d)
  
[Call flow using ExpressRoute](https://support.office.com/article/413acb29-ad83-4393-9402-51d88e7561ab)
  
[Office 365 performance tuning using baselines and performance history](performance-tuning-using-baselines-and-history.md)
  
[Performance troubleshooting plan for Office 365](performance-troubleshooting-plan.md)
  
[Office 365 URLs and IP address ranges](https://support.office.com/article/8548a211-3fe7-47cb-abb1-355ea5aa88a2)
  
[Office 365 network and performance tuning](network-planning-and-performance.md)
  
[Office 365 endpoints FAQ](https://support.office.com/article/d4088321-1c89-4b96-9c99-54c75cae2e6d)