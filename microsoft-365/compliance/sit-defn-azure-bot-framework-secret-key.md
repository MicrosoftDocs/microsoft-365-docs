---
title: "Azure Bot Framework secret key entity definition (preview)"
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
description: "Azure Bot Framework secret key sensitive information type entity definition."
---

# Azure Bot Framework secret key (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of 55 characters consisting of letters, digits, and special characters.

or

A combination of 63 characters consisting of letters, digits, and special characters.

## Pattern

A combination of 55 characters:

- a-z (not case-sensitive)
- 0-9
- underlines (_)
- or dots (.)


`abcdefghijklmnopqrstuvwxyz.0123456789_ABCDEabcdefghijkl`

or for the 63 characters

A combination of 11 characters:

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- or underlines (_)
- a dot

A combination of three characters:

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- or underlines (_)
- a dot

A combination of three characters:

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- or underlines (_)
- a dot

A combination of 43 characters

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- or underlines (_)

for example:

`abcdefghijk.lmn.opq.rstuvwxyz0123456789-_ABCDEFGHIJKLMNOPQRSTUV`


## Credential example 

`host: webchat.botframework.com/?s=abcdefghijklmnopqrstuvwxyz.0123456789_ABCDEabcdefghijkl&`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to connect to [WebChat channels from Azure Bot services.](/azure/bot-service/bot-service-channel-connect-webchat?view=azure-bot-service-4.0) 

It uses several primary resources:

- Patterns of Base64 URL encoded 328-bits symmetric key.
- Patterns of Base64 URL encoded 360-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey328Url:

- botframework
- key

### Keyword_SymmetricKey360Url:

- botframework
- key
