---
title: DeviceFromIP() function in advanced hunting for Microsoft Defender XDR
description: Learn how to use the DeviceFromIP() function to get the devices that have been assigned a specific IP address
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
ms.date: 02/16/2024
---

# DeviceFromIP()

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR


[!INCLUDE [Prerelease information](../includes/prerelease.md)]


Use the `DeviceFromIP()` function in your [advanced hunting](advanced-hunting-overview.md) queries to quickly obtain the list of devices that have been assigned to a certain IP address at a given point in time. 

This function returns a table with the following columns:

| Column | Data type | Description |
|------------|-------------|-------------|
| `IP` | `string` | IP address  |
| `DeviceId` | `string` | Unique identifier for the device in the service |


## Syntax

```kusto
invoke DeviceFromIP()
```

## Arguments

This function is invoked as part of a query.

- **x**—The first parameter is typically already a column in the query. In this case, it's the column named `IP`, the IP address for which you want to see a list of devices that have been assigned to it. It should be a local IP address. External IP addresses aren't supported.
- **y**—A second optional parameter is the `Timestamp`, which instructs the function to obtain the most recent assigned devices from a specific time. If not specified, the function returns the latest available records.

## Example


### Get the latest devices that have been assigned specific IP addresses

```kusto
DeviceNetworkEvents 
| limit 100 
| project IP = LocalIP 
| invoke DeviceFromIP()
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
