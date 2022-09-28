---
title: "Drug Enforcement Agency (DEA) number entity definition"
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
description: "Drug Enforcement Agency (DEA) number sensitive information type entity definition."
---


# Drug Enforcement Agency (DEA) number

## Format

two letters followed by seven digits

## Pattern

Pattern must include all of the following:

- one letter (not case-sensitive) from this set of possible letters: A/B/F/G/M/P/R, which is a registrant code
- one letter (not case-sensitive), which is the first letter of the registrant's last name or digit '9'
- seven digits, the last of which is the check digit

## Checksum

Yes

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_dea_number` finds content that matches the pattern.
- A keyword from `Keyword_dea_number` is found
- The checksum passes.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The function `Func_dea_number` finds content that matches the pattern.
- The checksum passes.

```xml
    <!-- DEA Number -->
    <Entity id="9a5445ad-406e-43eb-8bd7-cac17ab6d0e4" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="75">
        <IdMatch idRef="Func_dea_number" />
      </Pattern>
      <Version minEngineVersion="15.20.1207.000" maxEngineVersion="15.20.3134.000">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_dea_number" />
        </Pattern>
      </Version>
      <Version minEngineVersion="15.20.3135.000">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Func_dea_number" />
          <Match idRef="Keyword_dea_number" />
        </Pattern>
      </Version>
    </Entity>
```

## Keywords

### Keyword_dea_number

- dea
- dea#
- drug enforcement administration
- drug enforcement agency