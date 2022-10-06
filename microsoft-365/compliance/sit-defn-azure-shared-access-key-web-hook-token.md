---
title: "Azure Shared Access key / Web Hook token signature entity definition (preview)"
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
description: "Azure Shared Access key / Web Hook token sensitive information type entity definition."
---

# Azure Shared Access key / Web Hook token (preview) 

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of 44 characters consisting of letters, digits, and special characters.

or

A combination of up to 76 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of 43 characters consisting of:
 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- ends with an equal sign (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=`

or

A combination of 43 to 73 characters consisting of:

- a-z (case insensitive)
- 0-9
- percent signs (%)
- ends with a suffix '%3d' (case insensitive)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789%2F%2BABCDE%3D`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to access general [Azure resources with restricted permission](/azure/notification-hubs/notification-hubs-push-notification-security). 

It uses several primary resources:

- Patterns of Base64 encoded 256-bits symmetric key.
- Patterns of URL Encoded 256-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, ID.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey256:

- SharedAccessKey
- AccountKey

### Keyword_SymmetricKey256UrlEncoded:

- sig=
- key
- token
- secret
- password
