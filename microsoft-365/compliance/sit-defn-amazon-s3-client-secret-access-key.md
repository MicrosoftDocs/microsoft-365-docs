---
title: "Amazon S3 client secret access key entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/16/2022
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
description: "Amazon S3 client secret access key sensitive information type entity definition."
---

# Amazon S3 client secret access key

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of 40 characters consisting of letters, digits, and special characters. 

## Pattern

13-digit number:

A combination of 40 characters consisting of: 

- a-z (case insensitive) 
- 0-9 
- forward slash (/) or plus sign (+) 

for example: 

`abcdefghijklmnopqrst0123456789/+ABCDEFGH;`

## Credential example 

`AWS Secret: abcdefghijklmnopqrst0123456789/+ABCDEFGH;`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to access [Amazon Web Services.](/toolkit-for-eclipse/v1/user-guide/setup-credentials.html)


It uses several primary resources: 
 
- Patterns of Base64 encoded 240-bits symmetric key. 
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName. 
- Patterns of mockup values, redactions, and placeholders. 
- A dictionary of vocabulary words.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched. 

## Keywords

### Keyword_SymmetricKey240: 

- secret 
- key 
