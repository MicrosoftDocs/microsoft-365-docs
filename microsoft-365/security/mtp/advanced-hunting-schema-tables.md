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
| **[AlertEvidence](advanced-hunting-alertevidence-table.md)** | Files, IP addresses, URLs, users, or devices associated with alerts |
| **[AlertInfo](advanced-hunting-alertinfo-table.md)** | Alerts from Microsoft Defender ATP, Office 365 ATP, Microsoft Cloud App Security, and Azure ATP, including severity information and threat categorization  |
| **[AppFileEvents](advanced-hunting-appfileevents-table.md)** | File-related activities in cloud apps and services |
| **[DeviceEvents](advanced-hunting-deviceevents-table.md)** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **[DeviceFileCertificateInfo](advanced-hunting-DeviceFileCertificateInfo-table.md)** | Certificate information of signed files obtained from certificate verification events on endpoints |
| **[DeviceFileEvents](advanced-hunting-devicefileevents-table.md)** | File creation, modification, and other file system events |
| **[DeviceImageLoadEvents](advanced-hunting-deviceimageloadevents-table.md)** | DLL loading events |
| **[DeviceInfo](advanced-hunting-deviceinfo-table.md)** | Machine information, including OS information |
| **[DeviceLogonEvents](advanced-hunting-devicelogonevents-table.md)** | Sign-ins and other authentication events |
| **[DeviceNetworkEvents](advanced-hunting-devicenetworkevents-table.md)** | Network connection and related events |
| **[DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md)** | Network properties of machines, including adapters, IP and MAC addresses, as well as connected networks and domains |
| **[DeviceProcessEvents](advanced-hunting-deviceprocessevents-table.md)** | Process creation and related events |
| **[DeviceRegistryEvents](advanced-hunting-deviceregistryevents-table.md)** | Creation and modification of registry entries |
| **[DeviceTvmSecureConfigurationAssessment](advanced-hunting-devicetvmsecureconfigurationassessment-table.md)** | Threat & Vulnerability Management assessment events, indicating the status of various security configurations on devices |
| **[DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-devicetvmsecureconfigurationassessmentkb-table.md)** | Knowledge base of various security configurations used by Threat & Vulnerability Management to assess devices; includes mappings to various standards and benchmarks  |
| **[DeviceTvmSoftwareInventoryVulnerabilities](advanced-hunting-devicetvmsoftwareinventoryvulnerabilities-table.md)** | Inventory of software on devices as well as any known vulnerabilities in these software products |
| **[DeviceTvmSoftwareVulnerabilitiesKB](advanced-hunting-devicetvmsoftwarevulnerabilitieskb-table.md)** | Knowledge base of publicly disclosed vulnerabilities, including whether exploit code is publicly available |
| **[EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md)** | Information about files attached to emails |
| **[EmailEvents](advanced-hunting-emailevents-table.md)** | Microsoft 365 email events, including email delivery and blocking events |
| **[EmailPostDeliveryEvents](advanced-hunting-emailpostdeliveryevents-table.md)** | Security events that occur post-delivery, after Microsoft 365 has delivered the emails to the recipient mailbox |
| **[EmailUrlInfo](advanced-hunting-emailurlinfo-table.md)** | Information about URLs on emails |
| **[IdentityInfo](advanced-hunting-identityinfo-table.md)** | Account information from various sources, including Azure Active Directory |
| **[IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md)** | Authentication events recorded by Active Directory and other Microsoft online services |
| **[IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md)** | Query activities performed against Active Directory objects, such as users, groups, devices, and domains |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
