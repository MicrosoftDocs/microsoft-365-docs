---
title: "New Zealand bank account number entity definition"
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
description: "New Zealand bank account number sensitive information type entity definition."
---

# New Zealand bank account number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

14-digit to 16-digit pattern with optional delimiter

## Pattern

14-digit to 16-digit pattern with optional delimiter:

- two digits
- an optional hyphen or space
- three to four digits
- an optional hyphen or space
- seven digits
- an optional hyphen or space
- two to three digits
- an options hyphen or space

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_new_zealand_bank_account_number` finds content that matches the pattern.
- A keyword from `Keywords_new_zealand_bank_account_number` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_new_zealand_bank_account_number` finds content that matches the pattern.

```xml
      <!-- New Zealand Bank Account Number -->
      <Entity id="1a97fc2b-dd2f-48f1-bc4e-2ddf25813956" patternsProximity="300" recommendedConfidence="85">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_new_zealand_bank_account_number" />
          <Match idRef="Keywords_new_zFealand_bank_account_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_new_zealand_bank_account_number" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_new_zealand_bank_account_number

- account number
- bank account
- bank_acct_id
- bank_acct_branch
- bank_acct_nbr
