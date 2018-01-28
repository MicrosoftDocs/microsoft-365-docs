---
title: "Step 4: Implement your plan for endpoint change management"
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

# Step 4: Implement your plan for endpoint change management

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

>[!Note]
>This step requires [Step 3](networking-configure-proxies-firewalls.md). If you have not done Step 3, you can skip to [Step 5](networking-optimize-tcp-performance.md).
>

Once you have configured your security perimeter devices with the appropriate set of endpoints and behaviors, you must implement a plan to keep those endpoints up to date. Microsoft reserves the right to change the endpoints as its global network and set of services continues to evolve. As a consequence of that evolution, there can be changes due to:

- New URLs for new services that will need unhindered processing
- Removed URLs for discontinued services
- New IP address ranges for new Microsoft network points of presence on the Internet 
- Changes in IP address ranges for the different services

For more information about establishing an implementation plan for changes in endpoints, see [Managing Office 365 endpoints-Integration](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a?ui=en-US#ID0EABAAA=2._Proxies&ID0EAEAAA=3._Integration) and [Managing Office 365 endpoints-Proxies](https://support.office.com/article/Managing-Office-365-endpoints-99cab9d4-ef59-4207-9f2b-3728eb46bf9a?ui=en-US&rs=en-US&ad=US#ID0EABAAA=2._Proxies&ID0EAEAAA=2._Proxies).

The result of this step is that you dynamically receive changes to endpoints and implement those changes in your perimeter network devices.

As an interim checkpoint, you can see the [exit criteria](networking-exit-criteria.md#crit-networking-step4) corresponding to this step.

## Next step

[Step 5: Optimize TCP and application performance](networking-optimize-tcp-performance.md)



