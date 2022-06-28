---
title: DeviceTvmInfoGatheringKB table in the advanced hunting schema
description: Learn about the metadata for assessment events in the DeviceTvmInfoGathering table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities
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
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security-compliance
ms.topic: article
ms.technology: m365d
---

# DeviceTvmInfoGatheringKB

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

>[!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The `DeviceTvmInfoGatheringKB` table in the advanced hunting schema contains metadata for the [Microsoft Defender Vulnerability Management](/microsoft-365/security/defender-vulnerability-management/defender-vulnerability-management) assessment events data collected in the `DeviceTvmInfoGathering` table. The `DeviceTvmInfoGatheringKB` table contains the list of various configuration and attack surface area assessments used by Threat & Vulnerability Management information gathering to assess devices. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `IgId` | `string` | Unique identifier for the piece of information gathered |
| `FieldName` | `string` | Name of the field where this information appears in the AdditionalFields column of the DeviceTvmInfoGathering table |
| `Description` | `string` | Description of the information gathered |
| `Categories` | `string` | List of categories that the information belongs to, in JSON array format  |
| `DataStructure` | `string` | The data structure of the information gathered  |

View a list of all available information gathering assessments related to network protocols.
```kusto
DeviceTvmInfoGatheringKB 
| where Categories has "network protocol"
```



## Related topics

- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)