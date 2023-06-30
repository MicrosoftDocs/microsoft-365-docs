---
title: "UAE identity card number entity definition"
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
description: "U.A.E identity card number sensitive information type entity definition."
---

# U.A.E. identity card number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

15 digits with optional hyphens and must pass the Luhn check

## Pattern

15 digits pattern

- three digits  
- optional hyphen
- four digits
- optional hyphen
- seven digits
- optional hyphen
- one digit

## Checksum

Luhn check

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_uae_id_card_number` finds content that matches the pattern.
- A keyword from Keyword_uae_id_card_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_uae_id_card_number` finds content that matches the pattern.

```xml
     <!-- UAE Identity Card Number -->
      <Entity id="853a8051-ad90-417c-9345-c73ac0adc1c3" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_uae_id_card_number" />
          <Match idRef="Keyword_uae_id_card_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_uae_id_card_number" />
        </Pattern>
      </Entity>
```

## Keywords

**Keyword_uae_id_card_number**

- Emirates id
- ID number
- id no
- id #
- id#
- identification number
- identification no
- identification #
- identification#
- emirates identity card
- Insurance Number
- insurance no
- insurance#
- insurance #
- التأمين رقم
- التأمينرقم#
- رقم الهوية
- رقم الهوية#
