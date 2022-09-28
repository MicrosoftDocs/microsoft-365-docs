---
title: "China resident identity card (PRC) number entity definition"
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
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "China resident identity card (PRC) number sensitive information type entity definition."
---


# China resident identity card (PRC) number

## Format

18 digits

## Pattern

18 digits:

- six digits that are an address code
- eight digits in the form YYYYMMDD, which are the date of birth
- three digits that are an order code
- one digit that is a check digit

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_china_resident_id` finds content that matches the pattern.
- A keyword from `Keyword_china_resident_id` is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_china_resident_id` finds content that matches the pattern.
- The checksum passes.

```xml
<!-- China Resident Identity Card (PRC) Number -->
<Entity id="c92daa86-2d16-4871-901f-816b3f554fc1" recommendedConfidence="85" patternsProximity="300">
  <Pattern confidenceLevel="85">
     <IdMatch idRef="Func_china_resident_id"/>
     <Match idRef="Keyword_china_resident_id"/>
  </Pattern>
  <Pattern confidenceLevel="75">
     <IdMatch idRef="Func_china_resident_id"/>
  </Pattern>
</Entity>
```

## Keywords

## Keyword_china_resident_id

- Resident Identity Card
- PRC
- National Identification Card
- 身份证
- 居民 身份证
- 居民身份证
- 鉴定
- 身分證
- 居民 身份證
- 鑑定