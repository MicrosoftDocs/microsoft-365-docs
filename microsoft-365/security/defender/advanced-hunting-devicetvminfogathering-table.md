---
title: DeviceTvmInfoGathering table in the advanced hunting schema
description: Learn about the assessment events including the status of various configurations and attack surface area states of devices in the DeviceTvmInfoGathering table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities, Microsoft Defender Vulnerability Management
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
ms.date: 06/22/2022
---

# DeviceTvmInfoGathering

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The `DeviceTvmInfoGathering` table in the advanced hunting schema contains [Microsoft Defender Vulnerability Management](/microsoft-365/security/defender-vulnerability-management/defender-vulnerability-management) assessment events including the status of various configurations and attack surface area states of devices. You can use this table to hunt for assessment events related to mitigation for zero-days, posture assessment for emerging threats supporting threat analytics mitigation status reports, enabled TLS protocol versions on servers, and more. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `LastSeenTime` | `datetime` | Date and time when the service last saw the device |
| `DeviceId` | `string` | Unique identifier for the device in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the device |
| `OSPlatform` | `string` | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| `AdditionalFields` | `string` | Additional information about the event  |

For example, to view devices affected by the [Log4Shell vulnerability](https://www.microsoft.com/security/blog/2021/12/11/guidance-for-preventing-detecting-and-hunting-for-cve-2021-44228-log4j-2-exploitation/) where the workaround mitigation hasn't been applied yet, or has been applied and is pending reboot, you can use the following query.

```kusto
DeviceTvmInfoGathering
| where AdditionalFields.Log4JEnvironmentVariableMitigation in ("RebootRequired", "false")
| join kind=inner (
    DeviceTvmSoftwareVulnerabilities
    | where CveId == "CVE-2021-44228"
) on DeviceId
| summarize any(DeviceName), any(AdditionalFields.Log4JEnvironmentVariableMitigation) by DeviceId
```

## Related topics
- [DeviceTvmInfoGatheringKB](advanced-hunting-devicetvminfogatheringkb-table.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Learn how to manage the Log4Shell vulnerability in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/tvm-manage-log4shell-guidance)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
