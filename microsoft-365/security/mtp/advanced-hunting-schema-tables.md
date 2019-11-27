---
title: Data tables in the Microsoft Threat Protection Advanced hunting schema
description: Learn about the tables in the Advanced hunting schema to understand the data you can run threat hunting queries on
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, schema reference, kusto, table, data
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Understand the Advanced hunting schema

**Applies to:**
- Microsoft Threat Protection

[!include[Prerelease information](prerelease.md)]

The [Advanced hunting](advanced-hunting-overview.md) schema is made up of multiple tables that provide either event information or information about machines and entities. To effectively build queries that span multiple tables, you need to understand the tables and the columns in the Advanced hunting schema.

## Schema tables

The following reference lists all the tables in the schema. Each table name links to a page describing the column names for that table. Table and column names are also listed in the security center as part of the the schema representation on the advanced hunting screen.

| Table name | Description |
|------------|-------------|
| **[MachineInfo](advanced-hunting-machineinfo-table.md)** | Machine information, including OS information |
| **[MachineNetworkInfo](advanced-hunting-machinenetworkinfo-table.md)** | Network properties of machines, including adapters, IP and MAC addresses, as well as connected networks and domains |
| **[ProcessCreationEvents](advanced-hunting-processcreationevents-table.md)** | Process creation and related events |
| **[NetworkCommunicationEvents](advanced-hunting-networkcommunicationevents-table.md)** | Network connection and related events |
| **[FileCreationEvents](advanced-hunting-filecreationevents-table.md)** | File creation, modification, and other file system events |
| **[RegistryEvents](advanced-hunting-registryevents-table.md)** | Creation and modification of registry entries |
| **[LogonEvents](advanced-hunting-logonevents-table.md)** | Sign-ins and other authentication events |
| **[ImageLoadEvents](advanced-hunting-imageloadevents-table.md)** | DLL loading events |
| **[MiscEvents](advanced-hunting-miscevents-table.md)** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **[EmailEvents](advanced-hunting-emailevents-table.md)** | Office 365 email events, including email delivery and blocking events |
| **[EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md)** | Information about files attached to Office 365 emails |
| **[EmailUrlInfo](advanced-hunting-emailurlinfo-table.md)** | Information about URLs on Office 365 emails |
| **[DeviceTvmSoftwareInventoryVulnerabilities](advanced-hunting-tvm-softwareinventory-table.md)** | Inventory of software on your devices as well as any known vulnerabilities in these software products |
| **[DeviceTvmSoftwareVulnerabilitiesKB](advanced-hunting-tvm-softwarevulnerability-table.md)** | Knowledge base of publicly disclosed vulnerabilities and whether exploit code is available |
| **[DeviceTvmSecureConfigurationAssessment](advanced-hunting-tvm-configassessment-table.md)** | Threat & Vulnerability Management assessment events covering the compliance status of various security-related configurations on devices |
| **[DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-tvm-secureconfigkb-table.md)** | Knowledge base of various security configurations, including mappings to various standards and benchmarks, used by Threat & Vulnerability Management to assess devices |

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
