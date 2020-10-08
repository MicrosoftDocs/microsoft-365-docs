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

Know your data, in other words, identifying and classifying sensitive items that are under your organizations control is the first step in the [Information Protection discipline](protect-information.md).  Microsoft 365 provides three ways of identifying items so that they can be classified:

- manually
- pattern recognition
- [machine learning](classifier-learn-about.md)

Sensitive information types use previously identified patterns of sensitive information like social security, credit card or bank account numbers to identify sensitive items, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md)

Sensitive information types are used in:

- [Data loss prevention policies](data-loss-prevention-policies.md) 
- [Sensitivity labels](sensitivity-labels.md)
- [Retention labels](retention.md)
- [Communication compliance](communication-compliance.md)
- [Auto-labelling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps)

## anatomy of a sensitive information type

Every sensitive information type entity is defined by these fields:

- name: how the sensitive information type is referred to
- format: the arrangement of the characters of the sensitive information
- pattern: the details of how the characters are presented
- checksum: whether or not a checksum is included
- definition: how likely or confident that an item identified as being a match for the sensitive information type actually is. This is referred to as confidence level.
- XML: code used in the evaluation of an item
- keywords: words, that if included in the item increase the likelihood that it is a match for the sensitive information type.
- (optional) keyword exclusions

### Example sensitive information type


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

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:
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

### More on confidence levels

In a sensitive information type entity definition, **confidence level** reflects how much supporting evidence is detected in addition to the primary element. The more supporting evidence an item contains, the higher the confidence that a matched item contains the sensitive info you're looking for. For example, matches with a high confidence level will contain more supporting evidence in close proximity of the primary element, whereas matches with a low confidence level would contain little to no supporting evidence in close proximity. 

A high confidence level returns the fewest false positives but might result in more false negatives. Low or medium confidence levels returns more false positives but few to zero false negatives.

- **low confidence**: value of 65, matched items will contain the fewest false negatives but the most false positives.  
- **medium confidence**: value of 75, matched items will contain an average amount of false positives and false negatives.  
- **high confidence**: value of 85, matched items will contain the fewest false positives but the most false negatives.  


<!-- fwlink for this topic https://go.microsoft.com/fwlink/?linkid=2135644-->

## For further information
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Create a custom sensitive information type](create-a-custom-sensitive-information-type.md)
- [Create a custom sensitive information type in PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md)