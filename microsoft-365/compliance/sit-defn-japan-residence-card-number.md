---
title: "Japan residence card number entity definition"
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
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Japan residence card number sensitive information type entity definition."
---

# Japan residence card number

## Format

12 letters and digits

## Pattern

12 letters and digits:

- two letters (not case-sensitive)
- eight digits
- two letters (not case-sensitive)

## Checksum

No

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_jp_residence_card_number` finds content that matches the pattern.
- A keyword from `Keyword_jp_residence_card_number` is found.

```xml
<!--Japan Residence Card Number-->
-<Entity id="ac36fef2-a289-4e2c-bb48-b02366e89fc0" recommendedConfidence="75" patternsProximity="300">
   -<Pattern confidenceLevel="75">
      <IdMatch idRef="Regex_jp_residence_card_number"/>
      <Match idRef="Keyword_jp_residence_card_number"/>
   </Pattern>
</Entity>
```

## Keywords

### Keyword_jp_residence_card_number

- Residence card number
- Residence card no
- Residence card #
- 在留カード番号
- 在留カード
- 在留番号