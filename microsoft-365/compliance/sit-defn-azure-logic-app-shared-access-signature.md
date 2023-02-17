---
title: "Azure Logic App shared access signature entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/16/2022
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
description: "Azure Logic App shared access signature sensitive information type entity definition."
---

# Azure Logic App shared access signature 

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of up to 76 characters consisting of letters, digits, and special characters.

## Pattern

Any combination of 43 to 73 characters consisting of:

- a-z (not case-sensitive)
- 0-9
- or percent signs (%)
- ends with a suffix '%3d' (not case-sensitive)

for example:

`abcdefghijklmnopqrstuvwxyz0123456789%2F%2BABCDE%3D`

## Credential example 

`https://account.logic.azure.com/?...&sig=abcdefghijklmnopqrstuvwxyz0123456789%2F%2BABCDE%3D`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to grant access to a request endpoint on [Azure Logic Apps.](/azure/logic-apps/logic-apps-securing-a-logic-app?tabs=azure-portal) 

It uses several primary resources:

Patterns of URL Encoded 256-bits symmetric key.
Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
Patterns of mockup values, redactions, and placeholders.
A dictionary of vocabulary

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.


## Keywords

### Keyword_SymmetricKey256UrlEncoded:

- sig=
- key
- token
- secret
- password
