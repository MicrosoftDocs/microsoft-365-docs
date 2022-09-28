---
title: "France health insurance number entity definition"
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
description: "France health insurance number sensitive information type entity definition."
---

# France health insurance number

## Format

21-digit number

## Pattern

21-digit number:

- 10 digits
- an optional space
- 10 digits
- an optional space
- a digit

## Checksum

No

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- the regex `Regex_France_Health_Insurance_Number` finds content that matches the pattern.
- a keyword from `Keyword_France_Health_Insurance_Number` is found.

```xml
      <!-- France Health Insurance Number -->
      <Entity id="9bc2069e-76df-4ff9-ac02-2f519469e236" patternsProximity="300" recommendedConfidence="75">
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_France_Health_Insurance_Number"/>
          <Match idRef="Keyword_France_Health_Insurance_Number"/>
        </Pattern>
      </Entity>
```
## Keywords

### Keyword_France_health_insurance_number

- insurance card
- carte vitale
- carte d'assuré social