---
title: "Qatari ID card number"
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
description: "Qatari ID card number sensitive information type entity definition."
---

# Qatari ID card number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

eleven digits

## Pattern

Eleven digits:

- a digit 2 or 3 
- two digits representing the last two numbers of year of birth 
- three digits representing ISO country code 
- five digits.

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_qatari_id_card finds content that matches the pattern. 
- A keyword from Keyword_qatari_id_card is found. 

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_qatari_id_card finds content that matches the pattern. 

```xml
     <!-- Qatari ID Card Number-->
        <Entity id="52b1b60e-a4be-4b5a-a67b-6f9bbb7811da" patternsProximity="300" recommendedConfidence="85" relaxProximity="true">
          <Pattern confidenceLevel="85">
            <IdMatch idRef="Regex_qatari_id_card" />
            <Match idRef="Keyword_qatari_id_card" />
          </Pattern>
          <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_qatari_id_card" />
          </Pattern>
        </Entity>
```

## Keywords

### Keyword_qatari_id_card

- GP 
- DOB 
- D.O.B 
- Date of Birth 
- Birth Date 
- date of issue 
- date of expiry 
