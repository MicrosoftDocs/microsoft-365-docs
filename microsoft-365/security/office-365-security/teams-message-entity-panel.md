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
description: Describes the Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365, how it does post-breach work like ZAP and Safelinks and gives admins a single pane of glass on Teams chat and channel threats like suspicious URLs.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# The Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365

[!include[Prerelease information](../../includes/prerelease.md)]

The Teams Message Entity Panel in Microsoft Defender for Office 365 puts all Microsoft Teams data about suspicious or malicious chats and channels on a *single, actionable panel*.

The Teams Message Entity Panel is the single source of Teams message metadata for Security Operations team (SecOps) review. In other words, any threat coming from:

- chats
- meeting chats
- group chats

can be seen and reviewed in one place.

## Using the Teams Message Entity Panel in Microsoft Defender for Office 365

The Teams Message Entity Panel will be available for customers with E5 and P2 subscriptions across all experiences, including:

- Quarantine
- Submissions
- Reporting

The steps to use the Teams Message Entity Panel remain the same wherever you find Teams message details.

- Navigate to the [Microsoft 365 Defender portal](https://security.microsoft.com).
- Select **Email & collaboration** > **Quarantine**.

Or, to go directly to the **Quarantine** page, use [this link](https://security.microsoft.com/quarantine).

- In **Quarantine**, select **Teams messages**.
- Select the subject of an email you're investigating.

The Teams Message Entity Panel for that message will open.

> [!NOTE]
> The permissions needed to view and use this page are the same as to view **Quarantine** and **Submissions**. SecOps users must also be a member of Global Admin or Global Reader, or Security Admin or Security Reader. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).


## Teams Message Entity Panel Walkthrough

The panel is designed for easy use.

Clicking on a Teams message across any Microsoft Defender for Office 365 experience opens the Teams Message Entity Panel.

The **header section** contains the subject of the message (if there is one) or it displays the first 100 characters of the body of the message. The current verdict of the message can also be found there, as well as a count of URLs present in the message.

:::image type="content" source="../../media/teams-message-entity-panel-shown-in-quarantine.png" alt-text="Screenshot of the Teams Message Entity panel as it is seen in Quarantine." lightbox="../../media/teams-message-entity-panel-shown-in-quarantine.png":::

The **message details** section contains the threats suspected, confidence level, and the message location. This is also the location where admins can view the sender address, the time the message was received and the detection technology. It also includes the Teams Message ID, which can be used as an identifier of a Teams message in Microsoft Defender for Office 365.

The **sender section** displays the sender's domain and reports whether the sender is in the tenant or cross-org. An external section marked as *Yes* indicates that the message happened between a user inside, and a user outside, of your organization.

The **participants section** includes information like the conversation type, chat name, and the name and email addresses of all of the participants (including the sender). It also links to a secondary panel that lists all the participants in the chat at the time of the suspected threat (this only appears if there are more than 10 participants).

:::image type="content" source="../../media/teams-message-entity-panel-shown-in-quarantine-with-more-than-10-participants.png" alt-text="Screenshot of the Teams Message Entity panel with more than 10 participants." lightbox="../../media/teams-message-entity-panel-shown-in-quarantine-with-more-than-10-participants.png":::

The **URLs section** displays the URL extracted from the Teams message and the threat associated with the URL. It also links to a secondary panel that lists all the URLs in the chat and their associated threats (this only appears if there are more than 10 URLs).

In addition to the header, message, sender, URLs, and participants sections, you will also see sections specific to a few experiences that are integrated with the Teams Message Entity Panel:

##### Quarantine:

  - **Quarantine details**: Contains quarantine-specific details. For more information, see [Manage quarantined messages](quarantine-admin-manage-messages-files.md#view-quarantined-email-details).
    - *Expires*: The date/time when the message will be automatically and permanently deleted from quarantine.
    - *Quarantine reason*: The reason the message is in quarantine.
    - *Released status*: Indicates if the message has been released to all participants that recieved the message.
    - *Quarantine policy*: The quarantine policy that was applied to the message.

  - **Quarantine actions**: For more information on different quarantine actions, see [Take action on quarantined messages](quarantine-admin-manage-messages-files.md#take-action-on-quarantined-email).

##### Submissions:

  - **Submission details** contains information about the specific submissions like:
    - Submissions results
    - Recommended steps
    - Date submitted
    - Submissions name
    - Submission type
    - Reason for submitting
    - Submission ID
    - Submitted by
    - Submission status

## For more information see

[The Microsoft Defender for Office 365 Email Entity Page and how it works](mdo-email-entity-page.md)

[Safelinks in Microsoft Defender for Office 365](safe-links-about.md)

[Zero-hour Auto Purge or ZAP in Microsoft Defender for Office 365](zero-hour-auto-purge.md)
