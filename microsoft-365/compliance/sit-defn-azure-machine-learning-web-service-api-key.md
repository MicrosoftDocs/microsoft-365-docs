---
title: "Azure Machine Learning web service API key entity definition (preview)"
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
description: "Azure Machine Learning web service API key sensitive information type entity definition."
---

# Azure Machine Learning web service API key (preview) 

## Format

A combination of 88 characters consisting of letters, digits, and special characters ending in two equals signs (==).

## Pattern

Any combination of 86 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEabcdefghijklmnopqrstuvwxyz0123456789/+ABCDE==`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to connect to [Azure Machine Learning Web services](/azure/machine-learning/classic/consume-web-services). 

It uses several primary resources:

- Patterns of Base64 encoded 512 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, Id, AccountName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched.

## Keywords

### Keyword_SymmetricKey512:

- SharedAccessKey
- AccountKey
