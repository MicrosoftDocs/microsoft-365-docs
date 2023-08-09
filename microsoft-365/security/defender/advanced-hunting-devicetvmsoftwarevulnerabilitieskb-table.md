---
title: DeviceTvmSoftwareVulnerabilitiesKB table in the advanced hunting schema
description: Learn about the software vulnerabilities tracked by Microsoft Defender Vulnerability Management in the DeviceTvmSoftwareVulnerabilitiesKB table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema, reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, CVSS, DeviceTvmSoftwareVulnerabilitiesKB
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

# DeviceTvmSoftwareVulnerabilitiesKB

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender




The `DeviceTvmSoftwareVulnerabilitiesKB` table in the advanced hunting schema contains the list of vulnerabilities [Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) assesses devices for. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `CveId` | `string` | Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system |
| `CvssScore` | `string` | Severity score assigned to the security vulnerability under th Common Vulnerability Scoring System (CVSS) |
| `IsExploitAvailable` | `boolean` | Indicates whether exploit code for the vulnerability is publicly available |
| `VulnerabilitySeverityLevel` | `string` | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape |
| `LastModifiedTime` | `datetime` | Date and time the item or related metadata was last modified |
| `PublishedDate` | `datetime` | Date vulnerability was disclosed to public |
| `VulnerabilityDescription` | `string` | Description of vulnerability and associated risks |
| `AffectedSoftware` | `string` | List of all software products affected by the vulnerability |

## Related topics

- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
