---
title: "Slack access token entity definition (preview)"
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
description: "Slack access token sensitive information type entity definition."
---

# Slack access token (preview)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of up to 34 characters consisting of letters, digits, and special characters.

## Pattern

A token prefix (case-sensitive) 'xoxp-', 'xoxb-', 'xoxa-', 'xoxr-', 'xoxo-', 'xoxs-' or 'xoxe-'

A combination of up to 29 characters:

- 29 a-z (not case-sensitive)
- 0-9 or hyphens (-)

for example:

`xoxp-abcdef-abcdef-abcdef-abcdef` 

## Credential example 

`slack_token= xoxp-abcdef-abcdef-abcdef-abcdef;`

## Checksum

No

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to access [Slack platform functionalities](https://api.slack.com/docs/token-type) (for example Bot tokens, User tokens and App-level tokens). 

It uses several primary resources:

- Patterns of Slack user/bot/workspace token.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.
- Patterns of mockup values, redactions, and placeholders.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_SlackTokens:

- xox
