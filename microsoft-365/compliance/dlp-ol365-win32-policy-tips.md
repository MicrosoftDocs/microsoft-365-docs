---
title: "Outlook 365 for Win32 data loss prevention policy tip reference"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 05/16/2023
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
description: "DLP policy tip reference for Outlook 2013 for Win32."
---

# Outlook 365 for Win32 data loss prevention policy tip reference

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Supported versions and channels
 
- version 2105 build 14026.2000
- semi-annual channel version 2102 build 13801.20862

## DLP policy tips supported

Yes

## DLP policy match email notification supported

Yes

## Supported conditions

For E3 users:

- Content contains Sensitive info types
- Content is shared from Microsoft 365

For E5 users:

- Content contains Sensitive info types
- Content is shared from Microsoft 365
- Content contains Sensitivity labels: works for email labels, Office docs, and .pdf files.
- Sender is
- Sender is a member of
- Sender domain is
- Recipient is
- Recipient is a member of
- Recipient domain is
- Subject contains words

Currently, Outlook 2013 and later supports showing policy tips only for these conditions:

- Content contains
- Content is shared

> [!NOTE]
> Outlook does not support showing policy tips for a DLP polies that's applied to a dynamic distribution group or non-email enabled security groups. 

## Supported actions

INSERT LIST HERE

## Supported sensitive information types

### Preconfigured SITs and Named Entity SITs

YES/NO

INSERT LIST HERE, COPY PASTE LINKS FROM https://learn.microsoft.com/en-us/microsoft-365/compliance/sensitive-information-type-entity-definitions

For more informaiton on named entity SITs, see [Learn about named entities](named-entities-learn.md)

### Custom SITS

YES/NO

### Exact Data Match SITs

YES/NO

For more information on exact data match based SITs, see [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)

### Document Fingerprint SITs

YES/NO

For more information on document fingerprint SITs, see [Document fingerprinting](document-fingerprinting.md)

## Supported sensitivity labels

YES/NO

INSERT LIST HERE

For more information on sensitivity labels, see [Learn about sensitivity labels](sensitivity-labels.md)

## Supported retention labels

YES/NO

INSERT LIST HERE

For more information on retention labels, see [Learn about retention policies and retention labels](retention.md)


## Supported trainable classifiers

YES/NO

INSERT LIST HERE, COPY PASTE LINKS FROM https://learn.microsoft.com/en-us/microsoft-365/compliance/classifier-tc-definitions?view=o365-worldwide

For more information on trainable classifiers, see [Learn about trainable classifiers](classifier-learn-about.md)