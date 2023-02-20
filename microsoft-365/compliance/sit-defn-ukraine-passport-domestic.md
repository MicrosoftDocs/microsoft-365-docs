---
title: "Ukraine passport domestic entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/09/2022
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
description: "Ukraine passport domestic sensitive information type entity definition."
---

# Ukraine passport domestic

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

nine digits

## Pattern

nine digits

## Checksum

No

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regex `Regex_Ukraine_Passport_Domestic` finds content that matches the pattern.
- A keyword from `Keyword_Ukraine_Passport_Domestic` is found.

```xml
      <!-- Ukraine Passport Domestic -->
      <Entity id="1817a540-221f-4459-9202-3bd78b81d803" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
        <IdMatch idRef="Regex_Ukraine_Passport_Domestic"/>
          <Match idRef="Keyword_Ukraine_Passport_Domestic"/>
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_ukraine_passport_domestic

- ukraine passport
- passport number
- passport no
- паспорт України
- номер паспорта
- персональний
