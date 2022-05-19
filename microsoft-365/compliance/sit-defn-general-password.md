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
- M365-security-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "General password sensitive information type entity definition."
---

# General password

## Format

A combination of up to 20,000 characters consisting of letters, digits, and special characters.

or

A paired username and password used in URL.

or

Login credentials used in command lines.

or

Plain text password used in code snippets.

or

Plain text password used in script.

or

Plain text password used in XML configuration.

or

A combination of 24 characters consisting of letters, digits, and special characters.

or

A combination of 32 characters consisting of letters and digits.

or

A combination of 32 characters consisting of letters, digits, and special characters.

or

A combination of 44 characters consisting of letters, digits, and special characters.

or

A combination of 88 characters consisting of letters, digits, and special characters.


## Pattern

A combination of up to 20,000 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- Up to 2 equals signs (==)

for example:

MIIKcQIBAzCCCi0GCSqGSIb3DQEHAaCCCh4EggoaMIIKFjCCBg8GCSqGSIb3DQEHAaCCBgAEggX8MIIF+DCCBfQGCyqGSIb3DQEM…

or

Various URL username and password formats, for example:
 
https://username:********@contoso.com/... <br>
ftp://username:********@contoso.com:20/... <br>
...

or

Various command line login credentials formats, for example:

... -u username:******** ... <br>
... -u username -p ******** ... <br>
... /f ... /p ********... <br>
... -Password ********... <br>
... -U username%******** ... <br>
... -secrets:******** ... <br>
...

or

Various password formats in code snippets for example:
 
... new X509Certificates2( ... <br>
... ConvertTo-SecureString -String ********... <br>
... password = "********"... <br>
... "password" : "********"... <br>
... UserPasswordCredential( ... <br>
...

or

Various password formats in script for example:

... -password "********" ... <br>
... -UserPassword "********" ... <br>
... password = ********... <br>
... password: ********... <br>
...

or

Various password formats in XML for example:

```xml
... <secret>********</secret> ...
... <password>********</password> ...
... <setting name="password" value="********" > ...
... <setting name="password">********</setting> ...
... <setting name="password"><value>********</value></setting> ...
...
```

or

A combination of 22 characters:

- a-z (not case-sensitive)
- digits, forward slashes, or plus signs
- ends with two equal signs (==)

for example:

abcdefgh0123456789/+AB==

or

A combination of 32 characters:

- a-f or A-F (case-sensitive)

or

- 0-9

for example:

abcdef0123456789abcdef0123456789

or

A combination of 32 characters:
 
- a-z (not case-sensitive)
- 0-9
- forward slashes (/) or plus signs (+)


for example:

abcdefghijklmnopqr0123456789/+AB

or

A combination of 43 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)  or plus signs (+)
- or plus signs (+)
- ends with an equal sign (=)

for example:

abcdefghijklmnopqrstuvwxyz0123456789/+ABCDE=

or

A combination of 86 characters:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/) or plus signs (+)
- ends with two equal signs (=)

for example:

abcdefghijklmnopqrstuvwxyz0123456789/+ABCDEabcdefghijklmnopqrstuvwxyz0123456789/+ABCDE==

## Checksum

Yes

## Definition

This SIT is designed to match the security information that's like usernames and passwords used in [general login process](/azure/key-vault/quick-create-portal). 

It uses several primary resources:

- Patterns of Base64 encoded string literal.
- Patterns of User Login Credentials in URL.
- Patterns of Password context in command line.
- Patterns of Password context in code.
- Patterns of Password context in script.
- Patterns of Password context in XML.
- Patterns of Base64 encoded 128 bits symmetric key.
- Patterns of Hex encoded 128 bits symmetric key.
- Patterns of Base64 encoded 192 bits symmetric key.
- Patterns of Base64 encoded 256 bits symmetric key.
- Patterns of Base64 encoded 512 bits symmetric key.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName, Id, AccountName.
- Patterns of mockup values, redactions, and placeholders.
- A dictionary of vocabulary.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_Base64EncodedStringLiteral:

- MII

### Keyword_LoginCredentialsInUrl:

- ://

### Keyword_PasswordContextInCmdLine:

- certutil
- zdbg
- secret
- VSTS_TOKEN
- curl
- powershell
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

### Keyword_PasswordContextInCode:

- key
- x509c
- credential
- password
- pw
- securestring

### Keyword_PasswordContextInScript:

- secret
- password
- pw

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

### Keyword_SymmetricKey192:

- password
- -p
- azurecr

### Keyword_SymmetricKey256:

- SharedAccessKey
- AccountKey

### Keyword_SymmetricKey512:

- SharedAccessKey
- AccountKey
