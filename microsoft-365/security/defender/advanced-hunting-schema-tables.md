---
title: Data tables in the Microsoft 365 Defender advanced hunting schema
description: Learn about the tables in the advanced hunting schema to understand the data you can run threat hunting queries on
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, data
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

# Understand the advanced hunting schema

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

The [advanced hunting](advanced-hunting-overview.md) schema is made up of multiple tables that provide either event information or information about devices, alerts, identities, and other entity types. To effectively build queries that span multiple tables, you need to understand the tables and the columns in the advanced hunting schema.

## Get schema information in the security center
While constructing queries, use the built-in schema reference to quickly get the following information about each table in the schema:

- **Tables description**—type of data contained in the table and the source of that data.
- **Columns**—all the columns in the table.
- **Action types**—possible values in the `ActionType` column representing the event types supported by the table. This information is provided only for tables that contain event information.
- **Sample query**—example queries that feature how the table can be utilized.

### Access the schema reference
To quickly access the schema reference, select the **View reference** action next to the table name in the schema representation. You can also select **Schema reference** to search for a table.   

![Image showing how to access in-portal schema reference ](../../media/mtp-ah/ah-reference.png) 

## Learn the schema tables
The following reference lists all the tables in the schema. Each table name links to a page describing the column names for that table. Table and column names are also listed in the security center as part of the schema representation on the advanced hunting screen.

| Table name | Description |
|------------|-------------|
| **[AlertEvidence](advanced-hunting-alertevidence-table.md)** | Files, IP addresses, URLs, users, or devices associated with alerts |
| **[AlertInfo](advanced-hunting-alertinfo-table.md)** | Alerts from Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Cloud App Security, and Microsoft Defender for Identity, including severity information and threat categorization  |
| **[AppFileEvents](advanced-hunting-appfileevents-table.md)** | File-related activities in cloud apps and services |
| **[CloudAppEvents](advanced-hunting-cloudappevents-table.md)** | Events involving accounts and objects in Office 365 and other cloud apps and services |
| **[DeviceEvents](advanced-hunting-deviceevents-table.md)** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **[DeviceFileCertificateInfo](advanced-hunting-DeviceFileCertificateInfo-table.md)** | Certificate information of signed files obtained from certificate verification events on endpoints |
| **[DeviceFileEvents](advanced-hunting-devicefileevents-table.md)** | File creation, modification, and other file system events |
| **[DeviceImageLoadEvents](advanced-hunting-deviceimageloadevents-table.md)** | DLL loading events |
| **[DeviceInfo](advanced-hunting-deviceinfo-table.md)** | Machine information, including OS information |
| **[DeviceLogonEvents](advanced-hunting-devicelogonevents-table.md)** | Sign-ins and other authentication events on devices |
| **[DeviceNetworkEvents](advanced-hunting-devicenetworkevents-table.md)** | Network connection and related events |
| **[DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md)** | Network properties of devices, including physical adapters, IP and MAC addresses, as well as connected networks and domains |
| **[DeviceProcessEvents](advanced-hunting-deviceprocessevents-table.md)** | Process creation and related events |
| **[DeviceRegistryEvents](advanced-hunting-deviceregistryevents-table.md)** | Creation and modification of registry entries |
| **[DeviceTvmSecureConfigurationAssessment](advanced-hunting-devicetvmsecureconfigurationassessment-table.md)** | Threat & Vulnerability Management assessment events, indicating the status of various security configurations on devices |
| **[DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-devicetvmsecureconfigurationassessmentkb-table.md)** | Knowledge base of various security configurations used by Threat & Vulnerability Management to assess devices; includes mappings to various standards and benchmarks  |
| **[DeviceTvmSoftwareInventory](advanced-hunting-devicetvmsoftwareinventory-table.md)** | Inventory of software installed on devices, including their version information and end-of-support status |
| **[DeviceTvmSoftwareVulnerabilities](advanced-hunting-devicetvmsoftwarevulnerabilities-table.md)** | Software vulnerabilities found on devices and the list of available security updates that address each vulnerability |
| **[DeviceTvmSoftwareVulnerabilitiesKB](advanced-hunting-devicetvmsoftwarevulnerabilitieskb-table.md)** | Knowledge base of publicly disclosed vulnerabilities, including whether exploit code is publicly available |
| **[EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md)** | Information about files attached to emails |
| **[EmailEvents](advanced-hunting-emailevents-table.md)** | Microsoft 365 email events, including email delivery and blocking events |
| **[EmailPostDeliveryEvents](advanced-hunting-emailpostdeliveryevents-table.md)** | Security events that occur post-delivery, after Microsoft 365 has delivered the emails to the recipient mailbox |
| **[EmailUrlInfo](advanced-hunting-emailurlinfo-table.md)** | Information about URLs on emails |
| **[IdentityDirectoryEvents](advanced-hunting-identitydirectoryevents-table.md)** | Events involving an on-premises domain controller running Active Directory (AD). This table covers a range of identity-related events and system events on the domain controller. |
| **[IdentityInfo](advanced-hunting-identityinfo-table.md)** | Account information from various sources, including Azure Active Directory |
| **[IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md)** | Authentication events on Active Directory and Microsoft online services |
| **[IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md)** | Queries for Active Directory objects, such as users, groups, devices, and domains |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
