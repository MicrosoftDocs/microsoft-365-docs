---
title: "Hungary social security number (TAJ) entity definition"
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
- tier2
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Hungary social security number (TAJ) sensitive information type entity definition."
---

# Hungary social security number (TAJ)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Nine digits without spaces and delimiters

## Pattern

Nine digits

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_hungary_eu_ssn_or_equivalent` finds content that matches the pattern.
- A keyword from `Keywords_hungary_eu_ssn_or_equivalent` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_hungary_eu_ssn_or_equivalent` finds content that matches the pattern.

```xml
      <!-- Hungarian Social Security Number (TAJ) -->
      <Entity id="0de78315-9537-47f5-95ab-b3e77eba3993" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_hungary_eu_ssn_or_equivalent" />
          <Match idRef="Keywords_hungary_eu_ssn_or_equivalent" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_hungary_eu_ssn_or_equivalent" />
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_hungary_eu_ssn_or_equivalent

- hungarian social security number
- social security number
- socialsecuritynumber#
- hssn#
- socialsecuritynno
- hssn
- taj
- taj#
- ssn
- ssn#
- social security no
- áfa
- közösségi adószám
- általános forgalmi adó szám
- hozzáadottérték adó
- áfa szám
- magyar áfa szám
