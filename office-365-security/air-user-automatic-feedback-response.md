---
title: Automatic user notifications for user reported phishing results in AIR
description: Admins can learn about the automatic feedback response feature that sends the results of automated investigation and response (AIR) to user reported phishing messages.
author: KCrider14
ms.author: kellycrider
manager: dansimp
ms.topic: overview
ms.date: 12/21/2023
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison" target="_blank">Microsoft Defender for Office 365 plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Automatic user notifications for user reported phishing results in AIR

> [!NOTE]
> The features described in this article are currently in Private Preview, aren't available in all organizations, and are subject to change.

In Microsoft 365 organizations with Exchange Online mailboxes, admins can configure the backend for messages that users report as malicious or not malicious in Outlook (send to Microsoft, send to a reporting mailbox, or both), and configure the various notification options for user reported messages. For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

In Microsoft 365 organizations with Microsoft Defender for Office 365 Plan 2, when a user reports a message as phishing, an investigation is automatically created in [automated investigation and response (AIR)](air-about.md). Admins can configure the user reported message settings to send an email notification to the user who reported the message based on the verdict from AIR. This notification is also known as _automatic feedback response_.

This article explains how to enable and customize automatic feedback response for specific AIR verdicts, how the notification email messages are sent, and what the notifications look like.

## What do you need to know before you begin?

- You open the Microsoft Defender portal at <https://security.microsoft.com>. To go directly to the **User reported settings** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md): Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator** or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Use the Microsoft Defender portal to configure automatic feedback response

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User reported settings** tab. To go directly to the **User reported settings** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

2. On the **User reported settings** page, verify that **Monitor reported messages in Outlook** is selected.

3. In the **Email notifications** \> **Results email** section, select **Automatically email users the results of the investigation**, and then select one or more of the following options that appear:
   - **Phishing or malware**: An email notification is sent to the user who reported the message as phishing when AIR identifies the threat as phishing, high confidence phishing, or malware.
   - **Spam**: An email notification is sent to the user who reported the message as phishing when AIR identifies the threat as spam.
   - **No threats found**: An email notification is sent to the user who reported the message as phishing when AIR identifies no threat.

   :::image type="content" source="../../media/air-automatic-feedback.png" alt-text="Automatic feedback response options on the User reported settings page." lightbox="../../media/air-automatic-feedback.png":::

4. The notification email uses the same template as when an admin selects :::image type="icon" source="../../media/m365-cc-scc-mark-and-notify-icon.png" border="false"::: **Mark as and notify** on the **Submissions** page at <https://security.microsoft.com/reportsubmission>.

   You can customize the notification email by selecting the **Customize results email** link.

   In the **Customize admin review email notifications** flyout that opens, configure the following settings on the **Phishing** (which corresponds to the **Phishing or malware** automatic feedback response option), **Junk** and **No threats found** tabs:

   - **Email body results text**: Enter the custom text to use. You can use different text for **Phishing**, **Junk** and **No threats found**.
   - **Email footer text**: Enter the custom message footer text to use. The same text is used for **Phishing**, **Junk** and **No threats found**.

   :::image type="content" source="../../media/air-automatic-feedback-customize-email-notifications.png" alt-text="The user email notification customization options on the User reported settings page." lightbox="../../media/air-automatic-feedback-customize-email-notifications.png":::

   When you're finished in the **Customize admin review email notifications** flyout, select **Confirm** to return to the **User reported settings** page.

## How automated feedback response works

After you enable automated feedback response, the user who reported the message as phishing receives an email notification based on the AIR verdict and the selected **Automatically email users the results of the investigation** options:

> [!TIP]
> The following screenshots show example notification email messages that are sent to users. As explained earlier, you can customize the notification email using the options in **Customize results email** in the user reported settings.

- **No threats found**: If a user reports a message as phishing, the submission triggers AIR on the reported message. If the investigation finds no threats, the user who reported the message receives a notification email that looks like this:

   :::image type="content" source="../../media/air-automatic-feedback-no-threats-found-email.png" alt-text="An example notification email for No threats found." lightbox="../../media/air-automatic-feedback-no-threats-found-email.png":::

- **Spam**: If a user reports a message as phishing, the submission triggers AIR on the reported message. If the investigation finds the message is spam, the user who reported the message receives a notification email that looks like this:

   :::image type="content" source="../../media/air-automatic-feedback-spam-email.png" alt-text="An example notification email for Spam found." lightbox="../../media/air-automatic-feedback-spam-email.png":::

- **Phishing or malware**: If a user reports a message as phishing, the submission triggers AIR on the reported message. What happens next depends on the results of the investigation:
  - **High confidence phishing or malware**: The message needs to be remediated using one of the following actions:
    - Approve the recommended action (shown as pending actions in the investigation or in the Action center).
    - Remediation through other means (for example, [Threat Explorer](threat-explorer-about.md)).

    After the message has been remediated, the investigation is closed as **Remediated** or **Partially remediated**. Only when the investigation status is one of those values is the email notification sent to the user who reported the message.

    > [!TIP]
    > For high confidence phishing or malware, the investigation might immediate close as **Remediated** if the message isn't found in the mailbox (the message was deleted). There's no pending investigation to close, so no email notification is sent to the user who reported the message.

  - **Phishing**: The investigation creates no pending actions, but the user still receives a notification email that the message was found to be phishing.

  The notification email looks like this:

   :::image type="content" source="../../media/air-automatic-feedback-phishing-or-malware-email.png" alt-text="An example notification email for Phishing or malware found." lightbox="../../media/air-automatic-feedback-phishing-or-malware-email.png":::

When AIR reaches a verdict and the notification email is sent to the user who reported the message as phishing, the following property values are shown for the entry on the **User reported** tab on the **Submissions** page in the Defender portal:

- **Marked as**: Contains the verdict.
- **Marked by**: The value is **Automation**.

Whether the message was automatically or manually sent to Microsoft for review, or the message was investigated by AIR, the verdict is shown in the **Marked as** property. For more information about the **User reported** tab on the **Submissions** page, see [Admin options for user reported messages](submissions-admin.md#admin-options-for-user-reported-messages).

## Learn More

To learn more about submissions and investigations in Defender for Microsoft 365, see the following articles:

- [Automated investigation and response in Microsoft Defender for Office 365](air-about.md)
- [View the results of an automated investigation in Microsoft 365](air-view-investigation-results.md)
- [Admin review for reported messages](admin-review-reported-message.md)
- [How automated investigation and response works in Microsoft Defender for Office 365](air-about-office.md)
