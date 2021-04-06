---
title: "Capacity planning and load testing SharePoint Online"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 04/10/2019
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Ent_O365
- SPO_Content
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid: 
- SPO160
- MET150
ms.assetid: c932bd9b-fb9a-47ab-a330-6979d03688c0
description: "This article describes how you can deploy to SharePoint Online without performing traditional load testing since it is not permitted."
---

# Capacity planning and load testing SharePoint Online
This article describes how you can deploy to SharePoint Online without traditional load testing, since load-testing is not permitted on SharePoint Online. SharePoint Online is a cloud service and the load capabilities, health and overall balance of load in the service is managed by Microsoft.
  
The best approach to ensuring the success of launching your site is to follow basic principles, practices and recommendations which are highlighted in the [plan your portal launch roll-out](planportallaunchroll-out.md).

## Overview of how SharePoint Online performs Capacity planning 
One of the main benefits of SharePoint Online over an on-premises deployment is the elasticity of the cloud as well as optimizations for users in distributed regions. Our large scale environment is set up to service millions of users on a daily basis, so it is important that we handle capacity effectively by balancing and expanding farms.
  
While the growth is often unpredictable for any one tenant in any one farm, the aggregated sum of requests is predictable over time. By identifying the growth trends in SharePoint Online, we can plan for future expansion.
  
In order to efficiently use capacity and deal with unexpected growth, in any farm, we have automation that tracks and monitors various elements of the service. Multiple metrics are utilized, with one of the main ones being CPU load, which is used as a signal to scale-up front end servers. Additionally to this we recommend a [phased / wave approach](planportallaunchroll-out.md), as SQL environments will scale according to load and growth over time, and following the phases and waves allows for the correct distribution of that load and growth. 

Capacity is more than just about adding more hardware on a continuous basis but it also pertains to managing and controlling that capacity to ensure it is servicing valid load requests. We recommend that customers follow the recommended guidance to ensure they have the best experience. It also means that we have throttling patterns and controls in place to ensure we do not allow "abusive" behavior in the service. Whilst not all "bad" behavior is intentional, we do have to ensure that we limit the effect of that behavior. For further information on throttling and how to avoid it, review the [how to avoid being throttled guidance](/sharepoint/dev/general-development/how-to-avoid-getting-throttled-or-blocked-in-sharepoint-online) article.

## Why you cannot load test SharePoint Online
With on-premises environments, load testing is used to validate scale assumption and ultimately find the breaking point of a farm; by saturating it with load. 

With SharePoint Online we need to do things differently because the scale is relatively fluid and adjusts, throttles and controls load, based on certain heuristics. Being such a large scale multi-tenant environment, we must protect all tenants in the same farm, so we will automatically throttle any load tests. 
If you do however attempt to load test, besides being throttled, you will receive disappointing and potentially misleading results because the farm you tested today will probably have had scale changes during the testing window or within hours after testing, as scale and farm balancing actions are performed on an on-going basis.

Instead of trying to load test SharePoint as a service, rather focus on following the recommended practices and follow the [Creating, launching and maintaining a healthy portal](/sharepoint/portal-health) guidance.