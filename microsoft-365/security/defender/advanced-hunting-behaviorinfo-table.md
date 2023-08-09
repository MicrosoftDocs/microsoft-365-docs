---
title: BehaviorInfo table in the advanced hunting schema
description: Learn about alert generation events in the BehaviorInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, AlertInfo, alert, severity, category, MITRE, ATT&CK, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and Microsoft Defender for Identity
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.date: 02/16/2021
---

# BehaviorInfo

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender




The `BehaviorInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about alerts from Microsoft Defender for Cloud Apps. Use this reference to construct queries that return information from this table.

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Behaviors are a type of data in Microsoft 365 Defender based on one or more raw events. Behaviors provide contextual insight into events and can, but not necessarily, indicate malicious activity. [Read more about behaviors](/defender-cloud-apps/behaviors)

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `BehaviorId` | `string` | Unique identifier for the behavior|
| `ActionType` | `string` | Type of behavior |
| `Description` | `string` | Description of the behavior |
| `Categories` | `list` | Type of threat indicator or  breach activity identified by the behavior|
| `AttackTechniques` | `string` | MITRE ATT&CK techniques associated with the activity that triggered the alert |
| `ServiceSource` | `string` | Product or service that identified the behavior |
| `DetectionSource` | `string` | Detection technology or sensor that identified the notable component or activity |
| `DataSources` | `list` | Products or services that provided information for the behavior |
| `DeviceId` | `string` | Unique identifier for the machine in the service |
| `AccountUpn` | `string` | User principal name (UPN) of the account |
| `AccountObjectId` | `string` | Unique identifier for the account in Azure AD |
| `StartTime` | `datetime` | Date and time of the first activity related to the behavior|
| `EndTime` | `datetime` | Date and time of the last activity related to the behavior|
| `AdditionalFields` | `string` | Additional information about the behavior|



## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
