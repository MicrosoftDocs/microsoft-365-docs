---
title: Review and manage remediation actions in Microsoft Defender for Office 365
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.collection:
- M365-security-compliance
- m365initiative-defender-office365
ms.custom:
description: Learn about remediation actions in automated investigation and response capabilities in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/10/2021
---

# Review and manage remediation actions in Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

As automated investigations on email & collaboration content result in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. In Microsoft Defender for Office 365, remediation actions can include:

- Soft deleting email messages or clusters
- Turning off external mail forwarding

These remediation actions are not taken unless and until your security operations team approves them. We recommend reviewing and approving any pending actions as soon as possible so that your automated investigations complete in a timely manner. In some cases, you can reconsider submitted actions.  You need to be part of Search & purge role before taking any actions.

## Approve (or reject) pending actions

There are four different ways to find and take auto investigation actions:

- [Incident queue](https://security.microsoft.com/incidents)
- Investigation itself (accessed via Incident or from an alert)
- [Action center](https://security.microsoft.com/action-center/pending)
- [Investigation and remediation investigations queue](https://security.microsoft.com/airinvestigation)

## Incident queue

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Incidents** page at **Incidents & alerts** \> **Incidents**. To go directly to the **Incidents** page, use <https://security.microsoft.com/incidents>.
2. On the **Incidents** page, select an incident name to open its summary page.
3. Select the **Evidence and Response** tab.
4. Select an item in the list. Its side pane opens.
5. In the side pane, take approve or reject actions.

## Action center

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Action center** page by selecting **Action center**. To go directly to the **Action center** page, use <https://security.microsoft.com/action-center/pending>.
2. On the **Action center** page, verify that the **Pending** tab is selected, and then review the list of actions that are awaiting approval.
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.

## Investigation and remediation investigations queue

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Threat investigation** page at **Email & collaboration** \> **Investigations**. To go directly to the **Threat investigation** page, use <https://security.microsoft.com/airinvestigation>.
2. On the **Threat investigation** page, find and an item from the list whose status is **Pending action**.
3. Click ![Open in new window icon.](../../media/m365-cc-sc-open-icon.png) **Open in new window** on the list time (between **ID** and **Status**).
4. In the page that opens, take approve or reject actions.

## Change or undo one remediation action

There are two different ways to reconsider submitted actions:

- Through the [unified action center](https://security.microsoft.com/action-center).
- Though the [Office action center](https://security.microsoft.com/threatincidents).

## Change or undo through the unified action center

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the unified action center by selecting **Action center**. To go directly to the unified action center, use <https://security.microsoft.com/action-center/>.
2. On the **Action center** page, select the **History** tab, and then select the action that you want to change or undo.
3. In the pane on the right side of the screen, select the appropriate action (**move to inbox**, **move to junk**, **move to deleted items**, **soft delete**, or **hard delete**).

## Change or undo through the Office action center

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the Office action center at **Email & collaboration** \> **Review** \> **Action center**. To go directly to the Office action center, use <https://security.microsoft.com/threatincidents>.
2. On the **Action center** page, select the appropriate remediation.
3. In the side panel, click on the mail submissions entry and wait for the list to load.
4. Wait for the Action button at the top to enable and select the Action button to change the action type.
5. This will create the appropriate actions.

## Next steps

- [Use Threat Explorer](threat-explorer.md)
- [Admin /Manual Actions](remediate-malicious-email-delivered-office-365.md)
- [How to report false positives/negatives in automated investigation and response capabilities](air-report-false-positives-negatives.md)

## See also

- [View details and results of an automated investigation in Office 365](air-view-investigation-results.md)
