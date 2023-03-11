---
title: User reported message settings in Teams
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: "Admins can configure whether users can report malicious message in Microsoft Teams."
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date:
---

# User reported message settings in Microsoft Teams

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In organizations with Microsoft Defender for Office 365 Plan 2 or Microsoft 365 Defender, admins can decide whether users can report malicious messages in Microsoft Teams. Admins can also get visibility into the Teams messages that users are reporting.

Users can report messages in Teams from **internal** chats, meeting conversations, and channels. Users can only report messages as malicious.

> [!NOTE]
> User reporting of messages in Teams is not supported in U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD).

## User reporting settings for Teams messages

User reporting of messages in Teams is made of two separate settings:

- **In the Teams admin center**: On by default and controls whether users are able to report messages from Teams. When this setting is turned off, users can't report messages within Teams.

- **In the Microsoft 365 Defender portal**: On by default and controls whether the reported messages are integrated with Defender for Office 365 reported message features:
  - Teams messages are visible on the **User reported** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>.
  - Teams message are available in [Attack simulation training](attack-simulation-training-get-started.md).
  - Reported Teams messages use the selected **Send the reported messages to** option in the **Reported message destinations** section on the **User reported** page at <https://security.microsoft.com/securitysettings/userSubmission>:
    - **Microsoft only**
    - **My reporting mailbox only**
    - **Microsoft and my reporting mailbox**

    For more information about the **Send the reported messages to** options, see [Options for Microsoft reporting tools](submissions-user-reported-messages-custom-mailbox.md#options-for-microsoft-reporting-tools).

The interaction of these two settings are described in the following table:

|Setting in the<br>Teams admin center|Setting in<br> the Defender portal|Result|
|:---:|:---:|---|
|On|On||
|On|Off||
|Off|n/a|Users can't report messages in Teams.|

### Turn on or turn off user reporting in the Teams admin center

To view or configure this setting, you need to be a member of the **Global Administrator** or **Teams Administrator** roles. For more information about permissions in Teams, see [Use Microsoft Teams administrator roles to manage Teams](/microsoftteams/using-admin-roles).

1. In the Teams admin center at <https://admin.teams.microsoft.com>, go to 

### Turn on or turn off user reporting of Teams messages in the Defender portal

To modify this setting in the Defender portal, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For more information about permissions in the Defender portal, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User reported** tab. To go directly to the **User reported** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

2. On the **User reported** page, 

## How users report messages in Teams

1. In the Microsoft Teams client, hover over the malicious message without selecting it, and then click **... More options** \> **More actions** \> **Report this message**.

2. In the **report this message** dialog that opens, confirm the selection in **Select a problem**:
   - **Security risk - Spam, phishing, malicious content**
   - **Inappropriate - Harassment, violence, nudity, and disturbing content**

     > [!NOTE]
     > **Inappropriate...** might not be available unless you've turned on reporting for Microsoft Purview Communication Compliance. For more information, see [Communication compliance with Microsoft Teams](/microsoftteams/communication-compliance).

   When you're finished, click **Report**.

3. In the confirmation dialog that opens, click **Close**.

**Notes**:

- The reported message remains visible to the user in the Teams client.
- Users can report the same message multiple times.
- The message sender is not notified that the messages was reported.
- Microsoft also send an email message notification to the user who reported the message from submissions@messaging.microsoft.com with the subject, "You have successfully reported a Teams message as a security risk." If Teams integration is turned on in the Defender portal, admins can customize some elements of the notification message in the **Email sent to user after admin review** on **User reported** page as described in [Options for Microsoft reporting tools](submissions-user-reported-messages-custom-mailbox.md#options-for-microsoft-reporting-tools).

> [!IMPORTANT]
>
> When a user reports a Teams message to Microsoft, everything associated with the message is copied to include in the continual algorithm reviews. This copy includes the message content, message headers added by the Microsoft filtering system, any files or URLs, and related data.
>
> Microsoft treats your feedback as your organization's permission to analyze all the information to fine tune the message hygiene algorithms. Your message is held in secured and audited data centers in the USA. The submission is deleted as soon as it's no longer required. Microsoft personnel might read your submitted messages and files, which is normally not permitted for Teams messages in Microsoft 365. However, your message is still treated as confidential between you and Microsoft, and your message or file isn't shared with any other party as part of the review process.

## What happens after a user reports a message from Teams?

