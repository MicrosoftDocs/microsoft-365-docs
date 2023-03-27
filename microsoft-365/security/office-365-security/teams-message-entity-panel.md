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
ms.date: 03/28/2023
---

# The Teams Message Entity Panel for Microsoft Teams in Microsoft Defender for Office 365

[!include[Prerelease information](../../includes/prerelease.md)]

The Teams Message Entity Panel in Microsoft Defender for Office 365 puts Microsoft Teams data about chats on a *single panel*.This go-to Teams message page was created to enhance information delivered throughout Microsoft Defender for Office 365. 

The Teams Message Entity Panel is the single source of Teams message metadata that will allow for SecOps review. In other words, any threat coming from:

- chats
- meeting chats
- group chats

can be reviewed.

**Applies to:**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

## How to get to the Teams Message Entity Panel?

Anywhere you find Teams message details throughout Microsoft Defender for Office 365, the Teams Message Entity details are available. This includes:

- Quarantine
- Submissions
- Reporting

One way to get to the Teams Message Entity Panel is Quarantine, but the steps remain the same from wherever you find Teams message details. Navigate to the Microsoft 365 Defender portal at <https://security.microsoft.com>, **Email & collaboration** \> **Quarantine**. Or, to go directly to the **Quarantine** page, use <https://security.microsoft.com/quarantine>.

In **Quarantine**, select **Teams messages**
Select the subject of an email you're investigating.
The Teams Message Entity Panel for that message will open.

> [!NOTE]
> The permissions needed to view and use this page are the same as to view **Quarantine** and **Submissions**. The admin must be a member of Global Admin or Global Reader, or Security Admin or Security Reader. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).


## Teams Message Entity Panel Walkthrough

The structure is designed to be easy to read and navigate through at a glance.

Clicking on a Teams message across Microsoft Defender for Office 365 experiences opens the Teams Message Entity Panel. The **header section** contains the subject of the message (if there is one) or it displays the first 100 characters of the body of the message. It also contains the current verdict of the messages, and count of URLs present in the message.

:::image type="content" source="../../media/teams-message-entity-panel-shown-in-quarantine.png" alt-text="Screenshot of the Teams Message Entity panel as it is seen in Quarantine." lightbox="../../media/teams-message-entity-panel-shown-in-quarantine.png":::

The **message details** section contains the *Threats* suspected and *confidence level*, and the message location. This is also the location where admins can view the sender adress, the time the message was recieved and the detection technology. It also includes the Teams Message ID, which can be utilized as an indentifer of a Teams message within Microsoft Defender for Office 365. 

The **sender section** displays the domain of the sender. It also reports whether the sender is within the tenant or cross-org. The external section marked as *Yes* indicates that the message is between users within and outside your organization.

The **participants section** includes message information like the conversation type, chat name, and the name and email addresses of all of the participants (including the sender). It also links to a secondary overlay flyout that lists all the participants in the chat at the time of the suspected threat (this only appears if there's more than 10 participants).

:::image type="content" source="../../media/teams-message-entity-panel-shown-in-quarantine-with-more-than-10-participants.png" alt-text="Screenshot of the Teams Message Entity panel with more than 10 participants." lightbox="../../media/teams-message-entity-panel-shown-in-quarantine-with-more-than-10-participants.png":::

The **URLs section** displays the extracted URL from the Teams message and the threat associated with the URL. It also links to a secondary overlay flyout that lists all the URLs in the chat and their associated threats (this only appears if there's more than 10 URLs).

In addition to the above sections, you will also see sections specific to few experiences that are integrated with the Teams Message Entity Panel:

- Quarantine:

  - *Quarantine details*: Contains quarantine-specific details. For more information, see [Manage quarantined messages](quarantine-admin-manage-messages-files.md#view-quarantined-message-details).

    - Expires: The date/time when the message will be automatically and permanently deleted from quarantine.
    - Quarantine reason: The reason the message is in quarantine.
    - Released status: Indicates if the message has been released to all participants of that recieved the message.
    - Quarantine policy: The quarantine policy that was applied to the message.

  - *Quarantine actions*: For more information on different quarantine actions, see [Manage quarantined messages](quarantine-admin-manage-messages-files.md#take-action-on-quarantined-email).

- Submissions:

  - *Submission details*: Contains information about the specific submissions such as:
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
