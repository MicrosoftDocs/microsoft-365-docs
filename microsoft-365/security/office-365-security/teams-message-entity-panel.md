---
title: The Teams Message Entity Panel in Microsoft Defender for Office 365
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
description: Describes the Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365 Plan 2, how it does post-breach work like ZAP and Safe Links and gives admins a single pane of glass on Teams chat and channel threats like suspicious URLs.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 11/16/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison" target="_blank">Microsoft Defender for Office 365 plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# The Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365

[!include[Prerelease information](../../includes/prerelease.md)]

Similar to the [The Email summary panel](mdo-email-entity-page.md#the-email-summary-panel) for email messages, Microsoft 365 organizations that have Microsoft Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5) have the _Microsoft Teams message entity panel_ in the Microsoft Defender portal. The Teams message entity panel is a details flyout includes all Microsoft Teams data about suspicious or malicious chats, channels, and group chats on a single, actionable panel.

This article explains the information and actions on the Teams message entity panel.

## Permissions and licensing for the Teams message entity panel

To use the email entity page, you need to be assigned permissions. You have the following options:

- [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Global Administrator**, **Security Administrator**, or **Quarantine Administrator** role groups.
- [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership these roles gives users the required permissions _and_ permissions for other features in Microsoft 365:
  - _Full access_: Membership in the **Global Administrator** or **Security Administrator** roles.
  - _Read-only access_: Membership in the **Global Reader** or **Security Reader** roles.

## Where to find the Teams message entity panel

There are no direct links to the Teams message entity panel from the to levels of the Defender portal. Instead, the Teams message entity panel is available in the following locations:

- From the **Quarantine** page at <https://security.microsoft.com/quarantine>: Select the **Teams message** tab \> select an entry by clicking anywhere in the row other than the check box. The details flyout that opens is the Teams message entity panel.

- From the **Submissions** page at <https://security.microsoft.com/reportsubmission>:
  - Select the **Teams messages** tab \> select an entry by clicking anywhere in the row other than the check box.
  - Select the **User reported** tab \> select a Teams entry by clicking anywhere in the row other than the check box. You can filter the entries by selecting :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** \> **Message type** \> **Teams**. The details flyout that opens is the Teams message entity panel.

## What's on the Teams message entity panel

The following information is available at the top of the Teams message entity panel:

- The title of the flyout is the message subject or the first 100 characters of the body of the message.
- The current message verdict.
- The number of links in the message.
- The actions that are available at the top of the flyout are described at the following links:
  - [Take action on quarantined messages in Microsoft Teams](quarantine-admin-manage-messages-files.md#take-action-on-quarantined-messages-in-microsoft-teams).
  - [Actions for admin submissions in Defender for Office 365 Plan 2](submissions-admin.md#actions-for-admin-submissions-in-defender-for-office-365)

> [!TIP]
> To see details about other messages without leaving the Email summary panel of the current message, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

The rest of the Email summary panel contains the following information:

The current message verdict.

- **Delivery details** section:
  - **Original threats**
  - **Latest threats**
  - **Original location**
  - **Latest delivery location**
  - **Delivery action**
  - **Detection technologies**
  - **Primary override : Source**

- **Email details** section:
  - **Sender display name**
  - **Sender address**
  - **Sender email from address**
  - **Sent on behalf of**
  - **Return path**
  - **Sender IP**
  - **Location**
  - **Recipient(s)**
  - **Time received**
  - **Directionality**
  - **Network message ID**
  - **Internet message ID**
  - **Campaign ID**
  - **DMARC**
  - **DKIM**
  - **SPF**
  - **Composite authentication**

- **URLs** section: Details about any URLs in the message:
  - **URL**
  - **Threat** status

  If the message has more than three URLs, select **View all URLs** to see all of them.

- **Attachments** section: Details about any file attachments in the message:
  - **Attachment name**
  - **Threat**
  - **Detection tech / Malware family**

  If the message has more than three attachments, select **View all attachments** to see all of them.









The panel is designed for easy use.

Selecting a Teams message across any Microsoft Defender for Office 365 experience opens the Teams Message Entity Panel. The following sections are available:

- **Flyout header**:
  - The message subject or the first 100 characters of the body of the message.
  - The current message verdict.
  - The number of URLs present in the message.
- **Message details**:
  - **Threats**
  - **Message location**
  - **Sender address**
  - **Time received**
  - **Detection tech**
  - **Teams message ID**: You can use this value as an identifier of a Teams message in Microsoft Defender for Office 365.
- **Sender**:
  - The sender's name and email address
  - **Domain**
  - **External**: The value **Yes** indicates the message was sent between an internal user and an external user.
- **Participants**: Available for messages in chats
  - **Conversation type**
  - **Chat name**
  - **Name and email**:  Contains the name and email addresses of all of the participants (including the sender). If there are more than 10 participants, it also links to a secondary panel that lists all the participants in the chat at the time of the suspected threat.
- **Channel details**: Available for messages in channels
  - **Conversation type**
  - **Conversation name**: Contains the name of the channel.
  - **Name and email**: Contains the name and address of the channel.
- **URLs**:
  - **Name and type** Contains the URL from the Teams message.
  - **Threat**

  If there are more than 10 URLs, it also links to a secondary panel that lists all the URLs in the chat and their associated threats.

:::image type="content" source="../../media/teams-message-entity-panel-shown-in-quarantine.png" alt-text="Screenshot of the Teams Message Entity panel as it is seen in Quarantine." lightbox="../../media/teams-message-entity-panel-shown-in-quarantine.png":::

In addition to the previous sections, you also see specific sections based on where you open the Teams Message Entity Panel:

### Quarantine

The quarantine actions are available at the top of the panel. For more information on different quarantine actions, see [Use the Microsoft Defender portal to manage Microsoft Teams quarantined messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-defender-portal-to-manage-microsoft-teams-quarantined-messages).

- **Quarantine details**: For more information, see [View quarantined message details in Microsoft Teams](quarantine-admin-manage-messages-files.md#view-quarantined-message-details-in-microsoft-teams).
    - **Expires**: The date/time when the message will be automatically and permanently deleted from quarantine.
    - **Time received**
    - **Quarantine reason**: The reason the message is in quarantine.
    - **Release status**: Indicates if the message has been released to all participants that received the message.
    - **Policy type**: This value is **None**.
    - **Policy name**: This value is **Teams protection policy**.
    - **Quarantine policy**: The name of quarantine policy that was applied to the message.

### Admin submissions

For more information, see [View Teams admin submissions to Microsoft](submissions-admin.md#view-teams-admin-submissions-to-microsoft).

- **Submission results**:
  - **Result**
  - **Recommended steps for email submissions**

- **Submission details**
  - **Date submitted**
  - **Submission name**
  - **Submission type**: The value is **Teams**
  - **Reason for submitting**
  - **Submission ID**
  - **Submitted by**
  - **Submission status**

### User reported messages

The actions are available at the top of the panel. For more information, see [Actions for user reported messages in Defender for Office 365](submissions-admin.md#actions-for-user-reported-messages-in-defender-for-office-365).

For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft).

- **Submission results**:
  - **Result**
  - **Recommended steps for email submissions**

- **Reported message details**
  - **Date reported**
  - **Submission name**
  - **Reported reason**
  - **Message reported ID**
  - **Reported by**
  - **Phish simulation**
  - **Converted to admin submission**

## For more information

[The Microsoft Defender for Office 365 Email Entity Page and how it works](mdo-email-entity-page.md)

[Safe Links in Microsoft Defender for Office 365](safe-links-about.md)

[Zero-hour auto purge (ZAP) in Microsoft Teams](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams)
