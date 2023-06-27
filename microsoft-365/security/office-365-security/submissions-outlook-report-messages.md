---
title: Report phishing and suspicious emails in Outlook for admins
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
description: Learn how to report phishing and suspicious emails in Outlook using the built-in Report button or the Report Message and Report Phishing add-ins.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Report phishing and suspicious emails in Outlook for admins

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or in on-premises mailboxes that use hybrid modern authentication, users can report phishing and suspicious email in Outlook. Users can report false positives (good email that was blocked or sent to their Junk Email folder) and false negatives (unwanted email or phishing that was delivered to their Inbox) from Outlook on all platforms using free tools from Microsoft.

Microsoft provides the following tools for users to report good and bad messages:

- Built-in reporting in Outlook on the web (formerly known as Outlook Web App or OWA).
- The Microsoft Report Message or Report Phishing add-ins. The add-ins work on virtually all Outlook platforms, including Outlook on the web. For more information, see [Enable the Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md).

For more information about reporting messages to Microsoft, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

Admins configure user reported messages to go to a specified reporting mailbox, to Microsoft, or both. These user reported messages are available on the **User reported** tab on the **Submissions** page in the Microsoft 365 Defender Portal. For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

## Use the built-in Report button in Outlook on the web

- The built-in **Report** button is available in Outlook on the web *only* if user reporting is turned on *and* the built-in **Report** button in Outlook (not a non-Microsoft add-in button) are configured in the [user reported settings](submissions-user-reported-messages-custom-mailbox.md) at <https://security.microsoft.com/securitysettings/userSubmission>:

  If user reporting is turned off and a non-Microsoft add-in button is selected, the **Report** button isn't available in Outlook on the web.

- Currently, the **Report** button in Outlook on the web doesn't honor the before and after notification pop-up options in the user reported settings.

- Built-in reporting in Outlook on the web supports reporting messages from shared mailboxes or other mailboxes by a delegate.
  - Shared mailboxes require Send As or Send On Behalf permission for the user.
  - Other mailboxes require Send As or Send On Behalf permission _and_ Read and Manage permissions for the delegate.

### Use the built-in Report button in Outlook on the web to report junk and phishing messages

- Users can report a message as junk from the Inbox or any email folder other than Junk Email folder.
- Users can report a message as phishing from any email folder.

In Outlook on the web, select one or more messages, select **Report**, and then select **Report phishing** or **Report junk** in the dropdown list.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/owa-report-junk-phishing.png" alt-text="The results of selecting the Report button after selecting multiple messages in Outlook on the web." lightbox="../../media/owa-report-junk-phishing.png":::

Based on the [User reported settings](submissions-user-reported-messages-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The following actions are also taken on the reported messages in the mailbox:

- **Reported as junk**: The messages are moved to the Junk Email folder.
- **Reported as phishing**: The messages are deleted.

### Use the built-in Report button in Outlook on the web to report messages that aren't junk

In Outlook on the web, select one or more messages in the Junk Email folder, select **Report**, and then select **Not junk** in the dropdown list.

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/owa-report-as-not-junk.png" alt-text="The results of selecting the Report button after selecting multiple messages in the Junk Email folder in Outlook on the web." lightbox="../../media/owa-report-as-not-junk.png":::

Based on the [User reported settings](submissions-user-reported-messages-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The messages are also moved out of Junk Email to the Inbox.

## Use the Report Message and Report Phishing add-ins in Outlook

- The procedures in this section require the Microsoft Report Message or Report Phishing add-ins. For more information, see [Enable the Microsoft Report Message or the Report Phishing add-in](submissions-users-report-message-add-in-configure.md) installed.

- The versions of Outlook that are supported by the Report Message and Report Phishing add-ins are described [here](submissions-users-report-message-add-in-configure.md#what-do-you-need-to-know-before-you-begin).

### Use the Report Message add-in to report junk and phishing messages in Outlook

- Users can report a message as junk from the Inbox or any email folder other than the Junk Email folder.
- Users can report a message as phishing from any email folder.

1. In Outlook, do one of the following steps:
   - Select an email message from the list.
   - Open a message.
2. Do one of the following steps based on your **Ribbon Layout** configuration in Outlook:

   - **Classic Ribbon**: Select **Report Message**, and then select **Junk** or **Phishing** in the dropdown list.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-classic-expanded.png" alt-text="Select a message and then select the Report Message button in the Classic Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-classic-expanded.png":::

   - **Simplified Ribbon**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More commands** \> **Protection** section \> **Report Message** \> select **Junk** or **Phishing**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-simplified-expanded.png" alt-text="Select a message and then select the Report Message button in the Simplified Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-simplified-expanded.png":::

Based on the [user reported settings](submissions-user-reported-messages-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The following actions are also taken on the reported messages in the mailbox:

- **Reported as junk**: The messages are moved to the Junk Email folder.
- **Reported as phishing**: The messages are deleted.

### Use the Report Message add-in to report messages that aren't junk in Outlook

1. In Outlook, open a message in the Junk Email folder.
2. Do one of the following steps based on your **Ribbon Layout** configuration in Outlook:

   - **Classic Ribbon**: Select **Report Message**, and then select **Not Junk** in the dropdown list.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-classic-expanded.png" alt-text="Select a message in the Junk Email folder, and then select the Report Message button in the Classic Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-classic-expanded.png":::

   - **Simplified Ribbon**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More commands** \> **Protection** section \> **Report Message** \> select **Not Junk**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/OutlookReportMessage-simplified-expanded.png" alt-text="Select a message in the Junk Email folder, and then select the Report Message button in the Simplified Ribbon in Outlook." lightbox="../../media/OutlookReportMessage-simplified-expanded.png":::

Based on the [user reported settings](submissions-user-reported-messages-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The messages are also moved out of Junk Email to the Inbox.

### Use the Report Phishing add-in to report phishing messages in Outlook

Users can report phishing messages from any email folder.

1. In Outlook, do one of the following steps:
   - Select an email message from the list.
   - Open a message.
2. Do one of the following steps based on your **Ribbon Layout** configuration in Outlook:

   - **Classic Ribbon**: Select **Report Phishing**.

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/Outlook-ReportPhishing.png" alt-text="Select a message and then select the Report Phishing button in the Classic Ribbon in Outlook." lightbox="../../media/Outlook-ReportPhishing.png":::

   - **Simplified Ribbon**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More commands** \> **Protection** section \> **Phishing**

     > [!div class="mx-imgBorder"]
     > :::image type="content" source="../../media/Outlook-ReportPhishing-simplified.png" alt-text="Select a message and then select the Report Phishing button in the Simplified Ribbon in Outlook." lightbox="../../media/Outlook-ReportPhishing-simplified.png":::

Based on the [User reported settings](submissions-user-reported-messages-custom-mailbox.md) in your organization, the messages are sent to the reporting mailbox, to Microsoft, or both. The messages are also deleted.

## Review reported messages

To review messages that users have reported to Microsoft, admins have these options:

- Use the **User reported** tab on the **Submissions** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/reportsubmission>. For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft).

- Create a mail flow rule (also known as a transport rule) to send copies of reported messages to a recipient for review. For instructions, see [Use mail flow rules to see what users are reporting to Microsoft](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-see-what-users-are-reporting-to-microsoft).

## More information

Admins can watch this short video to learn how to use Microsoft Defender for Office 365 to easily investigate user reported messages. Admins can determine the contents of a message and how to respond by applying the appropriate remediation action.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBHof]
