---
title: Report false positives and false negatives in Outlook
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: Admin
ms.topic: how-to
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
description: Learn how to report false positives and false negatives in Outlook using the Report Message feature.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 12/05/2022
---

# Report false positives and false negatives in Outlook

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or in on-premises mailboxes that use hybrid modern authentication, users can report false positives (good email that was blocked or sent to their Junk Email folder) and false negatives (unwanted email or phishing that was delivered to their Inbox) from Outlook on all platforms using free tools from Microsoft.

Admins configure user reported messages to go to a designated reporting mailbox, to Microsoft, or both. For more information, see [User reported message settings](submissions-user-reported-messages-files-custom-mailbox.md).

Microsoft provides the following tools for users to report good and bad messages:

- Built-in reporting in Outlook on the web (formerly known as Outlook Web App or OWA).
- The Microsoft Report Message or Report Phishing add-ins. The add-ins work on all virtually all Outlook platforms, including Outlook on the web. For more information, see [Enable the Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md).

For more information about reporting messages to Microsoft, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

> [!NOTE]
> Admins in Microsoft 365 organizations with Exchange Online mailboxes use the **Submissions** page in the Microsoft 365 Defender portal to submit messages to Microsoft. For instructions, see [Use the Submissions portal to submit suspected spam, phish, URLs, and files to Microsoft](submissions-admin.md).
>
> Admins can view reported messages on the **Submissions** page at <https://security.microsoft.com/reportsubmission> **only** if both of the following settings are configured on the **User reported** page at <https://security.microsoft.com/securitysettings/userSubmission>:
>
> - The toggle on the **User reported** page is **On** ![Toggle on.](../../media/scc-toggle-on.png).
> - **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** is selected.

## Use the built-in Report button in Outlook on the web

> [!NOTE]
>
> - The built-in **Report** button is available in Outlook on the web **only** if both of the following settings are configured on the **User reported** page at <https://security.microsoft.com/securitysettings/userSubmission>:
>   - The toggle on the **User reported** page is **On** ![Toggle on.](../../media/scc-toggle-on.png).
>   - **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** is selected.
>
>   If the toggle is **Off** ![Toggle off.](../../media/scc-toggle-off.png) or if **Use a non-Microsoft add-in button** is selected, then the **Report** button is not available in Outlook on the web.
>
> - Currently, the **Report** button in Outlook on the web does not honor the **Before a message is reported** and **After a message is reported** settings (notification pop-ups) in the [user reported message settings](submissions-user-reported-messages-files-custom-mailbox.md).

### Use the built-in Report button in Outlook on the web to report junk and phishing messages

- You can report junk messages from the Inbox or any email folder other than Junk Email.
- You can report phishing messages from any email folder.

In Outlook on the web, select one or more messages, click **Report**, and then select **Report phishing** or **Report junk** in the dropdown list.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/owa-report-junk-phishing.png" alt-text="The results of clicking the Report button after selecting multiple messages in Outlook on the web." lightbox="../../media/owa-report-junk-phishing.png":::

Based on the [user reported message settings](submissions-user-reported-messages-files-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The following actions are also taken on the reported messages in the mailbox:

- **Reported as junk**: The messages are moved to the Junk Email folder.
- **Reported as phishing**: The messages are deleted.

### Use the built-in Report button in Outlook on the web to report messages that aren't junk

In Outlook on the web, select one or more messages in the Junk Email folder, click **Report**, and then select **Not junk** in the dropdown list.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/owa-report-as-not-junk.png" alt-text="The results of clicking the Report button after selecting multiple messages in the Junk Email folder in Outlook on the web." lightbox="../../media/owa-report-as-not-junk.png":::

Based on the [user reported message settings](submissions-user-reported-messages-files-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The messages are also moved out of Junk Email to the Inbox or another specified folder.

## Use the Report Message and Report Phishing add-ins in Outlook

> [!NOTE]
>
> - The procedures in this section require the Microsoft Report Message or Report Phishing add-ins to be installed. For more information, see [Enable the Microsoft Report Message or the Report Phishing add-in](submissions-users-report-message-add-in-configure.md) installed.
> - The versions of Outlook that are supported by the Report Message and Report Phishing add-ins are described [here](submissions-users-report-message-add-in-configure.md#what-do-you-need-to-know-before-you-begin).

### Use the Report Message add-in to report junk and phishing messages in Outlook

- You can report junk messages from the Inbox or any email folder other than Junk Email.
- You can report phishing messages from any email folder.

1. In Outlook, do one of the following steps:
   - Select an email message from the list.
   - Open a message.
2. Do one of the following steps based on your **Ribbon Layout** configuration in Outlook:

   - **Classic Ribbon**: Click **Report Message**, and then select **Junk** or **Phishing** in the dropdown list.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-classic-expanded.png" alt-text="Select a message and then click the Report Message button in the Classic Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-classic-expanded.png":::

   - **Simplified Ribbon**: Click ![More commands icon.](../../media/m365-cc-sc-more-actions-icon.png) **More commands** \> **Protection** section \> **Report Message** \> select **Junk** or **Phishing**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-simplified-expanded.png" alt-text="Select a message and then click the Report Message button in the Simplified Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-simplified-expanded.png":::

Based on the [user reported message settings](submissions-user-reported-messages-files-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The following actions are also taken on the reported messages in the mailbox:

- **Reported as junk**: The messages are moved to the Junk Email folder.
- **Reported as phishing**: The messages are deleted.

### Use the Report Message add-in to report messages that aren't junk in Outlook

1. In Outlook, open a message in the Junk Email folder.
2. Do one of the following steps based on your **Ribbon Layout** configuration in Outlook:

   - **Classic Ribbon**: Click **Report Message**, and then select **Not Junk** in the dropdown list.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-classic-expanded.png" alt-text="Select a message in the Junk Email folder, and then click the Report Message button in the Classic Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-classic-expanded.png":::

   - **Simplified Ribbon**: Click ![More commands icon.](../../media/m365-cc-sc-more-actions-icon.png) **More commands** \> **Protection** section \> **Report Message** \> select **Not Junk**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-simplified-expanded.png" alt-text="Select a message in the Junk Email folder, and then click the Report Message button in the Simplified Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-simplified-expanded.png":::

Based on the [user reported message settings](submissions-user-reported-messages-files-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The messages are also moved out of Junk Email to the Inbox or another specified folder.

### Use the Report Phishing add-in to report phishing messages in Outlook

You can report phishing messages from any email folder.

1. In Outlook, do one of the following steps:
   - Select an email message from the list.
   - Open a message.
2. Do one of the following steps based on your **Ribbon Layout** configuration in Outlook:

   - **Classic Ribbon**: Click **Report Phishing**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/Outlook-ReportPhishing.png" alt-text="Select a message and then click the Report Phishing button in the Classic Ribbon in Outlook." lightbox="../../media/Outlook-ReportPhishing.png":::

   - **Simplified Ribbon**: Click ![More commands icon.](../../media/m365-cc-sc-more-actions-icon.png) **More commands** \> **Protection** section \> **Phishing**

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/Outlook-ReportPhishing-simplified.png" alt-text="Select a message and then click the Report Phishing button in the Simplified Ribbon in Outlook." lightbox="../../media/Outlook-ReportPhishing-simplified.png":::

## Review reported messages

To review messages that users have reported to Microsoft, admins have these options:

- Use the **User reported** tab on the **Submissions** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/reportsubmission>. For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft).

- Create a mail flow rule (also known as a transport rule) to send copies of reported messages to a recipient for review. For instructions, see [Use mail flow rules to see what users are reporting to Microsoft](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-see-what-users-are-reporting-to-microsoft).

## More information

Admins can watch this short video to learn how to use Microsoft Defender for Office 365 to easily investigate user reported messages. Admins can determine the contents of a message and how to respond by applying the appropriate remediation action.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBHof]
