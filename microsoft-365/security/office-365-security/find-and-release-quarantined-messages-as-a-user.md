---
title: Find and release quarantined messages as a user
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Consumer/IW
ms.topic: how-to

localization_priority: Priority
search.appverid: 
  - MET150
  - MEW150
ms.assetid: efff08ec-68ff-4099-89b7-266e3c4817be
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Users can learn how to view and manage quarantined messages in Exchange Online Protection (EOP) that should have been delivered to them.
ms.technology: mdo
ms.prod: m365-security
---

# Find and release quarantined messages as a user in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine holds potentially dangerous or unwanted messages. For more information, see [Quarantine in EOP](quarantine-email-messages.md).

As a recipient of a quarantined message, what you can do to the message as a non-admin user is described in the following table:

<br>

****

|Quarantine reason|View|Release|Delete|
|---|:---:|:---:|:---:|
|Bulk|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
|Spam|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
|Phishing (not high confidence phishing)|![Check mark](../../media/checkmark.png)||![Check mark](../../media/checkmark.png)|
|

You view and manage your quarantined messages in the Microsoft 365 Defender portal or (if an admin has set this up) in [end-user spam notifications](use-spam-notifications-to-release-and-report-quarantined-messages.md).

## What do you need to know before you begin?

- To open the Microsoft 365 Defender portal, go to <https://security.microsoft.com>. To open the Quarantine page directly, go to <https://security.microsoft.com/quarantine>.

- Admins can configure how long messages are kept in quarantine before they're permanently deleted in anti-spam policies. Messages that have expired from quarantine are unrecoverable. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

- Admins can also [enable end-user spam notifications](configure-your-spam-filter-policies.md#configure-end-user-spam-notifications) in anti-spam policies. Users can release quarantined spam messages directly from these notifications. Users can review quarantined phishing messages (not high confidence phishing messages) directly from these notifications. For more information, see [End-user spam notifications in EOP](use-spam-notifications-to-release-and-report-quarantined-messages.md).

- Messages that were quarantined for high confidence phishing, malware, or by mail flow rules (also known as transport rules) are only available to admins, and aren't visible to users. For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).

- You can only release a message and report it as a false positive (not junk) once.

## View your quarantined messages

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Review** \> **Quarantine**.

2. You can sort the results by clicking on an available column header. Click **Modify columns** to show a maximum of seven columns. The default values are marked with an asterisk (<sup>\*</sup>):

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

3. To filter the results, click **Filter**. The available filters are:

   - **Expires time**: Filter messages by when they will expire from quarantine:
     - **Today**
     - **Next 2 days**
     - **Next 7 days**
     - **Custom**: Enter a **Start date** and **End date**.

   - **Received time**: Enter a **Start date** and **End date**.

   - **Quarantine reason**:
     - **Bulk**
     - **Spam**
     - **Phish**

   - **Policy Type**: Filter messages by policy type:
     - **Anti-malware policy**
     - **Safe Attachments policy** (Defender for Office 365)
     - **Anti-phish policy**
     - **Hosted content filter policy** (anti-spam policy)
     - **Transport rule**

     <sup>\*</sup>

   To clear the filter, click **Clear**. To hide the filter flyout, click **Filter** again.

4. Use **Sort results by** (the **Message ID** button by default) and a corresponding value to find specific messages. Wildcards aren't supported. You can search by the following values:

   - **Message ID**: The globally unique identifier of the message. If you select a message in the list, the **Message ID** value appears in the **Details** flyout pane that appears. Admins can use [message trace](message-trace-scc.md) to find messages and their corresponding Message ID values.
   - **Sender email address**: A single sender's email address.
   - **Policy name**: Use the entire policy name of the message. The search is not case-sensitive.
   - **Recipient email address**: A single recipient's email address.
   - **Subject**: Use the entire subject of the message. The search is not case-sensitive.

   After you've entered the search criteria, click ![Refresh button](../../media/scc-quarantine-refresh.png) **Refresh** to filter the results.

After you find a specific quarantined message, select the message to view details about it, and to take action on it (for example, view, release, download, or delete the message).

### Export message results

1. Select the messages you're interested in, and click **Export results**.

2. Click **Yes** in the confirmation message that warns you to keep the browser window open.

3. When your export is ready, you can name and choose the download location for the .csv file.

### View quarantined message details

When you select an email message in the list, the following message details appear in the **Details** flyout pane:

- **Message ID**: The globally unique identifier for the message.
- **Sender address**
- **Received**: The date/time when the message was received.
- **Subject**
- **Quarantine reason**: Shows if a message has been identified as **Spam**, **Bulk** or **Phish**.
- **Recipients**: If the message contains multiple recipients, you need to click **Preview message** or **View message header** to see the complete list of recipients.
- **Expires**: The date/time when the message will be automatically and permanently deleted from quarantine.
- **Released to**: All email addresses (if any) to which the message has been released.
- **Not yet released to**: All email addresses (if any) to which the message has not yet been released.

### Take action on quarantined email

After you select a message, you have options for what to do with the messages in the **Details** flyout pane:

- **Release message**: In the flyout pane that appears, choose whether to **Report messages to Microsoft for analysis**. This is selected by default, and reports the erroneously quarantined message to Microsoft as a false positive.

  When you're finished, click **Release messages**.

- **View message header**: Choose this link to see the message header text. To analyze the header fields and values in depth, copy the message header text to your clipboard, and then choose **Microsoft Message Header Analyzer** to go to the Remote Connectivity Analyzer (right-click and choose **Open in a new tab** if you don't want to leave Microsoft 365 to complete this task). Paste the message header onto the page in the Message Header Analyzer section, and choose **Analyze headers**:

- **Preview message**: In the flyout pane that appears, choose one of the following options:
  - **Source view**: Shows the HTML version of the message body with all links disabled.
  - **Text view**: Shows the message body in plain text.

- **Remove from quarantine**: After you click **Yes** in the warning that appears, the message is immediately deleted.

- **Block Sender**: Add the sender to the Blocked Senders list on your mailbox. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).

Add the sender to the Blocked Senders list on your mailbox. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).

When you're finished, click **Close**.

If you don't release or remove the message, it will be deleted after the default quarantine retention period expires.

#### Take action on multiple quarantined email messages

When you select multiple quarantined messages in the list (up to 100), the **Bulk actions** flyout pane appears where you can take the following actions:

- **Release messages**: The options are the same as when you release a single message, except you can't select **Release messages to specific recipients**; you can only select **Release message to all recipients** or **Release messages to other people**.
- **Delete messages**:  After you click **Yes** in the warning that appears, the message are immediately deleted without being sent to the original recipients.

When you're finished, click **Close**.
