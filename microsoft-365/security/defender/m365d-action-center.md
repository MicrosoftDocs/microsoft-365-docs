---
title: Go to the Action center to view and approve your automated investigation and remediation tasks
description: Use the Action center to view details about automated investigation and approve pending actions
keywords: Action center, threat protection, investigation, alert, pending, automated, detection
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

# The Action center

**Applies to:**
- Microsoft 365 Defender

The Action center provides a "single pane of glass" experience for incident and alert tasks such as:

- Approving pending remediation actions.
- Viewing an audit log of already approved remediation actions.
- Reviewing completed remediation actions.

Because the Action center provides a comprehensive view of Microsoft 365 Defender at work, your security operations team can operate more effectively and efficiently.

## The unified Action center

The unified Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) lists pending and completed remediation actions for your devices, email & collaboration content, and identities in one location.

:::image type="content" source="../../media/m3d-action-center-unified.png" alt-text="The unified Action center in the Microsoft 365 Defender portal." lightbox="../../media/m3d-action-center-unified.png":::

For example: 

- If you were using the Action center in the Microsoft Defender Security Center ([https://securitycenter.windows.com/action-center](https://securitycenter.windows.com/action-center)), try the unified Action center in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.
- If you were already using the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, you'll see several improvements in the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)).

The unified Action center brings together remediation actions across Defender for Endpoint and Defender for Office 365. It defines a common language for all remediation actions and provides a unified investigation experience. Your security operations team has a "single pane of glass" experience to view and manage remediation actions.  

You can use the unified Action center if you have appropriate permissions and one or more of the following subscriptions:

- [Defender for Endpoint](../defender-endpoint/microsoft-defender-endpoint.md)
- [Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)
- [Microsoft 365 Defender](microsoft-365-defender.md)

> [!TIP]
> To learn more, see [Requirements](./prerequisites.md).

You can navigate to the list of actions pending approval in two different ways:

- Go to [https://security.microsoft.com/action-center](https://security.microsoft.com/action-center); or
- In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the Automated investigation & response card, select **Approve in Action Center**.

## Using the Action center

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in. 

2. In the navigation pane under **Actions and submissions**, choose **Action center**. Or, in the Automated investigation & response card, select **Approve in Action Center**.

3. Use the **Pending actions** and **History** tabs. The following table summarizes what you'll see on each tab:

   |Tab  |Description  |
   |---------|---------|
   |**Pending**     | Displays a list of actions that require attention. You can approve or reject actions one at a time, or select multiple actions if they have the same type of action (such as Quarantine file). <br/><br/>Make sure to review and approve (or reject) pending actions as soon as possible so that your automated investigations can complete in a timely manner.       |
   |**History**     | Serves as an audit log for actions that were taken, such as: <br/>- Remediation actions that were taken as a result of automated investigations <br/>- Remediation actions that were taken on suspicious or malicious email messages, files, or URLs<br/>- Remediation actions that were approved by your security operations team <br/>- Commands that were run and remediation actions that were applied during Live Response sessions<br/>- Remediation actions that were taken by your antivirus protection<br/><br/>Provides a way to undo certain actions (see [Undo completed actions](m365d-autoir-actions.md#undo-completed-actions)).        |

4. You can customize, sort, filter, and export data in the Action center.

   :::image type="content" source="../../media/m3d-action-center-columnsfilters.png" alt-text="Screenshot that shows the sort, filter, and customize capabilities of the Action center." lightbox="../../media/m3d-action-center-columnsfilters.png":::

   - Select a column heading to sort items in ascending or descending order.
   - Use the time period filter to view data for the past day, week, 30 days, or 6 months.
   - Choose the columns that you want to view.
   - Specify how many items to include on each page of data.
   - Use filters to view just the items you want to see.
   - Select **Export** to export results to a .csv file.

## Actions tracked in the Action center

All actions, whether they're pending approval or were already taken, are tracked in the Action center. Available actions include the following:

- Collect investigation package 
- Isolate device (this action can be undone) 
- Offboard machine 
- Release code execution 
- Release from quarantine 
- Request sample 
- Restrict code execution (this action can be undone) 
- Run antivirus scan 
- Stop and quarantine 
- Contain devices from the network

In addition to remediation actions that are taken automatically as a result of [automated investigations](m365d-autoir.md), the Action center also tracks actions your security team has taken to address detected threats, and actions that were taken as a result of threat protection features in Microsoft 365 Defender. For more information about automatic and manual remediation actions, see [Remediation actions](m365d-remediation-actions.md).

## Viewing action source details

(**NEW!**) The improved Action center now includes an **Action source** column that tells you where each action came from. The following table describes possible **Action source** values:

| Action source value | Description |
|:-----|:---|
| **Manual device action** | A manual action taken on a device. Examples include [device isolation](../defender-endpoint/respond-machine-alerts.md#isolate-devices-from-the-network) or [file quarantine](../defender-endpoint/respond-file-alerts.md#stop-and-quarantine-files). |
| **Manual email action** | A manual action taken on email. An example includes soft-deleting email messages or [remediating an email message](../office-365-security/remediate-malicious-email-delivered-office-365.md). |
| **Automated device action** | An automated action taken on an entity, such as a file or process. Examples of automated actions include sending a file to quarantine, stopping a process, and removing a registry key. (See [Remediation actions in Microsoft Defender for Endpoint](../defender-endpoint/manage-auto-investigation.md#remediation-actions).) |
| **Automated email action** | An automated action taken on email content, such as an email message, attachment, or URL. Examples of automated actions include soft-deleting email messages, blocking URLs, and turning off external mail forwarding. (See [Remediation actions in Microsoft Defender for Office 365](../office-365-security/air-remediation-actions.md).) |
| **Advanced hunting action** | Actions taken on devices or email with [advanced hunting](./advanced-hunting-overview.md). |
| **Explorer action** | Actions taken on email content with [Explorer](../office-365-security/threat-explorer-about.md). |
| **Manual live response action** | Actions taken on a device with [live response](../defender-endpoint/live-response.md). Examples include deleting a file, stopping a process, and removing a scheduled task. |
| **Live response action** | Actions taken on a device with [Microsoft Defender for Endpoint APIs](../defender-endpoint/management-apis.md#microsoft-defender-for-endpoint-apis). Examples of actions include isolating a device, running an antivirus scan, and getting information about a file. |

## Required permissions for Action center tasks

To perform tasks, such as approving or rejecting pending actions in the Action center, you must have permissions assigned as listed in the following table:

|Remediation action |Required roles and permissions |
|--|----|
|Microsoft Defender for Endpoint remediation (devices) |**Security Administrator** role assigned in either Azure Active Directory (Azure AD) ([https://portal.azure.com](https://portal.azure.com)) or the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>--- or ---<br/>**Active remediation actions** role assigned in Microsoft Defender for Endpoint <br/> <br/> To learn more, see the following resources: <br/>- [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference)<br/>- [Create and manage roles for role-based access control (Microsoft Defender for Endpoint)](../defender-endpoint/user-roles.md)  |
|Microsoft Defender for Office 365 remediation (Office content and email)  |**Security Administrator** role assigned in either Azure AD ([https://portal.azure.com](https://portal.azure.com)) or the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>--- and --- <br/>**Search and Purge** role assigned in the Microsoft 365 Defender > [Email & collaboration roles](https://security.microsoft.com/emailandcollabpermissions) <br/><br/>**IMPORTANT**: If you have the **Security Administrator** role assigned only in the Microsoft 365 Defender > [Email & collaboration roles](https://security.microsoft.com/emailandcollabpermissions), you will not be able to access the Action center or Microsoft 365 Defender capabilities. You must have the Security Administrator role assigned in Azure AD or the Microsoft 365 admin center. <br/><br/>To learn more, see the following resources: <br/>- [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference)<br/>- [Permissions in the Security & Compliance Center](/microsoft-365/security/office-365-security/scc-permissions) |

> [!TIP]
> Users who have the **Global Administrator** role assigned in Azure AD can approve or reject any pending action in the Action center. However, as a best practice, your organization should limit the number of people who have the **Global Administrator** role assigned. We recommend using the **Security Administrator**, **Active remediation actions**, and **Search and Purge** roles listed in the preceding table for Action center permissions.

## Next step 

- [View and manage remediation actions](m365d-autoir-actions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
