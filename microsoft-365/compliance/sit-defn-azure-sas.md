---
title: "Azure SAS entity definition"
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
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Azure SAS sensitive information type entity definition."
---

# Azure SAS

## Format

The string `sig` followed by the characters and strings outlined in the pattern below.

## Pattern

- the string `sig`
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 43-53 characters that are lower- or uppercase letters, digits, or the percent sign (%)
- the string `%3d`
- any character that isn't a lower- or uppercase letter, digit, or percent sign (%)

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzureSAS` finds content that matches the pattern.

```xml
<!--Azure SAS-->
<Entity id="4d235014-e564-47f4-a6fb-6ebb4a826834" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureSAS" />
  </Pattern>
</Entity>
```
