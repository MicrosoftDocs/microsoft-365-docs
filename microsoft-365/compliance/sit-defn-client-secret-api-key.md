---
title: "Client secret / API key entity definition"
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
description: "Client secret / API key sensitive information type entity definition."
---

# Client secret / API key

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A client secret or refresh token used in OAuth 2.0 protocol.

or

A combination of 24 characters consisting of letters, digits, and special characters.

or

A combination of 32 characters consisting of letters and digits.

or

A combination of 40 characters consisting of letters and digits.

or

A combination of 44 characters consisting of letters, digits, and special characters.

or

A combination of 56 characters consisting of letters, digits, and special characters

or

A combination of 88 characters consisting of letters, digits, and special characters.


## Pattern

Various client secret or refresh token formats for example:
 
`ClientSecret:********` <br>
`AppSecret=********` <br>
`ConsumerKey:=********` <br>
`Refresh_Token:********` <br>

or

A combination of 22 characters:
 
- a-z (not case-sensitive)
- digits, forward slashes, or plus signs
- ends with two equal signs (=)

for example:

`abcdefgh0123456789/+AB==`

or

A combination of 32 characters:

- a-f or A-F (case-sensitive)
- or 0-9

for example:

`abcdef0123456789abcdef0123456789`

or

A combination of 40 characters:

- a-f or A-F (case-sensitive)

or

- 0-9

for example:

`abcdef0123456789abcdef0123456789abcdef01`

or

A combination of 43 characters:
 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- ends with an equal sign (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=`

or

A combination of 54 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- ends with two equal signs (==)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEFGHIJKLMNOP==`

or

A combination of 86 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- ends with two equal signs (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEabcdefghijklmnopqrstuvwxyz0123456789/+ABCDE==`


## Credential example 

`client_secret=abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's known only to the [OAuth application and the authorization server to exchange](/azure/active-directory/develop/active-directory-how-applications-are-added) for an access token at runtime. 

It uses several primary resources:

- Patterns of Client secret context.
- Patterns of Base64 encoded 128 bits symmetric key.
- Patterns of Hex encoded 128 bits symmetric key.
- Patterns of Hex encoded 160 bits Symmetric Key.
- Patterns of Base64 encoded 256 bits symmetric key.
- Patterns of Base64 encoded 320 bits symmetric key.
- Patterns of Base64 encoded 512 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, Id, AccountName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_ClientSecretContext:

- secret
- token
- auth
- securestring
- key

### Keyword_SymmetricKey128:

- secret
- key
- password
- pw

### Keyword_SymmetricKey128Hex:

- dapi
- key
- secret
- token
- password
- pw

### Keyword_SymmetricKey160Hex:

- token

### Keyword_SymmetricKey256:

- SharedAccessKey
- AccountKey

### Keyword_SymmetricKey320:

- code=
- key

### Keyword_SymmetricKey512:

- SharedAccessKey
- AccountKey
