---
title: "Azure Databricks personal access token entity definition"
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
description: "Azure Databricks personal access token sensitive information type entity definition."
---

# Azure Databricks personal access token 

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of 32 characters consisting of letters and digits.

## Pattern

A combination of 32 characters consisting of:
 
- a-f or A-F (case-sensitive)
- or 0-9

for example:

`abcdef0123456789abcdef0123456789`

## Credential example 

`account.azuredatabricks.net;PAT=dapiabcdef0123456789abcdef0123456789;`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to authenticate to the [Azure Databricks REST API](/azure/databricks/administration-guide/access-control/tokens). 

It uses several primary resources:

- Patterns of Hex encoded 128-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.


## Keywords

### Keyword_SymmetricKey128Hex:

dapi
key
secret
token
password
pw
