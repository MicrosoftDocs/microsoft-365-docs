---
title: "User login credentials entity definition (preview)"
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
description: "User login credentials sensitive information type entity definition."
---

# User login credentials (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

A paired username and password used in general authentication process.

or

A paired username and password used in PuTTY connection manager.

or

Plain text password used in code snippets.

or

A combination of 88 characters consisting of letters, digits, and special characters.

## Pattern

Various username and password formats, for example:
 
`username=...;password=********;` <br>
`user id=...;password=********;` <br>
`uid=...;pwd=********;` <br>
`DB_USER=...;DB_PASS=********;` <br>
`Service Account=...;Password=********;` <br>

or

```xml
An XML element <login>
An embeded XML element <login>
Inner XML content
An embeded XML element </login>
An embeded XML element <password>
Inner XML content
An embeded XML element </password>
An XML element </login>
```

for example

`<login> <login>ZYXWVU_1</login> <password>ZY…`

or

Various password formats in code snippets, for example:

`new X509Certificates2(` <br>
`ConvertTo-SecureString -String ********` <br>
`password = "********"` <br>
`"password" : "********"`<br>
`UserPasswordCredential(` <br>

or

A combination of 86 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- ends with two equal signs (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEabcdefghijklmnopqrstuvwxyz0123456789/+ABCDE==`

## Checksum

No

## Definition

This SIT is designed to match the security information that's used in general [user login process](/azure/key-vault/quick-create-portal). 

It uses several primary resources:

- Patterns of Plain-text username and password.
- Patterns of Plain-text username and password in PuTTYcm database file.
- Patterns of Password context in code.
- Patterns of Base64 encoded 512 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, Id, AccountName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_LoginCredentials:

- password
- pw
- DB_

### Keyword_LoginCredentialsPutty:

- login

### Keyword_PasswordContextInCode:

- key
- x509c
- credential
- password
- pw
- securestring

### Keyword_SymmetricKey512:

- SharedAccessKey
- AccountKey
