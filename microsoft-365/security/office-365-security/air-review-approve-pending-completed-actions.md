---
title: Review and approve pending remediation actions in automated investigation and response
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: how-to
localization_priority: Normal
search.appverid: 
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
description: Learn about remediation actions in automated investigation and response capabilities in Microsoft Defender for Office 365 Plan 2.
ms.technology: mdo
ms.prod: m365-security
ms.date: 01/29/2021
---

# View pending or completed remediation actions following an automated investigation in Office 365


## Approve (or reject) pending actions

As automated investigations on email & collaboration content result in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. In Microsoft Defender for Office 365, remediation actions can include:
- Blocking a URL (time-of-click)
- Soft deleting email messages or clusters
- Quarantining email or email attachments
- Turning off external mail forwarding

These remediation actions are not taken unless and until your security operations team approves them. We recommend reviewing and approving any pending actions as soon as possible so that your automated investigations complete in a timely manner.

1. Go to the Microsoft 365 security center [https://security.microsoft.com](https://security.microsoft.com)) and sign in.
2. In the navigation pane, select **Action center**.
3. On the **Pending** tab, review the list of actions that are awaiting approval.
4. Select an item in the list. Its flyout pane opens. 
5. In the flyout pane, review available information for the item(s) you selected, and then either approve or reject the action(s).
   - **Approve** allows remediation to begin.
   - **Reject** takes no further action

## Next steps

- [View details and results of an automated investigation in Office 365](air-view-investigation-results.md)
- [Use Threat Explorer](threat-explorer.md)

## See also

- [Required permissions to use AIR capabilities](office-365-air.md#required-permissions-to-use-air-capabilities)
- [How automated investigation and response works in Microsoft Defender for Office 365](automated-investigation-response-office.md)