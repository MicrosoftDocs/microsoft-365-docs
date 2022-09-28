---
title: "Austria identity card entity definition"
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
description: "Austria identity card sensitive information type entity definition."
---

# Austria identity card

## Format

A 24-character combination of letters, digits, and special characters

## Pattern

24 characters:

- 22 letters (not case-sensitive), digits, backslashes, forward slashes, or plus signs

- two letters (not case-sensitive), digits, backslashes, forward slashes, plus signs, or equal signs

## Checksum

Not applicable

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_austria_eu_national_id_card` finds content that matches the pattern.
- A keyword from `Keywords_austria_eu_national_id_card` is found.

```xml
      <!-- Austria Identity Card -->
      <Entity id="5ec06c3b-007e-4820-8343-7ff73b889735" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_austria_eu_national_id_card" />
          <Match idRef="Keywords_austria_eu_national_id_card" />
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_austria_eu_national_id_card

- identity number
- national id
- personalausweis republik österreich