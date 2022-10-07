---
title: "General password entity definition"
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
description: "General password sensitive information type entity definition."
---

# General Password

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Up to 20,000-character combination of letters, digits, and special characters.

or

Sign in credentials used in command lines

or

Plain-text password used in code snippets

or

Plain-text password used in script

or

Plain-text password used in XML configuration

or

A combination of 24 characters consisting of letters, digits, and special characters.

or

A combination of 32 characters consisting of letters and digits.

or

A combination of 32 characters consisting of letters, digits, and special characters.

or

A combination of 44 characters consisting of letters, digits, and special characters.

or

An 88-character combination of letters, digits, and special characters.

## Pattern

Any combination of up to 20,000 characters consisting of:

- a-z (case insensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- Up to two equal signs (=)

for example:

`MIIKcQIBAzCCCi0GCSqGSIb3DQEHAaCCCh4EggoaMIIKFjCCBg8GCSqGSIb3DQEHAaCCBgAEggX8MIIF+DCCBfQGCyqGSIb3DQEM`

or

Various command line sign-in credentials formats, for example: 

`-u username:********`

or

`-u username -p ********`

or

`/f ... /p ********`

or

`-Password ********`

or

`-U username%********`

or

`-secrets:********`

for example:

`zDbg.DataPuller.exe -secrets:eyJ`

or

Various password formats in code snippets, for example:

`new X509Certificates2(`

or

`ConvertTo-SecureString -String ********`

or

`password = "********"`

or

`"password" : "********"`

or

`UserPasswordCredential(`

for example:

`password = "ZYXWVU_1";`

or

Various password formats in script, for example:

`password = ********`

for example:

`password=ZYXWVU_1`

or

Various password formats in XML, for example:

```xml
<secret>********</secret>
<password>********</password>
<setting name="password" value="********" >
<setting name="password">********</setting>
<setting name="password"><value>********</value></setting>
```

for example:

`<secret>ZYXWVU_1</secret>`

or

Any combination of 22 characters consisting of:

- a-z (case insensitive)
- digits, forward slashes, or plus signs
- ends with two equal signs (=)

for example:

`abcdefgh0123456789/+AB==`

or

Any combination of 32 characters consisting of:

- a-f or A-F (case-sensitive) or 0-9

for example:

`abcdef0123456789abcdef0123456789`

or

Any combination of 32 characters consisting of:

- a-z (case insensitive)
- 0-9
- forward slashes (/) or plus signs (+)

for example:

`abcdefghijklmnopqr0123456789/+AB`

or

Any combination of 43 characters consisting of:

- a-z (case insensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- ends with an equal sign (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=`

or

Any combination of 86 characters consisting of:

- a-z (case insensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- ends with two equal signs (=)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEabcdefghijklmnopqrstuvwxyz0123456789/+ABCDE==`

## Checksum

Yes

## Description

This SIT is designed to match the security information that's like usernames and passwords used in general sign-in process [user login process](/azure/key-vault/quick-create-portal). It uses several primary resources:

- Patterns of Base64 encoded string literal.
- Patterns of Password context in command line.
- Patterns of Password context in code.
- Patterns of Password context in script.
- Patterns of Password context in XML.
- Patterns of Base64 encoded 128-bits symmetric key.
- Patterns of Hex encoded 128-bits symmetric key.
- Patterns of Base64 encoded 192-bits symmetric key.
- Patterns of Base64 encoded 256-bits symmetric key.
- Patterns of Base64 encoded 512-bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, ID, AccountName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary words.


The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_Base64EncodedStringLiteral

- MII

### Keyword_PasswordContextInCmdLine

- certutil
- zdbg
- secret
- VSTS_TOKEN
- curl
- PowerShell
- ps1
- -u
- Smc
- AutoLogon
- ldifde
- Rclone
- --env
- SignTool
- winexe
- net

## Keyword_PasswordContextInCode

- key
- x509c
- credential
- password
- pw
- securestring

### Keyword_PasswordContextInScript

- secret
- password
- pw

### Keyword_PasswordContextInXml

- userpass
- password
- pw
- connectionstring
- key
- credential
- token
- sas
- secret

### Keyword_SymmetricKey128

- secret
- key
- password
- pw

### Keyword_SymmetricKey128Hex

- dapi
- key
- secret
- token
- password
- pw

### Keyword_SymmetricKey192

- password
- -p
- azurecr

### Keyword_SymmetricKey256

- SharedAccessKey
- AccountKey

### Keyword_SymmetricKey512

- SharedAccessKey
- AccountKey
