---
title: Review remediation actions following automated investigations
description: Review and approve (or reject) remediation actions following an automated investigation.
ms.service: microsoft-365-security
author: dansimp
ms.author: dansimp
ms.localizationpriority: medium
ms.date: 07/13/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: how-to
ms.subservice: mde
search.appverid: met150
---

# Review remediation actions following an automated investigation

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

## Remediation actions

When an [automated investigation](automated-investigations.md) runs, a verdict is generated for each piece of evidence investigated. Verdicts can be *Malicious*, *Suspicious*, or *No threats found*.

Depending on

- the type of threat,
- the resulting verdict, and
- how your organization's [device groups](/microsoft-365/security/defender-endpoint/machine-groups) are configured,

remediation actions can occur automatically or only upon approval by your organization's security operations team.

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

Here are a few examples:

- **Example 1**: Fabrikam's device groups are set to **Full - remediate threats automatically** (the recommended setting). In this case, remediation actions are taken automatically for artifacts that are considered to be malicious following an automated investigation (see [Review completed actions](#review-completed-actions)).

- **Example 2**: Contoso's devices are included in a device group that is set for **Semi - require approval for any remediation**. In this case, Contoso's security operations team must review and approve all remediation actions following an automated investigation (see [Review pending actions](#review-pending-actions)).

- **Example 3**: Tailspin Toys has their device groups set to **No automated response** (not recommended). In this case, automated investigations do not occur. No remediation actions are taken or pending, and no actions are logged in the [Action center](/microsoft-365/security/defender-endpoint/auto-investigation-action-center#the-action-center) for their devices (see [Manage device groups](/microsoft-365/security/defender-endpoint/machine-groups#manage-device-groups)).

Whether taken automatically or upon approval, an automated investigation and remediation can result in one or more of the remediation actions:

- Quarantine a file
- Remove a registry key
- Kill a process
- Stop a service
- Disable a driver
- Remove a scheduled task

## Review pending actions

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in.

2. In the navigation pane, choose **Action center**.

3. Review the items on the **Pending** tab.

4. Select an action to open its flyout pane.

5. In the flyout pane, review the information, and then take one of the following steps:

   - Select **Open investigation page** to view more details about the investigation.
   - Select **Approve** to initiate a pending action.
   - Select **Reject** to prevent a pending action from being taken.
   - Select **Go hunt** to go into [Advanced hunting](advanced-hunting-overview.md).

### Approve or reject remediation actions

For incidents with a remediation status of **Pending approval**, you can also approve or reject a remediation action from within the incident.

1. In the navigation pane, go to **Incidents & alerts** \> **Incidents**.
2. Filter on **Pending action** for the Automated investigation state (optional).
3. Select an incident name to open its summary page.
4. Select the **Evidence and Response** tab.
5. Select an item in the list to open its flyout pane.
6. Review the information, and then take one of the following steps:
   - Select the Approve pending action option to initiate a pending action.
   - Select the Reject pending action option to prevent a pending action from being taken.

:::image type="content" source="../../media/defender//m365-defender-approve-reject-action.png" alt-text="The Approve\Reject option in the Evidence and Response management pane for an incident in the Microsoft 365 Defender portal" lightbox="../../media/defender//m365-defender-approve-reject-action.png":::

## Review completed actions

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in.

2. In the navigation pane, choose **Action center**.

3. Review the items on the **History** tab.

4. Select an item to view more details about that remediation action.

## Undo completed actions

If you've determined that a device or a file is not a threat, you can undo remediation actions that were taken, whether those actions were taken automatically or manually. In the Action center, on the **History** tab, you can undo any of the following actions:

|Action source|Supported Actions|
|---|---|
|<ul><li>Automated investigation</li><li>Manual response actions (see the note below)</li><li>Microsoft Defender Antivirus</li></ul>|<ul><li>Disable a driver</li><li>Isolate device</li><li>Quarantine a file</li><li>Remove a registry key</li><li>Remove a scheduled task</li><li>Restrict code execution</li><li>Stop a service</li></ul>|

> [!NOTE]
> [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md) and [Microsoft Defender for Business](../defender-business/mdb-overview.md) include only the following manual response actions:
>
> - Run antivirus scan
> - Isolate device
> - Stop and quarantine a file
> - Add an indicator to block or allow a file
>
> To learn more, see [Compare Microsoft Defender for Endpoint plans](defender-endpoint-plan-1-2.md) and [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md).

### To undo multiple actions at one time

1. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) and sign in.

2. On the **History** tab, select the actions that you want to undo. Make sure to select items that have the same Action type. A flyout pane opens.

3. In the flyout pane, select **Undo**.

### To remove a file from quarantine across multiple devices

1. Go to the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) and sign in.

2. On the **History** tab, select an item that has the Action type **Quarantine file**.

3. In the flyout pane, select **Apply to X more instances of this file**, and then select **Undo**.

## Automation levels, automated investigation results, and resulting actions

Automation levels affect whether certain remediation actions are taken automatically or only upon approval. Sometimes your security operations team has more steps to take, depending on the results of an automated investigation. The following table summarizes automation levels, results of automated investigations, and what to do in each case.

|Device group setting|Automated investigation results|What to do|
|---|---|---|
|**Full - remediate threats automatically**<br/>(recommended)|A verdict of *Malicious* is reached for a piece of evidence. <p> Appropriate remediation actions are taken automatically.|[Review completed actions](#review-completed-actions) |
|**Semi - require approval for any remediation**|A verdict of either *Malicious* or *Suspicious* is reached for a piece of evidence. <p> Remediation actions are pending approval to proceed.|[Approve (or reject) pending actions](#review-pending-actions)|
|**Semi - require approval for core folders remediation**|A verdict of *Malicious* is reached for a piece of evidence. <p> If the artifact is a file or executable and is in an operating system directory, such as the Windows folder or the Program files folder, then remediation actions are pending approval. <p> If the artifact is *not* in an operating system directory, remediation actions are taken automatically.|<ol><li>[Approve (or reject) pending actions](#review-pending-actions)</li><li>[Review completed actions](#review-completed-actions)</li></ol>|
|**Semi - require approval for core folders remediation**|A verdict of *Suspicious* is reached for a piece of evidence. <p> Remediation actions are pending approval.|[Approve (or reject) pending actions](#review-pending-actions).|
|**Semi - require approval for non-temp folders remediation**|A verdict of *Malicious* is reached for a piece of evidence. <p> If the artifact is a file or executable that is not in a temporary folder, such as the user's downloads folder or temp folder, remediation actions are pending approval. <p> If the artifact is a file or executable that *is* in a temporary folder, remediation actions are taken automatically.|<ol><li>[Approve (or reject) pending actions](#review-pending-actions)</li><li>[Review completed actions](#review-completed-actions)</li></ol>|
|**Semi - require approval for non-temp folders remediation**|A verdict of *Suspicious* is reached for a piece of evidence. <p> Remediation actions are pending approval.|[Approve (or reject) pending actions](#review-pending-actions)|
|Any of the **Full** or **Semi** automation levels|A verdict of *No threats found* is reached for a piece of evidence. <p> No remediation actions are taken, and no actions are pending approval.|[View details and results of automated investigations](/microsoft-365/security/defender-endpoint/auto-investigation-action-center)|
|**No automated response** (not recommended)|No automated investigations run, so no verdicts are reached, and no remediation actions are taken or awaiting approval.|[Consider setting up or changing your device groups to use **Full** or **Semi** automation](/microsoft-365/security/defender-endpoint/machine-groups)|

All verdicts are tracked in the [Action center](auto-investigation-action-center.md#the-unified-action-center).

> [!NOTE]
> In [Defender for Business](../defender-business/mdb-overview.md), automated investigation and remediation capabilities are preset to use **Full - remediate threats automatically**. These capabilities are applied to all devices by default.

## Next steps

- [Learn about live response capabilities](live-response.md)
- [Proactively hunt for threats with advanced hunting](advanced-hunting-overview.md)
- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)

## See also

- [Overview of automated investigations](automated-investigations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
