---
title: "Bulgaria uniform civil number entity definition"
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
description: "Bulgaria uniform civil number sensitive information type entity definition."
---

# Bulgaria uniform civil number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

10 digits without spaces and delimiters

## Pattern

10 digits without spaces and delimiters

- six digits that correspond to the birth date (YYMMDD)
- two digits that correspond to the birth order
- one digit that corresponds to gender: An even digit for male and an odd digit for female
- one check digit

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_bulgaria_eu_national_id_card` finds content that matches the pattern.
- A keyword from `Keywords_bulgaria_eu_national_id_card` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_bulgaria_eu_national_id_card` finds content that matches the pattern.

```xml
      <!-- Bulgaria Uniform Civil Number -->
      <Entity id="100d58b1-0a35-4fb1-aa89-e4a86fb53fcc" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
          <Match idRef="Keywords_bulgaria_eu_national_id_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_bulgaria_eu_national_id_card" />
          <Any minMatches="0" maxMatches="0">
            <Match idRef="Keywords_bulgaria_eu_telephone_number" />
            <Match idRef="Keywords_bulgaria_eu_mobile_number" />
          </Any>
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_bulgaria_eu_national_id_card

- bnn#
- bnn
- bucn#
- bucn
- edinen grazhdanski nomer
- egn#
- egn
- identification number
- national id
- national number
- nationalnumber#
- nationalnumber
- personal id
- personal no
- personal number
- personalidnumber#
- social security number
- ssn#
- ssn
- uniform civil id
- uniform civil no
- uniform civil number
- uniformcivilno#
- uniformcivilno
- uniformcivilnumber#
- uniformcivilnumber
- unique citizenship number
- егн#
- егн
- единен граждански номер
- идентификационен номер
- личен номер
- лична идентификация
- лично не
- национален номер
- номер на гражданството
- униформ id
- униформ граждански id
- униформ граждански не
- униформ граждански номер
- униформгражданскиid#
- униформгражданскине.#
