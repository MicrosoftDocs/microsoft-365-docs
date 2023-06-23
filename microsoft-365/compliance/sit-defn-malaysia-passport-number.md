---
title: "Malaysia passport number entity definition"
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
description: "Malaysia passport number sensitive information type entity definition."
---

# Malaysia passport number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

nine alphanumeric characters with only specific values for letters 

## Pattern

- a letter (A/H/K/a/h/k) followed by  
- eight digits 

## Checksum

NA

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression `Regex_malaysia_passport_number` finds content that matches the pattern. 
- A keyword from `Keyword_malaysia_passport_number` is found. 

 

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression `Regex_malaysia_passport_number` finds content that matches the pattern. 

```xml
        <!-- Malaysia Passport Number -->
      <Entity id="62ea2a27-798e-4de3-a31f-a54c5d02ff37" patternsProximity="300" recommendedConfidence="85" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_malaysia_passport_number" />
          <Match idRef="Keyword_malaysia_passport_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_malaysia_passport_number" />
        </Pattern>
      </Entity>
```

## Keywords

**Keyword_malaysia_passport_number**

- passport#
- passport #
- passportno
- passport no
- passportnumber
- passport number
- passportnumbers
- passport numbers
- pasport#
- pasport #
- pasportno
- pasport no
- pasportnumber
- pasport number
- pasportnumbers
- pasport numbers
- no. pasport
- nombor pasport
- nomborpasport
