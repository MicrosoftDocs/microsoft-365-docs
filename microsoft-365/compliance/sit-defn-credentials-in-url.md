---
title: "Crednetial in URL"
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
description: "Credentials in URL sensitive information type entity definition."
---

# Credentials in URL

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Paired username and password used in URL

or

Plain-text password used in script

## Pattern

Various URL username and password formats, for example: 

`https://username:********@contoso.com/...`
`ftp://username:********@contoso.com:20/...`

for example:
`https://myuser:mypassword@localhost`

or

Various password formats in script, for example: 

`password = ********...`

for example:

`password=ZYXWVU_1`

## Checksum

No

## Description

This SIT is designed to match the security information that's used as a token in URL to do client validation or identification [user login process](/azure/key-vault/quick-create-portal). It uses several primary resources:

- Patterns of User Login Credentials in URL.
- Patterns of Password context in script.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_LoginCredentialsInUrl

- ://

### Keyword_PasswordContextInScript

- secret
- password
- pw
