---
title: DeviceInfo table in the advanced hunting schema
description: Learn about OS, computer name, and other machine information in the DeviceInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, machineinfo, DeviceInfo, device, machine, OS, platform, users
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

# DeviceInfo

**Applies to:**
- Microsoft Threat Protection



The `DeviceInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about machines in the organization, including OS version, active users, and computer name. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the machine in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the machine |
| `ClientVersion` | string | Version of the endpoint agent or sensor running on the machine |
| `PublicIP` | string | Public IP address used by the onboarded machine to connect to the Microsoft Defender ATP service. This could be the IP address of the machine itself, a NAT device, or a proxy |
| `OSArchitecture` | string | Architecture of the operating system running on the machine |
| `OSPlatform` | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7 |
| `OSBuild` | string | Build version of the operating system running on the machine |
| `IsAzureADJoined` | boolean | Boolean indicator of whether machine is joined to the Azure Active Directory |
| `LoggedOnUsers` | string | List of all users that are logged on the machine at the time of the event in JSON array format |
| `RegistryDeviceTag` | string | Machine tag added through the registry |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `OSVersion` | string | Version of the operating system running on the machine |
| `MachineGroup` | string | Machine group of the machine. This group is used by role-based access control to determine access to the machine |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
