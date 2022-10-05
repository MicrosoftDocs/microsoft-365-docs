---
title: "Azure storage account access key entity definition"
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
description: "Azure storage account access key sensitive information type entity definition."
---

# Azure storage account access key

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of up to 20,000 characters consisting of letters, digits, and special characters.

or

A combination of 88 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of up to 20,000 characters consisting of:
 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- Up to 2
- equal signs (=)

for example:

`MIIKcQIBAzCCCi0GCSqGSIb3DQEHAaCCCh4EggoaMIIKFjCCBg8GCSqGSIb3DQEHAaCCBgAEggX8MIIF+DCCBfQGCyqGSIb3DQEM`
or

Any combination of 86 characters consisting of:

a-z (not case-sensitive)
0-9
forward slashes (/)
or plus signs (+)
ends with two equal signs (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEabcdefghijklmnopqrstuvwxyz0123456789/+ABCDE==`


## Checksum

Yes

## Definition

This SIT is designed to match the security information that's used to make request against [Azure Storage services](/rest/api/storageservices/authorize-with-shared-key), like Blob, Queue, Table and File services. 

It uses several primary resources:

- Patterns of Base64 encoded string literal.
- Patterns of Base64 encoded 512-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, Id, AccountName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.


## Keywords

### Keyword_Base64EncodedStringLiteral:

- MII

### Keyword_SymmetricKey512:

- SharedAccessKey
- AccountKey
