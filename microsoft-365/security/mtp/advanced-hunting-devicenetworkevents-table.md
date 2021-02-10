---
title: DeviceNetworkEvents table in the advanced hunting schema
description: Learn about network connection events you can query from the DeviceNetworkEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, devicenetworkevents, NetworkCommunicationEvents, network connection, remote ip, local ip
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

# DeviceNetworkEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender



The `DeviceNetworkEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about network connections and related events. Use this reference to construct queries that return information from this table.

>[!TIP]
> For detailed information about the events types (`ActionType` values) supported by a table, use the [built-in schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) available in the security center.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the machine in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the machine |
| `ActionType` | string | Type of activity that triggered the event. See the [in-portal schema reference](advanced-hunting-schema-tables.md?#get-schema-information-in-the-security-center) for details |
| `RemoteIP` | string | IP address that was being connected to |
| `RemotePort` | int | TCP port on the remote device that was being connected to |
| `RemoteUrl` | string | URL or fully qualified domain name (FQDN) that was being connected to |
| `LocalIP` | string | IP address assigned to the local machine used during communication |
| `LocalPort` | int | TCP port on the local machine used during communication |
| `Protocol` | string | Protocol used during the communication |
| `LocalIPType` | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| `RemoteIPType` | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| `InitiatingProcessSHA1` | string | SHA-1 of the process (image file) that initiated the event |
| `InitiatingProcessSHA256` | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated — use the SHA1 column when available. |
| `InitiatingProcessMD5` | string | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessFileName` | string | Name of the process that initiated the event |
| `InitiatingProcessFileSize` | long | Size of the file that ran the process responsible for the event |
| `InitiatingProcessId` | int | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | string | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | datetime | Date and time when the process that initiated the event was started |
| `InitiatingProcessFolderPath` | string | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessParentFileName` | string | Name of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentId` | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | datetime | Date and time when the parent of the process responsible for the event was started |
| `InitiatingProcessAccountDomain` | string | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | string | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessAccountUpn` | string | User principal name (UPN) of the account that ran the process responsible for the event |
| `InitiatingProcessIntegrityLevel` | string | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources |
| `InitiatingProcessTokenElevation` | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
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
