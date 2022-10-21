---
title: "Azure AD user credentials entity definition"
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
description: "Azure AD user credentials sensitive information type entity definition."
---

# Azure AD user credentials

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A paired username and password related to *.onmicrosoft.com domain.

or

Plain-text password used in code snippets.

or

Plain-text password used in XML configuration.

## Pattern

Various username and password formats, for example:

`username=...password=********` <br>
`/user:.../pass:********` <br>
`SharePointOnlineAuthenticatedContext` <br>
`sign_in`<br>


or

Various password formats in code snippets, for example:

`new X509Certificates2( ...` <br>
`ConvertTo-SecureString -String ********...`<br>
`password = "********"...` <br>
`"password" : "********"...` <br>
`UserPasswordCredential( ...` <br>

or

Various password formats in XML, for example:


```xml
... <secret>********</secret> ...
... <password>********</password> ...
... <setting name="password" value="********" > ... 
... <setting name="password">********</setting> ... 
... <setting name="password"><value>********</value></setting> ... 
```


## Credential example 

`username=user@tenant.onmicrosoft.com;password=ZYXWVU$1;`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used as individual user passwords to authenticate against [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-reset-password-azure-portal). 

It uses several primary resources:

- Patterns of Plain-text username and password for Azure AD tenants.
- Patterns of Password context in code.
- Patterns of Password context in XML.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.


## Keywords

### Keyword_AzureActiveDirectoryLoginCredentials:

- password
- pw
- userpass
- credentials
- cmdkey
- Authenti
- sign_in

### Keyword_PasswordContextInCode:

- key
- x509c
- credential
- password
- pw
- securestring

### Keyword_PasswordContextInXml:

- userpass
- password
- pw
- connectionstring
- key
- credential
- token
- sas
- secret

