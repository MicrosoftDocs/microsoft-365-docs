---
title: "Azure AD client access token entity definition (preview)"
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
description: "Azure AD client access token sensitive information type entity definition."
---

# Azure AD client access token (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A combination of up to 10,000 characters consisting of letters, digits, and special characters.

or

A client secret or refresh token used in OAuth2.0 protocol.

or

A combination of up to 1,000 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of:
 
- up to 10,000 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- Up to 2
- equal signs (=)

for example:

`"VersionProfile": null, "TokenCache": { "CacheData": 
"AgAAAAIAAACZAWh0dHBzOi8vbG9naW4ubWljcm9zb2`

or

Variant client secret or refresh token formats e.g. <br> 
`ClientSecret:********` <br>
`AppSecret=********` <br>
`ConsumerKey:=********` <br>
`Refresh_Token:********` <br>

or

3 letters: eyJ (case-sensitive)

And

A combination of up to 1,000 characters consisting

- a-z (not case-sensitive)
- 0-9
- dashes (-)
- underlines (_)
- or dots (.)

for example:

`eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6Ing0Nzh4eU9wbHNNMUg3TlhrN1N4MTd4MXVwYyIsImtpZCI6Ing0Nzh4`



## Checksum

Yes

## Definition

This SIT is designed to match the security information that's contains claims that one can use in [Azure Active Directory B2C](/azure/active-directory-b2c/active-directory-b2c-access-tokens) (Azure AD B2C) to identify the granted permissions to Azure resources. 

It uses several primary resources:

- Patterns of Azure PowerShell Token Cache
- Patterns of Client secret context
- Patterns of Json Web Token
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName
- Patterns of mockup values, redactions, and placeholders
- A dictionary of vocabulary

The patterns are designed to match actual credentials with reasonable confidence. The patterns do not match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present will not be matched.



## Keywords

### Keyword_SymmetricKeyContextInXml:

- tokencache

### Keyword_ClientSecretContext:

- secret
- token
- auth
- securestring
- key

### Keyword_JsonWebToken:

- eyJ

