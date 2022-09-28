---
title: "Azure Databricks personal access token entity definition (preview)"
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
description: "Azure Databricks personal access token sensitive information type entity definition."
---

# Azure Databricks personal access token (preview) 

## Format

A combination of 32 characters consisting of letters and digits.

## Pattern

A combination of 32 characters consisting of:
 
- a-f or A-F (case-sensitive)
- or 0-9

for example:

`abcdef0123456789abcdef0123456789`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used to authenticate to the [Azure Databricks REST API](/azure/databricks/administration-guide/access-control/tokens). 

It uses several primary resources:

- Patterns of Hex encoded 128 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched.


## Keywords

### Keyword_SymmetricKey128Hex:

dapi
key
secret
token
password
pw
