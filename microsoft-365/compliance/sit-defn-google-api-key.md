---
title: "Google API key entity definition"
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
description: "Google API key sensitive information type entity definition."
---

# Google API key

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of 39 characters consisting of letters, digits, and special characters.

## Pattern

A token prefix (case-sensitive) 'AIza'

A combination of 35 characters:

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- underlines (_) or backward slashes (\)

for example:

`AIzaefgh0123456789_-ABCDEFGHIJKLMNOPQRS`

## Credential example 

`apiKey=AIzaefgh0123456789_-ABCDEFGHIJKLMNOPQRS;`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used as a simple encrypted string that identifies a [Google REST API client](https://cloud.google.com/docs/authentication/api-keys) without any principal that is used to associate API requests with your project for quota and billing. 

It uses several primary resources:

- Patterns of Base64 encoded 210 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey210:

- AIza
