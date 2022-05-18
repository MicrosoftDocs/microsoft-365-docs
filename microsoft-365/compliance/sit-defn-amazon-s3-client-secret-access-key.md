---
title: "Amazon S3 client secret access key entity definition"
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
description: "Amazon S3 client secret access key sensitive information type entity definition."
---

# Amazon S3 client secret access key 

## Format

A combination of 40 characters consisting of letters, digits, and special characters. 

## Pattern

13-digit number:

A combination of 40 characters consisting of: 

- a-z (case insensitive) 
- 0-9 
- forward slash (/) or plus sign (+) 

for example: 

abcdefghijklmnopqrst0123456789/+ABCDEFGH 

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to access [Amazon Web Services.](/toolkit-for-eclipse/v1/user-guide/setup-credentials.html)


It uses several primary resources: 
 
- Patterns of Base64 encoded 240 bits symmetric key. 
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName. 
- Patterns of mockup values, redactions, and placeholders. 
- A dictionary of vocabulary words.

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched. 

## Keywords

### Keyword_SymmetricKey240: 

- secret 
- key 