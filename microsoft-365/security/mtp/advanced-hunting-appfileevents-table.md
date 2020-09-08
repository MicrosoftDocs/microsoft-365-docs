---
title: AppFileEvents table in the advanced hunting schema
description: Learn about file-related events associated with cloud apps and services in the AppFileEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, AppFileEvents, Cloud App Security, MCAS
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

# AppFileEvents

**Applies to:**
- Microsoft Threat Protection

The `AppFileEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about file-related activities in cloud apps and services monitored by Microsoft Cloud App Security. Use this reference to construct queries that return information from this table.

>[!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the [built-in schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) available in the security center.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `ActionType` | string | Type of activity that triggered the event. See the [in-portal schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) for details |
| `Application` | string | Application that performed the recorded action |
| `FileName` | string | Name of the file that the recorded action was applied to |
| `FolderPath` | string | Folder containing the file that the recorded action was applied to |
| `PreviousFileName` | string | Original name of the file that was renamed as a result of the action |
| `PreviousFolderPath` | string | Original folder containing the file before the recorded action was applied |
| `Protocol` | string | Network protocol used |
| `AccountName` | string | User name of the account |
| `AccountDomain` | string | Domain of the account |
| `AccountUpn` | string | User principal name (UPN) of the account |
| `AccountObjectId` | string | Unique identifier for the account in Azure AD |
| `AccountDisplayName` | string | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initiation, and a last name or surname. |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `DeviceType` | string | Type of device | 
| `OSPlatform` | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| `IPAddress` | string | IP address assigned to the endpoint and used during related network communications |
| `DestinationDeviceName` | string | Name of the device running the server application that processed the recorded action |
| `DestinationIPAddress` | string | IP address of the device running the server application that processed the recorded action |
| `Location` | string | City, country, or other geographic location associated with the event |
| `Isp` | string | Internet service provider (ISP) associated with the endpoint IP address |
| `ReportId` | long | Unique identifier for the event |
| `AdditionalFields` | string | Additional information about the entity or event |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
