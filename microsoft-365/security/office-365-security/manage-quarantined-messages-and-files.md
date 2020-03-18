---
title: "Manage quarantined messages and files as an admin in Office 365"
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid: 065cc2cf-2f3a-47fd-a434-2a20b8f51d0c
ms.collection:
- M365-security-compliance
description: "Admins can view, release, and delete all types of quarantined messages for all users. Only admins can manage messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (transport rules)."
---

# Manage quarantined messages and files as an admin in Office 365

Quarantine holds potentially dangerous or unwanted messages in Office 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes. For more information, see [Quarantine in Office 365](quarantine-email-messages.md).

Admins can view, release, and delete all types of quarantined messages for all users. Only admins can manage messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (also known as transport rules). Admins can also report false positives to Microsoft.

Admins in organizations with Office 365 Advance Threat Protection (ATP) can also view, download, and delete quarantined files in SharePoint Online, OneDrive for Business, and Microsoft Teams.

You view and manage quarantined messages in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Office 365 customers; Exchange Online Protection PowerShell for standalone EOP customers).

## What do you need to know before you begin?

- To open the Office 365 Security & Compliance Center, go to <https://protection.office.com>. To open the Quarantine page directly, go to <https://protection.office.com/quarantine>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can manage the quarantine as an admin. The permissions are controlled by the **Quarantine** role in the Security & Compliance Center. By default, this role is assigned to the **Organization Management** (Global admins), **Quarantine Administrator**, and **Security Administrator** role groups in the Security & Compliance Center. For more information, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- Quarantined messages are retained for a default period of time before they're automatically deleted:

  - Messages quarantined by anti-spam policies (spam, phishing, and bulk email): 30 days. This is the default and maximum value. To configure this value, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

  - Messages quarantined by mail flow rules (the rule action is **Deliver the message to the hosted quarantine**): 30 days. You can't change this value.

  - Messages that contain malware: 15 days.

  When a message expires from quarantine, you can't recover it.

## Use the Security & Compliance Center to manage quarantined email messages

### View quarantined email

1. In the Security and Compliance Center, go to **Threat Management** \> **Review** \> **Quarantine**.

2. Verify that **View quarantined** is set to the default value **email**.

3. You can sort the results by clicking on an available column header. Click **Modify columns** to show a maximum of seven columns. The default values are marked with an asterisk (<sup>\*</sup>):

   - **Received**<sup>\*</sup>

   - **Sender**<sup>\*</sup>

   - **Subject**<sup>\*</sup>

   - **Quarantine reason**<sup>\*</sup>

   - **Released?**<sup>\*</sup>

   - **Policy type**<sup>\*</sup>

   - **Expires**<sup>\*</sup>

   - **Recipient**

   - **Message ID**

   - **Policy name**

   - **Size**

   - **Direction**

   When you're finished, click **Save**, or click **Set to default**.

4. To filter the results, click **Filter**. The available filters are:

   - **Expires time**: Filter messages by when they will expire from quarantine:

     - **Today**

     - **Next 2 days**

     - **Next 7 days**

     - **Custom**: Enter a **Start date** and **End date**.

   - **Received time**: Enter a **Start date** and **End date**.

   - **Quarantine reason**:

     - **Policy**: The message matched the conditions of a mail flow rule (also known as a transport rule).

     - **Bulk**

     - **Phish**

     - **Malware**

     - **Spam**

     - **High Confidence Phish**

   - **Email recipient**: All users or only messages sent to you. End users can only manage quarantined messages sent to them.

   To clear the filter, click **Clear**. To hide the filter flyout, click **Filter** again.

5. Use **Sort results by** (the **Message ID** button by default) and a corresponding value to find specific messages. Wildcards aren't supported. You can search by the following values:

   - **Message ID**: The globally unique identifier of the message.

        For example, you used [message trace](message-trace-scc.md) to look for a message that was sent to a user in your organization, and you determine that the message was quarantined instead of delivered. Be sure to include the full message ID value, which might include angle brackets (\<\>). For example: `<79239079-d95a-483a-aacf-e954f592a0f6@XYZPR00BM0200.contoso.com>`.

   - **Sender email address**: A single sender's email address.

   - **Recipient email address**: A single recipient's email address.

   - **Subject**: Use the entire subject of the message. The search is not case-sensitive.

   After you've entered the search criteria, click ![Refresh button](../media/scc-quarantine-refresh.png) **Refresh** to filter the results.

After you find a specific quarantined message, select the message to view details about it, and to take action on it (for example, view, release, download, or delete the message).

#### Export message results

1. Select the messages you're interested in, and click **Export results**.

2. Click **Yes** in the confirmation message that warns you to keep the browser window open.

3. When your export is ready, you can name and choose the download location for the .csv file.

#### View quarantined message details

When you select an email message in the list, the following message details appear in the **Details** flyout pane:

- **Message ID**: The globally unique identifier for the message.

- **Sender address**

- **Received**: The date/time when the message was received.

- **Subject**

- **Quarantine reason**: Shows if a message has been identified as **Spam**, **Bulk**, **Phish**, matched a mail flow rule (**Transport rule**), or was identified as containing **Malware**.

- **Recipients**: If the message contains multiple recipients, you need to click **Preview message** or **View message header** to see the complete list of recipients.

- **Expires**: The date/time when the message will be automatically and permanently deleted from quarantine.

- **Released to**: All email addresses (if any) to which the message has been released.

- **Not yet released to**: All email addresses (if any) to which the message has not yet been released.

### Take action on quarantined email

After you select a message, you have several options for what to do with the messages in the **Details** flyout pane:

- **Release message**: In the flyout pane that appears, choose the following options:

  - **Report messages to Microsoft for analysis**: This is selected by default, and reports the erroneously quarantined message to Microsoft as a false positive. If the message was quarantined as spam, bulk, phishing, or containing malware, the message is also reported to the Microsoft Spam Analysis Team. Depending on their analysis, the service-wide spam filter rules might be be adjusted to allow the message through.

  - Choose one of the following options:

    - **Release messages to all recipients**

    - **Release messages to specific recipients**

    - **Release messages to other people**

  When you're finished, click **Release messages**.

  Notes about releasing messages:

  - You can't release a message to the same recipient more than once.

  - Only recipients who haven't received the message will appear in the list of potential recipients.

- **View message header**: Choose this link to see the message header text. To analyze the header fields and values in depth, copy the message header text to your clipboard, and then choose **Microsoft Message Header Analyzer** to go to the Remote Connectivity Analyzer (right-click and choose **Open in a new tab** if you don't want to leave Office 365 to complete this task). Paste the message header onto the page in the Message Header Analyzer section, and choose **Analyze headers**:

- **Preview message**: In the flyout pane that appears, choose one of the following options:

  - **Source view**: Shows the HTML version of the message body with all links disabled.
  
  - **Text view**: Shows the message body in plain text.

- **Remove from quarantine**: After you click **Yes** in the warning that appears, the message is immediately deleted without being sent to the original recipients.

- **Download message**: In the flyout pane that appears, select **I understand the risks from downloading this message** to save a local copy of the message in .eml format.

- **Submit message**: In the flyout pane that appears, choose the following options:

  - **Object type**: **Email** (default), **URL**, or **Attachment**.

  - **Submission format**: **Network Message ID** (default, with the corresponding value in the **Network Message ID** box) or **File** (browse to a local .eml or .msg file). Note that if you select **File** and then select **Network Message ID**, the initially value is gone.

  - **Recipients**: Type at lease one original recipient of the message, or click **Select All** to identify all recipients. You can also click **Select All** and then selectively remove individual recipients.

  - **Reason for submission**: **Should not have been blocked** (default) or **Should have been blocked**.

  When you're finished, click **Submit**.

If you don't release or remove the message, it will be deleted after the default quarantine retention period expires.

#### Take action on multiple quarantined email messages

When you select multiple quarantined messages in the list (up to 100), the **Bulk actions** flyout pane appears where you can take the following actions:

- **Release messages**: The options are the same as when you release a single message, except you can't select **Release messages to specific recipients**; you can only select **Release message to all recipients** or **Release messages to other people**.

- **Delete messages**:  After you click **Yes** in the warning that appears, the message are immediately deleted without being sent to the original recipients.

When you're finished, click **Close**.

## ATP Only: Use the Security & Compliance Center to manage quarantined files

> [!NOTE]
> The procedures for quarantined files in this section are available only to ATP Plan 1 and Plan 2 subscribers.

In organizations with ATP, admins can managed quarantined files in SharePoint Online, OneDrive for Business, and Microsoft Teams.

### View quarantined files

1. In the Security and Compliance Center, go to **Threat Management** \> **Review** \> **Quarantine**.

2. Change **View quarantined** to the default value **files**. You can sort on a field by clicking on an available column header.

3. You can sort the results by clicking on an available column header. Click **Modify columns** to show a maximum of seven columns. The default columns are marked with an asterisk (<sup>\*</sup>):

   - **User**<sup>\*</sup>

   - **Location**<sup>\*</sup>

   - **File name**<sup>\*</sup>

   - **File URL**<sup>\*</sup>

   - **File Size**<sup>\*</sup>

   - **Expires**<sup>\*</sup>

   - **Released?**<sup>\*</sup>

   - **Detected by**

   - **Modified by time**

4. To filter the results, click **Filter**. The available filters are:

   - **Expires time**: Filter messages by when they will expire from quarantine:

     - **Today**

     - **Next 2 days**

     - **Next 7 days**

     - A custom date/time range.

   - **Received time**

   - **Quarantine reason**: The only available value is **Malware**.

After you find a specific quarantined file, select the file to view details about it, and to take action on it (for example, view, release, download, or delete the message).

#### Export file results

1. Select the files you're interested in, and click **Export results**.

2. Click **Yes** in the confirmation message that warns you to keep the browser window open.

3. When your export is ready, you can name and choose the download location for the .csv file.

#### View quarantined file details

When you select a file in the list, the following file details appear in the **Details** flyout pane:

- **File Name**

- **File URL**: URL that defines the location of the file (for example, in SharePoint Online).

- **Malicious content detected on** The date/time the file was quarantined.

- **Expires**: The date when the file will be deleted from quarantine.

- **Detected By**: ATP (Advanced Threat Protection) or Microsoft's anti-malware engine.

- **Released?**

- **Malware Name**

- **Document ID**: A unique identifier for the document.

- **File Size**: In kilobytes (KB).

- **Organization** Your organization's unique ID.

- **Last modified**

- **Modified By**: The user who last modified the file.

- **Secure Hash Algorithm 256-bit (SHA-256) value**: You can use this hash value to identify the file in other reputation stores or in other locations in your environment.

### Take action on quarantined files

When you select a file in the list, you can take the following actions on the file in the **Details** flyout pane:

- **Release files**: Select (default) or unselect **Report files to Microsoft for analysis**, and then click **Release files**.

- **Download file**

- **Remove file from quarantine**

If you don't release or remove the files, they will be deleted after the default quarantine retention period expires.

#### Actions on multiple quarantined files

When you select multiple quarantined files in the list (up to 100), the **Bulk actions** flyout pane appears where you can take the following actions:

- **Release files**

- **Delete files**:  After you click **Yes** in the warning that appears, the files are immediately deleted.

When you're finished, click **Close**.

## Use Exchange Online PowerShell or standalone Exchange Online Protection PowerShell to view and manage quarantined messages and files

The cmdlets you use to view and manages messages and files in quarantine are:

- [Delete-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/delete-quarantinemessage)

- [Export-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/export-quarantinemessage)

- [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-quarantinemessage)

- [Preview-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/preview-quarantinemessage): Note that this cmdlet is only for messages, not malware files from ATP for SharePoint Online, OneDrive for Business, or Teams.

- [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/release-quarantinemessage)
