---
title: "Create blocked sender lists in Office 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150s
description: "Admins can learn about the available options in Office 365 and EOP to block inbound messages."
---

# Create blocked sender lists in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, EOP offers multiple ways of blocking email from unwanted senders. These options include Outlook Blocked Senders, blocked sender lists or blocked domain lists in anti-spam policies, Exchange mail flow rules (also known as transport rules), and the IP Block List (connection filtering). Collectively, you can think of these options as _blocked sender lists_.

The best method to block senders varies on the scope of impact. For a single user, the right solution could be Outlook Blocked Senders. For many users, one of the other options would be more appropriate. The following options are ranked by both impact scope and breadth. The list goes from narrow to broad, but *read the specifics* for full recommendations.

1. Outlook Blocked Senders (the Blocked Senders list that's stored in each mailbox)

2. Blocked sender lists or blocked domain lists (anti-spam policies)

3. Mai flow rules

4. The IP Block List (connection filtering)

> [!NOTE]
> While you can use organization-wide block settings to address false negatives (missed spam), you should also submit those messages to Microsoft for analysis. Managing false negatives by using block lists significantly increases your administrative overhead. If you use block lists to deflect missed spam, you need to keep the topic for [submitting spam, non-spam, and phishing scam messages to Microsoft for analysis](https://docs.microsoft.com/office365/SecurityCompliance/submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis), at the ready.

In contrast, you also have several options to always allow email from specific sources using _safe sender lists_. For more information, see [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md).

## Use Outlook Blocked Senders

When only a small number of users received unwanted email, users or admins can add the sender email addresses to the Blocked Senders list in the mailbox. For instructions, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

When messages are successfully blocked due to a user's Blocked Senders list, the **X-Forefront-Antispam-Report** header field will contain the value `SFV:BLK`.

> [!NOTE]
> If the unwanted messages are newsletters from a reputable and recognizable source, unsubscribing from the email is another option to stop the user from receiving the messages.

## Use blocked sender lists or blocked domain lists

When multiple users are affected, the scope is wider, so the next best option is blocked sender lists or blocked domain lists in anti-spam policies. Messages from senders on the lists are marked as **Spam**, and the action that you've configured for the **Spam** filter verdict is taken on the message. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

The maximum limit for these lists is approximately 1000 entries; although, you will only be able to enter 30 entries into the portal. You need to use PowerShell to add more than 30 entries.

## Use mail flow rules

If you need to block messages that are sent to specific users or across the entire organization, you can use mail flow rules. Mail flow rules are more flexible than block sender lists or blocked sender domain lists because they can also look for keywords or other properties in the unwanted messages.

Regardless of the conditions or exceptions that you use to identify the messages, you configure the action to set the spam confidence level (SCL) of the message to 9, which marks the message a **High confidence spam**. For more information, see [Use mail flow rules to set the SCL in messages](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md).

> [!IMPORTANT]
> It's easy to create rules that are *overly* aggressive, so it's important that you identify only the messages you want to block using using very specific criteria. Also, be sure to enable auditing on the rule and test the results of the rule to ensure everything works as expected.

## Use the IP Block List

When it's not possible to use one of the other options to block a sender, *only then* should you use the IP Block List in the connection filter policy. For more information, see [Configure the connection filter policy](configure-the-connection-filter-policy.md). It's important to keep the number of blocked IPs to a minimum, so blocking entire IP address ranges is *not* recommended.

You should *especially* avoid adding IP address ranges that belong to consumer services (for example, outlook.com) or shared infrastructures, and also ensure that you review the list of blocked IP addresses as part of regular maintenance.
