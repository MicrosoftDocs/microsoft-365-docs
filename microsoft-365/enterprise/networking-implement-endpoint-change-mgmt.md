---
title: "Step 4: Plan for URL and IP address changes"
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
description: ""
---

# Step 4: Plan for URL and IP address changes

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

>[!Note]
>This step requires [Step 3](networking-configure-proxies-firewalls.md). If you have not done Step 3, you can skip to [Step 5](networking-optimize-tcp-performance.md).
>

The URLs and IP addresses used by the global Microsoft 365 network change over time, so it’s important to plan for updates to these endpoints. For example, you may need to reconfigure your security perimeter devices with:

- New URLs for new services that will need unhindered processing
- Removed URLs for discontinued services
- New IP address ranges for new Microsoft network locations and servers on the Internet 
- Changes in IP address ranges for the different services

For more information about establishing an implementation plan for changes in endpoints, which includes being notified of changes, see [Managing Office 365 endpoints-Integration](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a?ui=en-US#ID0EABAAA=2._Proxies&ID0EAEAAA=3._Integration) and [Managing Office 365 endpoints-Proxies](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a?ui=en-US&rs=en-US&ad=US#ID0EABAAA=2._Proxies&ID0EAEAAA=2._Proxies).

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step4) for this step.

## Next step

[Step 5: Optimize client and Office 365 service performance](networking-optimize-tcp-performance.md)
