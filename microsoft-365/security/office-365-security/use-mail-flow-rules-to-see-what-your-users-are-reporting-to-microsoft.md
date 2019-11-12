---
title: "Use mail flow rules to see what your users are reporting to Microsoft"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 8401f520-8e7c-467b-9e06-4a9fdb2ba548
ms.collection:
- M365-security-compliance
description: "You can create an Exchange mail flow rule to prevent your users from sending email messages to Microsoft for analysis and use them in your own security processes"
---

# Use mail flow rules to see what your users are reporting to Microsoft

There are multiple ways you can send false positive and false negative messages to Microsoft for analysis. As an administrator, you can use mail flow rules to see what your users are reporting to Microsoft as spam, non-spam, and phishing scams. For more information, see [Submit spam, non-spam, and phishing scam messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md). Conversely, you can create an Exchange mail flow rule (also known as a transport rule) to prevent your users from sending email messages to Microsoft for analysis and use them in your own security processes.

## What do you need to know before you begin?

Estimated time to complete: 5 minutes

You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Mail flow rules" entry in the [Messaging policy and compliance permissions](https://technet.microsoft.com/library/ec4d3b9f-b85a-4cb9-95f5-6fc149c3899b.aspx) topic and the "Outlook on the web mailbox policies" entry in the [Clients and mobile devices permissions](https://technet.microsoft.com/library/57eca42a-5a7f-4c65-89f0-7a84f2dbea19.aspx) topic.

For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

## Use the EAC to create a mail flow rule to view users' manual junk, phishing, and not junk reports

1. In the EAC, navigate to **Mail flow** \> **Rules**.

2. Click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) and then select **Create a new rule**.

3. Give the rule a name and then click **More options**.

4. Under **Apply this rule if**, select **The recipient** and then choose **address includes any of these words**.

5. In the **specify words or phrases** box, do the following steps:

   - Type `abuse@messaging.microsoft.com`, click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif), type `junk@office365.microsoft.com` and then click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif). These email addresses are used to submit false negative messages to Microsoft.

   - Type `phish@office365.microsoft.com` and then click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif). This email address is used to submit missed phishing messages to Microsoft.

   - Type `false_positive@messaging.microsoft.com`, click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif), type `not_junk@office365.microsoft.com`, and then click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif). These email addresses are used to submit false positive messages to Microsoft.

   - Click **OK**.

6. Under **Do the following**, select **Bcc the message to...** and then and then select the mailboxes where you'd like to receive the messages.

7. If you'd like, you can make selections to audit the rule, test the rule, activate the rule during a specific time period, and other selections. We recommend testing the rule for a period before you enforce it. See [Procedures for mail flow rules](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/mail-flow-rule-procedures).

8. Click the **save** button to save the rule. It appears in your list of rules.

After you create and enforce the rule, any messages that are sent from your organization to specified email addresses will be copied to the specified mailbox.
