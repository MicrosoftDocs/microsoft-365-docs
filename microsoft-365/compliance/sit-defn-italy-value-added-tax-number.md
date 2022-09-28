---
title: "Italy value added tax number entity definition"
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
description: "Italy value added tax number sensitive information type entity definition."
---

# Italy value added tax number

## Format

13 character alphanumeric pattern with optional delimiters

## Pattern

13 character alphanumeric pattern with optional delimiters:

- I or i
- T or t
- optional space, dot, hyphen, or comma
- 11 digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_italy_value_added_tax_number` finds content that matches the pattern.
- A keyword from `Keywords_italy_value_added_tax_number` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_italy_value_added_tax_number` finds content that matches the pattern.

```xml
      <!-- Italy Value Added Tax -->
      <Entity id="26a8cc07-2283-4a2a-ab1d-4ab643c4c67f" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_italy_value_added_tax_number" />
          <Match idRef="Keywords_italy_value_added_tax_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_italy_value_added_tax_number" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_italy_value_added_tax_number

- vat number
- vat no
- vat#
- iva
- iva#