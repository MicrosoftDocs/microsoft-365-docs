---
title: Naming changes in the Microsoft 365 Defender advanced hunting schema
description: Track and review naming changes tables and columns in the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, data, naming changes, rename, Microsoft Threat Protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: lomayor
author: lomayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
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
| [EmailEvents](advanced-hunting-emailevents-table.md) | `FinalEmailAction` | `EmailAction` | Customer feedback |
| [EmailEvents](advanced-hunting-emailevents-table.md) | `FinalEmailActionPolicy` | `EmailActionPolicy` | Customer feedback |
| [EmailEvents](advanced-hunting-emailevents-table.md) | `FinalEmailActionPolicyGuid` | `EmailActionPolicyGuid` | Customer feedback |

## January 2021

| Column name | Original value name | New value name | Reason for change
|--|--|--|--|
| `DetectionSource` | MCAS |	Microsoft Cloud App Security | Rebranding |
| `DetectionSource` | WindowsDefenderAtp|	EDR| Rebranding |
| `DetectionSource` | WindowsDefenderAv	| Antivirus | Rebranding |
| `DetectionSource` | WindowsDefenderSmartScreen | 	SmartScreen | Rebranding |
| `DetectionSource` | CustomerTI |	Custom TI | Rebranding |
| `DetectionSource` | OfficeATP	| Microsoft Defender for Office 365 | Rebranding |
| `DetectionSource` | MTP	| Microsoft 365 Defender | Rebranding |
| `DetectionSource` | AzureATP |	Microsoft Defender for Identity | Rebranding |
| `DetectionSource` | CustomDetection	| Custom detection | Rebranding |
| `DetectionSource` | AutomatedInvestigation |Automated investigation | Rebranding |
| `DetectionSource` | ThreatExperts	| Microsoft Threat Experts | Rebranding |
| `DetectionSource` | 3rd party TI | 3rd Party sensors | Rebranding |
| `ServiceSource` | Microsoft Defender ATP|	Microsoft Defender for Endpoint | Rebranding |
|`ServiceSource` |Microsoft Threat Protection	| Microsoft 365 Defender | Rebranding |
| `ServiceSource` | Office 365 ATP	|Microsoft Defender for Office 365 | Rebranding |
| `ServiceSource` |Azure ATP	|Microsoft Defender for Identity | Rebranding |

`DetectionSource` is available in the [AlertInfo](advanced-hunting-alertinfo-table.md) table. `ServiceSource` is available in the [AlertEvidence](advanced-hunting-alertevidence-table.md) and [AlertInfo](advanced-hunting-alertinfo-table.md) tables. 

## February 2021

1. In the [EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md) and [EmailEvents](advanced-hunting-emailevents-table.md) tables, the `MalwareFilterVerdict`and `PhishFilterVerdict` columns have been replaced by the `ThreatTypes` column. The `MalwareDetectionMethod` and `PhishDetectionMethod` columns were also replaced by the `DetectionMethods` column. This streamlining allows us to provide more information under the new columns. The mapping is provided below.

| Table name | Original column name | New column name | Reason for change
|--|--|--|--|
| `EmailAttachmentInfo` | `MalwareDetectionMethod` <br> `PhishDetectionMethod` | `DetectionMethods` | Include more detection methods |
| `EmailAttachmentInfo`  | `MalwareFilterVerdict` <br>`PhishFilterVerdict` | `ThreatTypes` | Include more threat types |
| `EmailEvents` | `MalwareDetectionMethod` <br> `PhishDetectionMethod` | `DetectionMethods` | Include more detection methods |
| `EmailEvents` | `MalwareFilterVerdict` <br>`PhishFilterVerdict` | `ThreatTypes` | Include more threat types |


2. In the `EmailAttachmentInfo` and `EmailEvents` tables, the `ThreatNames` column was added to give more information about the email threat. This column contains values like Spam or Phish.

3. In the [DeviceInfo](advanced-hunting-deviceinfo-table.md) table, the `DeviceObjectId` column was replaced by the `AadDeviceId` column based on customer feedback.

4. In the [DeviceEvents](advanced-hunting-deviceevents-table.md) table, several ActionType names were modified to better reflect the description of the action. Details of the changes can be found below.

| Table name | Original ActionType name | New ActionType name | Reason for change
|--|--|--|--|
| `DeviceEvents` | `DlpPocPrintJob` | `FilePrinted` | Customer feedback |
| `DeviceEvents` | `UsbDriveMount` | `UsbDriveMounted` | Customer feedback |
| `DeviceEvents` | `UsbDriveUnmount` | `UsbDriveUnmounted` | Customer feedback |
| `DeviceEvents` | `WriteProcessMemoryApiCall` | `WriteToLsassProcessMemory` | Customer feedback |






## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-tables.md)