---
title: DeviceTvmSoftwareVulnerabilities table in the advanced hunting schema
description: Learn about the software vulnerabilities found on devices and the list of available security updates that address each vulnerability in the DeviceTvmSoftwareVulnerabilities table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities
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
ms.date: 03/22/2021
---

# DeviceTvmSoftwareVulnerabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender


> [!IMPORTANT]
> Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The `DeviceTvmSoftwareVulnerabilities` table in the advanced hunting schema contains the [Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) list of vulnerabilities in installed software products. This table also includes operating system information, CVE IDs, and vulnerability severity information. You can use this table, for example, to hunt for events involving devices that have severe vulnerabilities in their software. Use this reference to construct queries that return information from the table.

> [!NOTE]
> The `DeviceTvmSoftwareInventory` and `DeviceTvmSoftwareVulnerabilities` tables have replaced the `DeviceTvmSoftwareInventoryVulnerabilities` table. Together, the first two tables include more columns you can use to help inform your vulnerability management activities or hunt for vulnerable devices.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | `string` | Unique identifier for the machine in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the machine |
| `OSPlatform` | `string` | Platform of the operating system running on the machine. Indicates specific operating systems, including variations within the same family, such as Windows 11, Windows 10, and Windows 7. |
| `OSVersion` | `string` | Version of the operating system running on the machine |
| `OSArchitecture` | `string` | Architecture of the operating system running on the machine |
| `SoftwareVendor` | `string` | Name of the software publisher |
| `SoftwareName` | `string` | Name of the software product |
| `SoftwareVersion` | `string` | Version number of the software product |
| `CveId` | `string` | Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system |
| `VulnerabilitySeverityLevel` | `string` | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape |
| `RecommendedSecurityUpdate` | `string` | Name or description of the security update provided by the software publisher to address the vulnerability |
| `RecommendedSecurityUpdateId` | `string` | Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles |



## Related topics

- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
