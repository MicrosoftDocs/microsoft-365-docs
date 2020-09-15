---
title: Admin submissions
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn how to use the Submissions portal in the Security & Compliance Center to submit suspicious emails, suspected phishing mails, spam, and other potentially harmful messages, URLs, and files to Microsoft for scanning."
---

# Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft

In Microsoft 365 organizations with mailboxes in Exchange Online, admins can use the Submissions portal in the Security & Compliance Center to submit email messages, URLs, and attachments to Microsoft for scanning.

When you submit an email, you will get information about any policies that may have allowed the incoming email into your tenant, as well as examination of any URLs and attachments in the mail. Policies that may have allowed a mail include an individual user's safe sender list as well as tenant level policies such as Exchange mail flow rules (also known as transport rules).

For other ways to submit email messages, URLs, and attachments to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Submission** page, use <https://protection.office.com/reportsubmission>.

- To submit messages and files to Microsoft, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

  - **Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

    Note that membership in this role group is required to [View user submissions to the custom mailbox](#view-user-submissions-to-the-custom-mailbox) as described later in this topic.

- For more information about how users can submit messages and files to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Report suspicious content to Microsoft

1. In the Security & Compliance Center, go to **Threat management** \> **Submissions**, verify that you're on the **Admin submissions** tab, and then click **New submission**.

2. Use **New submission** flyout that appears to submit the message, URL, or attachment as described in the following sections.

### Submit a questionable email to Microsoft

1. In the **Object type** section, select **Email**. In the **Submission format** section, use one of the following options:

   - **Network Message ID**: This is a GUID value that's available in the **X-MS-Exchange-Organization-Network-Message-Id** header in the message.

   - **File**: Click **Choose file**. In the dialog that opens, find and select the .eml or .msg file, and then click **Open**.

2. In the **Recipients** section, specify one or more recipients that you would like to run a policy check against. The policy check will determine if the email bypassed scanning due to user or organization policies.

3. In the **Reason for submission** section, select one of the following options:

   - **Should not have been blocked**

   - **Should have been blocked**: Select **Spam**, **Phishing**, or **Malware**. If you're not sure, use your best judgment.

4. If the filter was bypassed due to policies upon submission, you'll see information about that policy.

   If the filter was not bypassed due to one or more policies, the scan will complete in several minutes. You'll see additional information about the submission by clicking on the status link. This includes the results of the policy check and the rescan verdict. Note this does not run the email through the Office 365 ATP full filtering stack again but runs a partial rescan based on certain attributes of the mail, URL, or file.

5. When you're finished, click the **Submit** button.

![URL submission example](../../media/submission-flyout-email.PNG)

### Send a suspect URL to Microsoft

1. In the **Object type** section, select **URL**. In the box that appears, enter the full URL (for example, <https://www.fabrikam.com/marketing.html>).

2. In the **Reason for submission** section, select one of the following options:

   - **Should not have been blocked**

   - **Should have been blocked**: Select **Phishing** or **Malware**.

3. When you're finished, click the **Submit** button.

![Email submission example](../../media/submission-url-flyout.png)

### Submit a suspected file to Microsoft

1. In the **Object type** section, select **Attachment**.

2. Click **Choose File**. In the dialog that opens, find and select the file, and then click **Open**.

3. In the **Reason for submission** section, select one of the following options:

   - **Should not have been blocked**

   - **Should have been blocked**: **Malware** is the only choice, and is automatically selected..

4. When you're finished, click the **Submit** button.

![Attachment submission example](../../media/submission-file-flyout.PNG)

## View admin submissions

In the Security & Compliance Center, go to **Threat management** \> **Submissions**, verify that you're on the **Admin submissions** tab, and then click **New submission**.

Near the top of the page, you can enter a start date, an end date, and (by default) you can filter by **Submission ID** (a GUID value that's assigned to every submission) by entering a value in the box and clicking ![Refresh button](../../media/scc-quarantine-refresh.png). You can enter multiple values separated by commas.

To change the filter criteria, click the **Submission ID** button and choose one of the following values:

- **Sender**
- **Subject/URL/File name**
- **Submitted by**
- **Submission type**
- **Status**

![Filter options for admin submissions](../../media/admin-submission-email-filter-options.png)

To export the results, click **Export** near the top of the page and select **Chart data** or **Table**. In the dialog that appears, save the .csv file.

Below the graph, there are three tabs: **Email** (default), **URL**, and **Attachment**.

### View admin email submissions

Click the **Email** tab.

You can click the **Column options** button near the bottom of the page to add or remove columns from the view:

- **Date**
- **Submission ID**: A GUID value that's assigned to every submission.
- **Submitted by**<sup>\*</sup>
- **Subject**<sup>\*</sup>
- **Sender**
- **Sender IP**<sup>\*</sup>
- **Submission type**
- **Delivery reason**
- **Status**<sup>\*</sup>
- **Control type**
- **Control source**

  <sup>\*</sup> If you click this value, detailed information is displayed in a flyout.

### View admin URL submissions

Click the **URL** tab.

You can click the **Column options** button near the bottom of the page to add or remove columns from the view:

- **Date**
- **Submission ID**
- **Submitted by**<sup>\*</sup>
- **URL**<sup>\*</sup>
- **Submission type**
- **Status**<sup>\*</sup>

  <sup>\*</sup> If you click this value, detailed information is displayed in a flyout.

### View admin attachment submissions

Click the **Attachments** tab.

You can click the **Column options** button near the bottom of the page to add or remove columns from the view:

- **Date**
- **Submission ID**
- **Submitted by**<sup>\*</sup>
- **File name**<sup>\*</sup>
- **Submission type**
- **Status**<sup>\*</sup>

  <sup>\*</sup> If you click this value, detailed information is displayed in a flyout.

## View user submissions to Microsoft

If you've deployed the [Report Message add-in](enable-the-report-message-add-in.md), or people use the [built-in reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md), you can see what users are reporting on the **User submissions** tab.

1. In the Security & Compliance Center, go to **Threat management** \> **Submissions**.

2. Select the **User submissions** tab, and then click **New submission**.

You can click the **Column options** button near the bottom of the page to add or remove columns from the view:

- **Submitted on**
- **Submitted by**<sup>\*</sup>
- **Subject**<sup>\*</sup>
- **Sender**
- **Sender IP**<sup>\*</sup>
- **Submission type**

<sup>\*</sup> If you click this value, detailed information is displayed in a flyout.

Near the top of the page, you can enter a start date, an end date, and (by default) you can filter by **Sender** by entering a value in the box and clicking ![Refresh button](../../media/scc-quarantine-refresh.png). You can enter multiple values separated by commas.

To change the filter criteria, click the **Sender** button and choose one of the following values:

- **Sender domain**
- **Subject**
- **Submitted by**
- **Submission type**
- **Sender IP**

![Filter options for user submissions](../../media/user-submissions-filter-options.png)

To export the results, click **Export** near the top of the page and select **Chart data** or **Table**. In the dialog that appears, save the .csv file.

## View user submissions to the custom mailbox

**If** you've [configured a custom mailbox](user-submission.md) to receive user reported messages, you can view and also submit messages that were delivered to the reporting mailbox.

1. In the Security & Compliance Center, go to **Threat management** \> **Submissions**.

2. Select the **Custom mailbox** tab.

You can click the **Column options** button near the bottom of the page to add or remove columns from the view:

- **Submitted on**
- **Submitted by**<sup>\*</sup>
- **Subject**<sup>\*</sup>
- **Sender**
- **Sender IP**<sup>\*</sup>
- **Submission type**

Near the top of the page, you can enter a start date, an end date, and you can filter by **Submitted by** by entering a value in the box and clicking ![Refresh button](../../media/scc-quarantine-refresh.png). You can enter multiple values separated by commas.

To export the results, click **Export** near the top of the page and select **Chart data** or **Table**. In the dialog that appears, save the .csv file.

### Submit messages to Microsoft from the custom mailbox

If you've configured the custom mailbox to intercept user-reported messages without sending the messages to Microsoft, you can find and send specific messages to Microsoft for analysis. This effectively moves a user submission to an admin submission.

On the **Custom mailbox** tab, select a message in the list, click the **Action** button, and make one of the following selections:

- **Report clean**
- **Report phishing**
- **Report malware**
- **Report spam**

![Options on the Action button](../../media/user-submission-custom-mailbox-action-button.png)
