---
title: "Azure Container Registry access key entity definition (preview)"
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
description: "Azure Container Registry access key sensitive information type entity definition."
---

# Azure Container Registry access key (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of 32 characters consisting of letters, digits, and special characters.

## Pattern

A combination of 32 characters consisting of:
 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)

for example:

`abcdefghijklmnopqr0123456789/+AB`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to access [Azure Container Registry](/azure/container-registry/container-registry-authentication) services as an admin account. 

It uses several primary resources:

- Patterns of Base64 encoded 192-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey192:

- password
- -p
- azurecr
