---
title: "Germany identity card number entity definition"
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
description: "Germany identity card number sensitive information type entity definition."
---

# Germany identity card number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

since 1 November 2010: Nine to 11 letters and digits

from 1 April 1987 until 31 October 2010: 10 digits

## Pattern

since 1 November 2010: 9 to 11 characters alphanumeric pattern
- one L, M, N, P, R, T, V, W, X, Y (case insensitive)
- eight digits or letters in C, F, G, H, J, K, L, M, N, P, R, T, V, W, X, Y and Z (case insensitive)
- optional check digit
- Optional d/D

from 1 April 1987 until 31 October 2010:

- 10 digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_german_id_card_with_check` finds content that matches the pattern.
- A keyword from `Keyword_germany_id_card` is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_germany_id_card` finds content that matches the pattern (9 characters without check digit issued pre-2010 or 10 digits pattern issued posy 2010).
- A keyword from `Keyword_germany_id_card` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_german_id_card_with_check` finds content that matches the pattern.
- The checksum passes.

```xml
      <!-- Germany Identity Card Number -->
      <Entity id="e577372f-c42e-47a0-9d85-bebed1c237d4" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
         <IdMatch idRef="Regex_germany_id_card" />
         <Match idRef="Keyword_germany_id_card" />
        </Pattern>
        <Version minEngineVersion="15.20.4545.000">
          <Pattern confidenceLevel="85">
           <IdMatch idRef="Func_german_id_card_with_check" />
            <Match idRef="Keyword_germany_id_card" />
          </Pattern>
          <Pattern confidenceLevel="65">
           <IdMatch idRef="Func_german_id_card_with_check" />
          </Pattern>
        </Version>
      </Entity>
```

## Keywords

### Keyword_germany_id_card

- ausweis
- gpid
- identification
- identifikation
- identifizierungsnummer
- identity card
- identity number
- id-nummer
- personal id
- personalausweis
- persönliche id nummer
- persönliche identifikationsnummer
- persönliche-id-nummer
