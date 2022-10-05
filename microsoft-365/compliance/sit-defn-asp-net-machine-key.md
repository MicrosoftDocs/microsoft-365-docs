---
title: "ASP.NET machine key entity definition (preview)"
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
description: "ASP.NET machine key sensitive information type entity definition."
---

# ASP.NET machine key (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Symmetric keys in XML configuration.

## Pattern

Various symmetric key formats in XML, for example:

```xml
<machineKey decryptionKey="******** </br> 
<machineKey validationKey="********
```
## Checksum

No

## Definition


This SIT is designed to match the security information that's used to encrypt or hash data in [ASP.NET](/dotnet/api/system.web.security.machinekey?view=netframework-4.8) forms authentication and view state. 

It uses several primary resources:

- Patterns of Symmetric key context in xml files.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.


## Keywords

### Keyword_SymmetricKeyContextInXml:

- password
- key
- connectionstring

