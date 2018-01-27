---
title: "Step 3: Configure your proxy servers and firewalls for unhindered access to Office 365"
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

# Step 3: Configure your proxy servers and firewalls for unhindered access to Office 365

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

**Summary:** 

Internet web browsing on arbitrary Internet sites can incur substantial security risks. Therefore, most organizations implement network security, monitoring, and traffic evaluation technology in their security perimeter facing the Internet. These network security intermediate systems process traffic in multiple ways and can include proxying of traffic on behalf of on-premises client devices, SSL decryption and inspection of network traffic, application layer-based analysis for data loss prevention, and more. 

Unfortunately, each of these devices introduces a delay in the delivery of traffic, which, as your organization network and its users moves to more cloud-based computing, can result in a poor performance. 

Microsoft hosts Office 365 servers in Microsoft datacenters and is very transparent about its datacenter security, operational security, and risk reduction around those servers and the network endpoints that they represent. Office 365 also has many other methods available for reducing that network security risk including the built-in security features in Office 365 such as, Data Loss Prevention, Anti-Virus, Multi-Factor Authentication, Customer Lock Box, Advanced Threat Protection, Office 365 Threat Intelligence, Office 365 Secure Score, Exchange Online Protection, Network DDOS Security, and other many other security features.

Because these security methods, technologies, and features are already in place within Office 365, you should consider configuring your proxy servers, firewalls, and other intermediate security devices to pass the traffic to and from Office 365 IP addresses through the device either unhindered or with minimal processing. Consider the following for your security perimeter at each office:

- You configure your proxies and SSL inspection devices for the URLs corresponding to Office 365 services to pass through or skip traffic processing. For more information, see [Managing Office 365 endpoints-Firewalls](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a#ID0EABAAA=2._Proxies&ID0EAEAAA=2._Proxies).
- You configure your firewalls for the IP addresses of Office 365 services to allow traffic without additional processing. For more information, see [Managing Office 365 endpoints-Firewalls](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a#ID0EABAAA=2._Proxies&ID0EAEAAA=1._Firewalls).
- 
The set of web pages at [https://aka.ms/O365IP](https://aka.ms/O365IP) lists these URLs and addresses and address ranges, which Microsoft calls endpoints. 

The result of this step is that you have configured your perimeter network systems to treat Office 365 traffic with minimal processing.

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step3) corresponding to this step.

## Next step

[Step 4: Implement plan for endpoint change management](networking-implement-endpoint-change-mgmt.md)



