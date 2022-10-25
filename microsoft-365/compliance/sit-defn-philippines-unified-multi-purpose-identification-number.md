---
title: "Philippines unified multi-purpose identification number entity definition"
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
description: "Philippines unified multi-purpose identification number sensitive information type entity definition."
---

# Philippines unified multi-purpose identification number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

12 digits separated by hyphens

## Pattern

12 digits:

- four digits
- a hyphen
- seven digits
- a hyphen
- one digit

## Checksum

No

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_philippines_unified_id` finds content that matches the pattern.
- A keyword from `Keyword_philippines_id` is found.

```xml
<!-- Philippines Unified Multi-Purpose ID number -->
<Entity id="019b39dd-8c25-4765-91a3-d9c6baf3c3b3" recommendedConfidence="75" patternsProximity="300">
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Regex_philippines_unified_id"/>
     <Match idRef="Keyword_philippines_id"/>
  </Pattern>
</Entity>
```

## Keywords

### Keyword_philippines_id

- Unified Multi-Purpose ID
- UMID
- Identity Card
- Pinag-isang Multi-Layunin ID
