---
title: "Brazil national identification card (RG) entity definition"
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
description: "Brazil national identification card (RG) sensitive information type entity definition."
---

# Brazil national identification card (RG)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Registro Geral (old format): Nine digits

Registro de Identidade (RIC) (new format): 11 digits

### Pattern

Registro Geral (old format):

- two digits
- a period
- three digits
- a period
- three digits
- a hyphen
- one digit that is a check digit

Registro de Identidade (RIC) (new format):

- 10 digits
- a hyphen
- one digit that is a check digit

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_brazil_rg` finds content that matches the pattern.
- A keyword from `Keyword_brazil_rg` is found.
- The checksum passes.

```xml
      <!-- Brazil National ID Card (RG) -->
      <Entity id="486de900-db70-41b3-a886-abdf25af119c" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_brazil_rg" />
          <Match idRef="Keyword_brazil_rg" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_brazil_rg

- Cédula de identidade
- identity card
- national id
- número de rregistro
- registro de Iidentidade
- registro geral
- RG (this keyword is case-sensitive)
- RIC (this keyword is case-sensitive)
