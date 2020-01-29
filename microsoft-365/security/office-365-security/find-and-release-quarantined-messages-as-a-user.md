---
title: "Find and release quarantined messages as a user in Office 365"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 05/19/2018
audience: Consumer/IW
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
- MEW150
ms.assetid: efff08ec-68ff-4099-89b7-266e3c4817be
ms.collection:
- M365-security-compliance
description: "As an Office 365 user, you can manage your own spam-quarantined messages in one of two ways: by responding to spam notifications sent to you directly (if your admin has set up this feature), or by using the spam quarantine feature in the Security &amp; Compliance Center."
---

# Find and release quarantined messages as a user in Office 365

As an Office 365 user, you can manage messages that were sent to quarantine instead of sent to you in one of two ways: by [responding to spam notifications sent to you directly](use-spam-notifications-to-release-and-report-quarantined-messages.md) (if your admin has set this up), or by using the Security &amp; Compliance Center.

> [!NOTE]
> If you're an admin, you can [manage quarantined messages](manage-quarantined-messages-and-files.md) for other people in your organization.

## View messages that were sent to quarantine instead of to you

1. Sign in to Office 365 and [go to the Security and Compliance Center](../../compliance/go-to-the-securitycompliance-center.md) using your work or school account.

2. On the left, expand **Threat Management**, choose **Review**, and then choose **Quarantine**.

    > [!TIP]
    > To go directly to the **Quarantine** page in the Security &amp; Compliance Center, use this URL: [https://protection.office.com/?hash=/quarantine](https://protection.office.com/?hash=/quarantine)

By default, the Security &amp; Compliance Center displays all email messages that have been quarantined as spam. The messages are sorted from newest to oldest based on the **Date** the message was received. **Sender**, **Subject**, and the expiration date (under **Expires** ) are also displayed for each message. You can sort on a field by clicking the corresponding column header; click a column header a second time to reverse the sort order.

You can view a list of all quarantined messages, or you can search for specific messages by filtering. You can only do bulk operations on up to 100 items, so filtering can also help reduce your result set if you have more than that. You can quickly filter messages for a single quarantine reason by choosing an option from the drop-down list. Options include:

- Mail identified as spam. These quarantined messages are shown by default.

- Mail identified as bulk mail.

After you find a specific quarantined message, click the message to view details about it, and take actions. You can release the message to your mailbox, preview the message, download the message, or delete the message from quarantine immediately.

> [!NOTE]
> You must have admin permissions in Office 365 to work with quarantined messages that were sent to other users.

## To filter and find quarantined messages

If you have a lot of quarantined items, you can reduce the number to a manageable set by filtering them.

1. On the **Quarantine** page, choose whether you want to view **spam** or **bulk** quarantined messages.

2. Under **Sort results by**, choose any combination of conditions by setting the appropriate filter or filters (you can't use wildcards at this time). There are several conditions you can choose, including the following:

   - **Message ID**: Use this to select a specific message when you know the message ID.

     For example, if a specific message is sent by, or intended for, a user in your organization, but it never reached its destination, you can search for the message by using a message trace (see [Message trace in the Security & Compliance Center](message-trace-scc.md)). If you discover that the message was sent to quarantine, perhaps because it matched a mail flow rule or was identified as spam, you can then easily find this message in quarantine by specifying its Message ID. Be sure to include the full Message ID string. This might include angle brackets (\<\>), for example:

     `<79239079-d95a-483a-aacf-e954f592a0f6@XYZPR00BM0200.contoso.com>`

   - **Sender email address**: Choose to filter by a single sender email address.

   - **Recipient email address**: Choose to filter by a single recipient email address.

   - **Subject**: Enter the subject of an email address you want to find.

   - **Date range**: You can choose to filter by the date the message was sent to quarantine. You can specify the date or a date range, including the time.

   - **Expiration date**: To filter by expiration date, choose **Advanced filter**. You can select messages that will be deleted from quarantine within the next 24 hours ( **Today**), within the next 48 hours ( **Next 2 days**), within the next week ( **Next 7 days**), or you can select a custom time interval.

     > [!IMPORTANT]
     > By default, spam and bulk messages are kept in quarantine for 30 days. However, this time period is configurable and your admin might have set a different quarantine retention period. When Office 365 deletes a message from quarantine, you can't get it back.

## View details for a specific message

After you select a message, you'll see a summary of the message properties in a pane on the right side of the page.

- **Message ID**: The unique identifier for the message.

- **Sender Address**: Who sent the message.

- **Received**: The date the message was received.

- **Subject**: The text of the Subject line in the message.

- **Quarantine reason**: Shows if a message has been identified as **Spam** or **Bulk**.

- **Expires**: The date when the message will be deleted from quarantine.

- **Released to**: All email addresses (if any) to which the message has been released.

- **Not yet released to**: All email addresses (if any) to which the message has not been released. You can choose **Release** if you want to release the message to your mailbox (more about releasing messages in the next section).

You can get even more details about the message by choosing one of the following options:

- **View message header**: Choose this to see the message header text. To analyze the header in depth, copy the message header text to your clipboard, and then choose **Microsoft Message Header Analyzer** to go to the Remote Connectivity Analyzer (right-click and choose Open in a new tab if you don't want to leave Office 365 to complete this task). Paste the message header onto the page in the Message Header Analyzer section, and choose Analyze headers.

- **Preview message**: Lets you see raw or HTML versions of the message body text. In the HTML view, links are disabled.

## Manage your quarantined messages

After you select a message or group of messages, you have several options for managing messages in quarantine.

- Do nothing. If you choose to do nothing, the message will be deleted by Office 365 automatically upon expiration. Remember, when Office 365 deletes a message from quarantine, you can't get it back.

- **Release message**: Release a quarantined message (or set of messages) so that the message is sent to your mailbox. When you release a message, you have the option to report the message to Microsoft for analysis.

    When you choose to report a message, also called reporting a message as a false positive, the message is reported to the Microsoft Spam Analysis Team. The team evaluates and analyzes false positive messages, and, depending on the results of the analysis, the service-wide spam content filter rules may be adjusted to allow these messages through.

- **Remove from quarantine**: Deletes the message immediately from quarantine without releasing the message to your mailbox.
