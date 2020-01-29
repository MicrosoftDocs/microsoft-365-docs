---
title: Data tables in the Microsoft Threat Protection advanced hunting schema
description: Learn about the tables in the advanced hunting schema to understand the data you can run threat hunting queries on
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, data
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Understand the advanced hunting schema

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

The [advanced hunting](advanced-hunting-overview.md) schema is made up of multiple tables that provide either event information or information about machines and entities. To effectively build queries that span multiple tables, you need to understand the tables and the columns in the advanced hunting schema.

## Schema tables

The following reference lists all the tables in the schema. Each table name links to a page describing the column names for that table. Table and column names are also listed in the security center as part of the the schema representation on the advanced hunting screen.

| Table name | Description |
|------------|-------------|
| **[DeviceInfo](advanced-hunting-deviceinfo-table.md)** | Machine information, including OS information |
| **[DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md)** | Network properties of machines, including adapters, IP and MAC addresses, as well as connected networks and domains |
| **[DeviceProcessEvents](advanced-hunting-deviceprocessevents-table.md)** | Process creation and related events |
| **[DeviceNetworkEvents](advanced-hunting-devicenetworkevents-table.md)** | Network connection and related events |
| **[DeviceFileEvents](advanced-hunting-devicefileevents-table.md)** | File creation, modification, and other file system events |
| **[DeviceRegistryEvents](advanced-hunting-deviceregistryevents-table.md)** | Creation and modification of registry entries |
| **[DeviceLogonEvents](advanced-hunting-devicelogonevents-table.md)** | Sign-ins and other authentication events |
| **[DeviceImageLoadEvents](advanced-hunting-deviceimageloadevents-table.md)** | DLL loading events |
| **[DeviceEvents](advanced-hunting-deviceevents-table.md)** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **[DeviceFileCertificateInfoBeta](advanced-hunting-devicefilecertificateinfobeta-table.md)** | Certificate information of signed files obtained from certificate verification events on endpoints |
| **[EmailEvents](advanced-hunting-emailevents-table.md)** | Office 365 email events, including email delivery and blocking events |
| **[EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md)** | Information about files attached to Office 365 emails |
| **[EmailUrlInfo](advanced-hunting-emailurlinfo-table.md)** | Information about URLs on Office 365 emails |
| **[DeviceTvmSoftwareInventoryVulnerabilities](advanced-hunting-tvm-softwareinventory-table.md)** | Inventory of software on devices as well as any known vulnerabilities in these software products |
| **[DeviceTvmSoftwareVulnerabilitiesKB](advanced-hunting-tvm-softwarevulnerability-table.md)** | Knowledge base of publicly disclosed vulnerabilities, including whether exploit code is publicly available |
| **[DeviceTvmSecureConfigurationAssessment](advanced-hunting-tvm-configassessment-table.md)** | Threat & Vulnerability Management assessment events, indicating the status of various security configurations on devices |
| **[DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-tvm-secureconfigkb-table.md)** | Knowledge base of various security configurations used by Threat & Vulnerability Management to assess devices; includes mappings to various standards and benchmarks  |

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Apply query best practices](advanced-hunting-best-practices.md)