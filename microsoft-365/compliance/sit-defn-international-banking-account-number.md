---
title: "International banking account number (IBAN) entity definition"
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
description: "International banking account number (IBAN) sensitive information type entity definition."
---

# International banking account number (IBAN)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Country code (two letters) plus check digits (two digits) plus bban number (up to 30 characters)

## Pattern

Pattern must include all of the following:

- Two-letter country code
- Two check digits (followed by an optional space)
- 1-7 groups of four letters or digits (can be separated by spaces)
- 1-3 letters or digits

The format for each country is slightly different. The IBAN sensitive information type covers these 68 countries:

- ad
- ae
- al
- at
- az
- ba
- be
- bg
- bh
- br
- ch
- cr
- cy
- cz
- de
- dk
- do
- ee
- es
- fi
- fo
- fr
- gb
- ge
- gi
- gl
- gr
- gt
- hr
- hu
- ie
- il
- is
- it
- jo
- kw
- kz
- lb
- li
- lt
- lu
- lv
- mc
- md
- me
- mk
- mr
- mt
- mu
- nl
- no
- pk
- pl
- ps
- pt
- qa
- ro
- rs
- sa
- se
- si
- sk
- sm
- tl
- tn
- tr
- vg
- xk


## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_iban` finds content that matches the pattern.
- The checksum passes.

```xml
<Entity id="e7dc4711-11b7-4cb0-b88b-2c394a771f0e" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="Func_iban" />
  </Pattern>
</Entity>
```

## Keywords

None
