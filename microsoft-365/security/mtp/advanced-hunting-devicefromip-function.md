---
title: DeviceFromIP() function in advanced hunting for Microsoft 365 Defender
description: Learn how to use the DeviceFromIP() function to get the devices that have been assigned a specific IP address 
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, device, devicefromIP, function, enrichment
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
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
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: article
---

# DeviceFromIP()

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender


[!INCLUDE [Prerelease information](../includes/prerelease.md)]


Use the `DeviceFromIP()` function in your [advanced hunting](advanced-hunting-overview.md) queries to quickly obtain the list of devices that have been assigned to a certain IP address at a given point in time. 

This function returns a table with the following columns:

| Column | Data type | Description |
|------------|-------------|-------------|
| `IP` | string | IP address  |
| `DeviceId` | string | Unique identifier for the device in the service |


## Syntax

```kusto
invoke DeviceFromIP(x,y)
```

## Arguments

- **x**—`IP` should contain local IP addresses. External IP addresses are not supported.
- **y**—`Timestamp` (datetime) value instructing the function to obtain the most recent assigned devices from a specific time. If not specified, the function returns the latest available records.

## Example


### Get devices that have been assigned specific IP addresses at a given point in time

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
