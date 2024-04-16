---
title: IdentityDirectoryEvents table in the advanced hunting schema
description: Learn about domain controller and Active Directory events in the IdentityDirectoryEvents table of the advanced hunting schema
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
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
ms.date: 01/16/2024
---

# IdentityDirectoryEvents

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

The `IdentityDirectoryEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains events involving an on-premises domain controller running Active Directory (AD). This table captures various identity-related events, like password changes, password expiration, and user principal name (UPN) changes. It also captures system events on the domain controller, like scheduling of tasks and PowerShell activity. Use this reference to construct queries that return information from this table.

> [!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the built-in schema reference available in Microsoft Defender XDR.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `ActionType` | `string` | Type of activity that triggered the event. See the [in-portal schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) for details |
| `Application` | `string` | Application that performed the recorded action |
| `TargetAccountUpn` | `string` | User principal name (UPN) of the account that the recorded action was applied to |
| `TargetAccountDisplayName` | `string` | Display name of the account that the recorded action was applied to |
| `TargetDeviceName` | `string` | Fully qualified domain name (FQDN) of the device that the recorded action was applied to |
| `DestinationDeviceName` | `string` | Name of the device running the server application that processed the recorded action |
| `DestinationIPAddress` | `string` | IP address of the device running the server application that processed the recorded action |
| `DestinationPort` | `int` | Destination port of the activity |
| `Protocol` | `string` | Protocol used during the communication |
| `AccountName` | `string` | User name of the account |
| `AccountDomain` | `string` | Domain of the account |
| `AccountUpn` | `string` | User principal name (UPN) of the account |
| `AccountSid` | `string` | Security Identifier (SID) of the account |
| `AccountObjectId` | `string` | Unique identifier for the account in Microsoft Entra ID |
| `AccountDisplayName` | `string` | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initial, and a last name or surname. |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the device |
| `IPAddress` | `string` | IP address assigned to the device during communication |
| `Port` | `int` | TCP port used during communication |
| `Location` | `string` | City, country/region, or other geographic location associated with the event |
| `ISP` | `string` | Internet service provider associated with the IP address |
| `ReportId` | `string` | Unique identifier for the event |
| `AdditionalFields` | `dynamic` | Additional information about the entity or event |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
