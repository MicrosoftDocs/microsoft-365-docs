---
title: DeviceTvmSoftwareEvidenceBeta table in the advanced hunting schema
description: Learn about the software vulnerabilities found on devices and the list of available security updates that address each vulnerability in the DeviceTvmSoftwareVulnerabilities table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareEvidenceBeta
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

# DeviceTvmSoftwareEvidenceBeta

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

> [!IMPORTANT]
> The `DeviceTvmSoftwareEvidenceBeta` table is currently in beta and is being offered on a short-term basis to allow you to hunt 

The `DeviceTvmSoftwareEvidenceBeta` table in the advanced hunting schema contains the [Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) list of vulnerabilities in installed software products. This table also includes operating system information, CVE IDs, and vulnerability severity information. You can use this table, for example, to hunt for events involving devices that have severe vulnerabilities in their software. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

DeviceId, SoftwareName, SoftwareVendor, SoftwareVersion, DiskPaths, RegistryPaths

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | `string` | Unique identifier for the machine in the service |
| `SoftwareName` | `string` | Name of the software product |
| `SoftwareVendor` | `string` | Name of the software publisher |
| `SoftwareVersion` | `string` | Version number of the software product |
| `DiskPaths` | `string` | dd |
| `RegistryPaths` | `string` | dd |



## Related topics

- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)