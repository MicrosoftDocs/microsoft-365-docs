---
title: "Networking for the Contoso Corporation"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 10/01/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description: Understand the Contoso networking infrastructure and how it uses its SD-WAN technology for optimal networking performance to Microsoft 365 Enterprise cloud services.
---

# Networking for the Contoso Corporation

To adopt a cloud-inclusive infrastructure, Contoso's network engineers realized the fundamental shift in the way that network traffic to cloud services travels. Instead of an internal hub and spoke model that focusses network connectivity and traffic for the next level of the Contoso office hierarchy, they worked to map user locations to local Internet egress and local connections to the closest Microsoft 365 network location on the Internet.

## Contoso's networking infrastructure

The elements of Contoso's network that links their offices across the globe are the following:

- Multiprotocol Label Switching (MPLS) WAN network

  An MPLS WAN network connects the Paris headquarters to regional offices and regional offices to satellite offices in a spoke and hub configuration. This is for users to access on-premises servers that make up line of business applications in the Paris office. It also routes any generic Internet traffic to the Paris office where network security devices scrub the requests. Within each office, routers deliver traffic to wired hosts or wireless access points on subnets, which use the private IP address space.

- Local direct Internet access for Microsoft 365 traffic

  Each office has a Software-Defined WAN (SD-WAN) device with one of more local Internet ISP network circuits, with its own Internet connectivity through a proxy server. This is typically implemented as a WAN link to a local ISP that also provides public IP addresses and a local DNS server.

- Internet presence

  Contoso owns the contoso.com public domain name. The Contoso public web site for ordering products is a set of servers in an Internet-connected datacenter in the Paris campus. Contoso uses a /24 public IP address range on the Internet.

Figure 1 shows Contoso's networking infrastructure and its connections to the Internet.

![Contoso's network](../media/contoso-networking/contoso-networking-fig1.png)
 
**Figure 1: Contoso's network**

## Use of SD-WAN for optimal network connectivity to Microsoft

Contoso followed [Office 365 network connectivity principles](https://docs.microsoft.com/office365/enterprise/office-365-network-connectivity-principles) to:

1. Identify and differentiate Office 365 network traffic
2. Egress network connections locally
3. Avoid network hairpins
4. Bypass duplicate network security devices

There are three categories of network traffic for Office 365: Optimize, Allow, and Default. Optimize and Allow traffic is trusted network traffic that is encrypted and secured at the endpoints and is destined for the Microsoft 365 network.

Contoso decided to:

- Use direct Internet egress for Optimize and Allow category traffic and to forward all Default category traffic to the Paris-based central Internet connection.

- Deploy SD-WAN devices at each of their office locations as a simple way to follow these principles and achieve optimal network performance for Microsoft 365 cloud-based services.

  The SD-WAN devices have a LAN port for the local office network and multiple WAN ports. One WAN port connects to their MPLS network and another WAN port connects to a local ISP circuit. The SD-WAN device routes Optimize and Allow category network traffic over the ISP link.

## Contoso's line of business app infrastructure

Contoso has architected its line of business application and server intranet infrastructure for the following:

- Satellite offices use local caching servers to store frequently accessed documents and internal web sites.
- Regional hubs use regional application servers for the regional and satellite offices. These servers synchronize with servers in the Paris headquarters.
- The Paris campus has the datacenters that contain the centralized application servers that serve the entire organization.

Figure 2 shows the percentage of network traffic when accessing servers across Contoso’s intranet.

![Contoso's infrastructure for internal applications](../media/contoso-networking/contoso-networking-fig2.png)
 
**Figure 2: Contoso's infrastructure for internal applications**

For users in satellite or regional hub offices, 60% of the resources needed by employees can be served by satellite and regional hub office servers. The additional 40% of resource requests must go over the WAN link to the Paris campus.

## Contoso's network analysis and preparation of their network for Microsoft 365 Enterprise

Successful adoption of Microsoft 365 Enterprise services by Contoso’s users depend on highly available and performant connectivity to the Internet, or directly to Microsoft cloud services. Contoso took these steps to plan for and implement optimized connectivity to Microsoft 365 Enterprise cloud services:

1. Created a company WAN network diagram to aid with planning

   Contoso started their network planning by creating a diagram showing their locations, the existing network connectivity, their existing network perimeter devices and classes of service that are managed on the network. They used this diagram for each subsequent step in the planning and implementation of networking connectivity.

2. Created a plan for Microsoft 365 Enterprise network connectivity

   Contoso used the [Office 365 network connectivity principles](https://docs.microsoft.com/office365/enterprise/office-365-network-connectivity-principles) and provided reference network architectures to determine SD-WAN as their preferred topology for Office 365 connectivity.

3. Analyzed Internet connection utilization and MPLS WAN bandwidth at each office and increased bandwidth as needed

   Each office was analyzed for the current usage and circuits were increased so that predicted Microsoft 365 cloud-based traffic would be operating with an average of 20% of unused capacity.

4. Optimized performance to Microsoft network services

   Contoso determined the set of Office 365, Intune, and Azure endpoints and configured firewalls, security devices, and other systems in the Internet path for optimal performance. Endpoints for Office 365 Optimize and Allow category traffic was configured into the SD-WAN devices for routing over the ISP circuit.

5. Configured internal DNS

   DNS is required to be functional and to be looked up locally for Office 365 traffic.

6. Validated network endpoint and port connectivity

   Contoso ran network connectivity test tools provided by Microsoft to validate connectivity for Microsoft 365 Enterprise cloud services.

7. Optimized employee computers for network connectivity

   Individual computers were checked to ensure that the latest operating system updates were installed and that endpoint security monitoring is active on all clients.

## Next step

[Learn](contoso-identity.md) how Contoso is leveraging its on-premises Active Directory Domain Services (AD DS) in the cloud for employees and federating authentication for customers and business partners.

## See also

[Networking for Microsoft 365 Enterprise](networking-infrastructure.md)

[Deployment guide](deploy-microsoft-365-enterprise.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)
