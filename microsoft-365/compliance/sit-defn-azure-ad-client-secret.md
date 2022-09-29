---
title: "Azure AD client secret entity definition (preview)"
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
description: "Azure AD client secret sensitive information type entity definition."
---

# Azure AD client secret (preview)

## Format

A combination of up to 40 characters consisting of letters, digits, and special characters.

## Pattern

A combination of up to 40 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- underlines (_)
- dots (.) 
- or tilde accents (~)

for example:

`abc7Q~defghijklmnopqrs0t123456789-_.~`

## Checksum

Yes

## Definition

This SIT is designed to match the security information that's used to secure [Azure Active Directory service principals](/azure/active-directory/fundamentals/service-accounts-principal). 

It uses several primary resources:

- Patterns of Client Secret with specific format.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_AppSecret:

- secret
- assword
- key

