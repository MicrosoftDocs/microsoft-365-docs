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

[!include[Prerelease information](../../includes/prerelease.md)]

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In organizations with Microsoft Defender for Office 365 Plan 2 or Microsoft 365 Defender, admins can decide whether users can report malicious messages in Microsoft Teams. Admins can also get visibility into the Teams messages that users are reporting.

Users can report messages in Teams from **internal** chats, channels and meeting conversations. Users can only report messages as malicious.

> [!NOTE]
> User reporting of messages in Teams is not supported in U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD).

## User reporting settings for Teams messages

User reporting of messages in Teams is made of two separate settings:

- **In the Teams admin center**: On by default and controls whether users are able to report messages from Teams. When this setting is turned off, users can't report messages within Teams, so the corresponding setting in the Microsoft 365 Defender portal is irrelevant.

- **In the Microsoft 365 Defender portal**: On by default. If user reporting of messages is turned on in the Teams admin center, it also needs to be turned on the Defender portal for user reported messages to show up correctly.

### Turn off or turn on user reporting in the Teams admin center

To view or configure this setting, you need to be a member of the **Global Administrator** or **Teams Administrator** roles. For more information about permissions in Teams, see [Use Microsoft Teams administrator roles to manage Teams](/microsoftteams/using-admin-roles).

1. In the Teams admin center at <https://admin.teams.microsoft.com>, go to **Messaging policies**. Or, to go directly to the **Messaging policies** page, use <https://admin.teams.microsoft.com/policies/messaging>.

2. On the **Messaging policies** page, verify that the **Manage policies** tab is selected, and do either of the following actions to edit the appropriate policy (the **Global (Org-wide) default** policy or a custom policy):
   - Click the link in the **Name** column.
   - Select the policy by clicking anywhere in the row other than the **Name** column, and then click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.

3. In the policy details page that opens, find the **Report a security concern** toggle. By default, it's ![Teams 'Report a security concern' toggle on.](../../media/scc-toggle-on.png) **On**. To turn it off, toggle the setting to ![Teams 'Report a security concern' toggle off.](../../media/scc-toggle-off.png) **Off**.

4. Click **Save**, and then click **Confirm** in the confirmation dialog that opens.

:::image type="content" source="../../media/submissions-teams-turn-on-off-tac.png" alt-text="Screenshot of the 'Report a security concern' toggle in Messaging policies in the Teams admin center." lightbox="../../media/submissions-teams-turn-on-off-tac.png":::

For more information about messaging policies in Teams, see [Manage messaging policies in Teams](/microsoftteams/messaging-policies-in-teams).

### Turn off or turn on user reporting of Teams messages in the Defender portal

To modify this setting in the Defender portal, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For more information about permissions in the Defender portal, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

The value of this setting is meaningful only if message reporting is turned on in the Teams admin center as described in the previous section.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User reported settings** tab. To go directly to the **User reported settings** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

2. On the **User reported settings** page, go to the **Microsoft Teams** section for the **Monitor reported messages in Microsoft Teams** setting.

   As previously described, this setting is turned on by default, and you typically leave it turned on if message reporting is also turned on in Teams admin center.

   :::image type="content" source="../../media/submissions-teams-turn-on-off-defender-portal.png" alt-text="Screenshot of the 'Monitor reported messages in Microsoft Teams' setting in the Microsoft 365 Defender portal." lightbox="../../media/submissions-teams-turn-on-off-defender-portal.png":::

For more information about user reported message settings in the Defender portal, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

## How users report messages in Teams

1. In the Microsoft Teams client, hover over the malicious message without selecting it, and then click **... More options** \> **More actions** \> **Report this message**.

   :::image type="content" source="../../media/submissions-user-report-message-in-teams-client-click-path.png" alt-text="Screenshot of the Click path to report a message in the Microsoft Teams client." lightbox="../../media/submissions-user-report-message-in-teams-client-click-path.png":::

2. In the **report this message** dialog that opens, verify **Security risk - Spam, phishing, malicious content** is selected, and then click **Report**.

   :::image type="content" source="../../media/submissions-user-report-message-in-teams-client-click-report.png" alt-text="Screenshot of the final dialog to report a message in the Microsoft Teams client." lightbox="../../media/submissions-user-report-message-in-teams-client-click-report.png":::

   > [!NOTE]
   > If [reporting for Microsoft Purview Communication Compliance is turned off](/microsoftteams/communication-compliance#report-a-concern-in-microsoft-teams), users might not have the dropdown list to select **Security risk - Spam, phishing, malicious content**. Instead, they're shown a confirmation pop-up.

3. In the confirmation dialog that opens, click **Close**.

**Notes**:

- The reported message remains visible to the user in the Teams client.
- Users can report the same message multiple times.
- The message sender is not notified that the message(s) was reported.
- Microsoft also sends an email message notification to the user who reported the message from submissions@messaging.microsoft.com with the subject, "You have successfully reported a Teams message as a security risk." If Teams integration is turned on in the Defender portal, admins can customize some elements of the notification message in the **Email sent to user after admin review** on **User reported** page as described in [Options for Microsoft reporting tools](submissions-user-reported-messages-custom-mailbox.md#options-for-microsoft-reporting-tools).

> [!IMPORTANT]
>
> When a user reports a Teams message to Microsoft, everything associated with the message is copied to include in the continual algorithm reviews. This copy includes the message content, message headers added by the Microsoft filtering system, any files or URLs, and related data.
>
> Microsoft treats your feedback as your organization's permission to analyze all the information to fine tune the message hygiene algorithms. Your message is held in secured and audited data centers in the USA. The submission is deleted as soon as it's no longer required. Microsoft personnel might read your submitted messages and files, which is normally not permitted for Teams messages in Microsoft 365. However, your message is still treated as confidential between you and Microsoft, and your message or file isn't shared with any other party as part of the review process.

## What happens after a user reports a message from Teams?

What happens to a user reported Teams message depends on the settings in the **Reported message destinations** section on the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission>:

- **Send reported messages to** \> **Microsoft and my reporting mailbox**: For Microsoft 365 organizations created after March 1 2023, this is the default value. The default user reporting mailbox is the Exchange Online mailbox of the global admin. The value for older Microsoft 365 organizations is unchanged.
- **Send reported messages to** \> **Microsoft only**
- **Send reported messages to** \> **My reporting mailbox only**

For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

**Notes**:

- If you select **Send reported messages to** \> **My reporting mailbox only**, reported messages don't go to Microsoft for analysis unless an admin manually submits the message from the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. Reporting messages to Microsoft is an important part of training the service to help improve the accuracy of filtering (reduce false positives and false negatives). That's why we use **Send reported messages to** \> **Microsoft and my reporting mailbox** as the default.
- Regardless of the **Send reported messages to** setting, metadata from the reported Teams message (for example, senders, recipients, reported by, and message details) is available on the **User reported** tab on the **Submissions** page.
- Regardless of the **Send reported messages to** setting, the alert policy named **Teams message reported by user as a security risk** generates an alert when a user reports a message in Teams by default. For more information, see [Manage alerts](/microsoft-365/compliance/alert-policies#manage-alerts).

  To view the corresponding alert for a user reported message in Teams, go to the **User reported** tab on the **Submission** page, and then double-click the message to open the submission flyout. Click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** and then select **View alert**.

## View and triage user reported messages in Teams

As previously described, information about user reported messages in Teams is available on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft).

The availability of Teams messages on the **User reported** tab on the **Submissions** page introduces the following changes to the page:

- Differences in available columns displayed by default (marked with an asterisk (\*)) and when you click ![Customize columns icon.](../../media/m365-cc-sc-customize-icon.png) **Customize columns**:
  - **Name and type**<sup>\*</sup> is available (previously named **Submission name**<sup>\*</sup>).
  - **Teams message ID** is available.

- Differences in available filters when you click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter**:
  - **Teams message ID** is available.
  - **Message type** is available. Values are **Email** and **Teams message**

- Differences in available values when you click ![Group icon.](../../media/m365-cc-sc-group-icon.png) **Group**:
  - **Reason** is not available.
  - **Phish simulation** is not available.

- The **Result** column contains the following information for reported Teams messages based on the [user reported settings](submissions-user-reported-messages-custom-mailbox.md):
  - **Send reported messages to** \> **Microsoft and my reporting mailbox** or **Microsoft only**: The **Result** column contains values derived from the following analysis:
    - **Policy hits**: Information about any policies or overrides that may have allowed or blocked the incoming messages, including overrides to our filtering verdicts. The result should be available within several minutes. Otherwise, detonation and feedback from graders could take up to one day.
    - **Payload reputation/detonation**: Up-to-date examination of any URLs and files in the message.
    - **Grader analysis**: Review done by human graders in order to confirm whether or not messages are malicious.
  - **Send reported messages to** \> **My reporting mailbox only**: The **Result** column value is always **Not submitted to Microsoft**, because the messages were not analyzed by Microsoft.

- Admin submission of Teams messages to Microsoft from the **User reported** tab on the **Submissions** page is basically the same as described in [Convert user reported messages in the reporting mailbox into admin submissions](submissions-admin.md#convert-user-reported-messages-in-the-reporting-mailbox-into-admin-submissions), including the [required permissions and throttling limits](submissions-admin.md#what-do-you-need-to-know-before-you-begin).

  But only the following values are available in **Submit to Microsoft for analysis** for reported Teams messages:

  - **Report clean**
  - **Report phishing**
  - **Report malware**

- Notifying a user about the results of a reported Teams message is basically the same as described in [Notify users from within the portal](submissions-admin-review-user-reported-messages.md#notify-users-from-within-the-portal).

  But only the following values are available in **Mark as and notify** for reported Teams messages:

  - **No threats found**
  - **Phishing**

- The available customization options for admin notifications for reported Teams messages are the same as described in [Customize the messages used to notify users](submissions-admin-review-user-reported-messages.md#customize-the-messages-used-to-notify-users), but the names and setting locations on the page are slightly different:
  - On the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission>, the notification customization options are in the **Email notifications** section (formerly the **Email sent to user after admin review** section):
    - The **Customize results email** link is in the **Results email** subsection. The available settings in the flyout that opens are the same.
    - The **Customize sender and branding** subsection contains the options to specify the sender email address and custom branding:
      - **Specify a Microsoft 365 mailbox to use as the From address of email notifications** (formerly **Specify an Office 365 mailbox to send email notifications from**).
      - **Replace the Microsoft logo with my organization's logo across all reporting experiences** (formerly **Replace the Microsoft logo with my company logo**).

- As described in the **Reporting from quarantine** section on the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission>, only admins can report quarantined Teams messages to Microsoft.
