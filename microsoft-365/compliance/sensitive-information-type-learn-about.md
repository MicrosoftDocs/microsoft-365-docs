---
title: "Learn about sensitive information types"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
description: ""
---

# Learn about sensitive information types



Why sensitive information types? business need

what is a sensitive information type?

where can they be used?

anatomy of a sensitive information type

- name
- format
- pattern
- checksum
- definition
    - pattern confidence level
    - recommended confidence level
- XML
- keywords
- (optional) keyword exclusions
 
## Argentina national identity (DNI) number

### Format

Eight digits separated by periods

### Pattern

Eight digits:
- two digits
- a period
- three digits
- a period
- three digits

### Checksum

No

### Definition

A DLP policy is 75% confident that it's detected this type of sensitive information if, within a proximity of 300 characters:
- The regular expression Regex_argentina_national_id finds content that matches the pattern.
- A keyword from Keyword_argentina_national_id is found.

```xml
<!-- Argentina National Identity (DNI) Number -->
<Entity id="eefbb00e-8282-433c-8620-8f1da3bffdb2" recommendedConfidence="75" patternsProximity="300">
   <Pattern confidenceLevel="75">
      <IdMatch idRef="Regex_argentina_national_id"/>
      <Match idRef="Keyword_argentina_national_id"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_argentina_national_id

- Argentina National Identity number 
- Identity 
- Identification National Identity Card 
- DNI 
- NIC National Registry of Persons 
- Documento Nacional de Identidad 
- Registro Nacional de las Personas 
- Identidad 
- Identificación 



<!-- fwlink for this topic https://go.microsoft.com/fwlink/?linkid=2135644-->