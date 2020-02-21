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

# Remediation actions following an automated investigation in Office 365

## Remediation actions overview

[Automated investigation and response capabilities](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air) in Office 365 Advanced Threat Protection include certain remediation actions. Whenever an automated investigation is running or has completed, you'll typically see one or more remediation actions that require approval by your security operations team to proceed. The following table summarizes remediation actions currently available in Office 365 Advanced Threat Protection. 

|Action | Description |
|-----|-----|
|Block URL (time-of-click) |Protect against emails and documents that contain malicious URLs. This enables the blocking of malicious links and any related webpages via [Safe Links](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links) when the user clicks a link in an existing Office file or in an older email message. |
|Soft delete email  |Soft delete specific email messages from a user's mailbox|
|Soft delete email clusters  |Soft delete malicious email messages matching a query from all users' mailboxes|
|Turn off external mail forwarding |Removes forwarding rule from a specific end user's mailbox|

## Approve (or reject) pending actions

![AIR investigations action page](../../media/air-investigationactionspage.png)

While viewing the [details of an investigation](air-view-investigation-results.md), you can approve or reject any pending remediation actions. We recommend doing this as soon as possible so that your automated investigations complete.

> [!IMPORTANT]
> Appropriate permissions are required to approve or reject remediation actions. See [Required permissions to use AIR capabilities](office-365-air.md#required-permissions-to-use-air-capabilities).

1. Select the **Actions** tab.

2. Select an item in the list. (This activates the Approve and Reject buttons.)

3. Review available information for the item(s) you selected, and then either approve or reject the action(s). 
 - **Approve** allows remediation to begin.
 - **Reject** takes no further action

## Related articles

[Learn about automated investigation and response in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)