---
title: View the details and results of an automated investigation
description: During and after an automated investigation, you can view the results and key findings
keywords: automated, investigation, results, analyze, details, remediation, autoair
search.appverid: met150
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
author: dansimp
ms.author: dansimp
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
ms.date: 03/15/2021
---

# View the details and results of an automated investigation

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

With Microsoft Defender for Endpoint, when an [automated investigation](automated-investigations.md) runs, details about that investigation are available both during and after the automated investigation process. If you have the necessary permissions, you can view those details in an investigation details view. The investigation details view provides you with up-to-date status and the ability to approve any pending actions.

## (NEW!) Unified investigation page

The investigation page has recently been updated to include information across your devices, email, and collaboration content. The new, unified investigation page defines a common language and provides a unified experience for automatic investigations across [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)  and [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365).

> [!TIP]
> To learn more about what's changing, see [(NEW!) Unified investigation page](/microsoft-365/security/mtp/mtp-autoir-results).

## Open the investigation details view

You can open the investigation details view by using one of the following methods:

- [Select an item in the Action center](#select-an-item-in-the-action-center)
- [Select an investigation from an incident details page](#open-an-investigation-from-an-incident-details-page)

### Select an item in the Action center

The improved [Action center](auto-investigation-action-center.md) brings together [remediation actions](manage-auto-investigation.md#remediation-actions) across your devices, email & collaboration content, and identities. Listed actions include remediation actions that were taken automatically or manually. In the Action center, you can view actions that are awaiting approval and actions that were already approved or completed. You can also navigate to more details, such as an investigation page.

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> and sign in.
2. In the navigation pane, choose **Action center**.
3. On either the **Pending** or **History** tab, select an item. Its flyout pane opens.
4. Review the information in the flyout pane, and then take one of the following steps:
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.
   - Select **Go hunt** to go into [Advanced hunting](advanced-hunting-overview.md).

### Open an investigation from an incident details page

Use an incident details page to view detailed information about an incident, including alerts that were triggered information about any affected devices, user accounts, or mailboxes.

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> and sign in.
2. In the navigation pane, choose **Incidents & alerts** \> **Incidents**.
3. Select an item in the list, and then choose **Open incident page**.
4. Select the **Investigations** tab, and then select an investigation in the list. Its flyout pane opens.
5. Select **Open investigation page**.

## Investigation details

Use the investigation details view to see past, current, and pending activity pertaining to an investigation. The investigation details view resembles the following image:

In the Investigation details view, you can see information on the **Investigation graph**, **Alerts**, **Devices**, **Identities**, **Key findings**, **Entities**, **Log**, and **Pending actions** tabs, described in the following table.

> [!NOTE]
> - The specific tabs you see in an investigation details page depends on what your subscription includes. For example, if your subscription does not include Microsoft Defender for Office 365 Plan 2, you won't see a **Mailboxes** tab.
>
> - Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

|Tab|Description|
|---|---|
|**Investigation graph**|Provides a visual representation of the investigation. Depicts entities and lists threats found, along with alerts and whether any actions are awaiting approval. <p> You can select an item on the graph to view more details. For example, selecting the **Evidence** icon takes you to the **Evidence** tab, where you can see detected entities and their verdicts.|
|**Alerts**|Lists alerts associated with the investigation. Alerts can come from threat protection features on a user's device, in Office apps, Defender for Cloud Apps, and other Microsoft 365 Defender features.|
|**Devices**|Lists devices included in the investigation along with their remediation level. (Remediation levels correspond to the [automation level for device groups](automation-levels.md).)|
|**Mailboxes**|Lists mailboxes that are impacted by detected threats.|
|**Users**|Lists user accounts that are impacted by detected threats.|
|**Evidence**|Lists pieces of evidence raised by alerts/investigations. Includes verdicts (*Malicious*, *Suspicious*, or *No threats found*) and remediation status.|
|**Entities**|Provides details about each analyzed entity, including a verdict for each entity type (*Malicious*, *Suspicious*, or *No threats found*).|
|**Log**|Provides a chronological, detailed view of all the investigation actions taken after an alert was triggered.|
|**Pending actions**|Lists items that require approval to proceed. Go to the Action center (<https://security.microsoft.com/action-center>) to approve pending actions.|

## Investigation states

The following table lists investigation states and what they indicate.


|Investigation state  |Definition  |
|---------|---------|
|Benign   | Artifacts were investigated and a determination was made that no threats were found.|
|PendingResource     | An automated investigation is paused because either a remediation action is pending approval, or the device on which an artifact was found is temporarily unavailable.|
|UnsupportedAlertType     | An automated investigation is not available for this type of alert. Further investigation can be done manually, by using advanced hunting. |
|Failed     | At least one investigation analyzer ran into a problem where it couldn't complete the investigation. If an investigation fails after remediation actions were approved, the remediation actions might still have succeeded.|
|Successfully remediated| An automated investigation completed, and all remediation actions were completed or approved.|

To provide more context about how investigation states show up, the following table lists alerts and their corresponding automated investigation state. This table is included as an example of what a security operations team might see in the Microsoft 365 Defender portal.

|Alert name | Severity | Investigation state | Status | Category |
|-----------|----------|---------------------|--------|----------|
|Malware was detected in a wim disk image file|Informational|Benign|Resolved|Malware|
|Malware was detected in a rar archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a rar archive file|Informational|UnsupportedAlertType|New|Malware|
|Malware was detected in a rar archive file|Informational|UnsupportedAlertType|New|Malware|
|Malware was detected in a rar archive file|Informational|UnsupportedAlertType|New|Malware|
|Malware was detected in a zip archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a zip archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a zip archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a zip archive file|Informational|PendingResource|New|Malware|
|Wpakill hacktool was prevented|Low|Failed|New|Malware|
|GendowsBatch hacktool was prevented|Low|Failed|New|Malware|
|Keygen hacktool was prevented|Low|Failed|New|Malware|
|Malware was detected in a zip archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a rar archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a rar archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a zip archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a rar archive file|Informational|PendingResource|New|Malware|
|Malware was detected in a rar archive file|Informational|PendingResource|New|Malware|
|Malware was detected in an iso disc image file|Informational|PendingResource|New|Malware|
|Malware was detected in an iso disc image file|Informational|PendingResource|New|Malware|
|Malware was detected in a pst outlook data file|Informational|UnsupportedAlertType|New|Malware|
|Malware was detected in a pst outlook data file|Informational|UnsupportedAlertType|New|Malware|
|MediaGet detected|Medium|PartiallyInvestigated|New|Malware|
|TrojanEmailFile|Medium|SuccessfullyRemediated|Resolved|Malware|
|CustomEnterpriseBlock malware was prevented|Informational|SuccessfullyRemediated|Resolved|Malware|
|An active CustomEnterpriseBlock malware was blocked|Low|SuccessfullyRemediated|Resolved|Malware|
|An active CustomEnterpriseBlock malware was blocked|Low|SuccessfullyRemediated|Resolved|Malware|
|An active CustomEnterpriseBlock malware was blocked|Low|SuccessfullyRemediated|Resolved|Malware|
|TrojanEmailFile|Medium|Benign|Resolved|Malware|
|CustomEnterpriseBlock malware was prevented|Informational|UnsupportedAlertType|New|Malware|
|CustomEnterpriseBlock malware was prevented|Informational|SuccessfullyRemediated|Resolved|Malware|
|TrojanEmailFile|Medium|SuccessfullyRemediated|Resolved|Malware|
|TrojanEmailFile|Medium|Benign|Resolved|Malware|
|An active CustomEnterpriseBlock malware was blocked|Low|PendingResource|New|Malware|

## See also

- [Review remediation actions following an automated investigation](manage-auto-investigation.md)
- [View and organize the Microsoft Defender for Endpoint Incidents queue](view-incidents-queue.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
