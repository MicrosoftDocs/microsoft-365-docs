---
title: "Spain tax identification number entity definition"
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
description: "Spain tax identification number sensitive information type entity definition."
---

# Spain tax identification number

## Format

seven or eight digits and one or two letters in the specified pattern

## Pattern

Spanish Natural Persons with a Spain National Identity Card:

- eight digits
- one uppercase letter (case-sensitive)

Non-resident Spaniards without a Spain National Identity Card

- one uppercase letter "L" (case-sensitive)
- seven digits
- one uppercase letter (case-sensitive)

Resident Spaniards under the age of 14 years without a Spain National Identity Card:

- one uppercase letter "K" (case-sensitive)
- seven digits
- one uppercase letter (case-sensitive)

Foreigners with a Foreigner's Identification Number

- one uppercase letter that is "X", "Y", or "Z" (case-sensitive)
- seven digits
- one uppercase letter (case-sensitive)

Foreigners without a Foreigner's Identification Number

- one uppercase letter that is "M" (case-sensitive)
- seven digits
- one uppercase letter (case-sensitive)

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_spain_eu_tax_file_number` or `Func_spain_eu_DL_and_NI_number_citizen` finds content that matches the pattern.
- A keyword from `Keywords_spain_eu_tax_file_number` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_spain_eu_tax_file_number` or `Func_spain_eu_DL_and_NI_number_citizen` finds content that matches the pattern.

```xml
      <!-- Spain Tax Identification Number -->
      <Entity id="10f0d113-b0e1-47dc-872a-a4f45b9376a3" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_tax_file_number" />
          <Match idRef="Keywords_spain_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
          <Match idRef="Keywords_spain_eu_tax_file_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_spain_eu_DL_and_NI_number_citizen" />
        </Pattern>
      </Entity>
```

## Keywords

### Keywords_spain_eu_tax_file_number

- cif
- cifid#
- cifnúmero#
- número de contribuyente
- número de identificación fiscal
- número de impuesto corporativo
- spanishcifid#
- spanishcifid
- spanishcifno#
- spanishcifno
- tax file no
- tax file number
- tax id
- tax identification no
- tax identification number
- tax no#
- tax no
- tax number
- tax registration number
- taxid#
- taxidno#
- taxidnumber#
- taxno#
- taxnumber#
- taxnumber
- tin id
- tin no
- tin#