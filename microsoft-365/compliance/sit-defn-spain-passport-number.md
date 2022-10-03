---
title: "Spain passport number entity definition"
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
description: "Spain passport number sensitive information type entity definition."
---

# Spain passport number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

an eight- or nine-character combination of letters and numbers with no spaces or delimiters

## Pattern

an eight- or nine-character combination of letters and numbers:

- two digits or letters
- one digit or letter (optional)
- six digits

## Checksum

Not applicable

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_spain_eu_passport_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_spain_eu_passport_number` is found.
- The regular expression `Regex_spain_eu_passport_date` finds date in the format DD-MM-YYYY or a keyword from `Keywords_eu_passport_date` is found

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_spain_eu_passport_number` finds content that matches the pattern.
- A keyword from `Keywords_eu_passport_number` or `Keywords_spain_eu_passport_number` is found.

```xml
      <!-- Spain Passport Number -->
      <Entity id="d17a57de-9fa5-4e9f-85d3-85c26d89686e" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_spain_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_spain_eu_passport_number" />
          </Any>
          <Any minMatches="1">
            <Match idRef="Regex_spain_eu_passport_date" />
            <Match idRef="Keywords_eu_passport_date" />
          </Any>
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_spain_eu_passport_number" />
          <Any minMatches="1">
            <Match idRef="Keywords_eu_passport_number" />
            <Match idRef="Keywords_spain_eu_passport_number" />
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

### Keywords_spain_eu_passport_number

- libreta pasaporte
- número pasaporte
- españa pasaporte
- números de pasaporte
- número de pasaporte
- números pasaporte
- pasaporte no
- Passeport n°
- n° Passeport
- pasaporte no.
- pasaporte n°
- spain passport

### Keywords_eu_passport_date

- date of issue
- date of expiry
