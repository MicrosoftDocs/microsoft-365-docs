---
title: Details and results of an automated investigation
description: View the results and key findings of automated investigation in Microsoft 365 Defender
keywords: automated, investigation, results, analyze, details, remediation, autoair
search.appverid: met150
ms.prod: m365-security
ms.technology: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365initiative-m365-defender
ms.topic: conceptual
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
---

# Details and results of an automated investigation

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

With Microsoft 365 Defender, when an [automated investigation](m365d-autoir.md) runs, details about that investigation are available both during and after the automated investigation process. If you have the [necessary permissions](m365d-action-center.md#required-permissions-for-action-center-tasks), you can view those details in an investigation details view that provides you with up-to-date status and the ability to approve any pending actions. 

## (NEW) Unified investigation page

The investigation page has recently been updated to include information across your devices, email, and collaboration content. The new, unified investigation page defines a common language and provides a unified experience for automatic investigations across [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) and [Microsoft Defender for Office 365](../office-365-security/defender-for-office-365.md). To access the unified investigation page, select the link in the yellow banner you'll see on:

- Any investigation page in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077143" target="_blank">Office 365 Security & Compliance Center</a>
- Any investigation page in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com))
- Any incident or Action center experience in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>

## Open the investigation details view

You can open the investigation details view by using one of the following methods:

- [Select an item in the Action center](#select-an-item-in-the-action-center)
- [Select an investigation from an incident details page](#open-an-investigation-from-an-incident-details-page)

### Select an item in the Action center

The improved [Action center](m365d-action-center.md) ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) brings together [remediation actions](m365d-remediation-actions.md) across your devices, email & collaboration content, and identities. Listed actions include remediation actions that were taken automatically or manually. In the Action center, you can view actions that are awaiting approval and actions that were already approved or completed. You can also navigate to more details, such as an investigation page.

> [!TIP]
> You must have [certain permissions](m365d-action-center.md#required-permissions-for-action-center-tasks) to approve, reject, or undo actions.

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in. 

2. In the navigation pane, choose **Action center**. 

3. On either the **Pending** or **History** tab, select an item. Its flyout pane opens.

4. Review the information in the flyout pane, and then take one of the following steps:
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.
   - Select **Go hunt** to go into [Advanced hunting](advanced-hunting-overview.md).

### Open an investigation from an incident details page

Use an incident details page to view detailed information about an incident, including alerts that were triggered information about any affected devices, user accounts, or mailboxes.

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in. 

2. In the navigation pane, choose **Incidents & alerts** > **Incidents**. 

3. Select an item in the list, and then choose **Open incident page**.

4. Select the **Investigations** tab, and then select an investigation in the list. Its flyout pane opens.

5. Select **Open investigation page**. 

Here's an example.

:::image type="content" source="../../media/mtp-incidentdetails-tabs.png" alt-text="An example of an investigation page." lightbox="../../media/mtp-incidentdetails-tabs.png":::

## Investigation details

Use the investigation details view to see past, current, and pending activity pertaining to an investigation. Here's an example.

:::image type="content" source="../../media/mtp-air-investdetails.png" alt-text="An example of investigation details." lightbox="../../media/mtp-air-investdetails.png":::

In the Investigation details view, you can see information on the **Investigation graph**, **Alerts**, **Devices**, **Identities**, **Key findings**, **Entities**, **Log**, and **Pending actions** tabs, described in the following table.

> [!NOTE]
> The specific tabs you see in an investigation details page depends on what your subscription includes. For example, if your subscription does not include Microsoft Defender for Office 365 Plan 2, you won't see a **Mailboxes** tab.

| Tab | Description |
|:--------|:--------|
| **Investigation graph** | Provides a visual representation of the investigation. Depicts entities and lists threats found, along with alerts and whether any actions are awaiting approval.<br/>You can select an item on the graph to view more details. For example, selecting the **Evidence** icon takes you to the **Evidence** tab, where you can see detected entities and their verdicts. |
| **Alerts** | Lists alerts associated with the investigation. Alerts can come from threat protection features on a user's device, in Office apps, Microsoft Defender for Cloud Apps, and other Microsoft 365 Defender features.|
| **Devices** | Lists devices included in the investigation along with their remediation level. (Remediation levels correspond to [the automation level for device groups](m365d-configure-auto-investigation-response.md#review-or-change-the-automation-level-for-device-groups).) |
| **Mailboxes** |Lists mailboxes that are impacted by detected threats.  |
| **Users**  | Lists user accounts that are impacted by detected threats. |
| **Evidence** | Lists pieces of evidence raised by alerts or investigations. Includes verdicts (*Malicious*, *Suspicious*, *Unknown*, or *No threats found*) and remediation status. |
| **Entities** | Provides details about each analyzed entity, including a verdict for each entity type (*Malicious*, *Suspicious*, or *No threats found*).|
|**Log** | Provides a chronological, detailed view of all the investigation actions taken after an alert was triggered.|
| **Pending actions history** | Lists items that require approval to proceed. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) to approve pending actions. |

## Next steps

- [View and manage remediation actions](m365d-autoir-actions.md)
- [Learn more about remediation actions](m365d-remediation-actions.md)
