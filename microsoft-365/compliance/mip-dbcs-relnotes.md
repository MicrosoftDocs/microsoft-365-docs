---
title: "Microsoft Purview support for double byte character set release notes"
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
description: "Release notes for support for double byte character sets."
---

# Support for double byte character set release notes

 Microsoft 365 Information Protection now supports double byte character set languages for:

- Chinese (simplified)
- Chinese (traditional)
- Korean
- Japanese

This support is available for sensitive information types and keyword dictionaries and will be reflected in Microsoft Purview Data Loss Prevention (for Exchange Online, SharePoint Online, OneDrive for Business, and Teams), Communications Compliance, Auto Labelling in office apps and Microsoft Defender for Cloud Apps.

## Known issues

- When a text file attached to an email is in UTF-8 format without byte order mark (BOM), the email isn't detected by the Communication Compliance policy.

- Communication Compliance policies can't detect values if a sentence is entered for the policy condition: “Message contains any of these words”. If the text specified in the policy is written as a word, it can be detected; however, if it's written in the middle of a sentence, it will not be detected.

- Communication Compliance policies that specify dictionaries as type information don't detect Teams private chats and channel chats.

- The following conditions aren't supported for Communication Compliance at this stage (we plan to fix these issues in the future): 
  - “Message contains any of these words”
  - “Message contains none of these words”
  - “Attachment contains any of these words”
  - “Attachment contains any of these words”

- Data loss prevention policies are enforceable on macOS devices (preview) running Catalina 10.15 and higher, except for the below mentioned conditions for East 
  Asian languages including Japanese.
  - Full-width numbers aren’t detected such as using built-in template such as Japan bank account number
  - Numbers without delimiters aren’t detected
  - Keywords separated by a half-width space aren’t detected for a sensitive information type. For example: Japanese word is set at sensitive information type and
    dictionary isn't detected if it is in a sentence
  - Words containing both English and Japanese (東京2020) aren’t detected

Instead we recommend creating a custom Sensitive Information Type (SIT) with keyword dictionary which will detect patterns across messages and attachments, and using this custom SIT as a Communication Compliance policy condition.
