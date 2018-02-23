---
title: "Step 2: Ensure that DNS resolution is performed in the same place as the Internet access"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 02/22/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand and configure your DNS resolution for better performance.
---

# Step 2: Ensure that DNS resolution is performed in the same place as the Internet access

*This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 2, you reconfigure your network so that each office has a local Internet link and ISP. Using a local ISP gives each office the shortest path to a Microsoft front-end server on the Internet. These front-end servers for Office 365 and Intune are located around the world to provide high performance, no matter where your offices are located.

You can configure local Internet connections for branch offices and traffic from users’ computers directly, or through a proxy server. In both cases, DNS queries for Internet name resolution are sent from the DNS servers of local ISPs, who identify their location on the Internet to Microsoft’s front-end servers by the source Internet Protocol (IP) address of their DNS queries.

For information about external DNS name records, see [External Domain Name System records for Office 365](https://support.office.com/article/External-Domain-Name-System-records-for-Office-365-c0531a6f-9e25-4f2d-ad0e-a70bfef09ac0).

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step2) corresponding to this step.

## Next step

[Step 3: Configure your proxy servers and firewalls for unhindered access to Office 365](networking-configure-proxies-firewalls.md)

