---
title: "India GST Number entity definition"
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
description: "India GST Number sensitive information type entity definition."
---

# India GST Number

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

15 character alphanumeric pattern

## Pattern

15 letters or digits:

- two digits representing valid state code
- an optional space or dash
- ten characters representing Permanent Account Number (PAN)
- one letter or digit
- an optional space or dash
- one letter 'z' or 'Z'
- an optional space or dash
- one check digit

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_india_gst_number` finds content that matches the pattern.
- A keyword from `Keyword_india_gst_number` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_india_gst_number` finds content that matches the pattern.

```xml
    <!-- India GST number  -->
      <Entity id="9f5a721c-2fd2-446a-a27e-0c02fbe4630c" patternsProximity="300" recommendedConfidence="85" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_india_gst_number" />
          <Match idRef="Keyword_india_gst_number" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Func_india_gst_number" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_india_gst_number

- gst
- gstin
- goods and services tax
- goods and service tax
