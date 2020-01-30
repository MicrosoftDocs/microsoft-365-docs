---
title: "Use mail flow rules to set the spam confidence level (SCL) in messages"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 11/17/2014
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 4ccab17a-6d49-4786-aa28-92fb28893e99
ms.collection:
- M365-security-compliance
description: "Admins can learn how to set the SCL of messages in Exchange Online Protection."
---

# Use mail flow rules to set the spam confidence level (SCL) in messages

You can create a mail flow rule (also known as a transport rule) that sets the spam confidence level (SCL) of an email message. The SCL is a measure of how likely a message is to be spam. Spam is unsolicited (and typically unwanted) email messages. The service takes different action on a message depending on its SCL rating. For example, you might want to bypass spam content filtering for messages that are sent from people inside your organization because you trust that a message sent internally from a colleague isn't spam. Using mail flow rules to set the SCL value of a message gives you increased control in handling spam.

 **What do you need to know before you begin?**

- Estimated time to complete this procedure: 10 minutes.

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Mail flow rules" entry in [Feature Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions) or [Feature permissions in EOP](feature-permissions-in-eop.md).

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

### To create a mail flow rule that sets the SCL of a message

1. In the Exchange admin center (EAC), choose **Mail flow** \> **Rules**.

2. Choose **New**![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then select **Create a new rule**.

3. Specify a name for the rule.

4. Choose **More options**, and then under **Apply this rule if**, specify a condition that will trigger the action you'll be setting for this rule (which is to set the SCL value).

   For example, you can set **The sender** \> **is internal/external**, and then in the **select sender location** dialog box, select **Inside the organization**, and choose **ok**.<br/>
   ![Select sender location](../media/EOP-ETR-SetSCL-1.jpg)

5. Under **Do the following**, select **Modify the message properties** \> **set the spam confidence level (SCL)**.

6. In the **Specify SCL** box, select one of the following values, and choose **OK**:

   - **Bypass spam filtering**: This sets the SCL to -1, which means that content filtering won't be performed.

   - **0-4**: The message will be passed along to the content filter for additional processing.

   - **5-6**: The action specified for **Spam** in the applicable content filter policies will be applied. By default, the action is to send the message to the recipient's Junk Email folder.

   - **7-9**: The action specified for **High confidence spam** in the applicable content filter policies will be applied. By default, the action is to send the message to the recipient's Junk Email folder.

   For more information about configuring your content filter policies, see [Configure your spam filter policies](configure-your-spam-filter-policies.md). For more information about SCL values in the service, see [Spam confidence levels](spam-confidence-levels.md).

7. Specify additional properties for the rule, and choose **save**.

   > [!TIP]
   > For more information about the additional properties you can select or specify for this rule, see [Use the EAC to create mail flow rules](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/mail-flow-rule-procedures#use-the-eac-to-create-mail-flow-rules).

## How do you know this worked?

To verify that this procedure is working correctly, send an email message to someone inside your organization, and verify that the action performed on the message is as expected. For example, if you **set the spam confidence level (SCL)** to **Bypass spam filtering**, then the message should be sent to the specified recipient's inbox. However, if you **set the spam confidence level (SCL)** to **9**, and the **High confidence spam** action for your applicable content filter policies is to move the message to the Junk Email folder, then the message should be sent to the specified recipient's Junk Email folder.
