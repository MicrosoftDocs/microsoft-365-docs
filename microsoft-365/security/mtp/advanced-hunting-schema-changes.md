---
title: Naming changes in the Microsoft 365 Defender advanced hunting schema
description: Track and review naming changes tables and columns in the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, data, naming changes, rename, Microsoft Threat Protection
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
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: article
---

# Advanced hunting schema - Naming changes

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

The [advanced hunting schema](advanced-hunting-schema-tables.md) is updated regularly to add new tables and columns. In some cases, existing columns names are renamed or replaced to improve the user experience. Refer to this article to review naming changes that could impact your queries.

Naming changes are automatically applied to queries that are saved in the security center, including queries used by custom detection rules. You don't need to update these queries manually. However, you will need to update the following queries:
- Queries that are run using the API
- Queries that are saved elsewhere outside the security center

## December 2020

| Table name | Original column name | New column name | Reason for change
|--|--|--|--|
| [EmailEvents](advanced-hunting-emailevents-table.md) | FinalEmailAction | EmailAction | Customer feedback |
| [EmailEvents](advanced-hunting-emailevents-table.md) | FinalEmailActionPolicy | EmailActionPolicy | Customer feedback |
| [EmailEvents](advanced-hunting-emailevents-table.md) | FinalEmailActionPolicyGuid | EmailActionPolicyGuid | Customer feedback |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-tables.md)