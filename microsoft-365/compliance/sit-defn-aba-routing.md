---
title: "ABA routing number entity definition"
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
description: "ABA routing number sensitive information type entity definition."
---

# ABA routing number

## Format

nine digits that may be in a formatted or unformatted pattern

## Pattern

- two digits in the ranges 00-12, 21-32, 61-72, or 80
- two digits
- an optional hyphen
- four digits
- an optional hyphen
- a digit

## Checksum

Yes

## Definition

A policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_aba_routing finds content that matches the pattern.
- A keyword from Keyword_ABA_Routing is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function Func_aba_routing finds content that matches the pattern.

```xml
    <!-- ABA Routing Number -->
    <Entity id="cb353f78-2b72-4c3c-8827-92ebe4f69fdf" patternsProximity="300" recommendedConfidence="75">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_aba_routing" />
        <Match idRef="Keyword_ABA_Routing" />
      </Pattern>
      <Pattern confidenceLevel="65">
        <IdMatch idRef="Func_aba_routing" />
      </Pattern>
    </Entity>
```

## Keywords

### Keyword_aba_routing

- aba number
- aba#
- aba
- abarouting#
- abaroutingnumber
- americanbankassociationrouting#
- americanbankassociationroutingnumber
- bankrouting#
- bankroutingnumber
- routing #
- routing no
- routing number
- routing transit number
- routing#
- RTN
