---
title: "Azure IoT shared access key entity definition"
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
description: "Azure IoT shared access key sensitive information type entity definition."
---

# Azure IoT shared access key  

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of 44-characters consisting of letters, digits, and special characters ending with and equals sign that isn't part of the pattern.

## Pattern

Any combination of 43 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- ends with an equal sign (=) that isn't part of the pattern.

For example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to authenticate [Azure IoT devices and services](/azure/iot-fundamentals/iot-security-deployment).

It uses several primary resources:

- Patterns of Base64 encoded 256-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, ID.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey256:

- SharedAccessKey
- AccountKey
