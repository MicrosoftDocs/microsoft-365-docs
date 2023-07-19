---
title: DeviceTvmInfoGatheringKB table in the advanced hunting schema
description: Learn about the metadata for assessment events in the DeviceTvmInfoGathering table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities, MDVM
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
ms.date: 06/22/2022
---

# DeviceTvmInfoGatheringKB

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The `DeviceTvmInfoGatheringKB` table in the advanced hunting schema contains metadata for [Microsoft Defender Vulnerability Management](/microsoft-365/security/defender-vulnerability-management/defender-vulnerability-management) assessment events data collected in the `DeviceTvmInfoGathering` table. The `DeviceTvmInfoGatheringKB` table contains the list of various configuration and attack surface area assessments used by Defender Vulnerability Management information gathering to assess devices. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `IgId` | `string` | Unique identifier for the piece of information gathered |
| `FieldName` | `string` | Name of the field where this information appears in the AdditionalFields column of the DeviceTvmInfoGathering table |
| `Description` | `string` | Description of the information gathered |
| `Categories` | `string` | List of categories that the information belongs to, in JSON array format  |
| `DataStructure` | `string` | The data structure of the information gathered  |

You can use this table to explore the kinds of information available in `DeviceTvmInfoGathering` so you can later fine-tune your hunting query.

For instance, to see the list of information being collected, you can try the following query:

```kusto
// Check out what is being collected 
DeviceTvmInfoGatheringKB  
```

From the results, say you become interested in the available categories, you can use the following query:

```kusto
// Return all available categories 
DeviceTvmInfoGatheringKB 
| mv-expand Categories to typeof(string) 
| distinct Categories 
```

Then, let's say you want to see the assessment categories involving the TLS protocol:

```kusto
// Return all findings for a specified category 
DeviceTvmInfoGatheringKB 
| where Categories contains "tls" 
```

Using the resulting fields, you can then use the `DeviceTvmInfoGathering` table to get a list of devices using TLS client version 1.0.

```kusto
// Return all devices on which the TLS version 1.0 is enabled 
DeviceTvmInfoGathering 
| where AdditionalFields.TlsClient10 == "Enabled" or AdditionalFields.TlsServer10 == "Enabled" 
```

## Related topics

- [DeviceTvmInfoGathering](advanced-hunting-devicetvminfogathering-table.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
