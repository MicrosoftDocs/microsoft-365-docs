---
title: CloudAppEvents table in the advanced hunting schema
description: Learn about events from cloud apps and services in the CloudAppEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, CloudAppEvents, Defender for Cloud Apps
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
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
ms.topic: reference
ms.date: 10/16/2023
---

# CloudAppEvents

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR

The `CloudAppEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about events involving accounts and objects in Office 365 and other [cloud apps and services](#apps-and-services-covered). Use this reference to construct queries that return information from this table.


For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `ActionType` | `string` | Type of activity that triggered the event |
| `Application` | `string` | Application that performed the recorded action |
| `ApplicationId` | `int` | Unique identifier for the application |
| `AppInstanceId` | `int` | Unique identifier for the instance of an application |
| `AccountObjectId` | `string` | Unique identifier for the account in Microsoft Entra ID |
| `AccountId` | `string` | An identifier for the account as found by Microsoft Defender for Cloud Apps. Could be Microsoft Entra ID, user principal name, or other identifiers. |
| `AccountDisplayName` | `string` | Name displayed in the address book entry for the account user. This is usually a combination of the given name, middle initial, and surname of the user. |
| `IsAdminOperation` | `bool` | Indicates whether the activity was performed by an administrator |
| `DeviceType` | `string` | Type of device based on purpose and functionality, such as network device, workstation, server, mobile, gaming console, or printer |
| `OSPlatform` | `string` | Platform of the operating system running on the device. This column indicates specific operating systems, including variations within the same family, such as Windows 11, Windows 10 and Windows 7. |
| `IPAddress` | `string` | IP address assigned to the device during communication |
| `IsAnonymousProxy` | `boolean` | Indicates whether the IP address belongs to a known anonymous proxy |
| `CountryCode` | `string` | Two-letter code indicating the country where the client IP address is geolocated |
| `City` | `string` | City where the client IP address is geolocated |
| `Isp` | `string` | Internet service provider associated with the IP address |
| `UserAgent` | `string` | User agent information from the web browser or other client application |
| `ActivityType` | `string` | Type of activity that triggered the event |
| `ActivityObjects` | `dynamic` | List of objects, such as files or folders, that were involved in the recorded activity |
| `ObjectName` | `string` | Name of the object that the recorded action was applied to |
| `ObjectType` | `string` | Type of object, such as a file or a folder, that the recorded action was applied to |
| `ObjectId` | `string` | Unique identifier of the object that the recorded action was applied to |
| `ReportId` | `string` | Unique identifier for the event |
| `AccountType` | `string` | Type of user account, indicating its general role and access levels, such as Regular, System, Admin, Application |
| `IsExternalUser` | `boolean` | Indicates whether a user inside the network doesn't belong to the organization's domain |
| `IsImpersonated` | `boolean` | Indicates whether the activity was performed by one user for another (impersonated) user |
| `IPTags` | `dynamic` | Customer-defined information applied to specific IP addresses and IP address ranges |
| `IPCategory` | `string` | Additional information about the IP address |
| `UserAgentTags` | `dynamic` | More information provided by Microsoft Defender for Cloud Apps in a tag in the user agent field. Can have any of the following values: Native client, Outdated browser, Outdated operating system, Robot |
| `RawEventData` | `dynamic` | Raw event information from the source application or service in JSON format |
| `AdditionalFields` | `dynamic` | Additional information about the entity or event |

## Apps and services covered

The __CloudAppEvents__ table contains enriched logs from all SaaS applications connected to Microsoft Defender for Cloud Apps, such as:
- Office 365 and Microsoft Applications, including:
   - Exchange Online
   - SharePoint Online
   - Microsoft Teams
   - Dynamics 365
   - Skype for Business
   - Viva Engage
   - Power Automate
   - Power BI
   - Dropbox
   - Salesforce
   - GitHub
   - Atlassian

Connect supported cloud apps for instant, out-of-the-box protection, deep visibility into the app's user and device activities, and more. For more information, see [Protect connected apps using cloud service provider APIs](/defender-cloud-apps/protect-connected-apps).

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)

