---
title: "Malta identity card number entity definition"
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
- tier2
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Malta identity card number sensitive information type entity definition."
---

# Malta identity card number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

seven digits followed by one letter

## Pattern

seven digits followed by one letter:

- seven digits
- one letter in "M, G, A, P, L, H, B, Z" (case insensitive)

## Checksum

Not applicable

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_malta_eu_national_id_card` finds content that matches the pattern.
- A keyword from `Keywords_malta_eu_national_id_card` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_malta_eu_national_id_card` finds content that matches the pattern.

```xml
      <!-- Malta Identity Card Number -->
      <Entity id="854b36b3-a388-4ac8-a4ec-677c2b5e4356" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_malta_eu_national_id_card" />
          <Match idRef="Keywords_malta_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_malta_eu_national_id_card" />
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_malta_eu_national_id_card

- citizen service number
- id tat-taxxa
- identifika numru tal-biljett
- kodiċi numerali personali
- numru ta 'identifikazzjoni personali
- numru ta 'identifikazzjoni tat-taxxa
- numru ta 'identifikazzjoni uniku
- numru ta' identità uniku
- numru tas-servizz taċ-ċittadin
- numru tat-taxxa
- personal numeric code
- unique identification number
- unique identity number
- uniqueidentityno#
