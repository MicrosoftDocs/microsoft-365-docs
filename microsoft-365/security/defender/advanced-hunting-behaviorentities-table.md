---
title: BehaviorEntities table in the advanced hunting schema
description: Learn about behaviors in the BehaviorEntities table of the advanced hunting schema
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

# BehaviorEntities

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender


The `BehaviorEntities` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about behaviors in Microsoft Defender for Cloud Apps. Use this reference to construct queries that return information from this table.

[ADD DESCRIPTION ABOUT BEHAVIORS AND LINK TO BEHAVIOR DOC]

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `BehaviorId` | `string` | Unique identifier for the behavior|
| `ActionType` | `string` | Type of behavior |
| `Categories` | `list` | Type of threat indicator or  breach activity identified by the behavior|
| `ServiceSource` | `string` | Product or service that identified the behavior |
| `DetectionSource` | `string` | Detection technology or sensor that identified the notable component or activity |
| `DataSources` | `list` | Products or services that provided information for the behavior |
| `EntityType` | `string` | Type of object, such as a file, a process, a device, or a user |
| `EntityRole` | `string` | Indicates whether the entity is impacted or merely related |
| `DetailedEntityRole` | `string` | The roles of the entity in the behavior|
| `FileName` | `string` | Name of the file that the behavior applies to|
| `FolderPath` | `string` | Folder containing the file that the behavior applies to|
| `SHA1` | `string` | SHA-1 of the file that the behavior applies to|
| `SHA256` | `string` | SHA-256 of the file that the behavior applies to|
| `FileSize` | `long` | Size, in bytes, of the file that the behavior applies to|
|`ThreatFamily`|`string`| xxx |
|`RemoteIP`|`string` |xxx |
|`RemoteUrl`|`string` |xxx |
|`AccountName`|`string` |xxx |
|`AccountDomain`|`string` |xxx |
|`AccountSid`|`string` |xxx |
| `AccountObjectId` | `string` | Unique identifier for the account in Azure AD |
| `AccountUpn` | `string` | User principal name (UPN) of the account |
| `DeviceId` | `string` | Unique identifier for the machine in the service |
|`DeviceName`|`string` |xxx |
|`LocalIP`|`string` |xxx |
|`NetworkMessageId`|`string`| xxx |
|`EmailSubject`|`string`| xxx |
|`EmailClusterId`|`string`| xxx |
|`Application`|`string`| xxx |
|`ApplicationId	`|`int`| xxx |
|`OAuthApplicationId`|`string`| xxx |
|`ProcessCommandLine`|`string`| xxx |
|`RegistryKey`|`string`| xxx |
|`RegistryValueName`|`string`| xxx |
|`RegistryValueData	`|`string`| xxx |
| `AdditionalFields` | `string` | Additional information about the behavior|

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
