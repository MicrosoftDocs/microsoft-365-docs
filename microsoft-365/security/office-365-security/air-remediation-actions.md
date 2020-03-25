---
title: "Remediation actions in automated investigation and response"
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

# Remediation actions following an automated investigation

## Remediation actions

[Automated investigation and response capabilities](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air) (AIR) in [Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) (Office 365 ATP) Plan 2 include certain remediation actions. Whenever an automated investigation is running or has completed, you'll typically see one or more remediation actions that require approval by your security operations team to proceed. 

The following table summarizes the remediation actions that are currently available in Office 365 ATP. 

|Action | Description |
|-----|-----|
|Block URL (time-of-click) |Protects against email messages and documents that contain malicious URLs. This enables the blocking of malicious links and any related webpages via [Safe Links](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links) when the user clicks a link in an existing Office file or in an older email message. |
|Soft delete email  |Soft delete specific email messages from a user's mailbox. <br/>A soft-deleted message is moved to a user's Recoverable Items folder and is retained until the deleted item retention period expires. |
|Soft delete email clusters  |Soft delete malicious email messages matching a query from all users' mailboxes. <br/>Soft-deleted messages are moved to users' Recoverable Items folder and are retained until the deleted item retention period expires. |
|Turn off external mail forwarding |Removes a forwarding rule from a specific end user's mailbox.|

> [!NOTE]
> In Office 365 ATP, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. 

## Next steps

- [View pending or completed remediation actions following an automated investigation in Office 365](air-review-approve-pending-completed-actions.md)

- [Details and results of an automated investigation in Office 365](air-view-investigation-results.md)

## Related articles

- [Automated investigation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)