---
title: IdentityLogonEvents table in the advanced hunting schema
description: Learn about authentication events recorded by Active Directory in the IdentityLogonEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, IdentityLogonEvents, Azure AD, Active Directory, Microsoft Defender for Identity, identities
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
ms.date: 01/16/2024
---

# IdentityLogonEvents

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR

The `IdentityLogonEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about authentication activities made through your on-premises Active Directory captured by Microsoft Defender for Identity and authentication activities related to Microsoft online services captured by Microsoft Defender for Cloud Apps. Use this reference to construct queries that return information from this table.

> [!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the built-in schema reference available in Microsoft Defender XDR.

> [!NOTE]
> This table covers Microsoft Entra logon activities tracked by Defender for Cloud Apps, specifically interactive sign-ins and authentication activities using ActiveSync and other legacy protocols. Non-interactive logons that are not available in this table can be viewed in the Microsoft Entra audit log. [Learn more about connecting Defender for Cloud Apps to Microsoft 365](/cloud-app-security/connect-office-365-to-microsoft-cloud-app-security)

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `ActionType` | `string` | Type of activity that triggered the event. See the [in-portal schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) for details |
| `Application` | `string` | Application that performed the recorded action |
| `LogonType` | `string` | Type of logon session, specifically:<br><br> - **Interactive** - User physically interacts with the device using the local keyboard and screen<br><br> - **Remote interactive (RDP) logons** - User interacts with the device remotely using Remote Desktop, Terminal Services, Remote Assistance, or other RDP clients<br><br> - **Network** - Session initiated when the device is accessed using PsExec or when shared resources on the device, such as printers and shared folders, are accessed<br><br> - **Batch** - Session initiated by scheduled tasks<br><br> - **Service** - Session initiated by services as they start |
| `Protocol` | `string` | Network protocol used |
| `FailureReason` | `string` | Information explaining why the recorded action failed |
| `AccountName` | `string` | User name of the account |
| `AccountDomain` | `string` | Domain of the account |
| `AccountUpn` | `string` | User principal name (UPN) of the account |
| `AccountSid` | `string` | Security Identifier (SID) of the account |
| `AccountObjectId` | `string` | Unique identifier for the account in Microsoft Entra ID |
| `AccountDisplayName` | `string` | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initial, and a last name or surname. |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the device |
| `DeviceType` | `string` | Type of device based on purpose and functionality, such as network device, workstation, server, mobile, gaming console, or printer |
| `OSPlatform` | `string` | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 11, Windows 10 and Windows 7. |
| `IPAddress` | `string` | IP address assigned to the endpoint and used during related network communications |
| `Port` | `int` | TCP port used during communication |
| `DestinationDeviceName` | `string` | Name of the device running the server application that processed the recorded action |
| `DestinationIPAddress` | `string` | IP address of the device running the server application that processed the recorded action |
| `DestinationPort` | `int` | Destination port of related network communications |
| `TargetDeviceName` | `string` | Fully qualified domain name (FQDN) of the device that the recorded action was applied to |
| `TargetAccountDisplayName` | `string` | Display name of the account that the recorded action was applied to |
| `Location` | `string` | City, country/region, or other geographic location associated with the event |
| `Isp` | `string` | Internet service provider (ISP) associated with the endpoint IP address |
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
