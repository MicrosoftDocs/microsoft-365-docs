---
title: "Step 2: Ensure that DNS resolution is performed in the same place as the Internet access"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
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

![This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Required-BothSKUs.png)

In [Step 1](networking-provide-bandwidth-cloud-services.md), Microsoft recommended the use of separate and local Internet connections for all offices. The principal reason for this recommendation is performance because the traffic does not have to travel over your organization’s backbone, incurring routing delays over additional hops and possible bottlenecks as more of your daily productivity traffic becomes cloud-based.

Another reason is that Microsoft has many points of presence with front end servers for Office 365 and Intune around the world to provide high performance no matter where you are located. That performance is based on sending your traffic over the least number of hops to a Microsoft network front end server. When you consolidate your Internet traffic through central offices, the traffic must travel across your wide area network and then to the front-end server nearest to the central office proxy server.

A much more efficient path is from the branch office to the front-end server nearest to them on the Internet. You can accomplish this with local Internet connections for branch offices and traffic either from user’s computers directly or through a proxy server. In both cases, DNS queries for Internet name resolution are sent from the DNS servers of local ISPs, who identify their location on the Internet to Microsoft’s front-end servers by the source Internet Protocol (IP) address of their DNS queries.

By using an ISP and its DNS server that are close to the actual location of an office, you can obtain the shortest path to each Microsoft front end server on the Internet.

The result of this step is that each office has a local Internet link and an ISP that reflects the office's physical location.

For information about external DNS name records, see [External Domain Name System records for Office 365](https://support.office.com/article/External-Domain-Name-System-records-for-Office-365-c0531a6f-9e25-4f2d-ad0e-a70bfef09ac0).

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step2) corresponding to this step.

## Next step

[Step 3: Configure your proxy servers and firewalls for unhindered access to Office 365](networking-configure-proxies-firewalls.md)



