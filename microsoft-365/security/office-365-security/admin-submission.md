---
title: Manage submissions
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom: seo-marvel-apr2020
description: Admins can learn how to use the Submissions portal in the Microsoft 365 Defender portal to submit legitimate email getting blocked, suspicious email, suspected phishing email, spam, other potentially harmful messages, URLs, and email attachments to Microsoft for rescanning.
ms.technology: mdo
ms.prod: m365-security
---

# Use the Submissions portal to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

In Microsoft 365 organizations with Exchange Online mailboxes, admins can use the Submissions portal in the Microsoft 365 Defender portal to submit email messages, URLs, and attachments to Microsoft for scanning.

When you submit an email message for analysis, you will get:

- **Email authentication check**: Details on whether email authentication passed or failed when it was delivered.
- **Policy hits**: Information about any policies that may have allowed or blocked the incoming email into your tenant, overriding our service filter verdicts.
- **Payload reputation/detonation**: Up-to-date examination of any URLs and attachments in the message.
- **Grader analysis**: Review done by human graders in order to confirm whether or not messages are malicious.

> [!IMPORTANT]
> Payload reputation/detonation and grader analysis are not done in all tenants. Information is blocked from going outside the organization when data is not supposed to leave the tenant boundary for compliance purposes.

For other ways to submit email messages, URLs, and attachments to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

Watch this short video to learn how to use admin submissions in Microsoft Defender for Office 365 to submit messages to Microsoft for evaluation.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBLPn]

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com/>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To submit messages and files to Microsoft, you need to have one of following roles:
  - **Security Administrator** or **Security Reader** in the [Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

    Note that one of these roles is required to [View user submissions to the custom mailbox](#view-user-submissions-to-microsoft) as described later in this article.

- Admins can submit messages as old as 30 days if it is still available in the mailbox and not purged by the user or another admin.

- Admin submissions are throttled at the following rates:
  - Maximum submissions in any 15 minutes period: 150 submissions
  - Same submissions in a 24 hour period: 3 submissions
  - Same submissions in a 15 minute period: 1 submission

- For more information about how users can submit messages and files to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Report suspicious content to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** or **Email attachments** or **URLs**  tab is selected based on the type of content you want to report, and then click ![Submit to Microsoft for analysis icon.](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for analysis** flyout that appears to submit the respective type of content (email, URL, or email attachment) as described in the following sections.

   > [!NOTE]
   > File and URL submissions are not available in the clouds that do not allow for data to leave the environment. The ability to select File or URL will be greyed out.

### Notify users from within the portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Email & collaboration** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select **User reported messages** tab, and then select the message you want to mark and notify.

3. Select the **Mark as and notify** drop-down, and then select **No threats found** \> **Phishing** or **Junk**.

   :::image type="content" source="../../media/unified-submission-user-reported-message.png" alt-text="The Submissions page" lightbox="../../media/unified-submission-user-reported-message.png":::

The reported message will be marked as a false positive or a false negative. An email notification is sent automatically from within the portal to the user who reported the message.

### Submit a questionable email to Microsoft

1. In the **Select the submission type** box, verify that **Email** is selected in the dropdown list.

2. In the **Add the network message ID or upload the email file** section, use one of the following options:
   - **Add the email network message ID**: This is a GUID value that's available in the **X-MS-Exchange-Organization-Network-Message-Id** header in the message or in the **X-MS-Office365-Filtering-Correlation-Id** header in quarantined messages.
   - **Upload the email file (.msg or .eml)**: Click **Browse files**. In the dialog that opens, find and select the .eml or .msg file, and then click **Open**.

3. In the **Choose a recipient who had an issue** box, specify the recipient that you would like to run a policy check against. The policy check will determine if the email bypassed scanning due to user or organization policies.

4. In the **Select a reason for submitting to Microsoft** section, select one of the following options:
   - **Should not have been blocked (False positive)**
   - **Should have been blocked (False negative)**: In the **The email should have been categorized as** section that appears, select one of the following values (if you're not sure, use your best judgment):
     - **Phish**
     - **Malware**
     - **Spam**

5. When you're finished, click **Submit**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/submission-flyout-email.png" alt-text="The New URL submission process" lightbox="../../media/submission-flyout-email.png":::

### Send a suspect URL to Microsoft

1. In the **Select the submission type** box, select **URL** from the dropdown list.

2. In the **URL** box that appears, enter the full URL (for example, `https://www.fabrikam.com/marketing.html`).

3. In the **Select a reason for submitting to Microsoft** section, select one of the following options:
   - **Should not have been blocked (False positive)**
   - **Should have been blocked (False negative)**: In the **This URL should have been categorized as** section that appears, select one of the following values (if you're not sure, use your best judgment):
     - **Phish**
     - **Malware**

4. When you're finished, click **Submit**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/submission-url-flyout.png" alt-text="The New Email submission process" lightbox="../../media/submission-url-flyout.png":::

### Submit a suspected email attachment to Microsoft

1. In the **Select the submission type** box, select **Email attachment** from the dropdown list.

2. In the **File** section that appears, click **Browse files**. In the dialog that opens, find and select the file, and then click **Open**.

3. In the **Select a reason for submitting to Microsoft** section, select one of the following options:
   - **Should not have been blocked (False positive)**
   - **Should have been blocked (False negative)**: In the **This file should have been categorized as** section that appears, select one of the following values (if you're not sure, use your best judgment):
     - **Phish**
     - **Malware**

4. When you're finished, click **Submit**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="../../media/submission-file-flyout.png" alt-text="The New Attachment submission process" lightbox="../../media/submission-file-flyout.png":::

> [!NOTE]
> If malware filtering has replaced the message attachments with the Malware Alert Text.txt file, you need to submit the original message from quarantine that contains the original attachments. For more information on quarantine and how to release messages with malware false positives, see [Manage quarantined messages and files as an admin](manage-quarantined-messages-and-files.md).

## View email admin submissions to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** tab is selected.

   - You can sort the entries by clicking on an available column header. Click **Customize columns** to select the columns you need. All columns can be selected and showed in the submission grid. The default values are marked with an asterisk (<sup>\*</sup>):
     - **Submission name**<sup>\*</sup>
     - **Sender**<sup>\*</sup>
     - **Recipient**
     - **Date submitted**<sup>\*</sup>
     - **Reason for submitting**<sup>\*</sup>
     - **Status**<sup>\*</sup>
     - **Result**<sup>\*</sup>
     - **Filter verdict**
     - **Delivery/Block reason**
     - **Submission ID**
     - **Network Message ID/Object ID**
     - **Direction**
     - **Sender IP**
     - **Bulk compliant level (BCL)**
     - **Destination**
     - **Policy action**
     - **Submitted by**
     - **Phish simulation**
     - **Tags**<sup>\*</sup>
     - **Allow**

     When you're finished, click **Apply**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/email-admin-submission-customize-columns.png" alt-text="Customize column option for email admin submissions." lightbox="../../media/email-admin-submission-customize-columns.png":::

   - To filter the entries, click **Filter**. The available filters are:
     - **Date submitted**: **Start date** and **End date**.
     - **Submission ID**: A GUID value that's assigned to every submission.
     - **Network Message ID**
     - **Sender**
     - **Recipient**
     - **Name**
     - **Submitted by**
     - **Reason for submitting**
     - **Status**
     - **Tags**

     When you're finished, click **Apply**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/email-admin-submission-filters.png" alt-text="Filter options for email admin submissions." lightbox="../../media/email-admin-submission-filters.png":::

   - To group the entries, click **Group** and select one of the following values from the dropdown list:
     - **None**
     - **Reason**
     - **Status**
     - **Result**
     - **Tags**

   - To export the entries, click **Export**. In the dialog that appears, save the .csv file.

## View email attachment admin submissions to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Email attachments** tab is selected.

   - You can sort the entries by clicking on an available column header. Click **Customize columns** to select the columns you need. All columns can be selected and showed in the submission grid. The default values are marked with an asterisk (<sup>\*</sup>):
     - **Attachment name**<sup>\*</sup>
     - **Date submitted**<sup>\*</sup>
     - **Reason for submitting**<sup>\*</sup>
     - **Status**<sup>\*</sup>
     - **Result**<sup>\*</sup>
     - **Filter verdict**
     - **Delivery/Block reason**
     - **Submission ID**
     - **Object ID**
     - **Policy action**
     - **Submitted by**
     - **Tags**<sup>\*</sup>
     - **Allow**

     When you're finished, click **Apply**.

     :::image type="content" source="../../media/email-attachment-admin-submission-customize-columns.png" alt-text="Customize column options for email attachment admin submissions.":::

   - To filter the entries, click **Filter**. The available filters are:
     - **Date submitted**: **Start date** and **End date**.
     - **Submission ID**: A GUID value that's assigned to every submission.
     - **Attachment filename**
     - **Submitted by**
     - **Reason for submitting**
     - **Status**
     - **Tags**

     When you're finished, click **Apply**.

     :::image type="content" source="../../media/email-attachment-admin-submission-filters.png" alt-text="Filter options for email attachment admin submissions.":::

   - To group the entries, click **Group** and select one of the following values from the dropdown list:
     - **None**
     - **Reason**
     - **Status**
     - **Result**
     - **Tags**

   - To export the entries, click **Export**. In the dialog that appears, save the .csv file.

## View URLs admin submissions to Microsoft

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **URLs** tab is selected.

   - You can sort the entries by clicking on an available column header. Click **Customize columns** to select the columns you need. All columns can be selected and showed in the submission grid. The default values are marked with an asterisk (<sup>\*</sup>):
     - **URL**<sup>\*</sup>
     - **Date submitted**<sup>\*</sup>
     - **Reason for submitting**<sup>\*</sup>
     - **Status**<sup>\*</sup>
     - **Result**<sup>\*</sup>
     - **Filter verdict**
     - **Delivery/Block reason**
     - **Submission ID**
     - **Object ID**
     - **Policy action**
     - **Submitted by**
     - **Tags**<sup>\*</sup>
     - **Allow**

     When you're finished, click **Apply**.

     :::image type="content" source="../../media/url-admin-submission-customize-columns.png" alt-text="Customize column options for URL admin submissions.":::

   - To filter the entries, click **Filter**. The available filters are:
     - **Date submitted**: **Start date** and **End date**.
     - **Submission ID**: A GUID value that's assigned to every submission.
     - **URL**
     - **Submitted by**
     - **Reason for submitting**
     - **Status**
     - **Tags**

     When you're finished, click **Apply**.

     :::image type="content" source="../../media/url-admin-submission-customize-columns.png" alt-text="Filter options for URL admin submissions.":::

   - To group the entries, click **Group** and select one of the following values from the dropdown list:
     - **None**
     - **Reason**
     - **Status**
     - **Result**
     - **Tags**

   - To export the entries, click **Export**. In the dialog that appears, save the .csv file.

### Admin submission result details

Messages that are submitted in admin submissions are reviewed and results shown in the submissions detail flyout:

- If there was a failure in the sender's email authentication at the time of delivery.
- Information about any policy hits that could have affected or overridden the verdict of a message.
- Current detonation results to see if the URLs or files contained in the message were malicious or not.
- Feedback from graders.

If an override was found, the result should be available in several minutes. If there wasn't a problem in email authentication or delivery wasn't affected by an override, then the feedback from graders could take up to a day.

## View user submissions to Microsoft

If you've deployed the [Report Message add-in](enable-the-report-message-add-in.md), the [Report Phishing add-in](enable-the-report-phish-add-in.md), or people use the [built-in reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md), you can see what users are reporting on the **User reported message** tab.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to the **Submissions** page at **Actions & submissions** \> **Submissions**. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **User reported messages** tab.

   - You can sort the entries by clicking on an available column header. Click **Customize columns** to show the options. The default values are marked with an asterisk (<sup>\*</sup>):

     - **Email subject**<sup>\*</sup>
     - **Reported by**<sup>\*</sup>
     - **Date reported**<sup>\*</sup>
     - **Sender**<sup>\*</sup>
     - **Reported reason**<sup>\*</sup>
     - **Result**<sup>\*</sup>
     - **Message reported ID**
     - **Network Message ID**
     - **Sender IP**
     - **Reported from**
     - **Phish simulation**
     - **Converted to admin submission**
     - **Tags**<sup>\*</sup>
     - **Marked as**<sup>\*</sup>
     - **Marked by**
     - **Date marked**

     When you're finished, click **Apply**.

   - To filter the entries, click **Filter**. The available filters are:
     - **Date reported**: **Start date** and **End date**.
     - **Reported by**
     - **Email subject**
     - **Message reported ID**
     - **Network Message ID**
     - **Sender**
     - **Reported reason**: **Not junk**, **Phish**, or **Spam**
     - **Reported from**: **Microsoft add-in** or **Third party add-in**
     - **Phish simulation**: **Yes** or **No**
     - **Converted to admin submission**: **Yes** or **No**
     - **Tags**

     When you're finished, click **Apply**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/admin-submission-reported-messages.png" alt-text="The New Filter options for user submissions" lightbox="../../media/admin-submission-reported-messages.png":::

   - To group the entries, click **Group** and select one of the following values from the dropdown list:
     - **None**
     - **Reason**
     - **Sender**
     - **Reported by**
     - **Result**
     - **Reported from**
     - **Phish simulation**
     - **Converted to admin submission**
     - **Tags**

   - To export the entries, click **Export**. In the dialog that appears, save the .csv file.

> [!NOTE]
> If organizations are configured to send user reported messages to the custom mailbox only, reported messages will appear in **User reported messages** but their results will always be empty (as they would not have been rescanned).

## Undo user submissions

Once a user submits a suspicious email to the custom mailbox, the user and admin don't have an option to undo the submission. If the user would like to recover the email, it will be available for recovery in the Deleted Items or Junk Email folders.

## Convert user reported messages from the custom mailbox into an admin submission

If you've configured the custom mailbox to intercept user-reported messages without sending the messages to Microsoft, you can find and send specific messages to Microsoft for analysis.

On the **User reported messages** tab, select a message in the list, click **Submit to Microsoft for analysis**, and then select one of the following values from the dropdown list:

- **Report clean**
- **Report phishing**
- **Report malware**
- **Report spam**
- **Trigger investigation**

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/admin-submission-main-action-button.png" alt-text="The New options on the Action button" lightbox="../../media/admin-submission-main-action-button.png":::

If the message is reported to Microsoft, the **Converted to admin submission** value turns from **no** to **yes**. You can directly access the admin submission by clicking **View the converted admin submission** from the overflow menu inside the submission flyout of the respective user reported message.

:::image type="content" source="../../media/view-converted-admin-submission.png" alt-text="Option to view a created admin submission from a user reported message.":::

## View associated alert for user and admin email submissions

> [!IMPORTANT]
> The information in this section applies only to Defender for Office 365 Plan 2 or higher.
>
> Currently, user submissions generate alerts only for messages that are reported as phishing.

For each user reported phishing message and admin email submission, a corresponding alert is generated.

To view the corresponding alert for a user reported phishing message, select the **User reported messages** tab, and then double-click the message to open the submission flyout. Click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** and then select  **View alert**.

:::image type="content" source="../../media/alert-from-user-submission.png" alt-text="Option to view the related alert from a user reported phishing message.":::

To view the corresponding alert for admin email submissions, select the **Emails** tab, and then double-click the message to open the submission flyout. Select **View alert** on the **Open email entity** option.

:::image type="content" source="../../media/alert-from-admin-submission.png" alt-text="Option to view the related alert from an admin submission.":::
