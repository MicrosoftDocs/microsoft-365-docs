---
title: Assess and tune your filtering for bulk mail in Defender for Office 365
description: Tune bulk filtering settings within Exchange Online and Microsoft Defender for Office 365
search.product:
ms.service: microsoft-365-security
ms.subservice: mdo
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTBen
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 02/22/2023
---

# Tune Bulk mail (grey mail) filtering in Defender for Office 365

This guide describes how to tune your bulk email filtering settings in Exchange Online or Microsoft Defender for Office 365. This process includes configuring the delivery location of detected bulk mail and, if necessary, optional transport rules you can use to achieve a more aggressive filtering stance should this suit your organization's needs.

## What you'll need

- Exchange Online as a minimum. (Microsoft Defender for Office 365 offers extra functionality)
- Sufficient permissions. (Security Administrator)
- Basic understanding of checking message headers (for more information, see [View internet message headers in Outlook](https://support.microsoft.com/office/view-internet-message-headers-in-outlook-cd039382-dc6e-4264-ac74-c048563d212c))
- 30 minutes to complete the following steps

## Understanding the bulk (BCL) value

Bulk mail is typically advertising emails or marketing messages. These emails can be more challenging to filter as some customers want these emails. Other customers consider these emails spam and don't want to receive them. We add a "BCL" value stamp on emails based on the number of complaints we get about that sender and allow you to select the threshold to accept so you can tune the number of bulk messages you receive.

## Check the BCL value of an email and the threshold in your policies

1. Take the headers of a message you're concerned with and search for the **"X-Microsoft-Antispam:"** header, which contains a **BCL value**. Make a note of this number.
1. Repeat this process until you have an average BCL value. We'll use this value as the threshold. Any mail with a **BCL** value **above** this number will be impacted by the changes we make.
1. **Login** to the Microsoft Security portal at <https://security.microsoft.com>.
1. On the **left nav**, under **Email & collaboration**, select **Policies & rules**.
1. Select **Threat policies** and then **Anti-Spam**.
1. When the page loads, the next action you'll take depends on the type of policy you're using:
   1. Preset Policies can't be edited. The threshold is 6 in standard, 5 in strict.
   1. The default (inbuilt) policy is 7.
   1. Custom policies are set to 7 by default unless another value is provided.
1. **Edit** (or create a custom policy) to set the BCL threshold that meets your needs. For example, if most of the messages you collected (which were all unwanted) have a BCL value of 4 or higher, setting the BCL value to 4 in the policy would filter out these messages for your end users.
1. Within that policy, under the **"Edit actions"** section, select the **"bulk message action"** and select what to do when the threshold is exceeded. For example, you could select Quarantine if you would like to keep all bulk out of the mailbox or use the Junk email folder for a less aggressive stance.
1. If you receive complaints from users about too many bulk emails being blocked, you can adjust this threshold, or alternatively, submit the message to us, which will also add the sender to the Tenant Allow/Block List.

> [!TIP]
> Review this step-by-step guide for more details on allowing senders using the Tenant Allow/Block List: [How to handle legitimate emails getting blocked from delivery using Microsoft Defender for Office 365](how-to-handle-false-positives-in-microsoft-defender-for-office-365.md).

## More aggressive strategies for managing bulk senders

In some cases, the sender of bulk mail doesn't generate enough complaints for its messages to be assigned a BCL value high enough to be caught by your tuned threshold value. In this situation, it's possible to use transport rules to take an aggressive approach; however, use caution, as false positives (unwanted blocking) will occur. Tune the rules with exceptions and management to stay relevant for your organization's mail patterns.

> [!TIP]
> To better protect certain groups of users, such as your c-suite and priority accounts, you can create a specialized policy specifically scoped to them and set a higher BCL threshold, alongside a separate transport rule (if applicable). These groups of users might be more vulnerable to unsolicited emails due to their email addresses being readily accessible in the public domain.

See [Use mail flow rules to filter bulk email in Exchange Online | Microsoft Learn](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-filter-bulk-mail) for more information.

## For customers with Microsoft Defender for Office 365

- Customers with Microsoft Defender for Office 365 Plan 1 or higher can use the [email entity page](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-the-email-entity-page-in-microsoft-defender-for/ba-p/2275420) to discover the BCL value of messages instead of interrogating headers.

- Customers with Microsoft Defender for Office 365 Plan 2 can interrogate bulk values at scale using [advanced hunting](/microsoft-365/security/office-365-security/anti-spam-spam-vs-bulk-about#how-to-tune-bulk-email.md).

## More Information

[Email Protection Basics in Microsoft 365: Bulk Email - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/email-protection-basics-in-microsoft-365-bulk-email/ba-p/3445337)

[What's the difference between junk email and bulk email? - Office 365 | Microsoft Learn](../anti-spam-spam-vs-bulk-about.md)
