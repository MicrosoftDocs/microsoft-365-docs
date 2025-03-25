---
title: "Capacity planning and load testing SharePoint in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/28/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- SPO_Content
- must-keep
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid: 
- SPO160
- MET150
ms.assetid: c932bd9b-fb9a-47ab-a330-6979d03688c0
description: "This article describes how you can deploy to SharePoint  in Microsoft 365 without performing traditional load testing since it isn't permitted."
---

# Capacity planning and load testing SharePoint  in Microsoft 365
This article describes how you can deploy to SharePoint in Microsoft 365 without traditional load testing, since load-testing isn't permitted on SharePoint in Microsoft 365. SharePoint in Microsoft 365 is a cloud service and Microsoft manages the load capabilities, health, and overall balance of load in the service.
  
The best approach to ensuring the success of launching your site is to follow basic principles, practices, and recommendations that are highlighted in the [plan your portal launch roll-out](planportallaunchroll-out.md).

## Overview of how SharePoint in Microsoft 365 performs Capacity planning

One of the main benefits of SharePoint in Microsoft 365 over an on-premises deployment is the elasticity of the cloud and optimizations for users in distributed regions. Our large-scale environment is set up to service millions of users on a daily basis. So it's important that we handle capacity effectively by balancing and expanding farms.
  
While the growth is often unpredictable for any one tenant in any one farm, the aggregated sum of requests is predictable over time. By identifying the growth trends in SharePoint in Microsoft 365, we can plan for future expansion.
  
In order to efficiently use capacity and deal with unexpected growth, in any farm, we have automation that tracks and monitors various elements of the service. Multiple metrics are utilized, with one of the main ones being CPU load, which is used as a signal to scale-up front-end servers. Additionally, we recommend a [phased / wave approach](planportallaunchroll-out.md), as SQL environments will scale according to load and growth over time. Following the phases and waves allows for the correct distribution of that load and growth.

Capacity is more than just about adding more hardware on a continuous basis but it also pertains to managing and controlling that capacity to ensure it's servicing valid load requests. We recommend that customers follow the recommended guidance to ensure they have the best experience. It also means that we have throttling patterns and controls in place to ensure we don't allow "abusive" behavior in the service. While not all "bad" behavior is intentional, we do have to ensure that we limit the effect of that behavior. For further information on throttling and how to avoid it, review the [how to avoid being throttled guidance](/sharepoint/dev/general-development/how-to-avoid-getting-throttled-or-blocked-in-sharepoint-online) article.

## Why you can't load test SharePoint in Microsoft 365

With on-premises environments, load testing is used to validate scale assumption and ultimately find the breaking point of a farm; by saturating it with load.

With SharePoint in Microsoft 365, we need to do things differently because the scale is relatively fluid and adjusts, throttles, and controls load, based on certain heuristics. Being such a large-scale multitenant environment, we must protect all tenants in the same farm, so we automatically throttle any load tests.

If you do however attempt to load test, besides being throttled, you could receive disappointing and potentially misleading results. The reason it could happen is because the farm you tested today could have scale changes during the testing window or within hours after testing, as scale and farm balancing actions are performed on an ongoing basis.

Instead of trying to load test SharePoint as a service, rather focus on following the recommended practices and follow the [Creating, launching, and maintaining a healthy portal](/sharepoint/portal-health) guidance.
