---
title: "Azure subscription management certificate entity definition"
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
description: "Azure subscription management certificate sensitive information type entity definition."
---

# Azure subscription management certificate

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

This SIT is also included in the [All credentials](sit-defn-all-creds.md) bundled SIT.

 ## Format

A combination of up to 20,000 characters consisting of letters, digits, and special characters.

## Pattern

A combination of up to 20,000 characters:
 
- a-z (not case-sensitive)
- 0-9
- forward slash (/) or plus sign (+)
- Up to two equals signs (==)

for example:

`MIIKcQIBAzCCCi0GCSqGSIb3DQEHAaCCCh4EggoaMIIKFjCCBg8GCSqGSIb3DQEHAaCCBgAEggX8MIIF+DCCBfQGCyqGSIb3DQEM`

## Credential example 

`<Subscription id="f70163aa-03a8-4f4a-8a30-d38e3f38fde4" ManagementCertificate="MIIPuQIBAzCCD38GCSqGS...`

[!IMPORTANT]
This example has been truncated. It’s not a detectable example of this SIT.

## Checksum

Yes

SITs that have checksums use a unique calculation to check if the information is valid. This means when the **Checksum** value is **Yes**, the service can make a positive detection based on the sensitive data alone. When the **Checksum** value is **No** additional (secondary) elements must also be detected  for the service to make a positive detection.

## Definition

This SIT is designed to match the security information that's used to authenticate with the [classic deployment model](/azure/azure-resource-manager/management/deployment-models) provided by Azure. Many programs and tools, like Visual Studio or the Azure SDK, use these certificates to automate configuration and deployment of various [Azure services](/azure/azure-api-management-certs). 

It uses several primary resources:

- Patterns of Base64 encoded string literal.
- Patterns of CredentialName, CredentialFeatures, AccountIdentityName, AccountIdentityValue, ResourceType, ResourceName.

The patterns are designed to match actual credentials with reasonable confidence. The patterns don't match credentials formatted as examples. Mockup values, redacted values, and placeholders, like credential type or usage descriptions, in the position where an actual secret value should present won't be matched.

## Keywords

### Keyword_Base64EncodedStringLiteral:

- MII
