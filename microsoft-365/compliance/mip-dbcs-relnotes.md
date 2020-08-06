---
title: "Information protection support for double byte character set release notes (preview)"
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

- [Custom sensitive information types](custom-sensitive-info-types.md)
- [Create custom sensitive information types with exact data match based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)
- [Create a custom sensitive information type in the Security & Compliance Center](create-a-custom-sensitive-information-type.md)
- [Create a keyword dictionary](create-a-keyword-dictionary.md)

impacts
- DLP
- communcations compliance
- for exchange
- spo
- odb
- Teams
- 
- 
- Known issues include the following:
•	When a text file attached to an email is in UTF-8 format without BOM (byte order mark), the email is not detected by the Communication Compliance policy. [CC – fixed?]
•	Communication Compliance policies cannot detect values if a sentence is entered for the policy condition: “Message contains any of these words”. If the text specified in the policy is written as a word, it can be detected; however, if it is written in the middle of a sentence, it will not be detected. [CC – fixed?]
•	Communication Compliance policies that specify dictionaries as type information do not detect Teams private chats and channel chats. [CC – fixed?]
The following conditions are not supported for Communication Compliance at this stage (we plan to fix these issues in the future): 
•	“Message contains any of these words”
•	“Message contains none of these words”
•	“Attachment contains any of these words”
•	“Attachment contains any of these words”
Instead we recommend creating a custom Sensitive Information Type (SIT) with keyword dictionary which will detect patterns across messages and attachments, and using this custom SIT as a Communication Compliance policy condition, as shown below:
