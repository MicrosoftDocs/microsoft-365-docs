---
title: CloudAppEvents table in the advanced hunting schema
description: Learn about events from cloud apps and services in the CloudAppEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, CloudAppEvents, Cloud App Security, MCAS
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: lomayor
author: lomayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# CloudAppEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Currently available in preview, the `CloudAppEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about activities in various cloud apps and services, specifically Microsoft Teams and Exchange Online. Use this reference to construct queries that return information from this table.

This table will expand to include more activities monitored by Microsoft Cloud App Security. Eventually, this table will include file activity currently stored in the [AppFileEvents](advanced-hunting-appfileevents-table.md) table. Microsoft will provide additional guidance as more data moves to this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `ActionType` | string | Type of activity that triggered the event |
| `Application` | string | Application that performed the recorded action |
| `ApplicationId` | string | Unique identifier for the application |
| `AccountObjectId` | string | Unique identifier for the account in Azure Active Directory |
| `AccountDisplayName` | string | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initiation, and a last name or surname. |
| `IsAdminOperation` | string | Indicates whether the activity was performed by an administrator |
| `DeviceType` | string | Type of device based on purpose and functionality, such as "Network device", "Workstation", "Server", "Mobile", "Gaming console", or "Printer" | 
| `OSPlatform` | string | Platform of the operating system running on the device. This column indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| `IPAddress` | string | IP address assigned to the endpoint and used during related network communications |
| `IsAnonymousProxy` | string | Indicates whether the IP address belongs to a known anonymous proxy |
| `CountryCode` | string | Two-letter code indicating the country where the client IP address is geolocated |
| `City` | string | City where the client IP address is geolocated |
| `Isp` | string | Internet service provider (ISP) associated with the IP address |
| `UserAgent` | string | User agent information from the web browser or other client application |
| `ActivityType` | string | Type of activity that triggered the event |
| `ActivityObjects` | string | List of objects, such as files or folders, that were involved in the recorded activity |
| `ObjectName` | string | Name of the object that the recorded action was applied to |
| `ObjectType` | string | Type of object, such as a file or a folder, that the recorded action was applied to |
| `ObjectId` | string | Unique identifier of the object that the recorded action was applied to |
| `ReportId` | string | Unique identifier for the event |
| `RawEventData` | string | Raw event information from the source application or service in JSON format |
| `AdditionalFields` | string | Additional information about the entity or event |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
