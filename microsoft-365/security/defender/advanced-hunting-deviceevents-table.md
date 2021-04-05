---
title: DeviceEvents table in the advanced hunting schema
description: Learn about antivirus, firewall, and other event types in the miscellaneous device events (DeviceEvents) table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, security events, antivirus, firewall, exploit guard, DeviceEvents
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

# DeviceEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

The miscellaneous device events or `DeviceEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about various event types, including events triggered by security controls, such as Windows Defender Antivirus and exploit protection. Use this reference to construct queries that return information from this table.

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
| `AccountDomain` | string | Domain of the account |
| `AccountName` | string | User name of the account |
| `AccountSid` | string | Security Identifier (SID) of the account |
| `RemoteUrl` | string | URL or fully qualified domain name (FQDN) that was being connected to |
| `RemoteDeviceName` | string | Name of the machine that performed a remote operation on the affected machine. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name, or a host name without domain information |
| `ProcessId` | int | Process ID (PID) of the newly created process |
| `ProcessCommandLine` | string | Command line used to create the new process |
| `ProcessCreationTime` | datetime | Date and time the process was created |
| `ProcessTokenElevation` | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| `LogonId` | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts |
| `RegistryKey` | string | Registry key that the recorded action was applied to |
| `RegistryValueName` | string | Name of the registry value that the recorded action was applied to |
| `RegistryValueData` | string | Data of the registry value that the recorded action was applied to |
| `RemoteIP` | string | IP address that was being connected to |
| `RemotePort` | int | TCP port on the remote device that was being connected to |
| `LocalIP` | string | IP address assigned to the local machine used during communication |
| `LocalPort` | int | TCP port on the local machine used during communication |
| `FileOriginUrl` | string | URL where the file was downloaded from |
| `FileOriginIP` | string | IP address where the file was downloaded from |
| `InitiatingProcessSHA1` | string | SHA-1 of the process (image file) that initiated the event |
| `InitiatingProcessSHA256` | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated — use the SHA1 column when available. |
| `InitiatingProcessMD5` | string | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessFileName` | string | Name of the process that initiated the event |
| `InitiatingProcessFileSize` | long | Size of the file that ran the process responsible for the event |
| `InitiatingProcessFolderPath` | string | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessId` | int | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | string | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | datetime | Date and time when the process that initiated the event was started |
| `InitiatingProcessAccountDomain` | string | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | string | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountUpn` | string | User principal name (UPN) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountObjectId` | string | Azure AD object ID of the user account that ran the process responsible for the event |
| `InitiatingProcessVersionInfoCompanyName` | string | Company name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductName` | string | Product name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoProductVersion` | string | Product version from the version information of the process (image file) responsible for the event |
|` InitiatingProcessVersionInfoInternalFileName` | string | Internal file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoOriginalFileName` | string | Original file name from the version information of the process (image file) responsible for the event |
| `InitiatingProcessVersionInfoFileDescription` | string | Description from the version information of the process (image file) responsible for the event |
| `InitiatingProcessParentId` | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentFileName` | string | Name of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | datetime | Date and time when the parent of the process responsible for the event was started |
| `InitiatingProcessLogonId` | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same machine only between restarts |
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
