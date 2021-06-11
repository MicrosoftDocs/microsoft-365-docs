---
title: Admin submissions
f1.keywords: 
  - NOCSH
ms.author: siosulli
author: siosulli
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to
localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn how to use the Submissions portal in the Microsoft 365 Defender portal to submit suspicious emails, suspected phishing mails, spam, and other potentially harmful messages, URLs, and email attachments to Microsoft for rescanning.
ms.technology: mdo
ms.prod: m365-security
---

# Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)


In Microsoft 365 organizations with Exchange Online mailboxes, admins can use the Submissions portal in the Microsoft 365 Defender portal to submit email messages, URLs, and attachments to Microsoft for scanning.

When you submit an email message, you will get:

- **Email authentication check**: Details on whether email authentication passed or failed when it was delivered.
- **Policy hits**: Information about any policies that may have allowed or blocked the incoming email into your tenant, overriding our service filter verdicts.
- **Payload reputation/detonation**: Examination of any URLs and attachments in the message.
- **Grader analysis**: Review done by human graders in order to confirm whether or not messages are malicious.

> [!IMPORTANT]
> Payload reputation/detonation and grader analysis are not done in all tenants. Information is blocked from going outside the organization when data is not supposed to leave the tenant boundary for compliance purposes.

For other ways to submit email messages, URLs, and attachments to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com/>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To submit messages and files to Microsoft, you need to be a member of one of the following role groups:
  - **Organization Management** or **Security Reader** in the [Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).
  - **Organization Management** in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups).

    Note that membership in this role group is required to [View user submissions to the custom mailbox](#view-user-submissions-to-microsoft) as described later in this article.

- For more information about how users can submit messages and files to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Report suspicious content to Microsoft

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Submissions**.

2. On the **Submissions** page, verify that the **Submitted for analysis** tab is selected, and then click ![Ad icon](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for review** flyout that appears to submit the message, URL, or email attachment as described in the following sections.

### Submit a questionable email to Microsoft

1. In the **Select the submission type** box, verify that **Email** is selected in the drop down list.

2. In the **Add the network message ID or upload the email file** section, use one of the following options:
   - **Add the email network message ID**: This is a GUID value that's available in the **X-MS-Exchange-Organization-Network-Message-Id** header in the message or in the **X-MS-Office365-Filtering-Correlation-Id** header in quarantined messages.
   - **Upload the email file (.msg or .eml)**: Click **Browse files**. In the dialog that opens, find and select the .eml or .msg file, and then click **Open**.

   > [!NOTE]
   > The ability to submit messages as old as 30 days has been temporarily suspended for Defender for Office 365 customers. Admins will only be able to go back 7 days.

3. In the **Choose a recipient who had an issue** box, specify the recipient that you would like to run a policy check against. The policy check will determine if the email bypassed scanning due to user or organization policies.

4. In the **Select a reason for submitting to Microsoft** section, select one of the following options:
   - **Should not have been blocked (false positive)**
   - **Should have been blocked**: In the **The email should have been categorized as** section that appears, select one of the following values (if you're not sure, use your best judgement):
     - **Phish**
     - **Spam**
     - **Malware**

5. When you're finished, click the **Submit** button.

   ![New URL submission example](../../media/submission-flyout-email.PNG)

### Send a suspect URL to Microsoft

1. In the **Select the submission type** box, select **URL** from the drop down list.

2. In the **URL** box that appears, enter the full URL (for example, `https://www.fabrikam.com/marketing.html`).

3. In the **Select a reason for submitting to Microsoft** section, select one of the following options:
   - **Should not have been blocked (false positive)**
   - **Should have been blocked**: In the **This URL should have been categorized as** section that appears, select **Phish** or **Malware**.

4. When you're finished, click the **Submit** button.

   ![New Email submission example](../../media/submission-url-flyout.png)

### Submit a suspected email attachment to Microsoft

1. In the **Select the submission type** box, select **File** from the drop down list.

2. In the **File** section that appears, click **Browse files**. In the dialog that opens, find and select the file, and then click **Open**.

3. In the **Select a reason for submitting to Microsoft** section, select one of the following options:
   - **Should not have been blocked (false positive)**
   - **Should have been blocked**: In the **This URL should have been categorized as** section that appears, **Malware** is the only choice, and is automatically selected.

4. When you're finished, click the **Submit** button.

   ![New Attachment submission example](../../media/submission-file-flyout.PNG)

## View admin submissions to Microsoft

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Submissions**.

2. On the **Submissions** page, verify that the **Submitted for analysis** tab is selected.

   - You can sort the entries by clicking on an available column header. Click **Customize columns** to show a maximum of seven columns. The default values are marked with an asterisk (<sup>\*</sup>):
     - **Submission name**<sup>\*</sup>
     - **Sender**<su>\*</sup>
     - **Date submitted**<sup>\*</sup>
     - **Submission type**<sup>\*</sup>
     - **Reason for submitting**<sup>\*</sup>
     - **Rescan status**<sup>\*</sup>
     - **Rescan result**<sup>\*</sup>
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

     When you're finished, click **Apply**.

   - To filter the entries, click **Filter**. The available filters are:
     - **Date submitted**: **Start date** and **End date**.
     - **Submission type**: **Email**, **URL**, or **File**.
     - **Submission ID**: A GUID value that's assigned to every submission.
     - **Network Message ID**
     - **Sender**

     When you're finished, click **Apply**.

     ![New Filter options for admin submissions](../../media/admin-submission-email-filter-options.png)

   - To group the entries, click **Group** and select one of the following values from the drop down list:
     - **None**
     - **Type**
     - **Reason**
     - **Status**
     - **Rescan result**

   - To export the entries, click **Export**. In the dialog that appears, save the .csv file.

### Admin submission rescan details

Messages that are submitted in admin submissions are rescanned and results shown in the submissions detail flyout:

- If there was a failure in the sender's email authentication at the time of delivery.
- Information about any policy hits that could have affected or overridden the verdict of a message.
- Current detonation results to see if the URLs or files contained in the message were malicious or not.
- Feedback from graders.

If an override was found, the rescan should complete in several minutes. If there wasn't a problem in email authentication or delivery wasn't affected by an override, then the feedback from graders could take up to a day.

## View user submissions to Microsoft

If you've deployed the [Report Message add-in](enable-the-report-message-add-in.md), the [Report Phishing add-in](enable-the-report-phish-add-in.md), or people use the [built-in reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md), you can see what users are reporting on the **User reported message** tab.

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Submissions**.

2. On the **Submissions** page, select the **User reported messages** tab.

   - You can sort the entries by clicking on an available column header. Click **Customize columns** to show a maximum of seven columns. The default values are marked with an asterisk (<sup>\*</sup>):

     - **Email subject**<sup>\*</sup>
     - **Reported by**<su>\*</sup>
     - **Date reported**<sup>\*</sup>
     - **Sender**<sup>\*</sup>
     - **Reported reason**<sup>\*</sup>
     - **Rescan result**<sup>\*</sup>
     - **Message reported ID**
     - **Network Message ID**
     - **Sender IP**
     - **Phish simulation**

     When you're finished, click **Apply**.

   - To filter the entries, click **Filter**. The available filters are:
     - **Date reported**: **Start date** and **End date**.
     - **Reported by**
     - **Email subject**
     - **Message reported ID**
     - **Network Message ID**
     - **Sender**
     - **Reported reason**: **Not junk**, **Phish**, or **Spam**.
     - **Phish simulation**: **Yes** or **No**

     When you're finished, click **Apply**.

    ![New Filter options for user submissions](../../media/user-submissions-filter-options.png)

   - To group the entries, click **Group** and select one of the following values from the drop down list:
     - **None**
     - **Reason**
     - **Sender**
     - **Reported by**
     - **Rescan result**
     - **Phish simulation**

   - To export the entries, click **Export**. In the dialog that appears, save the .csv file.

> [!NOTE]
> If organizations are configured to send user reported messages to the custom mailbox only, reported messages will not be sent for rescan and the results in **User reported messages** will always be empty.

### Undo user submissions

Once a user submits a suspicious email to the custom mailbox, the user and admin don't have an option to undo the submission. If the user would like to recover the email, it will be available for recovery in the Deleted Items or Junk Email folders.

### Submit messages to Microsoft from the custom mailbox

If you've configured the custom mailbox to intercept user-reported messages without sending the messages to Microsoft, you can find and send specific messages to Microsoft for analysis. This effectively moves a user submission to an admin submission.

On the **User reported messages** tab, select a message in the list, click **Submit to Microsoft for analysis**, and then select one of the following values from the drop down list:

- **Report clean**
- **Report phishing**
- **Report malware**
- **Report spam**
- **Trigger investigation**

![New Options on the Action button](../../media/user-submission-custom-mailbox-action-button.png)
