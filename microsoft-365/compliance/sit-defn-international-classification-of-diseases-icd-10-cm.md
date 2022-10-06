---
title: "International classification of diseases (ICD-10-CM) entity definition"
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
description: "International classification of diseases (ICD-10-CM) sensitive information type entity definition."
---

# International classification of diseases (ICD-10-CM)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Dictionary

## Pattern

Keyword

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- A keyword from `Dictionary_icd_10_updated` is found.
- A keyword from `Dictionary_icd_10_codes` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- A keyword from `Dictionary_icd_10_ updated` is found.

```xml
      <!-- ICD-10 CM -->
      <Entity id="3356946c-6bb7-449b-b253-6ffa419c0ce7" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Dictionary_icd_10_updated" />
          <Match idRef="Dictionary_icd_10_codes" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Dictionary_icd_10_updated" />
        </Pattern>

```

## Keywords

Any term from the `Dictionary_icd_10_updated` keyword dictionary, which is based on the [International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM)](https://icd10cmtool.cdc.gov/). This type looks only for the term, not the insurance codes.

Any term from the `Dictionary_icd_10_codes` keyword dictionary, which is based on the [International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM)](https://icd10cmtool.cdc.gov/). This type looks only for insurance codes, not the description.
