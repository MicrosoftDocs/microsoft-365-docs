---
title: "Microsoft 365 compliance support for double byte character set release notes (preview)"
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Release notes for support for double byte character sets."
---

# Support for double byte character set release notes (preview)

 Microsoft 365 Information Protection now supports in preview double byte character set languages for:

- Chinese (simplified)
- Chinese (traditional)
- Korean
- Japanese

This support is available for sensitive information types and keyword dictionaries and will be reflected in data loss prevention, communications compliance, Exchange Online, SharePoint Online, OneDrive for Business, and Teams solutions.

## Known issues

- When a text file attached to an email is in UTF-8 format without byte order mark (BOM), the email is not detected by the Communication Compliance policy.

- Communication Compliance policies cannot detect values if a sentence is entered for the policy condition: “Message contains any of these words”. If the text specified in the policy is written as a word, it can be detected; however, if it is written in the middle of a sentence, it will not be detected.

- Communication Compliance policies that specify dictionaries as type information do not detect Teams private chats and channel chats.

- The following conditions are not supported for Communication Compliance at this stage (we plan to fix these issues in the future): 
  - “Message contains any of these words”
  - “Message contains none of these words”
  - “Attachment contains any of these words”
  - “Attachment contains any of these words”

Instead we recommend creating a custom Sensitive Information Type (SIT) with keyword dictionary which will detect patterns across messages and attachments, and using this custom SIT as a Communication Compliance policy condition.
