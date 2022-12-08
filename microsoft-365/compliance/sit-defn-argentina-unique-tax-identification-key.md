---
title: "Argentina Unique Tax Identification Key (CUIT/CUIL) entity definition"
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
description: "Argentina Unique Tax Identification Key (CUIT/CUIL) sensitive information type entity definition."
---

# Argentina Unique Tax Identification Key (CUIT/CUIL)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

11 digits with dash

## Pattern

11 digits with a dash:

- two digits in 20, 23, 24, 27, 30, 33 or 34
- a hyphen (-)
- eight digits
- a hyphen (-)
- one check digit

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_Argentina_Unique_Tax_Key` finds content that matches the pattern.
- A keyword from `Keyword_Argentina_Unique_Tax_Key` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_Argentina_Unique_Tax_Key` finds content that matches the pattern.

```xml
    <!-- Argentina Unique Tax Identification Key (CUIT/CUIL) -->
      <Entity id="98da3da1-9199-4571-b7c4-b6522980b507" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_Argentina_Unique_Tax_Key" />
          <Match idRef="Keyword_Argentina_Unique_Tax_Key" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_Argentina_Unique_Tax_Key" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_Argentina_Unique_Tax_Key

- Clave Unica de Identificacion Tributaria
- CUIT
- unique code of labour identification
- Clave Única de Identificación Tributaria
- unique labour identification code
- CUIL
- Unique Tax Identification Key
- Unique Labour Identification Key
- Unique Key of Labour Identification
- Unique Work Identification Code
- Unique Code of Work Identification
- Unique Work Identification Key
- Unique Key of Work Identification
- Unique Code of Tax Identification
- Unique Key of Tax Identification
- Unique Labor Identification Code
- Unique Code of Labor Identification
- Unique Labor Identification Key
- Unique Key of Labor Identification
- tax ID
- taxID#
- taxId
- taxidnumber
- tax number
- tax no
- tax #
- tax#
- taxpayer ID
- taxpayer number
- taxpayer no
- taxpayer #
- taxpayer#
- tax identity
- tax identification
- Número de Identificación Fiscal
- número de contribuyente
