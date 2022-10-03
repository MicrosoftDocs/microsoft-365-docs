---
title: "Azure Bot service app secret entity definition (preview)"
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
description: "Azure Bot service app secret sensitive information type entity definition."
---

# Azure Bot service app secret (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of up to 40 characters consisting of letters, digits, and special characters.

## Pattern

A combination of up to 40 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- underlines (_)
- dots (.) 
- or tilde accents (~)

for example:

`abc7Q~defghijklmnopqrs0t123456789-_.~`

## Checksum

Yes

## Definition

This SIT is designed to match the security information that's used to establish secure communication between an [Azure Bot, WebChat channels and client applications](/azure/bot-service/bot-builder-concept-authentication-types?view=azure-bot-service-4.0).  

It uses several primary resources:

- Patterns of Client Secret with specific format.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched.


## Keywords

### Keyword_AppSecret:

- secret
- password
- key
