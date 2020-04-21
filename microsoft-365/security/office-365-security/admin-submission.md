---
title: "Admin submissions in Office 365, O365 submissions, Office 365 spam problem, O365 false negative, submit phish in office 365, submit email for scanning, suspicious email in Office 365, scan a mail, have Microsoft scan for phish, have Microsoft scan for spam, submit e-mail, submit email, dodgy email, bad actor mail, suspicious, untrusted mail, report phish emails to Microsoft, report phish emails to Microsoft, report malicious email to Microsoft, report scam email to Microsoft, report malware in email to Microsoft, spam email in inbox office 365, virus in email office 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Learn how to submit suspicious emails, suspected phishing mails, spam, and other potentially harmful messages, URLs, and files from your Office 365 tenant to Microsoft for scanning."
---

# Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft

If you're an admin in an Office 365 organization with mailboxes in Exchange Online, you can use the Submissions portal in the Office 365 Security & Compliance Center to submit email messages, URLs and attachments to Microsoft for scanning.

When you submit an email, you will get information about any policies that may have allowed the incoming email into your tenant, as well as examination of any URLs and attachments in the mail. Policies that may have allowed a mail include an individual user's safe sender list as well as tenant level policies such as Exchange mail flow rules (also known as transport rules).

For other ways to submit email messages, URLs, and attachments to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Submission** page, use <https://protection.office.com/reportsubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can perform these procedures. To add, modify, and delete anti-spam policies, you need to be a member of the **Organization Management**, **Security Administrator**, or **Security Reader** role groups. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- For more information about how users can submit messages and files to Microsoft see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## How to direct suspicious content to Microsoft for Office 365 scanning

1. In the Security & Compliance Center, go to **Threat management** \> **Review** \> **Admin submission messages**.

2. On the **Submissions** page that appears, click the **New submission** button.

3. Use **New submission** flyout that appears to submit the message, URL, or attachment as described in the following sections.

### Submit a questionable email to Microsoft

1. In the **Object type** section, select **Email**. In the **Submission format** section, use one of the following options:

   - **Network Message ID**

   - **File**: Click **Choose file** file. In the dialog that opens, find and select the .eml or .msg file, and then click **Open**.

2. In the **Recipients** section, specify one or more recipients that you would like to run a policy check against. The policy check will determine if the email bypassed scanning due to user or organization policies.

3. In the **Reason for submission** section, select one of the following options:

   - **Should not have been blocked**

   - **Should have been blocked**: Select **Spam**, **Phishing**, or **Malware**. If you're not sure, use your best judgment.

4. If the filter was bypassed due to policies upon submission, you'll see information about that policy.

   If the filter was not bypassed due to one or more policies, the scan will complete in several minutes. You'll see additional information about the submission by clicking on the status link. This includes the results of the policy check and the rescan verdict. Note this does not run the email through the Office 365 ATP full filtering stack again but runs a partial rescan based on certain attributes of the mail, URL, or file.

5. When you're finished, click the **Submit** button.

![URL submission example](../../media/submission-flyout-email.PNG)

### Send a suspect URL to Microsoft

1. In the **Object type** section, select **URL**. In the box that appears, enter the full URL (for example, <https://www.fabrikam.com/marketing.html>.

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
