---
title: "Step 2: Ensure that DNS resolution is local to the ISP"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/05/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure your DNS resolution for better performance.
---

# Step 2: Ensure that DNS resolution is local to the ISP

*This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/networking_icon-small.png)

In Step 2, you reconfigure your network so that each office has a local Internet link and Internet service provider (ISP). Using a local ISP gives each office the shortest path to a Microsoft front-end server on the Internet. These front-end servers for Office 365 and Intune are located around the world to provide the best performance, no matter where your offices are located.

You can configure local Internet connections for branch offices and traffic from users’ computers directly, or through a proxy server. In both cases, DNS queries for Internet name resolution are sent from the DNS servers of local ISPs, who identify their location on the Internet through the source Internet Protocol (IP) address of their DNS queries. Microsoft DNS servers can respond with the IP addresses of the closest front-end server to the branch office or user computer, which ensures the best performance.

For information about external DNS name records, see [External Domain Name System records for Office 365](https://support.office.com/article/External-Domain-Name-System-records-for-Office-365-c0531a6f-9e25-4f2d-ad0e-a70bfef09ac0).

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step2) for this step.

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step3.png)|[Configure your proxy servers and firewalls](networking-configure-proxies-firewalls.md)|
