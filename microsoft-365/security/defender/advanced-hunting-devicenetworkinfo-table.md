---
title: DeviceNetworkInfo table in the advanced hunting schema
description: Learn about network configuration information in the DeviceNetworkInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, machinenetworkinfo, DeviceNetworkInfo, device, machine, mac, ip, adapter, dns, dhcp, gateway, tunnel
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
ms.date: 03/07/2023
---

# DeviceNetworkInfo

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint



The `DeviceNetworkInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about networking configuration of machines, including network adapters, IP and MAC addresses, and connected networks or domains. Use this reference to construct queries that return information from this table.

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `DeviceId` | `string` | Unique identifier for the machine in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the machine |
| `NetworkAdapterName` | `string` | Name of the network adapter |
| `MacAddress` | `string` | MAC address of the network adapter |
| `NetworkAdapterType` | `string` | Network adapter type. For the possible values, refer to [this enumeration](/dotnet/api/system.net.networkinformation.networkinterfacetype) |
| `NetworkAdapterStatus` | `string` | Operational status of the network adapter. For the possible values, refer to [this enumeration](/dotnet/api/system.net.networkinformation.operationalstatus) |
| `TunnelType` | `string` | Tunneling protocol, if the interface is used for this purpose, for example 6to4, Teredo, ISATAP, PPTP, SSTP, and SSH |
| `ConnectedNetworks` | `string` | Networks that the adapter is connected to. Each JSON array contains the network name, category (public, private or domain), a description, and a flag indicating if it's connected publicly to the internet |
| `DnsAddresses` | `string` | DNS server addresses in JSON array format |
| `IPv4Dhcp` | `string` | IPv4 address of DHCP server |
| `IPv6Dhcp` | `string` | IPv6 address of DHCP server |
| `DefaultGateways` | `string` | Default gateway addresses in JSON array format |
| `IPAddresses` | `string` | JSON array containing all the IP addresses assigned to the adapter, along with their respective subnet prefix and IP address space, such as public, private, or link-local |
| `ReportId` | `long` | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `NetworkAdapterVendor` | `string` | Name of the manufacturer or vendor of the network adapter |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
