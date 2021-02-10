---
title: DeviceFileEvents table in the advanced hunting schema
description: Learn about file-related events in the DeviceFileEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, filecreationevents, DeviceFileEvents, files, path, hash, sha1, sha256, md5
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

# DeviceFileEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

The `DeviceFileEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about file creation, modification, and other file system events. Use this reference to construct queries that return information from this table.

>[!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the [built-in schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) available in the security center.

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
| `FileOriginUrl` | string | URL where the file was downloaded from |
| `FileOriginReferrerUrl` | string | URL of the web page that links to the downloaded file |
| `FileOriginIP` | string | IP address where the file was downloaded from |
| `PreviousFolderPath` | string | Original folder containing the file before the recorded action was applied |
| `PreviousFileName` | string | Original name of the file that was renamed as a result of the action |
| `FileSize` | long | Size of the file in bytes |
| `InitiatingProcessAccountDomain` | string | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | string | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountUpn` | string | User principal name (UPN) of the account that ran the process responsible for the event |
| `InitiatingProcessMD5` | string | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessSHA1` | string | SHA-1 of the process (image file) that initiated the event |
| `InitiatingProcessSHA256` | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated — use the SHA1 column when available. |
| `InitiatingProcessFolderPath` | string | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessFileName` | string | Name of the process that initiated the event |
| `InitiatingProcessId` | int | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | string | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | datetime | Date and time when the process that initiated the event was started |
| `InitiatingProcessIntegrityLevel` | string | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources |
| `InitiatingProcessTokenElevation` | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| `InitiatingProcessParentId` | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentFileName` | string | Name of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | datetime | Date and time when the parent of the process responsible for the event was started |
| `RequestProtocol` | string | Network protocol, if applicable, used to initiate the activity: Unknown, Local, SMB, or NFS |
| `ShareName` | string | Name of shared folder containing the file |
| `RequestSourceIP` | string | IPv4 or IPv6 address of the remote device that initiated the activity |
| `RequestSourcePort` | string | Source port on the remote device that initiated the activity |
| `RequestAccountName` | string | User name of account used to remotely initiate the activity |
| `RequestAccountDomain` | string | Domain of the account used to remotely initiate the activity |
| `RequestAccountSid` | string | Security Identifier (SID) of the account used to remotely initiate the activity |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns. |
| `AppGuardContainerId` | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| `AdditionalFields` | string | Additional information about the entity or event |
| `InitiatingProcessFileSize` | long | Size of the file that ran the process responsible for the event |
| `SensitivityLabel` | string | Label applied to an email, file, or other content to classify it for information protection |
| `SensitivitySubLabel` | string | Sublabel applied to an email, file, or other content to classify it for information protection; sensitivity sublabels are grouped under sensitivity labels but are treated independently |
| `IsAzureInfoProtectionApplied` | boolean | Indicates whether the file is encrypted by Azure Information Protection |

>[!NOTE]
> File hash information will always be shown when it is available. However, there are several possible reasons why a SHA1, SHA256, or MD5 cannot be calculated. For instance, the file might be located in remote storage, locked by another process, compressed, or marked as virtual. In these scenarios, the file hash information appears empty.

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
