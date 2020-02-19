---
title: "Use mail flow rules to configure bulk email filtering in Exchange Online Protection"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 2889c82e-fab0-4e85-87b0-b001b2ccd4f7
ms.collection:
- M365-security-compliance
description: "Admins can learn how to use mail flow rules in Exchange Online Protection for bulk email filtering."
---

# Use mail flow rules to configure bulk email filtering in Exchange Online Protection

You can set company-wide content filters for spam and bulk email using the default spam content-filter policies. Check out [Configure your spam filter policies](configure-your-spam-filter-policies.md) and [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/Set-HostedContentFilterPolicy) on how to set the content filter policies.

If you want to more options to filter bulk messages, you can create mail flow rules (also known as transport rules) to search for text patterns or phrases frequently found in bulk emails. Any message containing these characteristics will be marked as spam. Using these rules can help reduce the amount of unwanted bulk email your organization receives.

> [!IMPORTANT]
> Before creating the mail flow rules documented this topic, we recommend that you first read [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md) and [Bulk Complaint Level values](bulk-complaint-level-values.md).<br>
> The following procedures mark a message as spam for your entire organization. However, you can add another condition to apply these rules only to specific recipients in your organization. This way, the aggressive bulk email filtering settings can apply to a few users who are highly targeted, while the rest of your users (who mostly get the bulk email they signed up for) aren't impacted.

## Create a mail flow rule to filter bulk email messages based on text patterns

1. In the Exchange admin center (EAC), go to **Mail flow** \> **Rules**.

2. Click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.gif) and then select **Create a new rule**.

3. Specify a name for the rule.

4. Click **More options** ![More options icon](../../media/ITPro-EAC-MoreOptionsIcon.png). Under **Apply this rule if**, select **The subject or body** \> **subject or body matches these text patterns**.

5. In the **specify words or phrases** dialog box, add the following regular expressions commonly found in bulk emails, one at a time, and click **OK** when you're done:

   - `If you are unable to view the content of this email\, please`

   - `\>(safe )?unsubscribe( here)?\</a\>`

   - `If you do not wish to receive further communications like this\, please`

   - `\<img height\="?1"? width\="?1"? sr\c=.?http\://`

   - `To stop receiving these+emails\:http\://`

   - `To unsubscribe from \w+ (e\-?letter|e?-?mail|newsletter)`

   - `no longer (wish )?(to )?(be sent|receive) w+ email`

   - `If you are unable to view the content of this email\, please click here`

   - `To ensure you receive (your daily deals|our e-?mails)\, add`

   - `If you no longer wish to receive these emails`

   - `to change your (subscription preferences|preferences or unsubscribe)`

   - `click (here to|the) unsubscribe`

   The above list isn't an exhaustive set of regular expressions found in bulk emails; more can be added or removed as needed. However, it's a good starting point.

   The search for words or text patterns in the subject or other header fields in the message occurs *after* the message has been decoded from the MIME content transfer encoding method that was used to transmit the binary message between SMTP servers in ASCII text. You can't use conditions or exceptions to search for the raw (typically, Base64) encoded values of the subject or other header fields in messages.

6. Under **Do the following**, select **Modify the message properties** \> **set the spam confidence level (SCL)**.

7. In the **specify SCL** dialog box, set the SCL to **5**, **6**, or **9**, and click **ok**.

   Setting the SCL to 5 or 6 takes the **Spam** action, while setting the SCL to 9 takes the **High confidence spam** action, as configured in the content filter policy. The service will perform the action set in the content filter policy. The default action is to deliver the message to the recipients' Junk Email folder, but different actions can be configured as described in [Configure your spam filter policies](configure-your-spam-filter-policies.md).

   If your configured action is to quarantine the message rather than send it to the recipients' Junk Email folder, the message will be sent to the administrator quarantine as a mail flow rule match, and it will not be available in the end user spam quarantine or via end-user spam notifications.

   For more information about SCL values in the service, see [Spam confidence levels](spam-confidence-levels.md).

8. Save the rule.

## Create a mail flow rule to filter bulk email messages based on phrases

1. In the EAC, go to **Mail flow** \> **Rules**.

2. Click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.gif) and then select **Create a new rule**.

3. Specify a name for the rule.

4. Click **More options**. Under **Apply this rule if**, select **The subject or body** \> **subject or body includes any of these words**.

5. In the **specify words or phrases** dialog box, add the following phrases commonly found in bulk emails, one at a time, and click **ok** when you're done:

   - `to change your preferences or unsubscribe`

   - `Modify email preferences or unsubscribe`

   - `This is a promotional email`

   - `You are receiving this email because you requested a subscription`

   - `click here to unsubscribe`

   - `You have received this email because you are subscribed`

   - `If you no longer wish to receive our email newsletter`

   - `to unsubscribe from this newsletter`

   - `If you have trouble viewing this email`

   - `This is an advertisement`

   - `you would like to unsubscribe or change your`

   - `view this email as a webpage`

   - `You are receiving this email because you are subscribed`

   This list isn't an exhaustive set of phrases found in bulk emails; more can be added or removed as needed. However, it's a good starting point.

6. Under **Do the following**, select **Modify the message properties** \> **set the spam confidence level (SCL)**.

7. In the **specify SCL** dialog box, set the SCL to **5**, **6**, or **9**, and click **ok**.

   Setting the SCL to 5 or 6 takes the **Spam** action, while setting the SCL to 9 takes the **High confidence spam** action, as configured in the content filter policy. The service will perform the action set in the content filter policy. The default action is to deliver the message to the recipients' Junk Email folder, but different actions can be configured as described in [Configure your spam filter policies](configure-your-spam-filter-policies.md).

   If your configured action is to quarantine the message rather than send it to the recipients' Junk Email folder, the message will be sent to the administrator quarantine as a mail flow rule match, and it will not be available in the end user spam quarantine or via end-user spam notifications.

   For more information about SCL values in the service, see [Spam confidence levels](spam-confidence-levels.md).

8. Save the rule.

## For more information

[What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md)

[Bulk Complaint Level values](bulk-complaint-level-values.md)

[Configure your spam filter policies](configure-your-spam-filter-policies.md)

[Advanced spam filtering  options](advanced-spam-filtering-asf-options.md)
