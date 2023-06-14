---
title: "UAE passport number entity definition"
f1.keywords:
- CSH
ms.author: v-katykoenen
author: kmkoenen
manager: laurawi
ms.date: 05/04/2023
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
description: "U.A.E passport number sensitive information type entity definition."
---

# U.A.E. passport number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

nine alphanumeric characters that must include letters of specific values

## Pattern

nine alphanumeric characters from numerals 0–9 and letters C, F, G, H, J, K, L, M, N, P, R, T, V, W, X, Y, Z

## Checksum

All nine characters should not be digits.

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_uae_passport_number` finds content that matches the pattern.
- A keyword from `Keyword_uae_passport_number` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

The regular expression `Regex_uae_passport_number` finds content that matches the pattern.

```xml
  <!-- UAE Passport Number -->
      <Entity id="111b5e63-6f4e-47c6-99bc-dd95625a5acf" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_uae_passport_number" />
          <Match idRef="Keyword_uae_passport_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_uae_passport_number" />
        </Pattern>
      </Entity>
```

## Keywords

**Keyword_uae_passport_number**

- جواز سفر 
- جواز سفر#
- passport#
- passport #
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers
