---
title: View and manage actions in the Action center
description: Use the Action center to view and manage remediation actions
keywords: action, center, autoair, automated, investigation, response, remediation
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
ms.date: 08/04/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: how-to
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
---

# View and manage actions in the Action center

**Applies to:**
- Microsoft 365 Defender

Threat protection features in Microsoft 365 Defender can result in certain remediation actions. Here are some examples:

- [Automated investigations](m365d-autoir.md) can result in remediation actions that are taken automatically or await your approval.
- Antivirus, antimalware, and other threat protection features can result in remediation actions, such as blocking a file, URL, or process, or sending an artifact to quarantine.
- Your security operations team can take remediation actions manually, such as during [advanced hunting](advanced-hunting-overview.md) or while investigating [alerts](investigate-alerts.md) or [incidents](investigate-incidents.md).

> [!NOTE]
> You must have [appropriate permissions](m365d-action-center.md#required-permissions-for-action-center-tasks) to approve or reject remediation actions. For more information, see the [prerequisites](m365d-configure-auto-investigation-response.md#prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender).

To navigate to the Action center, take one of the following steps:

- Go to [https://security.microsoft.com/action-center](https://security.microsoft.com/action-center); or
- In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the Automated investigation & response card, select **Approve in Action Center**.

## Review pending actions in the Action center

It's important to approve (or reject) pending actions as soon as possible so that your automated investigations can proceed and complete in a timely manner. 

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in. 

2. In the navigation pane under Actions and submissions, choose **Action center**.

3. In the Action center, on the **Pending** tab, select an item in the list. Its flyout pane opens. Here's an example.

   :::image type="content" source="../../media/air-actioncenter-itemselected.png" alt-text="The options to approve or reject an action" lightbox="../../media/air-actioncenter-itemselected.png":::

4. Review the information in the flyout pane, and then take one of the following steps:
   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.
   - Select **Go hunt** to go into [Advanced hunting](advanced-hunting-overview.md).

> [!TIP]
> You now have more options to review and approve/reject a remediation action. In addition to using the Action center, you can also approve or reject a remediation action while reviewing an incident. For more information, see [Approve or reject remediation actions](./investigate-incidents.md#approve-or-reject-remediation-actions).

## Undo completed actions

If you've determined that a device or a file is not a threat, you can undo remediation actions that were taken, whether those actions were taken automatically or manually. In the Action center, on the **History** tab, you can undo any of the following actions:  

| Action source | Supported Actions |
|:---|:---|
| - Automated investigation <br/>- Microsoft Defender Antivirus <br/>- Manual response actions | - Isolate device <br/>- Restrict code execution <br/>- Quarantine a file <br/>- Remove a registry key <br/>- Stop a service <br/>- Disable a driver <br/>- Remove a scheduled task |

### Undo one remediation action

1. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) and sign in.

2. On the **History** tab, select an action that you want to undo.

3. In the pane on the right side of the screen, select **Undo**.

### Undo multiple remediation actions

1. Go to the Action center (https://security.microsoft.com/action-center) and sign in.

2. On the **History** tab, select the actions that you want to undo. Make sure to select items that have the same Action type. A flyout pane opens.

3. In the flyout pane, select **Undo**.

### To remove a file from quarantine across multiple devices 

1. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) and sign in.

2. On the **History** tab, select a file that has a **Quarantine file** Action type.

3. In the pane on the right side of the screen, select **Apply to X more instances of this file**, and then select **Undo**.

## Next steps

- [View the details and results of an automated investigation](m365d-autoir-results.md)
- [Address false positives or false negatives](m365d-autoir-report-false-positives-negatives.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
