---
title: "Azure Storage account key (generic) entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier3
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Azure Storage account key (generic) sensitive information type entity definition."
---

# Azure Storage account key (generic)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Any combination of 86 lower- or uppercase letters, digits, the forward slash (/), or plus sign (+), preceded or followed by the characters outlined in the pattern below.

## Pattern

- zero to one of the greater than symbol (>), apostrophe ('), equal sign (=), quotation mark ("), or number sign (#)
- any combination of 86 characters that are lower- or uppercase letters, digits, the forward slash (/), or plus sign (+)
- two equal signs (=)

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzureStorageAccountKeyGeneric` finds content that matches the pattern.

```xml
<!--Azure Storage Account Key (Generic)-->
<Entity id="7ff41bd0-5419-4523-91d6-383b3a37f084" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureStorageAccountKeyGeneric" />
  </Pattern>
</Entity>
```
