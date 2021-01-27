---
title: Review and approve pending remediation actions in automated investigation and response
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
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
ms.date: 01/27/2021
---

# View pending or completed remediation actions following an automated investigation in Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

![AIR investigations action page](../../media/air-investigationactionspage.png)

## Approve (or reject) pending actions

As automated investigations on email & collaboration content result in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. In Microsoft Defender for Office 365, remediation actions can include:
- Blocking a URL (time-of-click)
- Soft deleting email messages or clusters
- Quarantining email or email attachments
- Turning off external mail forwarding

These remediation actions are not taken unless and until your security operations team approves them. We recommend reviewing and approving any pending actions as soon as possible so that your automated investigations complete in a timely manner.

> [!IMPORTANT]
> Appropriate permissions are required to approve or reject remediation actions. See [Required permissions to use AIR capabilities](office-365-air.md#required-permissions-to-use-air-capabilities).

1. Go to <https://protection.office.com> and sign in. This takes you to the the Security & Compliance Center.

2. Go to **Threat management** \> **Investigations**.

3. In the list of investigations, select an item in the **ID** column.

4. Select the **Actions** tab.

5. Select an item in the list. (This activates the Approve and Reject buttons.)

6. Review available information for the item(s) you selected, and then either approve or reject the action(s).
   - **Approve** allows remediation to begin.
   - **Reject** takes no further action

## Next steps

- [Details and results of an automated investigation in Office 365](air-view-investigation-results.md)

- [Use Threat Explorer](threat-explorer.md)
