---
title: DeviceTvmSecureConfigurationAssessmentKB table in the advanced hunting schema
description: Learn about the various secure configurations assessed by Threat & Vulnerability Management in the DeviceTvmSecureConfigurationAssessmentKB table of the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, threat & vulnerability management, TVM, device management, security configuration, MITRE ATT&CK framework, knowledge base, KB, DeviceTvmSecureConfigurationAssessmentKB
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
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# DeviceTvmSecureConfigurationAssessmentKB

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint


The `DeviceTvmSecureConfigurationAssessmentKB` table in the advanced hunting schema contains information about the various secure configurations checked by [Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt). It also includes risk information, related industry benchmarks, and applicable MITRE ATT&CK techniques and tactics. 

This table does not return events or records. We recommend joining this table to the [DeviceTvmSecureConfigurationAssessment](advanced-hunting-devicetvmsecureconfigurationassessment-table.md) table using `ConfigurationId` to view text information about the security configurations in the returned assessments. 

For example, when you query the `DeviceTvmSecureConfigurationAssessment`table you might want to view the `ConfigurationDescription` for the security configurations that come up in the assessment results. You can do this by joining this table to `DeviceTvmSecureConfigurationAssessment` using `ConfigurationId` and project `ConfigurationDescription`.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `ConfigurationId` | string | Unique identifier for a specific configuration |
| `ConfigurationImpact` | string | Rated impact of the configuration to the overall configuration score (1-10) |
| `ConfigurationName` | string | Display name of the configuration |
| `ConfigurationDescription` | string | Description of the configuration |
| `RiskDescription` | string | Description of the associated risk |
| `ConfigurationCategory` | string | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls|
| `ConfigurationSubcategory` | string |Subcategory or subgrouping to which the configuration belongs. In many cases, this describes specific capabilities or features. |
| `ConfigurationBenchmarks` | string | List of industry benchmarks recommending the same or similar configuration |
| `Tags` | string | Labels representing various attributes used to identify or categorize a security configuration |
| `RemediationOptions` | string | Recommended actions to reduce or address any associated risks |

## Related topics

- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Overview of Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)