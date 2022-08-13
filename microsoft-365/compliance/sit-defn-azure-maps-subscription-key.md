---
title: "Azure Maps subscription key entity definition (preview)"
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
- M365-security-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Azure Maps subscription key sensitive information type entity definition."
---

# Azure Maps subscription key (preview)

## Format

A combination of 43 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of 43 characters consisting of:
 
- a-z (not case-sensitive)
- 0-9
- dashes (-)
- or underlines (_)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789-_ABCDE`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to access resources in [Azure Maps accounts](/azure/azure-maps/how-to-manage-authentication). 

It uses several primary resources:

- Patterns of Base64 URL encoded 256 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched.

## Keywords

### Keyword_SymmetricKey256Url:

- key
- microsoft.maps
