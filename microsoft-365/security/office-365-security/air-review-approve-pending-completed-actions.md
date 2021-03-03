---
title: Review and manage remediation actions in Microsoft Defender for Office 365
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

# Review and manage remediation actions in Office 365

As automated investigations on email & collaboration content result in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. In Microsoft Defender for Office 365, remediation actions can include:
- Blocking a URL (time-of-click)
- Soft deleting email messages or clusters
- Quarantining email or email attachments
- Turning off external mail forwarding

These remediation actions are not taken unless and until your security operations team approves them. We recommend reviewing and approving any pending actions as soon as possible so that your automated investigations complete in a timely manner. In some cases, you can undo a remediation action.

**Applies to**
- [Microsoft Defender for Office 365 plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

## Approve (or reject) pending actions

1. Go to the Microsoft 365 security center (<https://security.microsoft.com>) and sign in.
2. In the navigation pane, select **Action center**.
3. On the **Pending** tab, review the list of actions that are awaiting approval.
4. Select an item in the list. Its flyout pane opens. 
5. Review the information in the flyout pane, and then take one of the following steps:
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.

## Undo one remediation action

1. Go to the Action center (<https://security.microsoft.com/action-center>) and sign in.
2. On the **History** tab, select an action that you want to undo.
3. In the pane on the right side of the screen, select **Undo**.

## Undo multiple remediation actions

1. Go to the Action center (<https://security.microsoft.com/action-center>) and sign in.
2. On the **History** tab, select the actions that you want to undo. Make sure to select items that have the same Action type. A flyout pane opens.
3. In the flyout pane, select Undo.

## To remove a file from quarantine across multiple devices

1. Go to the Action center (<https://security.microsoft.com/action-center>) and sign in.
2. On the **History** tab, select a file that has the Action type **Quarantine file**.
3. In the pane on the right side of the screen, select **Apply to X more instances of this file**, and then select **Undo**.

## Next steps

- [Use Threat Explorer](threat-explorer.md)
- [How to report false positives/negatives in automated investigation and response capabilities](air-report-false-positives-negatives.md)

## See also

- [View details and results of an automated investigation in Office 365](air-view-investigation-results.md)
