---
title: "India Voter ID Card entity definition"
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
description: "India Voter ID Card sensitive information type entity definition."
---

# India Voter ID Card

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

10 character alphanumeric pattern

## Pattern

10 letters or digits:

- three letters
- seven digits

## Checksum

No

## Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_india_voter_id_card` finds content that matches the pattern.
- A keyword from `Keyword_india_voter_id_card` is found.

A DLP policy has low confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_india_voter_id_card` finds content that matches the pattern.

```xml
      <!-- India Voter Id Card  -->
        <Entity id="646d643f-5228-4408-acc8-f2e81a6df897" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
           <Pattern confidenceLevel="75">
             <IdMatch idRef="Regex_india_voter_id_card" />
             <Match idRef="Keyword_india_voter_id_card" />
            </Pattern>
           <Pattern confidenceLevel="65">
              <IdMatch idRef="Regex_india_voter_id_card" />
            </Pattern>
        </Entity>
```

## Keywords

### Keyword_india_voter_id_card

- voter
- voterid
- votercard
- voteridcard
- electoral photo identity card
- EPIC
- ECI
- election commmision
