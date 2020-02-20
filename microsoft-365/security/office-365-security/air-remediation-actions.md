---
title: "Remediation actions in Office 365 automated investigation and response"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: M365-security-compliance
description: "Learn about remediation actions in automated investigation and response capabilities in Office 365 Advanced Threat Protection Plan 2."
---

# Remediation actions in Office 365 Advanced Threat Protection automated investigation and response capabilities

Automated investigation and response capabilities in Office 365 Advanced Threat Protection include certain remediation actions. When an automated investigation is running or has completed, you will typically see one or more remediation actions that require approval to proceed. 

|Action | Description |
|-----|-----|
|Block URL (time-of-click) |Protect against emails and documents that contain malicious URLs. This enables the blocking of malicious links and any related webpages via [Safe Links](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links) when the user clicks a link in an existing Office file or in an older email message. |
|Soft delete email  |Soft delete specific email messages from a user's mailbox|
|Soft delete email clusters  |Soft delete malicious email messages matching a query from all users' mailboxes|
|Turn off external mail forwarding |Removes forwarding rule from a specific end user's mailbox|

## Next steps

- [View the results of automated investigations](air-view-investigation-results.md)
