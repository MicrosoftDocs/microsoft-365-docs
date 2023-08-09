---
title: DeviceInfo table in the advanced hunting schema
description: Learn about OS, computer name, and other machine information in the DeviceInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, machineinfo, DeviceInfo, device, machine, OS, platform, users
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
- tier3
- m365-security
ms.topic: conceptual
ms.date: 03/07/2023
---

# DeviceInfo

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

The `DeviceInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about devices in the organization, including OS version, active users, and computer name. Use this reference to construct queries that return information from this table.

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `DeviceId` | `string` | Unique identifier for the machine in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the machine |
| `ClientVersion` | `string` | Version of the endpoint agent or sensor running on the machine |
| `PublicIP` | `string` | Public IP address used by the onboarded machine to connect to the Microsoft  Defender for Endpoint service. This could be the IP address of the machine itself, a NAT device, or a proxy |
| `OSArchitecture` | `string` | Architecture of the operating system running on the machine |
| `OSPlatform` | `string` | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 11, Windows 10 and Windows 7. |
| `OSBuild` | `string` | Build version of the operating system running on the machine |
| `IsAzureADJoined` | `boolean` | Boolean indicator of whether machine is joined to the Azure Active Directory |
| `AadDeviceId` | `string` | Unique identifier for the device in Azure AD |
| `LoggedOnUsers` | `string` | List of all users that are logged on the machine at the time of the event in JSON array format |
| `RegistryDeviceTag` | `string` | Machine tag added through the registry |
| `OSVersion` | `string` | Version of the operating system running on the machine |
| `MachineGroup` | `string` | Machine group of the machine. This group is used by role-based access control to determine access to the machine |
| `ReportId` | `long` | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `OnboardingStatus` | `string` | Indicates whether the device is currently onboarded or not to Microsoft Defender for Endpoint or if the device is not supported |
|`AdditionalFields` | `string` | Additional information about the event in JSON array format |
|`DeviceCategory` | `string` | Broader classification that groups certain device types under the following categories: Endpoint, Network device, IoT, Unknown |
|`DeviceType` | `string` | Type of device based on purpose and functionality, such as network device, workstation, server, mobile, gaming console, or printer |
|`DeviceSubtype` | `string` | Additional modifier for certain types of devices, for example, a mobile device can be a tablet or a smartphone; only available if device discovery finds enough information about this attribute |
|`Model` | `string` | Model name or number of the product from the vendor or manufacturer, only available if device discovery finds enough information about this attribute |
|`Vendor` | `string` | Name of the product vendor or manufacturer, only available if device discovery finds enough information about this attribute |
|`OSDistribution` | `string` | Distribution of the OS platform, such as Ubuntu or RedHat for Linux platforms |
|`OSVersionInfo` | `string` | Additional information about the OS version, such as the popular name, code name, or version number |
|`MergedDeviceIds` | `string` | Previous device IDs that have been assigned to the same device |
|`MergedToDeviceId` | `string` | The most recent device ID assigned to a device |
|`SensorHealthState` | `string` | Indicates health of the device's EDR sensor, if onboarded to Microsoft Defender For Endpoint |
|`IsExcluded`| `bool` | Determines if the device is currently excluded from Microsoft Defender for Vulnerability Management experiences |
|`ExclusionReason` | `string` | Indicates the reason for device exclusion |
|	`AssetValue`| `string` | Indicates the value of a device as assigned by the user |
|	`ExposureLevel` | `string` | Indicates the exposure level of a device |
|	`IsInternetFacing` | `boolean` | Indicates whether the device is internet-facing |
|	`DeviceManualTags` | `string` | Device tags created manually using the portal UI or public API |
|	`DeviceDynamicTags` | `string` | Device tags assigned automatically using dynamic tagging rules |





The `DeviceInfo` table provides device information based on periodic reports or signals (heartbeats) from a device. Complete reports are sent every hour and every time a change happens to a previous heartbeat. 

You can use the following sample query to get the latest state of a device:

```kusto
// Get latest information on user/device
DeviceInfo
| where DeviceName == "example" and isnotempty(OSPlatform)
| summarize arg_max(Timestamp, *) by DeviceId 
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
