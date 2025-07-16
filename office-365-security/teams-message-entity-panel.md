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
description: Describes the Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365, how it does post-breach work like ZAP and Safe Links and gives admins a single pane of glass on Teams chat and channel threats like suspicious URLs.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 11/16/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# The Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365

[!include[Prerelease information](../../includes/prerelease.md)]

The Teams Message Entity Panel in Microsoft Defender for Office 365 puts all Microsoft Teams data about suspicious or malicious chats and channels on a *single, actionable panel*.

The Teams Message Entity Panel is the single source of Teams message metadata for Security Operations team (SecOps) review. In other words, you can see and review threats coming from the following locations in one place:

- Chats
- Group chats
- Channels

## Use the Teams Message Entity Panel in Microsoft Defender for Office 365

The Teams Message Entity Panel is available for customers with Microsoft 365 E5 and Microsoft Defender for Office 365 Plan 2 subscriptions across all experiences, including:

- Quarantined Teams messages.
- Admin submission of Teams messages.
- User reported Teams messages.

To access the Teams Message Entity Panel, you need to be assigned permissions. You have the following options:

- [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Global Administrator**, **Security Administrator**, or **Quarantine Administrator** role group.
- [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership these roles gives users the required permissions _and_ permissions for other features in Microsoft 365:
  - Membership in the **Global Administrator** or **Security Administrator** roles.
  - _Read-only access_: Membership in the **Global Reader** or **Security Reader** roles.

To open the Teams Message Entity Panel, do any of the following steps.

### From quarantine

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Review** \> **Quarantine** \> **Teams messages** tab. Or, to go directly to the **Teams messages** tab on the **Quarantine** page, use <https://security.microsoft.com/quarantine?viewid=Teams>.

2. On the **Teams messages** tab, select the Teams message by clicking anywhere in the row other than the check box.

3. The details flyout that opens is the Teams Message Entity Panel.

### From admin submissions

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions** \> **Teams messages** tab. Or, to go directly to the **Teams messages** tab on the **Submissions** page, use <https://security.microsoft.com/reportsubmission?viewid=teams>.

2. On the **Teams messages** tab, select the Teams message by clicking anywhere in the row other than the check box.

3. The details flyout that opens is the Teams Message Entity Panel.

### From user reported messages

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions** \> **User reported** tab. Or, to go directly to the **User reported** tab on the **Submissions** page, use <https://security.microsoft.com/reportsubmission?viewid=user>.

2. On the **Teams messages** tab, select the Teams message by clicking anywhere in the row other than the check box. You can filter the messages by selecting :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** \> **Message type** \> **Teams**.

3. The details flyout that opens is the Teams Message Entity Panel.

## Teams Message Entity Panel walkthrough

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

The actions are available at the top of the panel. For more information, see [Actions for user reported messages in Defender for Office 365 Plan 2](submissions-admin.md#actions-for-user-reported-messages-in-defender-for-office-365-plan-2).

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
