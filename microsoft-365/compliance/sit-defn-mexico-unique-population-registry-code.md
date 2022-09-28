---
title: "Mexico Unique Population Registry Code (CURP) entity definition"
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
description: "Mexico Unique Population Registry Code (CURP) sensitive information type entity definition."
---

# Mexico Unique Population Registry Code (CURP)

## Format

18 character alphanumeric pattern

## Pattern

- four letters (case insensitive)
- six digits indicating a valid date
- a letter - H/h or M/m
- two letters indicating a valid Mexican state code
- three letters
- one letter or digit
- one digit

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_mexico_population_registry_code` finds content that matches the pattern.
- A keyword from `Keyword_mexico_population_registry_code` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_mexico_population_registry_code` finds content that matches the pattern.

```xml
    <!-- Mexico Unique Population Registry Code (CURP) -->
      <Entity id="e905ad4d-5a74-406d-bf36-b1efca798af4" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_mexico_population_registry_code" />
          <Match idRef="Keyword_mexico_population_registry_code" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_mexico_population_registry_code" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_mexico_population_registry_code

- Clave Única de Registro de Población
- Clave Unica de Registro de Poblacion
- Unique Population Registry Code
- unique population code
- CURP
- Personal ID
- Unique ID
- personalid
- personalidnumber
- uniqueidkey
- uniqueidnumber
- clave única
- clave unica
- clave personal Identidad
- personal Identidad Clave
- ClaveÚnica
- claveunica
- clavepersonalIdentidad