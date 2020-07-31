---
title: AssignedIPAddresses() function in advanced hunting for Microsoft Threat Protection
description: Learn how to use the AssignedIPAddresses() function to get the latest IP addresses assigned to a device 
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, FileProfile, file profile, function, enrichment
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

# AssignedIPAddresses()

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Use the `AssignedIPAddresses()` function to quickly obtain the latest IP addresses that have been assigned to a device or the most recent IP addresses from a specified point in time. This function returns a table with the following columns:

| Column | Data type | Description |
|------------|-------------|-------------|
| Timestamp | datetime | Latest time when the device was observed using the IP address |
| IPAddress | string | IP address used by the device |
| IPType | string | Indicates whether the IP address is a public or private address |
| NetworkAdapterType | int | Network adapter type used by the device that has been assigned the IP address. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.networkinterfacetype?view=netframework-4.7.2)  |
| ConnectedNetworks | int | Networks that the adapter with the assigned IP address is connected to. Each JSON array contains the network name, category (public, private or domain), a description, and a flag indicating if it's connected publicly to the internet |


## Syntax

```kusto
AssignedIPAddresses(x, y)
```

## Arguments

- **x** — `DeviceId` or `DeviceName` value identifying the device
- **y** — `Timestamp` (datetime) value indicating the specific point in time where to get the most recent IP addresses. If not specified, the function returns the latest IP addresses.

## Examples

### Get the list of IP addresses used by a specific device as of 24 hours ago

```kusto
AssignedIPAddresses('example-device', ago(1d))
```
## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-tables.md)