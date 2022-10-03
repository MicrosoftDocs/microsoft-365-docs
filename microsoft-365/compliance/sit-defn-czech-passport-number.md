---
title: "Czech passport number entity definition"
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
description: "Czech passport number sensitive information type entity definition."
---

# Czech passport number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

eight digits without spaces or delimiters

## Pattern

eight digits without spaces or delimiters

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_czech_republic_eu_passport_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_czech_republic_eu_passport_number` is found.
- The regular expression `Regex_eu_passport_date1` finds date in the format DD.MM.YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_czech_republic_eu_passport_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_czech_republic_eu_passport_number` is found.

```xml
      <!-- Czech Republic Passport Number -->
      <Entity id="7bcd8ce8-5e92-4bbe-bc92-fa669f0369fa" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_czech_republic_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_czech_republic_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_eu_passport_date1" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_czech_republic_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_czech_republic_eu_passport_number" />
          </Any>
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_eu_passport_number_common

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

### Keywords_czech_republic_eu_passport_number

- cestovní pas
- číslo pasu
- cestovní pasu
- passeport no
- čísla pasu

### Keywords_eu_passport_date

- date of issue
- date of expiry
