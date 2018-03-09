---
title: "Step 3: Configure your proxy servers and firewalls"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/05/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand and configure proxy servers and firewalls for maximum performance to trusted Office 365 locations.
---

# Step 3: Configure your proxy servers and firewalls

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 3, you configure proxy servers, firewalls, and other intermediate security devices to pass the traffic to and from Office 365 IP addresses either unhindered or with minimal processing. This helps ensure good performance without compromising security, because Microsoft provides datacenter and operational security as part of Office 365. 

Here are the recommendations for your proxy servers and firewalls:

- Configure your proxies and SSL inspection devices for the URLs corresponding to Office 365 services to pass through or skip traffic processing. For more information, see [Managing Office 365 endpoints-Proxies](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a#ID0EABAAA=2._Proxies&ID0EAEAAA=2._Proxies).
- Configure your firewalls for the IP addresses of Office 365 services to allow traffic without additional processing. For more information, see [Managing Office 365 endpoints-Firewalls](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a#ID0EABAAA=2._Proxies&ID0EAEAAA=1._Firewalls).

You can find the URLs, addresses, and address ranges known as endpoints at [https://aka.ms/o365endpoints](https://aka.ms/o365endpoints). 

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step3) for this step.

## Next step

[Step 4: Plan for URL and IP address changes](networking-implement-endpoint-change-mgmt.md)



