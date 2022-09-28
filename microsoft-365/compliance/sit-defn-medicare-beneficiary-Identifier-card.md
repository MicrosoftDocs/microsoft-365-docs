---
title: "Medicare Beneficiary Identifier (MBI) card entity definition"
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
description: "Medicare Beneficiary Identifier (MBI) card sensitive information type entity definition."
---

# Medicare Beneficiary Identifier (MBI) card

## Format

11 character alphanumeric pattern

## Pattern

- one digit between 1 to 9
- one letter excluding  S, L, O, I, B, Z
- one digit or letter excluding S, L, O, I, B, Z
- one digit
- an optional Hyphen
- one letter excluding  S, L, O, I, B, Z
- one digit or letter excluding S, L, O, I, B, Z
- one digit
- an optional Hyphen
- two letters excluding  S, L, O, I, B, Z
- two digits

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_mbi_card` finds content that matches the pattern.
- A keyword from `Keyword_mbi_card` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_mbi_card` finds content that matches the pattern.

```xml
    <!-- Medicare Beneficiary Identifier (MBI) card -->
      <Entity id="f753a286-f5cc-47e6-a592-4be25fd02591" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_mbi_card" />
          <Match idRef="Keyword_mbi_card" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_mbi_card" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_mbi_card

- mbi
- mbi#
- medicare beneficiary #
- medicare beneficiary identifier
- medicare beneficiary no
- medicare beneficiary number
- medicare beneficiary#