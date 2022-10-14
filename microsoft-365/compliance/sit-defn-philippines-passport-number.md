---
title: "Philippines passport number entity definition"
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
description: "Philippines passport number sensitive information type entity definition."
---

# Philippines passport number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

seven or eight or nine alphanumeric characters

## Pattern

Seven or eight or nine alphanumeric characters:

- one letter followed by six digits
or
- two letters followed by six digits
or
- two letters followed by seven digits
or
- one letter followed by seven digits followed by one letter.

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_philippines_passport_number finds content that matches the pattern. 
- A keyword from Keyword_philippines_passport_number is found. 

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_philippines_passport_number finds content that matches the pattern. 

```xml
     <!-- Philippines Passport Number -->
     <Entity id="6fa57f91-314a-4561-8248-7ab921957448" patternsProximity="300" recommendedConfidence="85" relaxProximity="true" filters="philippines_passport_filter">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_philippines_passport_number" />
          <Match idRef="Keyword_philippines_passport_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_philippines_passport_number" />
        </Pattern>
     </Entity>
```

## Keywords

### Keyword_philippines_passport_number 

- passport 
- passport no 
- passport number 
- passport# 
- passportno 
- passport no. 
- passportno# 
- passport book 
- passportbook# 
- pasaporte 
- numero ng pasaporte 
- libro ng pasaporte 
