---
title: AlertInfo table in the advanced hunting schema
description: Learn about alert generation events in the AlertInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, AlertInfo, alert, severity, category, MITRE, ATT&CK, Microsoft Defender ATP, MDATP, Office 365 ATP, Microsoft Cloud App Security, MCAS, and Azure ATP
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

# AlertInfo

**Applies to:**
- Microsoft Threat Protection



The `AlertInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about alerts from Microsoft Defender ATP, Office 365 ATP, Microsoft Cloud App Security, and Azure ATP. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `AlertId` | string | Unique identifier for the alert |
| `Title` | string | Title of the alert |
| `Category` | string | Type of threat indicator or breach activity identified by the alert |
| `Severity` | string | Indicates the potential impact (high, medium, or low) of the threat indicator or breach activity identified by the alert |
| `ServiceSource` | string | Product or service that provided the alert information |
| `DetectionSource` | string | Detection technology or sensor that identified the notable component or activity |
| `AttackTechniques` | string | MITRE ATT&CK techniques associated with the activity that triggered the alert |

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
