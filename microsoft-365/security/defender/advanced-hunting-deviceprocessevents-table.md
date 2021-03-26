---
title: DeviceProcessEvents table in the advanced hunting schema
description: Learn about the process spawning or creation events in the DeviceProcessEventstable of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, processcreationevents, DeviceProcessEvents, process id, command line, DeviceProcessEvents
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

# DeviceProcessEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender



The `DeviceProcessEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about process creation and related events. Use this reference to construct queries that return information from this table.

>[!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the built-in schema reference available in the security center.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the machine in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the machine |
| `ActionType` | string | Type of activity that triggered the event. See the [in-portal schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) for details |
| `FileName` | string | Name of the file that the recorded action was applied to |
| `FolderPath` | string | Folder containing the file that the recorded action was applied to |
| `SHA1` | string | SHA-1 of the file that the recorded action was applied to |
| `SHA256` | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated — use the SHA1 column when available. |
| `MD5` | string | MD5 hash of the file that the recorded action was applied to |
| `FileSize` | long | Size of the file in bytes |
| `ProcessVersionInfoCompanyName` | string | Company name from the version information of the newly created process |
| `InitiatingProcessVersionInfoProductName` | string | Product name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductVersion` | string | Product version from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoInternalFileName` | string | Internal file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoOriginalFileName` | string | Original file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoFileDescription` | string | Description from the version information of the process (image file) responsible for the event |
| `ProcessId` | int | Process ID (PID) of the newly created process |
| `ProcessCommandLine` | string | Command line used to create the new process |
| `ProcessIntegrityLevel` | string | Integrity level of the newly created process. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet downloaded. These integrity levels influence permissions to resources |
| `ProcessTokenElevation` | string | Indicates the type of token elevation applied to the newly created process. Possible values: TokenElevationTypeLimited (restricted), TokenElevationTypeDefault (standard), and TokenElevationTypeFull (elevated) |
| `ProcessCreationTime` | datetime | Date and time the process was created |
| `AccountDomain` | string | Domain of the account |
| `AccountName` | string | User name of the account |
| `AccountSid` | string | Security Identifier (SID) of the account |
| `AccountUpn` | string | User principal name (UPN) of the account |
| `AccountObjectId` | string | Unique identifier for the account in Azure AD |
| `LogonId` | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts |
| `InitiatingProcessAccountDomain` | string | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | string | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountUpn` | string | User principal name (UPN) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountObjectId` | string | Azure AD object ID of the user account that ran the process responsible for the event |
| `InitiatingProcessLogonId` | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same machine only between restarts. |
| `InitiatingProcessIntegrityLevel` | string | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources |
| `InitiatingProcessTokenElevation` | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| `InitiatingProcessSHA1` | string | SHA-1 of the process (image file) that initiated the event |
| `InitiatingProcessSHA256` | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated — use the SHA1 column when available. |
| `InitiatingProcessMD5` | string | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessFileName` | string | Name of the process that initiated the event |
| `InitiatingProcessFileSize` | long | Size of the file that ran the process responsible for the event |
| `InitiatingProcessVersionInfoCompanyName` | string | Company name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductName` | string | Product name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductVersion` | string | Product version from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoInternalFileName` | string | Internal file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoOriginalFileName` | string | Original file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoFileDescription` | string | Description from the version information of the process (image file) responsible for the event |
| `InitiatingProcessId` | int | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | string | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | datetime | Date and time when the process that initiated the event was started |
| `InitiatingProcessFolderPath` | string | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessParentId` | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentFileName` | string | Name of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | datetime | Date and time when the parent of the process responsible for the event was started |
| `InitiatingProcessSignerType` | string | Type of file signer of the process (image file) that initiated the event |
| `InitiatingProcessSignatureStatus` | string | Information about the signature status of the process (image file) that initiated the event |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `AppGuardContainerId` | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| `AdditionalFields` | string | Additional information about the event in JSON array format |


## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
