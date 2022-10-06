---
title: "GitHub personal access token entity definition (preview)"
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
description: "GitHub personal access token sensitive information type entity definition."
---

# GitHub personal access token (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of 40 characters consisting of letters, digits, and special characters.

or

Paired username and password used in URL.

or

A combination of 40 characters consisting of letters and digits.

## Pattern

- A token prefix (case-sensitive) 'ghp_', 'gho_', 'ghu_', 'ghs_', or 'ghr_'
- Any combination of 36 
- a-z (not case-sensitive) or 0-9

for example:

`ghp_abcdefghijklmnopqrstuvwxyzABCD012345`

or

Various URL username and password formats for example:
 
`https://username:********@contoso.com/` <br>

`ftp://username:********@contoso.com:20/`<br>


or

A combination of 40 characters:

- a-f or A-F (case-sensitive) or 0-9

for example:

`abcdef0123456789abcdef0123456789abcdef01`

## Credential example 

`pat=ghp_abcdefghijklmnopqrstuvwxyzABCD012345`

## Checksum

Yes

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used as an alternate password for authentication to GitHub when using [GitHub API or the command line](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). 

It uses several primary resources:

- Patterns of Identifiable GitHub PAT.
- Patterns of User Login Credentials in URL.
- Patterns of Hex encoded 160 bits Symmetric Key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_GitHubPatIdentifiableSecret:

- gh_

### Keyword_LoginCredentialsInUrl:

- ://

### Keyword_SymmetricKey160Hex:

- token
