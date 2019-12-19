---
title: "Find and release quarantined messages as an administrator"
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
ms.assetid: ab95bf17-bb09-4dd1-9990-ddd02ddecf05
ms.collection:
- M365-security-compliance
description: "This topic describes how Exchange Online and Exchange Online Protection (EOP) admins can find, release, and report on quarantined messages in the Exchange admin center (EAC)."
---

# Find and release quarantined messages as an administrator

This topic describes how Exchange Online and Exchange Online Protection (EOP) admins can find, release, and report on quarantined messages in the Exchange admin center (EAC). Office 365 directs messages to quarantine either because they were identified as spam or they matched a mail flow rule (also known as a transport rule).

You can use the Security & Compliance Center instead of the EAC to complete any of these tasks as well; the Quarantine portal within the Exchange admin center (EAC) is set to be decommisioned. For more information, see [Quarantine email messages in Office 365](quarantine-email-messages.md).

Quarantined messages are listed on the **quarantine** page in EAC. By default, messages are sorted from newest to oldest on the **RECEIVED** field. **SENDER**, **SUBJECT**, and **EXPIRES** values are also listed for each message. You can sort on any of these fields by clicking their headers. If you click a column header a second time, the sort order reverses. The **quarantine** page displays a maximum of 500 messages.

You can view a list of all quarantined messages, or you can search for specific messages by specifying filter criteria (filtering can also help reduce your result set if you have more than 500 messages). After searching for and locating a specific quarantined message, you can view details about the message. You can also:

- Release the message to one or more recipients, and optionally report it as a false positive (not junk) message to the Microsoft Spam Analysis Team, who will evaluate and analyze the message. Depending on the results of the analysis, the service-wide spam content filter rules may be adjusted to allow the message through.

- Release the message and allow all future messages from that sender.

## What do you need to know before you begin?

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Quarantine" entry in the [Feature Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions) topic.

- You can release or report multiple messages at once on the **quarantine** page. Alternatively you can create a remote Windows PowerShell script to accomplish this task. Use the [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-quarantinemessage) cmdlet to search for messages, and the [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/release-quarantinemessage) cmdlet to release them.

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Use advanced search to filter and locate quarantined messages

In the Exchange admin center (EAC), you can filter quarantined items based on several different conditions using advanced search. You can use these conditions separately or in combination with one another. The search will provide a list of messages that meet all your filter criteria.

1. In EAC, navigate to **Protection** \> **quarantine**, and then click **Advanced search**.

2. In the **Advanced search** window, select any combination of the following conditions. Select the associated check box to enable each condition. Wildcards aren't supported.

   1. **Message ID**: You can use this parameter to perform a targeted search for a specific message. For example, if a specific message is sent by, or intended for, a user in your organization, but it never reaches its destination, you can search for the message using the message trace feature. For details, see [Run a Message Trace and View Results](https://docs.microsoft.com/exchange/monitoring/trace-an-email-message/run-a-message-trace-and-view-results). If you discover that the message was sent to the quarantine, perhaps because it matched a rule or was identified as spam, you can then easily find this message in the quarantine by specifying its Message ID. Be sure to include the full Message ID string. This might include angle brackets (\<\>).

   2. **Sender email address**: Specify the email address of the person who sent the message.

   3. **Recipient email address**: Specify the email address of the intended recipient of the message.

   4. **Subject**: Specify the subject line text of the message.

   5. **Received**: You can select that the message was received by quarantine within the past 24 hours ( **Today**), within the past 48 hours ( **Last 2 days**), within the past week ( **Last 7 days**), or you can select a custom time interval during which the message was received by the quarantine.

   6. **Expires**: You can select that the message will be deleted from quarantine within the next 24 hours ( **Today**), within the next 48 hours ( **Next 2 days**), within the next week ( **Next 7 days**), or you can select a custom time interval during which the message will be deleted from quarantine.

      > [!IMPORTANT]
      > By default, spam-quarantined messages are kept in quarantine for 30 days, while quarantined messages that matched a mail flow rule are kept in the quarantine for up to 30 days based on the retention period set in your default content filter policy. After this period of time Office 365 deletes the messages and they are not retrievable. The retention period for quarantined messages that matched a mail flow rule is not configurable. However, the retention period for spam-quarantined messages can be lowered via the **Retain spam for (days)** setting in your content filter policies. For more information, see [Configure your spam filter policies](configure-your-spam-filter-policies.md).

   7. **Type** You can specify whether to search for quarantined messages that have been identified as **Spam**, or whether to search for messages that matched a mail flow rule (**Transport rule**).

3. Click **OK** to start running the advanced search.

   > [!NOTE]
   > To clear your search criteria and view all messages in the quarantine, clear all the check boxes in the **Advanced search** window, and then click **OK**.

After searching for messages, the results that match your specified criteria will display in the user interface. A maximum of 500 messages can be displayed in the EAC.

## View details about a specific quarantined message

After locating a specific quarantined message on the **quarantine** page, you can view details about it.

1. On the **quarantine** page, select a specific message and a summary of the properties of that message appear in the details pane on the right side of the screen.

   The **Message status** values are as follows:

   - **Type**: Denotes whether the message has been identified as **Spam** or matched a mail flow rule (**Transport rule**).

   - **Expires**: The date when the message will be deleted from the quarantine.

   The **Message details** values are as follows:

   - **Sender**: The email address of the person who sent the message.

   - **Subject**: The subject line text of the message.

   - **Received**: The date on which the message was received by the quarantine.

   - **Size**: The size of the message, in kilobytes (KB), or, if the message size is greater than 999 KBs, in megabytes (MB).

   - **View message header**: Click this link to open the **message header** dialog box, which lets you view the message header text. You can also copy the message header text to your clipboard and paste it into the [Message Header Analyzer](https://testconnectivity.microsoft.com/?tabid=mha). Once in the Message Header Analyzer tool, click **Analyze headers** in order to retrieve information about the header.

    > [!TIP]
    > For information about specific anti-spam message header fields inserted by the service, see [Anti-spam message headers](anti-spam-message-headers.md).

   - **Preview email message** Click this link to review the text of the message.

2. If you double-click a quarantined message, the **Quarantined message** window opens and displays the following information:

   - **Released to**: A list of all email addresses to whom the message has been released, if any.

   - **Not yet released to**: A list of all email addresses to whom the message has not been released, if any. You can click the **Release to** link in order to release the message; for more information about releasing a message, see the next section.

   - **Message ID**: The Internet Message ID (also known as the Client ID) found in the header of the message.

   Click **Close** to return to the main quarantine pane.

## Release messages from quarantine

If you want to release messages to recipients, your options are:

- [Release a quarantined message and allow future messages from the sender](#release-a-quarantined-message-and-allow-future-messages-from-the-sender)

- [Release a quarantined message to specific recipients without reporting it as a false positive](#release-a-quarantined-message-to-specific-recipients-without-reporting-it-as-a-false-positive)

- [Release one or more quarantined messages to all recipients](#release-one-or-more-quarantined-messages-to-all-recipients)

- [Release one or more quarantined messages to all recipients and report false positives](#release-one-or-more-quarantined-messages-to-all-recipients-and-report-false-positives)

### Release a quarantined message and allow future messages from the sender

1. In EAC, navigate to **Protection** \> **quarantine**.

2. Click on a message to select it and then click the **Release Message** icon as shown in the following screen shot.

   ![Shows the quarantine page with the release message icon highlighted and the release options displaying](../media/36ee081f-3e30-40c9-8ce3-240cee1970cc.png)

   Click **Release selected message and allow sender** from the drop-down list.

3. The **release message and allow sender** dialog box opens. Optionally, you can choose to report the message to Microsoft, then click **release and allow**. The message will be released to all recipients it's addressed to and all future messages from this sender will be allowed. However, if this message was quarantined because of a mail flow rule or blocked sender, the sender will continue to be blocked for future messages.

### Release a quarantined message to specific recipients without reporting it as a false positive

1. In EAC, navigate to **Protection** \> **quarantine**.

2. Select a message, click the **Release Message** icon, and then click **Release message to specific recipients** from the drop-down list.

3. In the **release message** dialog box, select one of the following options:

   - **Release message to all recipients** When you select this option, be aware that a message cannot be released more than once to the same recipient. If a recipient has previously received the message, it will not be released again to that recipient.

   - **Release message to specified recipients** Select the recipient(s) to whom the message can be released. Because a message can only be released once to each recipient, only recipients to whom it can be released appear in this list. Multi-selection is supported. After making your recipient selections, click **add**.

4. Click **release**.

If you click **Refresh** ![Refresh Icon](../media/ITPro-EAC-RefreshIcon.gif) to refresh your data, and then double-click the message, you should see that it's been released to the intended recipients.

### Release one or more quarantined messages to all recipients

1. In EAC, navigate to **Protection** \> **quarantine**.

2. Click on a message to select it, or use the shift key to select multiple messages. Then click the **Release Message** icon.

3. Click **Release selected message(s) to ALL recipients** from the drop-down list.

4. The warning dialog box opens. Read the warning and select **Yes** if you want to proceed. When you select this option, be aware that a message cannot be released more than once to the same recipient. If a recipient has previously received the message, it will not be released again to that recipient.

### Release one or more quarantined messages to all recipients and report false positives

1. In EAC, navigate to **Protection** \> **quarantine**.

2. Click on a message to select it, or use the shift key to select multiple messages. Then click the **Release Message** icon.

3. Click **Release selected message(s) and report as false positive** from the drop-down list.

4. The warning dialog box opens. Read the warning and select **Yes** if you want to proceed. When you select this option, be aware that a message cannot be released more than once to the same recipient. If a recipient has previously received the message, it will not be released again to that recipient.

   When you choose this option, the message will be released to all recipients who have not yet received it. If it's a spam-quarantined message, it will also be reported to the Microsoft Spam Analysis Team, who will evaluate and analyze the message. Depending on the results of the analysis, the service-wide spam content filter rules may be adjusted to allow the message through.

> [!TIP]
> Help ensure that a message isn't marked as spam by following the steps in [How to help ensure that a message isn't marked as spam](how-to-help-ensure-that-a-message-isn-t-marked-as-spam.md).

If you click the **Refresh**![Refresh Icon](../media/ITPro-EAC-RefreshIcon.gif) icon to refresh your data, and then double-click the message, you should see that it's been released to the intended recipients.

## For more information

[Quarantine FAQ](quarantine-faq.md)
