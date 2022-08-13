---
title: "Http authorization header entity definition (preview)"
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
description: "Http authorization header sensitive information type entity definition."
---

# Http authorization header (preview)

## Format

An authorization header used in HTTP request.

## Pattern

Various authentication header formats for example:
 
`authorization: basic ********` <br>
`authorization: bearer ********` <br>
`authorization: digest ********` <br>
`authorization: negotiate ********` <br>

## Checksum

No

## Definition

This SIT is designed to match the security information that's used in the header of an [HTTP request for authentication and authorization.](/dotnet/api/system.net.http.headers.httprequestheaders.authorization?view=netframework-4.8) 

It uses several primary resources:

- Patterns of Http authorization header.
- Patterns of CredentialName, CredentialFeatures, ResourceType.
- Patterns of mockup values, redactions, and placeholders.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_HttpAuthorizationHeader:

- authorization

