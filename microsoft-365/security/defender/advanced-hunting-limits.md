---
title: Advanced hunting quotas and usage parameters in Microsoft 365 Defender
description: Understand various quotas and usage parameters (service limits) that keep the advanced hunting service responsive
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema, kusto, CPU limit, query limit, resources, maximum results, quota, parameters, allocation
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# Advanced hunting quotas and usage parameters

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

To keep the service performant and responsive, advanced hunting sets various quotas and usage parameters (also known as "service limits"). These quotas and parameters apply separately to queries run manually and to queries run using [custom detection rules](custom-detection-rules.md). Customers who run multiple queries regularly should be mindful of these limits and [apply optimization best practices](advanced-hunting-best-practices.md) to minimize disruptions.

Refer to the following table to understand existing quotas and usage parameters.

| Quota or parameter | Size | Refresh cycle | Description |
|--|--|--|--|
| Data range | 30 days | Every query | Each query can look up data from up to the past 30 days. |
| Result set | 10,000 rows | Every query | Each query can return up to 10,000 records. |
| Timeout | 10 minutes | Every query | Each query can run for up to 10 minutes. If it does not complete within 10 minutes, the service displays an error.
| CPU resources | Based on tenant size | - Every 15 minutes | The [portal displays an error](advanced-hunting-errors.md) whenever a query runs and the tenant has consumed over 10% of allocated resources. Queries are blocked if the tenant has reached 100% until after the next 15-minute cycle. |

>[!NOTE] 
>A separate set of quotas and parameters apply to advanced hunting queries performed through the API. [Read about advanced hunting APIs](./api-advanced-hunting.md)

## Related topics

- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Handle advanced hunting errors](advanced-hunting-errors.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Custom detections overview](custom-detections-overview.md)