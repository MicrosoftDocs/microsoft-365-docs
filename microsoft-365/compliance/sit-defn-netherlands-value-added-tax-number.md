---
title: "Netherlands value added tax number entity definition"
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
description: "Netherlands value added tax number sensitive information type entity definition."
---

# Netherlands value added tax number

## Format

14 character alphanumeric pattern

## Pattern

14-character alphanumeric pattern:

- N or n
- L or l
- optional space, dot, or hyphen
- nine digits
- optional space, dot, or hyphen
- B or b
- two digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_netherlands_value_added_tax_number` finds content that matches the pattern.
- A keyword from `Keywords_netherlands_value_added_tax_number` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_netherlands_value_added_tax_number` finds content that matches the pattern.

```xml
      <!-- Netherlands Value Added Tax Number -->
      <Entity id="4f320d9b-4972-41ae-b337-88d499bb1ade" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_netherlands_value_added_tax_number" />
          <Match idRef="Keywords_netherlands_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_netherlands_value_added_tax_number" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_netherlands_value_added_tax_number

- vat number
- vat no
- vat#
- wearde tafoege tax getal
- btw nûmer
- btw-nummer