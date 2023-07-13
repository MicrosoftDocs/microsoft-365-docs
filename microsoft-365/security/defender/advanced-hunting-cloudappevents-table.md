---
title: CloudAppEvents table in the advanced hunting schema
description: Learn about events from cloud apps and services in the CloudAppEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, CloudAppEvents, Defender for Cloud Apps
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

# CloudAppEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

The `CloudAppEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about activities in various cloud apps and services covered by Microsoft Defender for Cloud Apps. For a complete list, jump to [Apps and services covered](#apps-and-services-covered). Use this reference to construct queries that return information from this table.



For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `ActionType` | `string` | Type of activity that triggered the event |
| `Application` | `string` | Application that performed the recorded action |
| `ApplicationId` | `string` | Unique identifier for the application |
| `AccountObjectId` | `string` | Unique identifier for the account in Azure Active Directory |
| `AccountId` | `string` | An identifier for the account as found by Microsoft Defender for Cloud Apps. Could be Azure Active Directory ID, user principal name, or other identifiers. |
| `AccountDisplayName` | `string` | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initiation, and a last name or surname. |
| `IsAdminOperation` | `string` | Indicates whether the activity was performed by an administrator |
| `DeviceType` | `string` | Type of device based on purpose and functionality, such as "Network device", "Workstation", "Server", "Mobile", "Gaming console", or "Printer" |
| `OSPlatform` | `string` | Platform of the operating system running on the device. This column indicates specific operating systems, including variations within the same family, such as Windows 11, Windows 10 and Windows 7. |
| `IPAddress` | `string` | IP address assigned to the endpoint and used during related network communications |
| `IsAnonymousProxy` | `string` | Indicates whether the IP address belongs to a known anonymous proxy |
| `CountryCode` | `string` | Two-letter code indicating the country where the client IP address is geolocated |
| `City` | `string` | City where the client IP address is geolocated |
| `Isp` | `string` | Internet service provider (ISP) associated with the IP address |
| `UserAgent` | `string` | User agent information from the web browser or other client application |
| `ActivityType` | `string` | Type of activity that triggered the event |
| `ActivityObjects` | `dynamic` | List of objects, such as files or folders, that were involved in the recorded activity |
| `ObjectName` | `string` | Name of the object that the recorded action was applied to |
| `ObjectType` | `string` | Type of object, such as a file or a folder, that the recorded action was applied to |
| `ObjectId` | `string` | Unique identifier of the object that the recorded action was applied to |
| `ReportId` | `string` | Unique identifier for the event |
| `RawEventData` | `string` | Raw event information from the source application or service in JSON format |
| `AdditionalFields` | `dynamic` | Additional information about the entity or event |
| `AccountType` | `string` | Type of user account, indicating its general role and access levels, such as Regular, System, Admin, DcAdmin, System, Application |
| `IsExternalUser` | `boolean` | Indicates whether a user inside the network doesn't belong to the organization's domain |
| `IsImpersonated` | `boolean` | Indicates whether the activity was performed by one user for another (impersonated) user |
| `IPTags` | `dynamic` | Customer-defined information applied to specific IP addresses and IP address ranges |
| `IPCategory` | `string` | Additional information about the IP address |
| `UserAgentTags` | `dynamic` | More information provided by Microsoft Defender for Cloud Apps in a tag in the user agent field. Can have any of the following values: Native client, Outdated browser, Outdated operating system, Robot |

## Apps and services covered

- Dropbox
- Dynamics 365
- Exchange Online
- Microsoft Teams
- OneDrive for Business
- Power Automate
- Power BI
- SharePoint Online
- Skype for Business
- Office 365
- Viva Engage

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
