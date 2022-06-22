---
title: DeviceTvmInfoGathering table in the advanced hunting schema
description: Learn about the assessment events including the status of various configurations and attack surface area states of devices in the DeviceTvmInfoGathering table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, software, inventory, vulnerabilities, CVE ID, OS DeviceTvmSoftwareInventoryVulnerabilities
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
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security-compliance
ms.topic: article
ms.technology: m365d
---

# DeviceTvmInfoGathering

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

>[!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The `DeviceTvmInfoGathering` table in the advanced hunting schema contains the [Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) assessment events including the status of various configurations and attack surface area states of devices. You can, for instance, hunt for assessment events [**ADD USE CASE INFO HERE**]. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | `datetime` | Date and time when the event was recorded |
| `LastSeenTime` | `datetime` | Date and time when the service last saw the device |
| `DeviceId` | `string` | Unique identifier for the device in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the device |
| `OSPlatform` | `string` | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| `AdditionalFields` | `string` | Additional information about the event  |

[**ADD DESCRIPTION FOR SAMPLE QUERY HERE**]

```kusto
DeviceInfoGathering
| where OSPlatform startswith "WindowsServer"
// Ensure using system default Tls version, and that the system default disallows using TLS versions 1.0 and 1.1
| where AdditionalFields.TlsServer10 != "Disabled" or AdditionalFields.TlsServer11 != "Disabled" or AdditionalFields.SystemDefaultTlsVersions40 != "1"
| join (
// Devices having software installed with critical cve, and a zero day
DeviceTvmSoftwareVulnerabilities
| where VulnerabilitySeverityLevel == "Critical"
| join (DeviceTvmSoftwareVulnerabilitiesKB | where IsExploitAvailable == 1) on CveId
// have active alert in the past 24h
| join (AlertEvidence | where Timestamp > ago(1d)) on DeviceId
) on DeviceId
| take 5
```

## Related topics

- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)