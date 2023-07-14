---
title: AssignedIPAddresses() function in advanced hunting for Microsoft 365 Defender
description: Learn how to use the AssignedIPAddresses() function to get the latest IP addresses assigned to a device
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, FileProfile, file profile, function, enrichment
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.topic: conceptual
ms.date: 02/16/2021
---

# AssignedIPAddresses()

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Use the `AssignedIPAddresses()` function in your [advanced hunting](advanced-hunting-overview.md) queries to quickly obtain the latest IP addresses that have been assigned to a device. If you specify a timestamp argument, this function obtains the most recent IP addresses at the specified time. 

This function returns a table with the following columns:

| Column | Data type | Description |
|------------|-------------|-------------|
| `Timestamp` | `datetime` | Latest time when the device was observed using the IP address |
| `IPAddress` | `string` | IP address used by the device |
| `IPType` | `string` | Indicates whether the IP address is a public or private address |
| `NetworkAdapterType` | `int` | Network adapter type used by the device that has been assigned the IP address. For the possible values, refer to [this enumeration](/dotnet/api/system.net.networkinformation.networkinterfacetype) |
| `ConnectedNetworks` | `int` | Networks that the adapter with the assigned IP address is connected to. Each JSON array contains the network name, category (public, private, or domain), a description, and a flag indicating if it's connected publicly to the internet |

## Syntax

```kusto
AssignedIPAddresses(x, y)
```

## Arguments

- **x**—`DeviceId` or `DeviceName` value identifying the device
- **y**—`Timestamp` (datetime) value instructing the function to obtain the most recent assigned IP addresses from a specific time. If not specified, the function returns the latest IP addresses.

## Examples

### Get the list of IP addresses used by a device 24 hours ago

```kusto
AssignedIPAddresses('example-device-name', ago(1d))
```

### Get IP addresses used by a device and find devices communicating with it
This query uses the `AssignedIPAddresses()` function to get assigned IP addresses for the device (`example-device-name`) on or before a specific date (`example-date`). It then uses the IP addresses to find connections to the device initiated by other devices. 

```kusto
let Date = datetime(example-date);
let DeviceName = "example-device-name";
// List IP addresses used on or before the specified date
AssignedIPAddresses(DeviceName, Date)
| project DeviceName, IPAddress, AssignedTime = Timestamp 
// Get all network events on devices with the assigned IP addresses as the destination addresses
| join kind=inner DeviceNetworkEvents on $left.IPAddress == $right.RemoteIP
// Get only network events around the time the IP address was assigned
| where Timestamp between ((AssignedTime - 1h) .. (AssignedTime + 1h))
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
