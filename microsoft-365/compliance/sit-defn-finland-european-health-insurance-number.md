---
title: "Finland european health insurance number entity definition"
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
description: "Finland european health insurance number sensitive information type entity definition."
---

# Finland european health insurance number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

20-digit number

## Pattern

20-digit number:

- 10 digits - 8024680246
- an optional space or hyphen
- 10 digits

## Checksum

No

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regex `Regex_Finland_European_Health_Insurance_Number` finds content that matches the pattern.
- A keyword from `Keyword_Finland_European_Health_Insurance_Number` is found.

```xml
      <!-- Finland European Health Insurance Number -->
      <Entity id="60f75aed-81bf-4625-89b0-0846b9248ee7" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_Finland_European_Health_Insurance_Number"/>
          <Match idRef="Keyword_Finland_European_Health_Insurance_Number"/>
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_finland_european_health_insurance_number

- ehic#
- ehic
- finlandehicnumber#
- finska sjukförsäkringskort
- health card
- health insurance card
- health insurance number
- hälsokort
- sairaanhoitokortin
- sairausvakuutuskortti
- sairausvakuutusnumero
- sjukförsäkring nummer
- sjukförsäkringskort
- suomen sairausvakuutuskortti
- terveyskortti
