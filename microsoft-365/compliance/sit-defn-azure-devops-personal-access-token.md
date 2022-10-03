---
title: "Azure DevOps personal access token entity definition (preview)"
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
description: "Azure DevOps personal access token sensitive information type entity definition."
---

# Azure DevOps personal access token (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of 52 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of 52 characters consisting of:

- a-z or A-Z (case-sensitive)
- or 2-7

for example:

`ntpi2ch67ci2vjzcohglogyygwo5fuyl365n2zdowwxhsys6jnoa`

## Checksum

Yes

## Definition

This SIT is designed to match the security information that's used as an alternate password to authenticate into [Azure DevOps.](/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops) 

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
