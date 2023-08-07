---
title: DeviceTvmSecureConfigurationAssessment table in the advanced hunting schema
description: Learn about security assessment events in the DeviceTvmSecureConfigurationAssessment table of the advanced hunting schema. These events provide device information, security configuration details, impact, and compliance information.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, security configuration, DeviceTvmSecureConfigurationAssessment
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

# DeviceTvmSecureConfigurationAssessment

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

Each row in the `DeviceTvmSecureConfigurationAssessment` table contains an assessment event for a specific security configuration from [Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt). Use this reference to check the latest assessment results and determine whether devices are compliant.

You can join this table with the [DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-devicetvmsecureconfigurationassessmentkb-table.md) table using `ConfigurationId` so you can, for example, view the text description of the configuration from the `ConfigurationDescription` column of the `DeviceTvmSecureConfigurationAssessmentKB` table, in the configuration assessment results.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `DeviceId` | `string` | Unique identifier for the device in the service |
| `DeviceName` | `string` | Fully qualified domain name (FQDN) of the device |
| `OSPlatform` | `string` | Platform of the operating system running on the device. Indicates specific operating systems, including variations within the same family, such as Windows 11, Windows 10, and Windows 7.|
| `Timestamp` | `datetime` | Date and time when the record was generated |
| `ConfigurationId` | `string` | Unique identifier for a specific configuration |
| `ConfigurationCategory` | `string` | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls |
| `ConfigurationSubcategory` | `string` | Subcategory or subgrouping to which the configuration belongs. In many cases,  string describes specific capabilities or features. |
| `ConfigurationImpact` | `string` | Rated impact of the configuration to the overall configuration score (1-10) |
| `IsCompliant` | `boolean` | Indicates whether the configuration or policy is properly configured |
| `IsApplicable` | `boolean` | Indicates whether the configuration or policy applies to the device |
| `Context` | `string` | Additional contextual information about the configuration or policy |
| `IsExpectedUserImpact` | `boolean` | Indicates whether there will be user impact if the configuration or policy is applied |

You can try this example query to return information on devices with non-compliant antivirus configurations along with the relevant configuration metadata from the `DeviceTvmSecureConfigurationAssessmentKB` table:

```kusto
// Get information on devices with antivirus configurations issues
DeviceTvmSecureConfigurationAssessment
| where ConfigurationSubcategory == 'Antivirus' and IsApplicable == 1 and IsCompliant == 0
| join kind=leftouter (
    DeviceTvmSecureConfigurationAssessmentKB
    | project ConfigurationId, ConfigurationName, ConfigurationDescription, RiskDescription, Tags, ConfigurationImpact
) on ConfigurationId
| project DeviceName, OSPlatform, ConfigurationId, ConfigurationName, ConfigurationCategory, ConfigurationSubcategory, ConfigurationDescription, RiskDescription, ConfigurationImpact, Tags
```

## Related topics

- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
