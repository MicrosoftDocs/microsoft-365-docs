---
title: "Create block sender lists in Office 365"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 5/6/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150s
description: "Block sender list options include Outlook Blocked Senders, Anti-Spam Sender/Domain Block Lists, IP Block Lists, and Exchange Transport Rules (ETRs) also called mail flow rules."
---

# Create block sender lists in Office 365

Sometimes it’s necessary to block unwanted email from senders. There are several methods available to choose from. These options include Outlook Blocked Senders, Anti-Spam Sender/Domain Block Lists, IP Block Lists, and Exchange Transport Rules (ETRs, which are also known as mail flow rules).

> [!NOTE]
> While organization block lists can be used to address false negatives (missed spam), those candidates should also be submitted to Microsoft for analysis. Managing false negatives by using block lists significantly increases your administrative overhead. If you will use a block list for this purpose, you will need to also keep the article for [submitting spam, non-spam, and phishing scam messages to Microsoft for analysis](https://docs.microsoft.com/office365/SecurityCompliance/submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis), at the ready.

The proper method to configure blocked sender lists varies depending on the scope of the impact. For single user impact, the right solution could be to use Outlook Blocked Senders, but if multiple users or all users are being impacted, one of the other options would be more appropriate.

## Options from least to broadest scope

When creating a Block list it's important to pick the appropriate method based on the scope of the impact (how many people will be impacted), so that it matches the breadth of the blocking method. The options listed below are ranked by both scope and breadth. The list goes from narrow to broad, but *read the specifics* for full recommendations.

- Outlook Blocked Senders
- Anti-Spam policy: Sender/Domain Block lists
- Exchange Transport Rules (ETRs also called mail-flow rules)
- Anti-Spam policy: IP Block Lists

## Use Outlook Blocked Senders

When only a small number of users are impacted, that's when Outlook Blocked Senders should be used, because this will only impact mail being sent to them.

> [!IMPORTANT]
> If the unwanted messages are newsletters from a reputable and recognizable source, unsubscribing from the email is another option to stop the user from getting the emails in the future.

The steps to set this up are different between [Outlook on the web](https://support.office.com/article/48c9f6f7-2309-4f95-9a4d-de987e880e46) and the [Outlook client](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089). **When messages are successfully blocked due to Blocked Senders you will see SFV:BLK in the X-Forefront-Antispam-Report** which indicates that the message is being blocked.

## Use Anti-Spam Policy Sender/Domain Block lists

When multiple users are being impacted, the scope is wider, and you need to use a company-wide sender/domain block list Anti-Spam policy. The detailed steps can be found in [Configure your spam filter policies](https://docs.microsoft.com/office365/securitycompliance/configure-your-spam-filter-policies) document. Any messages blocked through this method will follow the spam action as configured in the policy.

The maximum limit for these lists is approximately 1000 entries; although, you will only be able to enter 30 entries into the portal. You must use PowerShell to add more than 30 entries.

## Use Exchange Transport Rules (ETRs) to Block specific senders

If it's necessary to block messages being sent to specific users or across the entire organization, ETRs (also called mail flow rules) can be used. ETRs are more flexible because they can trigger off the sender Email Address or Domain as well as key words and other properties  in the message. This flexibility will let you create partial- to complete blocks. [Please click for the steps to create an ETR, also known as a mail-flow rules](https://docs.microsoft.com/office365/SecurityCompliance/use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages).

> [!IMPORTANT]
> It's easy to create rules that are *overly* aggressive, as a result it's important the criteria being used is as specific as possible. Also, be sure that you enable auditing on the rule you create and do testing to ensure everything works as expected.

## Use Anti-Spam Policy IP Block lists

When it’s not possible to use one of the other options to block a sender, *then* the Anti-Spam Policy IP Block List can be used. [Detailed steps can be found in the article Configure the connection filter policy](https://docs.microsoft.com/office365/securitycompliance/configure-the-connection-filter-policy). It's important to keep the list of blocked IPs to a *minimum* and using IP address ranges here is *not* recommended.

You should *especially* avoid adding IP address ranges that belong to consumer services or shared infrastructures, and also ensure that you review the list of allowed IP addresses as part of regular maintenance. **Because allows-entries can open up routes for attack, you must closely manage this list and regularly remove the allows-entries that are no longer needed.** Also, if you will make allows in a Safe-Sender list be sure to read and understand the risks and precautions in *[Create Safe-Sender lists in Office 365](create-safe-sender-lists-in-office-365.md)*.
