---
title: "Azure Function Master / API key entity definition (preview)"
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
description: "Azure Function Master / API key sensitive information type entity definition."
---

# Azure Function Master / API key (preview)  

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of 56 characters consisting of letters, digits, and special characters.

or

A combination of up to 90 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of 54 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- ends with two equal signs (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEFGHIJKLMNOP==`

or

A combination of 54 to 84 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- or percent signs (%)
- ends with a suffix '%3d%3d' (not case-sensitive)

for example:

abcdefghijklmnopqrstuvwxyz0123456789%2F%2BABCDEF0123456789%3D%3D


## Checksum

No

## Definition

This SIT is designed to match the security information that's used to request [Azure Function API](/azure/azure-functions/functions-how-to-use-azure-function-app-settings?tabs=portal) when its authorization level is set a value other than anonymous. 

It uses several primary resources:

- Patterns of Base64 encoded 320-bits symmetric key.
- Patterns of URL Encoded 320-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.


## Keywords

### Keyword_SymmetricKey320:

- code=
- key

### Keyword_SymmetricKey320UrlEncoded:

- code=
- key
