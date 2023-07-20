---
title: DeviceTvmSoftwareEvidenceBeta table in the advanced hunting schema
description: Learn how to use the DeviceTvmSoftwareEvidenceBeta table in the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, evidence, software evidence, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareEvidenceBeta
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
ms.date: 12/27/2021
---

# DeviceTvmSoftwareEvidenceBeta

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

> [!IMPORTANT]
> The `DeviceTvmSoftwareEvidenceBeta` table is currently in beta. Once it leaves beta, the final table name will change and column names may also change. The modifications will then likely break queries that are still using previous names. Users are advised to review and adjust their queries when this table is finalized. 

The `DeviceTvmSoftwareEvidenceBeta` table in the advanced hunting schema contains data from [Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) related to the [software evidence section](/microsoft-365/security/defender-endpoint/tvm-software-inventory#software-evidence). This table allows you to view evidence of where a specific software was detected on a device. You can use this table, for example, to identify the file paths of specific software. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | `string` | Unique identifier for the device in the service |
| `SoftwareVendor` | `string` | Name of the software publisher |
| `SoftwareName` | `string` | Name of the software product |
| `SoftwareVersion` | `string` | Version number of the software product |
| `RegistryPaths` | `dynamic` | Registry paths where evidence indicating the existence of the software on a device was detected |
| `DiskPaths` | `dynamic` | Disk paths where file-level evidence indicating the existence of the software on a device was detected |
| `LastSeenTime` | `string` | Date and time when the device last seen by this service |

## Related topics

- [Overview of Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
