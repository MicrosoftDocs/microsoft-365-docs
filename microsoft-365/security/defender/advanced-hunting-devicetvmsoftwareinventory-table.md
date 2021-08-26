---
title: DeviceTvmSoftwareInventory table in the advanced hunting schema
description: Learn about the inventory of software in your devices in the DeviceTvmSoftwareInventory table of the advanced hunting schema.
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
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# DeviceTvmSoftwareInventory

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

>[!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


The `DeviceTvmSoftwareInventory` table in the advanced hunting schema contains the [Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) inventory of software currently installed on devices in your network, including end of support information. You can, for instance, hunt for events involving devices that are installed with a currently vulnerable software version. Use this reference to construct queries that return information from the table.

>[!NOTE]
> The `DeviceTvmSoftwareInventory` and `DeviceTvmSoftwareVulnerabilities` tables have replaced the `DeviceTvmSoftwareInventoryVulnerabilities` table. Together, the first two tables include more columns you can use to help inform your vulnerablity management activities or hunt for vulnerable devices.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | string | Unique identifier for the machine in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the machine |
| `OSPlatform` | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| `OSVersion` | string | Version of the operating system running on the machine |
| `OSArchitecture` | string | Architecture of the operating system running on the machine |
| `SoftwareVendor` | string | Name of the software vendor |
| `SoftwareName` | string | Name of the software product |
| `SoftwareVersion` | string | Version number of the software product |
| `EndOfSupportStatus` | string | Indicates the lifecycle stage of the software product relative to its specified end-of-support (EOS) or end-of-life (EOL) date |
| `EndOfSupportDate` | string | End-of-support (EOS) or end-of-life (EOL) date of the software product |



## Related topics

- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)