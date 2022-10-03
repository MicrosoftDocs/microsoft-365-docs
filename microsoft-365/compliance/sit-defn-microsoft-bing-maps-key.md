---
title: "Microsoft Bing maps key entity definition (preview)"
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
description: "Microsoft Bing maps key sensitive information type entity definition."
---

# Microsoft Bing maps key (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of 64 characters consisting of letters, digits, and special characters.

## Pattern

A combination of 64 characters:

- a-z (not case-sensitive)
- 0-9
- underlines (_) or hyphens (-)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789-_ABCDEabcdefghijklmnopqrstu`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to call [Bing Maps API.](/bingmaps/getting-started/bing-maps-dev-center-help/getting-a-bing-maps-key) 

It uses several primary resources:

- Patterns of Base64 URL encoded 384 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey384Url:

- virtualearth
- api/maps
- key
