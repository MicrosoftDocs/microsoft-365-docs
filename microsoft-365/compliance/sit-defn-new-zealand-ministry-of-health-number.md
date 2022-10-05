---
title: "New Zealand ministry of health number entity definition"
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
description: "New Zealand ministry of health number sensitive information type entity definition."
---

# New Zealand ministry of health number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

three letters and four digits

## Pattern

- three letters (not case-sensitive) except 'I' and 'O'
- four digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_new_zealand_ministry_of_health_number` finds content that matches the pattern.
- A keyword from `Keyword_nz_terms` is found.
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_new_zealand_ministry_of_health_number` finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- New Zealand Health Number -->
    <Entity id="2b71c1c8-d14e-4430-82dc-fd1ed6bf05c7" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_new_zealand_ministry_of_health_number" />
          <Match idRef="Keyword_nz_terms" />
      </Pattern>
      <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_new_zealand_ministry_of_health_number" />
       </Pattern>
    </Entity>
```

## Keywords

### Keyword_nz_terms

- NHI
- New Zealand
- National Health Index
- NHI#
- National Health Index#
