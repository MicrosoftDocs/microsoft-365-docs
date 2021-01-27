---
title: Approve or reject pending actions following an automated investigation
description: Use the Action Center to manage actions related to automated investigation and response
keywords: action, center, autoair, automated, investigation, response, remediation
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365initiative-m365-defender
ms.topic: conceptual
ms.custom: autoir
ms.reviewer: evaldm, isco
ms.date: 01/27/2021
ms.technology: m365d
---

# Approve or reject pending actions following an automated investigation

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

When an automated investigation runs, it can result in one or more [remediation actions](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-remediation-actions) that require approval to proceed. For example, a cluster of email messages might need to be deleted, or a quarantined file might need to be removed. It's important to approve (or reject) pending actions as soon as possible so that your automated investigations can proceed and complete in a timely manner. 

> [!NOTE]
> You must have [appropriate permissions](mtp-action-center.md#required-permissions-for-action-center-tasks) to approve or reject remediation actions. For more information, see [Prerequisites for automated investigation and response in Microsoft 365 Defender](mtp-configure-auto-investigation-response.md#prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender).

In the improved Microsoft 365 security center, the Action center brings together pending and completed actions across your devices, email & collaboration content, and identities. This means that all remediation actions, whether they are completed or pending approval, or whether they are taken manually or automatically, are viewable in one portal: the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)).

Pending actions require approval before steps are taken to remediate detected entities. To review or approve pending actions, you can use either the [Pending tab in the Action center](#review-a-pending-action-in-the-action-center) or [while viewing the details of an investigation](#review-a-pending-action-in-the-investigation-details-view).

## Review a pending action in the Action center

![Approve or reject an action](../../media/air-actioncenter-itemselected.png)

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 
2. In the navigation pane, choose **Action center**. 
3. In the Action Center, on the **Pending** tab, select an item in the list. Its flyout pane opens.
4. Review the information in the flyout pane, and then take one of the following steps:
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.
   - Select **Go hunt** to go into [Advanced hunting](advanced-hunting-overview.md). 

## Review a pending action in the investigation details view

![Investigation details](../../media/mtp-air-investdetails.png)

1. On an [investigation details](mtp-autoir-results.md) page, select the **Pending actions** (or **Actions**) tab. Items that are pending approval are listed here.

2. Select an item in the list, and then choose **Approve** or **Reject**.

## Undo completed actions

If you’ve determined that a device or a file is not a threat, you can undo remediation actions that were taken, whether those actions were taken automatically or manually. In the Action center, on the **History** tab, you can undo any of the following actions:  

| Action source | Supported Actions |
|:---|:---|
| - Automated investigation <br/>- Microsoft Defender Antivirus <br/>- Manual response actions | - Isolate device <br/>- Restrict code execution <br/>- Quarantine a file <br/>- Remove a registry key <br/>- Stop a service <br/>- Disable a driver <br/>- Remove a scheduled task |

### To undo a remediation action

1. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) and sign in.

2. On the **History** tab, select an action that you want to undo.

3. In the pane on the right side of the screen, select **Undo**.

### To remove a file from quarantine across multiple devices 

1. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) and sign in.

2. On the **History** tab, select a file that has the Action type **Quarantine file**.

3. In the pane on the right side of the screen, select **Apply to X more instances of this file**, and then select **Undo**.

## Next steps

- [View the details and results of an automated investigation](mtp-autoir-results.md)

- [Learn how to handle false positives/negatives (if you get one)](mtp-autoir-report-false-positives-negatives.md)
