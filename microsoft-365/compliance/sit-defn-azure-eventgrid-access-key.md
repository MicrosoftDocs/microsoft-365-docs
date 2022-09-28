---
title: "Azure EventGrid access key entity definition (preview)"
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
description: "Azure EventGrid access key sensitive information type entity definition."
---

# Azure EventGrid access key (preview)

## Format

A combination of 43 characters consisting of letters, digits, and special characters ending in an equals sign (=) that is not part of the pattern.

## Pattern

A combination of 43 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to authenticate an application publishing events to [Azure Event Grid resources (topics and domains).](/azure/event-grid/get-access-keys)

It uses several primary resources:

- Patterns of Base64 encoded 256 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, Id.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched.

## Keywords

### Keyword_SymmetricKey256:

- SharedAccessKey
- AccountKey
