---
title: "Step 1: Provide sufficient Internet bandwidth for Microsoft's cloud services"
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
description: ""
---

# Step 1: Provide sufficient Internet bandwidth for Microsoft's cloud services

![This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Required-BothSKUs.png)

**Summary:** 

Prior to cloud computing, enterprise networks were designed to provide users with highly-performant access to applications and data hosted in organization owned and operated datacenters.

To accommodate Internet browsing from on-premises devices, organizations also provide a way for these devices to access the Internet, typically through a security perimeter. This perimeter can consist of a series of intermediate systems such as firewalls, anti-virus scanners, data loss prevention, and intrusion detection devices that provide security from malicious Internet activity. Internet-bound traffic from branch offices is typically sent over the organization network’s private backbone to the main office and then through the security perimeter.

Traditional outboud initiated Internet security is in place to protect the organization from unknown and untrusted external locations. Cloud services like Office 365 are trusted to your data and are well known, and therefore should warrant a higher level of trust.

In addition to treating Office 365, Intune, and Azure traffic associated with Microsoft 365 Enterprise with a high degree of trust, you need configure your network so that the point of presence on the Internet is as close the users originating that traffic as possible.

You should assess your existing and forecasted Internet connectivity needs as a part of the overall Microsoft 365 Enterprise deployment project. For example, enterprise deployments will require sufficient bandwidth to accommodate the concurrent traffic of all their on-premises users at peak capacity. For example, if your organization has a peak time for computing needs, such as end-of-quarter processing, you should ensure that the Internet bandwidth in your central and branch offices can handle it with some additional bandwidth to handle unexpected surges in demand and for future growth.

Also consider that if you currently only have either Office 365 or Intune, then you might need additional bandwidth for Microsoft 365 Enterprise, which includes both.
 
For more information about network connectivity considerations and network assessment facilities you can use to better determine your bandwidth needs, see [Network connectivity to Office 365](https://support.office.com/article/Network-connectivity-to-Office-365-64b420ef-0218-48f6-8a34-74bb27633b10). This article also applies to the combination of Office 365 and Intune in Microsoft 365 Enterprise. 

The result of this step is that you have analyzed your current Internet bandwidth needs and have adjusted both central office and branch office Internet connections to accommodate the traffic.

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step1) corresponding to this step.

## Next step
[Step 2: Ensure that DNS resolution is performed in the same place as the Internet access](networking-dns-resolution-same-location.md)




