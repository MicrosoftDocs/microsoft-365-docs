---
title: "Azure SQL connection string entity definition (preview)"
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
description: "Azure SQL connection string sensitive information type entity definition."
---

# Azure SQL connection string (preview)

## Format

Up to 20,000-character combination of letters, digits, and special characters.

or

A pair of username and password used in general authentication process.


## Pattern

Any combination of up to 20,000 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- forward slashes (/)
- or plus signs (+)
- Up to 2
- equal signs (=)

for example: 

`MIIKcQIBAzCCCi0GCSqGSIb3DQEHAaCCCh4EggoaMIIKFjCCBg8GCSqGSIb3DQEHAaCCBgAEggX8MIIF+DCCBfQGCyqGSIb3DQEM`

or

Variant username and password formats, for example:

`username=...;password=********;` <br>
`user id=...;password=********;` <br>
`uid=...;pwd=********;` <br>
`DB_USER=...;DB_PASS=********;` <br>
`Service Account=...;Password=********;` <br>


## Checksum

Yes

## Definition

This SIT is designed to match the security information that's used to connect to [Azure SQL Databases](/azure/sql-database/sql-database-aad-authentication-configure).

It uses several primary resources:

- Patterns of Base64 encoded string literal.
- Patterns of Plain-text username and password.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_Base64EncodedStringLiteral:

- MII

### Keyword_LoginCredentials:

- password
- pw
- DB_
