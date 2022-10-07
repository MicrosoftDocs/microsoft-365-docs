---
title: "Azure DevOps app secret entity definition"
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
description: "Azure DevOps app secret sensitive information type entity definition."
---

# Azure DevOps app secret

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of 52 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of 52 characters consisting of:
 
- a-z or A-Z (case-sensitive)
- or 2-7

for example:

`abcdefghijklmnopqrstuvwxyz234567abcdefghijklmnopqrst`


## Credential example 

`AdoAppId=...;AdoAppSecret=abcdefghijklmnopqrstuvwxyz234567abcdefghijklmnopqrst;`

> [!IMPORTANT]
> This example has been invalidated. It’s not a detectable example of this SIT.

## Checksum

Yes

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to authenticate web app users for [Azure DevOps REST API access.](/azure/devops/integrate/get-started/authentication/oauth?view=azure-devops) 

It uses several primary resources:

- Patterns of Base32 encoded 256-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SymmetricKey256B32:

- pat
- token
- ado
- vsts
- azuredevops
- visualstudio.com
- dev.azure.com
