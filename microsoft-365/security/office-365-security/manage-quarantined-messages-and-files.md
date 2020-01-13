---
title: "Manage quarantined messages and files as an administrator in Office 365"
ms.author: tracyp
author: MSFTTracyp
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
description: "As an admin, you can view, release, and report false positive quarantined messages in Office 365. You can set up policies so that Office 365 filters messages and sends them to quarantine for several reasons: Because they were identified as spam, bulk, phishing, malware, or because they matched a mail flow rule. "
---

# Manage quarantined messages and files as an administrator in Office 365

As an admin, you can view, release, and delete quarantined messages, and report false positive quarantined messages in Office 365. You can also view, download, and delete quarantined files captured by Advance Threat Protection (ATP) for SharePoint Online, OneDrive for Business, and Microsoft Teams. You can set up policies so that Office 365 filters messages and sends them to quarantine for several reasons: Because they were identified as spam, bulk mail, phishing mail, containing malware, or because they matched a mail flow rule.

By default, Office 365 sends phishing messages and messages containing malware directly to quarantine. Other filtered messages are sent to users' Junk Email folder unless you set up a policy to send them to quarantine.

You must have global administrator (GA) permissions in Office 365, or be a member of one or more Security & Compliance Center role groups, to work with quarantined messages or quarantined files. See [Permissions in the Office 365 Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/permissions-in-the-security-and-compliance-center) for more information.

## What permissions are needed to access administrator quarantine?

The permissions to manage quarantine are controlled by membership in *Security  & Compliance Center* role groups (specifically, the **Quarantine** role). For more information about roles and role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

The Security & Compliance role groups that give permissions to manage quarantine by default are:

- **Organization Management** (Global admins)

- **Quarantine Administrator**

- **Security Administrator**

## View your organization's quarantined messages

1. Using a work or school account that has global administrator privileges (or appropriate Security & Compliance Center roles) in your Office 365 organization, sign into Office 365 and [go to the Security and Compliance Center](../../compliance/go-to-the-securitycompliance-center.md).

2. In the list on the left, expand **Threat Management**, choose **Review**, and then choose **Quarantine**.

    > [!TIP]
    > To go directly to the **Quarantine** page in the Security & Compliance Center, use this URL: > [https://protection.office.com/?hash=/quarantine](https://protection.office.com/?hash=/quarantine)

    By default, the Security & Compliance Center displays all email messages that have been quarantined as spam. The messages are sorted from newest to oldest based on the **Date** the message was received. **Sender**, **Subject**, and the expiration date (under **Expires** ) are also displayed for each message. You can sort on a field by clicking the corresponding column header; click a column header a second time to reverse the sort order.

3. You can view a list of all quarantined messages, or you can reduce the result set by filtering. You can only do bulk operations on up to 100 items, so filtering can also help reduce your result set if you have more than that. You can quickly filter messages for a single quarantine reason by choosing an option from the filter at the top of the page. Options include:

   - Mail identified as spam

   - Mail quarantined because it matched a policy set by a mail flow rule (also known as a transport rule)

   - Mail identified as bulk mail

   - Mail identified as phishing mail

   - Mail quarantined because it contains malware

In addition, as an admin, you can choose to filter all messages for your organization or only messages sent to you. End users can only view and work with messages sent to them.

You can also filter your results to find specific messages. For tips, see [To filter results and find quarantined messages and files](manage-quarantined-messages-and-files.md#BKMK_AdvSearch) in this article.

After you find a specific quarantined message, click the message to view details about it, and take actions, like releasing the message to someone's mailbox.

## View your organization's quarantined files

1. Using a work or school account that has global administrator privileges (or appropriate Security & Compliance Center roles) in your Office 365 organization, sign in to Office 365 and [go to the Security and Compliance Center](../../compliance/go-to-the-securitycompliance-center.md).

2. On the left, expand **Threat Management**, choose **Review**, and then choose **Quarantine**.

   > [!TIP]
   > To go directly to the **Quarantine** page in the Security & Compliance Center, use this URL: > [https://protection.office.com/?hash=/quarantine](https://protection.office.com/?hash=/quarantine)

3. By default, the page displays quarantined email messages. To view quarantined files, set the filters at the top of the page to show **files**, quarantined due to **malware**. You must have admin permissions in Office 365 to work with quarantined files.

4. The files are sorted from newest to oldest based on the date the file was quarantined. The **User** who last modified the file, the **Service** to which the file was posted, the **File Name**, **Location**, **File Size**, and the expiration date ( **Expires**) are also listed for each file. You can sort on a field by clicking a header; click a column header a second time to reverse the sort order.

You can view a list of all quarantined files, or you can search for specific files by filtering. Just like messages, you can only do bulk operations on up to 100 items. Currently, the Security & Compliance Center lets you view and manage files that are in quarantine because they have been identified as containing malware. For tips, see [To filter results and find quarantined messages and files](manage-quarantined-messages-and-files.md#BKMK_AdvSearch) in this article.

## To filter results and find quarantined messages and files
<a name="BKMK_AdvSearch"> </a>

Depending on your settings, there may be a lot of quarantined messages and files. To find a specific message or file or set of messages or files, you can filter quarantined items based on a variety of additional information.

1. On the **Quarantine** page, ensure that the top row of filters is set to display messages or files as appropriate:

   - To search for files, set the filters to show **files** quarantined due to **malware**.

     For quarantined files, the page displays all quarantined files, not just your own, regardless of what you tell it to show.

   - To search for quarantined messages, set filters to show **all** or **only my** **email**. For the last filter choose the type of quarantined message that you're looking for. You can search for quarantined messages that have been identified as **spam**, for messages that matched a mail flow rule (**transport rule**), **bulk** mail, **phishing** mail, or mail that contains **malware**.

2. Under **Sort results by**, choose the filter or filters you want to use to search from the drop-down lists. The options vary based on whether you are searching for files or messages. Wildcards are not supported in search fields at this time.

   For both files and messages, you can choose to filter by the date the message or file was sent to quarantine. You can specify the date or a date range, including the time. You can also filter your search results by the expiration date on which the file or message will be deleted from quarantine, or you can use a combination of filters. To search by expiration date, choose **Advanced filter**. Under **Expires**, you can select messages that will be deleted from quarantine within the next 24 hours ( **Today**), within the next 48 hours ( **Next 2 days**), within the next week ( **Next 7 days**), or you can select a custom time interval.

   For messages, you have the following additional options:

   - **Message ID**: Use this to identify a specific message when you know the message ID.

     For example, if a specific message is sent by, or intended for, a user in your organization, but it never reached its destination, you can search for the message by using a message trace (see [Message trace in the Security & Compliance Center](message-trace-scc.md)). If you discover that the message was sent to quarantine, perhaps because it matched a mail flow rule or was identified as spam, you can then easily find this message in quarantine by specifying its message ID. Be sure to include the full message ID string. This might include angle brackets (\<\>), for example:

     `<79239079-d95a-483a-aacf-e954f592a0f6@XYZPR00BM0200.contoso.com>`

   - **Sender email address**: Choose to filter by a single sender email address.

   - **Recipient email address**: Choose to filter by a single recipient email address.

   - **Subject**: Enter the subject of an email address you want to find. Since wildcard searching is not supported, you must use the entire subject of the message in order for search to return the message in the results. The search is not case-sensitive.

## View details about quarantined messages and files

When you select an item displayed in the quarantine list, you'll see a summary of its properties in the **Details** pane on the right side of the Security & Compliance Center.

### Details displayed for quarantined messages

- **Message ID**: The unique identifier for the message.

- **Sender Address**: Who sent the message.

- **Received**: The date and time the message was received.

- **Subject**: The text of the subject line of the message.

- **Type**: Shows if a message has been identified as **Spam**, **Bulk**, **Phish**, matched a mail flow rule (**Transport rule**), or was identified as containing **Malware**.

- **Expires**: The date and time when the message will automatically be deleted from quarantine.

- **Released to**: All email addresses (if any) to which the message has been released.

- **Not yet released to**: All email addresses (if any) to which the message has not yet been released.

### Details displayed for quarantined files

- **File Name** The name of the file in quarantine.

- **Site path** URL that defines the location of the file in Office 365.

- **Detected Date / Time** The date and time the file was quarantined.

- **Expires** The date when the message will be deleted from quarantine.

- **Detected By** The method used to detect the malware in the file. This can be either ATP (Advanced Threat Protection) or Microsoft's anti-malware engine.

- **Released** Describes whether or not the file has been released.

- **Malware Name** Family and name of the malware detected in the file.

- **Document ID** A unique identifier for the document.

- **File Size** The size of the file in KB.

- **Organization** Your organization's unique ID in Office 365.

- **Modified By** The work or school account of the user who last modified the file.

- **File Size** The size of the file in KB.

- **SHA256 Hash** The hash of the file. You can use this to look up other reputation stores you may have or investigate where else the file might be in your environment.

## Managing messages and files in quarantine
<a name="BKMK_ManageQuarantinedItem"> </a>

After you select a message or group of messages you have several options for managing messages in quarantine.

- Do nothing. If you choose to do nothing, the message will be deleted by Office 365 automatically upon expiration. By default, spam, bulk, malware, phishing, and messages quarantined because they matched a mail flow rule are kept in quarantine for 30 days. When Office 365 deletes a message from quarantine, you can't get it back. If you like, you can change the retention period for quarantined messages by configuring the **Retain spam for (days)** setting in your anti-spam policies. For more information, see [Setting the quarantine retention period](manage-quarantined-messages-and-files.md#BKMK_ModQuarantineTime) in this article.

- **View message header**: Choose this link to see the message header text. To analyze the header in depth, copy the message header text to your clipboard, and then choose **Microsoft Message Header Analyzer** to go to the Remote Connectivity Analyzer (right-click and choose **Open in a new tab** if you don't want to leave Office 365 to complete this task).Paste the message header onto the page in the Message Header Analyzer section, and choose **Analyze headers**:

- **Preview message**: Lets you see raw or HTML versions of the message body text. In the HTML view, links are disabled.

- **Download message** or **Download file**: Choose this option to download a copy of the message or file to your local device. You'll need to confirm that you understand the risks associated with downloading items from quarantine before you'll be allowed to do so. Messages are saved in .eml format to a folder you specify. Quarantined files are saved in their original format.

- **Delete**: If you want, you can immediately delete a quarantined item (or set of items) instead of waiting for the expiration date set by Office 365. To delete a message or file, in the quarantine list, select the item and then choose **Delete**. To delete multiple items at once, select the checkbox to the left of the items in the quarantine list, and then on the **Bulk actions** page that appears, choose **Delete selected messages** or **Delete selected files**.

- **Release**: Release a quarantined item (or set of items) and report the items as falsely quarantined (false positives) to Microsoft.

  To release and report a single message or file, in the quarantine list, select the item, choose **Release file** or **Release message**. On the next page, ensure that **report messages to Microsoft for analysis** or **report files to Microsoft for analysis** is selected.

  To release multiple items at once, select the checkbox to the left of the items in the quarantine list, and then on the **Bulk actions** page that appears, choose **Release files** or **Release messages**. On the next page, ensure that **report messages to Microsoft for analysis** or **report files to Microsoft for analysis** is selected.

When you're releasing messages, be aware of the following:

- When you perform a bulk release of multiple messages at once, the messages are released to all originally identified recipients. If you only want to release messages only to specific recipients, you need to release the messages one at a time and identify the recipients individually.

- A message cannot be released more than once to the same recipient.

- When you're releasing a message to more than one recipient, only recipients who have not previously received the message will appear in the list of potential recipients.

- When you choose to report false positives, if the message or messages you release were quarantined as spam, bulk, phishing, or as containing malware, the message will also be reported to the Microsoft Spam Analysis Team. The team will evaluate and analyze the message, and, depending on the results of the analysis, the service-wide spam content filter rules may be adjusted to allow the message through.

## Setting the quarantine retention period
<a name="BKMK_ModQuarantineTime"> </a>

You can configure how long messages and files will remain in quarantine before they expire. By default, quarantined items are kept for 30 days. You configure this setting for each policy that you create. You can also modify the value for the default policy as described in this article.

### To modify the quarantine retention period for the default spam filter policy in the Security and Compliance Center

1. Using a work or school account that has global administrator privileges (or appropriate Security & Compliance Center roles) in your Office 365 organization, sign in to Office 365 and [go to the Security and Compliance Center](../../compliance/go-to-the-securitycompliance-center.md).

2. On the left, expand **Threat Management**, choose **Policy**, and then choose **Anti-spam**.

    > [!TIP]
    > To go directly to the **anti-spam** page in the Security & Compliance Center, use this URL: > [https://protection.office.com/?hash=/antispam](https://protection.office.com/?hash=/antispam)

3. Expand the **Default spam filter policy (always ON)** row.

4. Choose **Edit policy**. The settings for the default spam filter policy appear in a new page.

5. Expand **Spam and bulk actions**.

6. Under **Quarantine**, in the **Retain spam for (days)** text box, enter the amount of time you want Office 365 to retain messages and files in quarantine. The default is 30 days. This is also the maximum.

7. Choose **Save**.
