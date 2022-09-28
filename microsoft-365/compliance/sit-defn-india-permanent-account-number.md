---
title: "India permanent account number (PAN) entity definition"
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
description: "India permanent account number (PAN) sensitive information type entity definition."
---

# India permanent account number (PAN)

## Format

10 letters or digits

## Pattern

10 letters or digits:

- Three letters (not case-sensitive)
- A letter in C, P, H, F, A, T, B, L, J, G (not case-sensitive)
- A letter
- Four digits
- A letter that is an alphabetic check digit

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_india_permanent_account_number` finds content that matches the pattern.
- A keyword from `Keyword_india_permanent_account_number` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_india_permanent_account_number` finds content that matches the pattern.

```xml
      <!-- India Permanent Account Number -->
      <Entity id="2602bfee-9bb0-47a5-a7a6-2bf3053e2804" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_india_permanent_account_number" />
          <Match idRef="Keyword_india_permanent_account_number" />
        </Pattern>
        <Version minEngineVersion="15.20.3520.000">
          <Pattern confidenceLevel="65">
            <IdMatch idRef="Regex_india_permanent_account_number" />
          </Pattern>
        </Version>
      </Entity>
```

## Keywords

### Keyword_india_permanent_account_number

- Permanent Account Number
- PAN