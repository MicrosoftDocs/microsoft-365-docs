---
title: "Cyprus identity card entity definition"
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
description: "Cyprus identity card sensitive information type entity definition."
---


# Cyprus identity card

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

10 digits without spaces and delimiters

## Pattern

10 digits

## Checksum

not applicable

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_cyprus_eu_national_id_card` finds content that matches the pattern.
- A keyword from `Keywords_cyprus_eu_national_id_card` is found.

```xml
      <!-- Cyprus Identity Card -->
      <Entity id="3ba8afe5-7a6c-4929-8247-0001b6878438" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_cyprus_eu_national_id_card" />
          <Match idRef="Keywords_cyprus_eu_national_id_card" />
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_cyprus_eu_national_id_card

- id card number
- identity card number
- kimlik karti
- national identification number
- personal id number
- ταυτοτητασ
