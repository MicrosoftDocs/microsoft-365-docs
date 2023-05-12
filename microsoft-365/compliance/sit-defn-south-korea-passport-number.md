---
title: "South Korea passport number entity definition"
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
description: "South Korea passport number sensitive information type entity definition."
---

# South Korea passport number

 [!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

nine alphanumeric characters; only specific values are allowed

## Pattern

- a letter (M|S|R|O|D) followed by  
- eight digits 

Or 

- a letter (M|S|R|O|D) followed by  
- three digits followed by  
- one letter followed by  
- four digits 

## Checksum

NA 

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression `Regex_south_korea_passport_number` finds content that matches the pattern. 
- A keyword from `Keyword_south_korea_passport_number` is found. 

 

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters: 

- The regular expression Regex_south_korea_passport_number finds content that matches the pattern. 

```xml
      <!-- South Korea Passport Number -->
      <Entity id="cb725748-0f69-4282-8a03-e9b222a10a18" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_south_korea_passport_number" />
          <Match idRef="Keyword_south_korea_passport_number" />
        </Pattern>
        <Pattern confidenceLevel="65">
          <IdMatch idRef="Regex_south_korea_passport_number" />
        </Pattern>
      </Entity>
```

## Keywords

**Keyword_south_korea_passport_number**

- passport# 
- passport # 
- passportno 
- passport no 
- passportnumber 
- passport number 
- passportnumbers 
- passport numbers 
- 여권 번호 
- 한국어 여권 
- 여권 번호 
- 여권번호 
- 한국 여권 
- 한국여권 
- 한국 여권 번호 
