---
title: "U.K. national health service number entity definition"
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
description: "U.K. national health service number sensitive information type entity definition."
---

# U.K. national health service number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

10-17 digits separated by spaces

## Pattern

10-17 digits:

- either 3 or 10 digits
- a space
- three digits
- a space
- four digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_uk_nhs_number` finds content that matches the pattern.
- One of the following is true:
    - A keyword from `Keyword_uk_nhs_number` is found.
    - A keyword from `Keyword_uk_nhs_number1` is found.
    - A keyword from `Keyword_uk_nhs_number_dob` is found.
- The checksum passes.

```xml
<!-- U.K. NHS Number -->
<Entity id="3192014e-2a16-44e9-aa69-4b20375c9a78" patternsProximity="300" recommendedConfidence="85">
    <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_uk_nhs_number" />
        <Any minMatches="1">
          <Match idRef="Keyword_uk_nhs_number" />
          <Match idRef="Keyword_uk_nhs_number1" />
          <Match idRef="Keyword_uk_nhs_number_dob" />
        </Any>
    </Pattern>
</Entity>
```

## Keywords

### Keyword_uk_nhs_number

- national health service
- nhs
- health services authority
- health authority

### Keyword_uk_nhs_number1

- patient id
- patient identification
- patient no
- patient number

### Keyword_uk_nhs_number_dob

- GP
- DOB
- D.O.B
- Date of Birth
- Birth Date
