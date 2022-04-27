---
title: UrlClickEvents table in the advanced hunting schema
description: Learn how to hunt for phishing campaigns and suspicious clicks using the UrlClickEvents table in the advanced hunting schema.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, UrlClickEvents, SafeLinks, phishing, malware, malicious clicks, outlook, teams, email, office365
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

# UrlClickEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint


The `UrlClickEvents` table in the advanced hunting schema contains information about [Safe Links](microsoft-365/security/office-365-security/safe-links.md) clicks from email messages, Microsoft Teams, and Office 365 apps in supported desktop, mobile, and web apps. It also includes risk information, related industry benchmarks, and applicable MITRE ATT&CK techniques and tactics.

This table doesn't return events or records. We recommend joining this table to the [DeviceTvmSecureConfigurationAssessment](advanced-hunting-devicetvmsecureconfigurationassessment-table.md) table using `ConfigurationId` to view text information about the security configurations in the returned assessments.

For example, when you query the `DeviceTvmSecureConfigurationAssessment` table you might want to view the `ConfigurationDescription` for the security configurations that come up in the assessment results. You can see this information by joining this table to `DeviceTvmSecureConfigurationAssessment` using `ConfigurationId` and project `ConfigurationDescription`.

For information on other tables in the advanced hunting schema, see [the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `ConfigurationId` | `string` | Unique identifier for a specific configuration |
| `ConfigurationImpact` | `string` | Rated impact of the configuration to the overall configuration score (1-10) |

You can try this example query to return relevant configuration metadata along with information on devices with non-compliant antivirus configurations from the `DeviceTvmSecureConfigurationAssessment` table:

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