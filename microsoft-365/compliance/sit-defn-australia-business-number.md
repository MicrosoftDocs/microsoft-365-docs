---
title: "Australia business number entity definition"
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
description: "Australia business number sensitive information type entity definition."
---

# Australia business number

## Format

11 digits with optional delimiters

## Pattern

11 digits with optional delimiters:

- two digits
- an optional hyphen or space
- three digits
- an optional hyphen or space
- three digits
- an optional hyphen or space
- three digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_australian_business_number finds content that matches the pattern.
- A keyword from Keywords_australian_business_number is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_australian_business_number finds content that matches the pattern.

```xml
      <!-- Australia Business Number -->
      <Entity id="76e83b3b-01ee-4530-aced-e667a6609f49" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_australian_business_number" />
          <Match idRef="Keywords_australian_business_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_australian_business_number" />
        </Pattern>
      </Entity>
```
## Keywords

### Keyword_australia_business_number

- australia business no
- business number
- abn#
- businessid#
- business ID
- abn
- businessno#