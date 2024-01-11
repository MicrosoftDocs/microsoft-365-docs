---
title: DeviceLogonEvents table in the advanced hunting schema
description: Learn about authentication or sign-in events in the DeviceLogonEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, logonevents, DeviceLogonEvents, authentication, logon, sign in
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
ms.date: 02/16/2021
---

# DeviceLogonEvents

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR
- Microsoft Defender for Endpoint



The `DeviceLogonEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about user logons and other authentication events on devices. Use this reference to construct queries that return information from this table.

> [!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the built-in schema reference available in Microsoft Defender XDR.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `DeviceId` | `string` | Unique identifier for the device in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the device |
| `ActionType` | `string` |Type of activity that triggered the event |
| `LogonType` | `string` | Type of logon session, specifically:<br><br> - **Interactive** - User physically interacts with the machine using the local keyboard and screen<br><br> - **Remote interactive (RDP) logons** - User interacts with the machine remotely using Remote Desktop, Terminal Services, Remote Assistance, or other RDP clients<br><br> - **Network** - Session initiated when the machine is accessed using PsExec or when shared resources on the machine, such as printers and shared folders, are accessed<br><br> - **Batch** - Session initiated by scheduled tasks<br><br> - **Service** - Session initiated by services as they start<br> |
| `AccountDomain` | `string` | Domain of the account |
| `AccountName` | `string` | User name of the account |
| `AccountSid` | `string` | Security Identifier (SID) of the account |
| `Protocol` | `string` | Protocol used during the communication |
| `FailureReason` | `string` | Information explaining why the recorded action failed |
| `IsLocalAdmin` | `boolean` | Boolean indicator of whether the user is a local administrator on the machine |
| `LogonId` | `long` | Identifier for a logon session. This identifier is unique on the same machine only between restarts |
| `RemoteDeviceName` | `string` | Name of the device that performed a remote operation on the affected device. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name  or a host name without domain information |
| `RemoteIP` | `string` | IP address of the device from which the logon attempt was performed |
| `RemoteIPType` | `string` | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| `RemotePort` | `int` | TCP port on the remote device that was being connected to |
| `InitiatingProcessAccountDomain` | `string` | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | `string` | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | `string` | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountUpn` | `string` | User principal name (UPN) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountObjectId` | `string` | Microsoft Entra object ID of the user account that ran the process responsible for the event |
| `InitiatingProcessIntegrityLevel` | `string` | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources |
| `InitiatingProcessTokenElevation` | `string` | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| `InitiatingProcessSHA1` | `string` | SHA-1 hash of the process (image file) that initiated the event |
| `InitiatingProcessSHA256` | `string` | SHA-256 hash of the process (image file) that initiated the event. This field is usually not populated - use the SHA1 column when available. |
| `InitiatingProcessMD5` | `string` | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessFileName` | `string` | Name of the process that initiated the event |
| `InitiatingProcessFileSize` | `long` | Size of the file that ran the process responsible for the event |
| `InitiatingProcessVersionInfoCompanyName` | `string` | Company name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductName` | `string` | Product name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductVersion` | `string` | Product version from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoInternalFileName` | `string` | Internal file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoOriginalFileName` | `string` | Original file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoFileDescription` | `string` | Description from the version information of the process (image file) responsible for the event |
| `InitiatingProcessId` | `long` | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | `string` | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | `datetime` | Date and time when the process that initiated the event was started |
| `InitiatingProcessFolderPath` | `string` | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessParentId` | `long` | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentFileName` | `string` | Name or full path of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | `datetime` | Date and time when the parent of the process responsible for the event was started |
| `ReportId` | `long` | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `AppGuardContainerId` | `string` | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| `AdditionalFields` | `string` | Additional information about the event in JSON array format |

> [!NOTE]
> The collection of DeviceLogonEvents is not supported on Windows 7 or Windows Server 2008R2 devices onboarded to Defender for Endpoint. We recommend upgrading to a more recent operating system for optimal visibility into user logon activity.

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
