---
title: "Report junk email messages to Microsoft"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 12/09/2016
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: c31406ea-2979-4fac-9288-f835269b9d2f
ms.collection:
- M365-security-compliance
description: "The Microsoft Junk Email Reporting Add-in for Microsoft Office Outlook offers several ways for you to report junk email messages:"
---

# Report junk email messages to Microsoft

The Microsoft Junk Email Reporting Add-in for Microsoft Office Outlook offers several ways for you to report junk email messages:

- From the Outlook ribbon

- From your Inbox

- From within an opened email message

The Junk Email Reporting Add-in helps you submit reports to the Microsoft Exchange Online Protection (EOP) service. If your mailbox is not protected by the service, your junk email report submission will not affect your spam filters. Administrators can learn about more spam settings that apply to a whole organization at [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md) and [Create blocked sender lists in Office 365](create-block-sender-lists-in-office-365.md). These are helpful if you have administrator-level control and you want to prevent false positives or false negatives.

> [!TIP]
> You can also submit false positives (good email marked as spam) and false negatives (bad email allowed) directly to Microsoft. For more information, see [Manually submit messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md).

### Use the Report Message add-in

To install the Report Message add-in, see [Enable the Report Message add-in in Office 365](enable-the-report-message-add-in.md).

For instructions about how to use the add-in, see [Use the Report Message add-in](https://support.office.com/article/b5caa9f1-cdf3-4443-af8c-ff724ea719d2).

### To report junk email messages from your Inbox

1. Right-click the message or messages that you want to report as junk.

2. Select **Junk** and then click **Report Junk**.
    ![Report junk messages from your Inbox](../../media/EOP-Outlook-Junk-Reporting-Tool-3.jpg)

3. The **Microsoft Junk E-mail Reporting Add-in** dialog box opens. If you're sure that you want to submit the messages you selected as junk, click **Yes**.
    ![Confirm report as junk](../../media/EOP-Outlook-Junk-Reporting-Tool-2.jpg)

    > [!NOTE]
    > If you don't want to receive this confirmation message when submitting junk messages, check **Do not show this message again**.

The selected messages will be sent to Microsoft for analysis and moved to the Junk Email folder. To confirm that the messages have been submitted, open your **Sent Items** folder to view the submitted messages.

### To report a junk email message from within an opened message

1. From within an opened message, click the **Report Junk** button on the message ribbon. For example, click **Junk** \> **Report Junk**
    ![Report a junk email from within a message](../../media/EOP-Outlook-Junk-Reporting-Tool-4.jpg)

2. The **Microsoft Junk E-mail Reporting Add-in** dialog box opens. If you're sure that you want to submit the message you selected as junk, click **Yes**.
    ![Confirm report as junk](../../media/EOP-Outlook-Junk-Reporting-Tool-2.jpg)

    > [!NOTE]
    > If you don't want to receive this confirmation message when submitting junk messages, check **Do not show this message again**.

The selected message will be sent to Microsoft for analysis and moved to the Junk Email folder. To confirm that the message has been submitted, open your **Sent Items** folder to view the submitted message.
