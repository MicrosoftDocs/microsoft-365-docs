---
title: The Teams message entity panel
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: high
search.appverid:
  - MET150
  - MOE150
ms.assetid: e100fe7c-f2a1-4b7d-9e08-622330b83653
ms.collection:
  - m365-security
  - tier1
  - highpri
description: Describes the Teams message entity panel for Microsoft Teams in Microsoft Defender for Office 365 Plan 2, how it does post-breach work like ZAP and Safe Links and gives admins a single pane of glass on Teams chat and channel threats like suspicious URLs.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 11/16/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison" target="_blank">Microsoft Defender for Office 365 plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# The Teams message entity panel in Microsoft Defender for Office 365 Plan 2

[!include[Prerelease information](../../includes/prerelease.md)]

Similar to the [The Email summary panel](mdo-email-entity-page.md#the-email-summary-panel) for email messages, Microsoft 365 organizations that have Microsoft Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5) have the _Microsoft Teams message entity panel_ in the Microsoft Defender portal. The Teams message entity panel is a details flyout includes all Microsoft Teams data about suspicious or malicious chats, channels, and group chats on a single, actionable panel.

This article explains the information and actions on the Teams message entity panel.

## Permissions and licensing for the Teams message entity panel

To use the Email entity page, you need to be assigned permissions. You have the following options:

- [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Global Administrator**, **Security Administrator**, or **Quarantine Administrator** role groups.
- [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership these roles gives users the required permissions _and_ permissions for other features in Microsoft 365:
  - _Full access_: Membership in the **Global Administrator** or **Security Administrator** roles.
  - _Read-only access_: Membership in the **Global Reader** or **Security Reader** roles.

## Where to find the Teams message entity panel

There are no direct links to the Teams message entity panel from the top levels of the Defender portal. Instead, the Teams message entity panel is available in the following locations:

- From the **Quarantine** page at <https://security.microsoft.com/quarantine>: Select the **Teams message** tab \> select an entry by clicking anywhere in the row other than the check box. The details flyout that opens is the Teams message entity panel.

- From the **Submissions** page at <https://security.microsoft.com/reportsubmission>:
  - Select the **Teams messages** tab \> select an entry by clicking anywhere in the row other than the check box.
  - Select the **User reported** tab \> select a Teams entry by clicking anywhere in the row other than the check box. You can filter the entries by selecting :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** \> **Message type** \> **Teams**. The details flyout that opens is the Teams message entity panel.

## What's on the Teams message entity panel

The following information is available at the top of the Teams message entity panel:

- The title of the flyout is the subject or the first 100 characters of the Teams message.
- The current message verdict.
- The number of links in the message.
- The actions that are available at the top of the flyout depend on where you opened the Teams message entity panel.

> [!TIP]
> To see details about other Teams messages without leaving the Email summary panel of the current message, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

The next sections in the Teams message entity panel depend on where you opened it:

- [Quarantined Teams messages](quarantine-admin-manage-messages-files.md#view-quarantined-teams-message-details)
- [View Teams admin submission details](submissions-admin.md#view-teams-admin-submission-details)
- [View user reported Teams message details in Defender for Office 365 Plan 2](submissions-admin.md#view-user-reported-teams-message-details-in-defender-for-office-365-plan-2)

The rest of the Teams message entity panel contains the following information, regardless of where you opened it:

- **Message details** section:
  - **Threats**
  - **Message location**
  - **Sender address**
  - **Time received**
  - **Detection tech**
  - **Teams message ID**: You can use this value as an identifier of a Teams message in Microsoft Defender for Office 365.
- **Sender** section:
  - The sender's name and email address
  - **Domain**
  - **External**: The value **Yes** indicates the message was sent between an internal user and an external user.
- **Participants** section: Available for messages in chats.
  - **Conversation type**
  - **Chat name**
  - **Name and email**: Contains the name and email addresses of all of the participants (including the sender). If there are more than 10 participants, it also links to a secondary panel that lists all the participants in the chat at the time of the suspected threat.
- **Channel details** section: Available for messages in channels
  - **Conversation type**
  - **Conversation name**: Contains the name of the channel.
  - **Name and email**: Contains the name and address of the channel.
- **URLs** section:
  - **Name and type** Contains the URL from the Teams message.
  - **Threat**

  If the message has more than 10 URLs, select **View all URLs** to see all of them.

:::image type="content" source="../../media/teams-message-entity-panel-shown-in-quarantine.png" alt-text="Screenshot of the Teams Message Entity panel as it is seen in Quarantine." lightbox="../../media/teams-message-entity-panel-shown-in-quarantine.png":::

## For more information

[The Microsoft Defender for Office 365 Email Entity Page and how it works](mdo-email-entity-page.md)

[Safe Links in Microsoft Defender for Office 365](safe-links-about.md)

[Zero-hour auto purge (ZAP) in Microsoft Teams](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams)
