---
title: "Sweden passport number entity definition"
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
description: "Sweden passport number sensitive information type entity definition."
---

# Sweden passport number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

eight digits

## Pattern

eight consecutive digits

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- the regular expression Regex_sweden_passport_number finds content that matches the pattern.
- a keyword from `Keywords_eu_passport_number` or `Keyword_sweden_passport` is found.
- the regular expression `Regex_sweden_eu_passport_date` finds a date in the format DD MMM/MMM YY (01 JAN/JAN 12) or a keyword from `Keywords_eu_passport_date` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- the regular expression Regex_sweden_passport_number finds content that matches the pattern.
- a keyword from `Keywords_eu_passport_number` or `Keyword_sweden_passport` is found.

```xml
    <!-- Sweden Passport Number -->
    <Entity id="ba4e7456-55a9-4d89-9140-c33673553526" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_sweden_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_sweden_passport" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_sweden_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_sweden_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keyword_sweden_passport" />
          </Any>
      </Pattern>
    </Entity>
```

## Keywords

### Keywords_eu_passport_number

- passport#
- passport #
- passportid
- passports
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers

### Keyword_sweden_passport

- alien registration card
- g3 processing fees
- multiple entry
- Numéro de passeport
- passeport n °
- passeport non
- passeport #
- passeport#
- passeportnon
- passeportn °
- passnummer
- pass nr
- schengen visa
- schengen visas
- single entry
- sverige pass
- visa requirements
- visa processing
- visa type

### Keywords_eu_passport_date

- date of issue
- date of expiry
