---
title: Advanced hunting limits in Microsoft Threat Protection
description: Understand various service limits that keep the advanced hunting service responsive
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema, kusto, CPU limit, query limit, resources, maximum results
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Advanced hunting service limits

**Applies to:**
- Microsoft Threat Protection

To keep the service performant and responsive, advanced hunting sets various limits to queries run manually on the editor and by [custom detection rules](custom-detection-rules.md). Refer to the following table to understand these limits.

| Limit type | Size | Refresh cycle | Description |
| -- | -- | -- | -- |
| Data range | 30 days | Every query | Each query can look up data from up to the past 30 days. |
| Result set | 10,000 rows | Every query | Each query can return up to 10,000 records. |
| Timeout | 10 minutes | Every query | Each query can run for up to 10 minutes. If it does not complete within 10 minutes, the service displays an error.
| CPU resources | Based on tenant size | On the hour and every 15 minutes thereafter | Query editor displays a warning message at 10% consumption and then blocks queries at 100%. |
| CPU resources | Based on tenant size | Every day at 12 midnight | Query editor displays a warning message at 10% consumption and then blocks queries at 100%. |
|

For limits associated with the streaming API, read [TBD](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/run-advanced-query-api) 

Customers who run multiple queries regularly should track consumption and [apply optimization best practices](advanced-hunting-best-practices.md) to minimize disruption resulting from exceeding these limits.

## Related topics

- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Custom detections overview](custom-detections-overview.md)
