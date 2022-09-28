---
title: "X.509 certificate private key entity definition (preview)"
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
- tier2
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "X.509 certificate private key sensitive information type entity definition."
---

# X.509 certificate private key (preview)

## Format

A combination of up to 20,000 characters consisting of letters, digits, and special characters.

or

A combination of up to 40 characters consisting of upper-case letters, space, and dashes.

## Pattern

A combination of up to 20,000 characters:
 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)

Up to two equal signs (==)

for example:

`MIIKcQIBAzCCCi0GCSqGSIb3DQEHAaCCCh4EggoaMIIKFjCCBg8GCSqGSIb3DQEHAaCCBgAEggX8MIIF+DCCBfQGCyqGSIb3DQEM`

or

5 dashes (-)

And a combination of up to 30 characters:

- A-Z (case-sensitive) 
- spaces
- 5 dashes (-)

for example:

`-----BEGIN PRIVATE KEY-----`


## Checksum

Yes

## Definition

This SIT is designed to match the security information that's used as a private component in [SSL certificates.](/azure/key-vault/certificate-scenarios) 

It uses several primary resources:

- Patterns of Base64 encoded string literal.
- Patterns of Certificate private key header.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_Base64EncodedStringLiteral:

- MII

### Keyword_CertificatePrivateKeyHeader:

- key
