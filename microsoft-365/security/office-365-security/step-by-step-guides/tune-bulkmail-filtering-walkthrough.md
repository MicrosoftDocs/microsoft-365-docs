---
title: Assess and tune your filtering for bulk mail
description: Walkthrough for the process of tuning your bulk filtering settings within Exchange Online and Microsoft Defender for Office 365
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
ms.date: 07/14/2022
---

# Tuning your filtering for Bulk (grey-mail)


This guide will walk you through the process of tuning your bulk filtering settings, the delivery location of bulk mail & some transport rules which can be used to achieve a more aggressive stance should this suit your organization's needs.

## What you'll need

- Exchange Online as a minimum. (Microsoft Defender for Office 365 offers additional functionality)
- Sufficient permissions. (Security Administrator)
- Basic understanding of checking message headers (guidance [here](https://support.microsoft.com/office/view-internet-message-headers-in-outlook-cd039382-dc6e-4264-ac74-c048563d212c))
- 30 minutes to complete the following steps.


## Understanding the bulk (BCL) value.

Bulk mail is usually advertising emails or marketing messages, which can be more challenging to filter due to the nature that some customers want these emails, and in fact have signed up for them, whereas other customers will consider these almost spam in nature and not want to receive them. We stamp a "BCL" value on emails based on the number of complaints we get about that sender and allow you to select the threshold to accept in order to tune the amount of bulk messages you receive.

## Checking the BCL value of an email, and the threshold in your policies

1. Take the headers of a message you are concerned with and search for the **"X-Microsoft-Antispam:"** header, which will contain a **BCL value**, make a note of this number.
1. Repeat this process until you have an average BCL value which will be used as the threshold.
1. **Login** to the Microsoft Security portal at https://security.microsoft.com.
1. On the **left nav**, under **Email & collaboration**, select **Policies & rules**.
1. Select **Threat policies**, then **Anti-Spam**.
1. On the page that loads, the next action will depend on the type of policy you are using.
   1. Preset Policies cannot be edited, the threshold is 6 in standard, 5 in strict.
   1. The default (inbuilt) policy is set to 7
   1. Custom policies are set to 7 by default on creation unless another value is provided.
1. **Edit** (or create a custom policy) to set the BCL threshold which meets your needs, as an example if most the messages you collected (which were all unwanted) had a BCL of 4 or higher, setting the BCL value to 4 in the policy would filter out these messages for your end users.
1. Within that policy, under the **"Edit actions"** section, select the **"bulk message action"** and select what to do when the threshold is exceeded, for example you could select Quarantine if you would like to keep all bulk out the mailbox, or Junk email folder for a less aggressive stance.
1. If you receive complaints from users about too much bulk being blocked, you can then adjust this threshold, or alternatively submit the message to us which will also add the sender to TABL (Tenant Allow Block List).

> [!TIP]
> Review this step-by-step guide for more details on allowing senders with TABL (Tenant Allow Block List): [How to handle legitimate emails getting blocked from delivery using Microsoft Defender for Office 365 - Office 365 | Microsoft Learn
](https://learn.microsoft.com/microsoft-365/security/office-365-security/step-by-step-guides/how-to-handle-false-positives-in-microsoft-defender-for-office-365)

## More aggressive strategies for managing bulk senders.

In some cases, the sender of bulk mail does not generate enough complaints for their messages to be assigned a BCL value high enough to be caught by your tuned threshold value. In this situation it's possible to use transport rules to take an aggressive approach; however, caution should be applied, as false positives (unwanted blocking) will occur, so these rules need tuning with exceptions and management to stay relevant for your organizations mail patterns.
> [!TIP]
>To better protect certain groups of users such as your c-suite and priority accounts who may be more vulnerable to unsolicited emails due to their email addresses being readily accessible in the public domain, you can create a specialized policy specifically scoped to them and set a higher BCL threshold.

[Use mail flow rules to filter bulk email in Exchange Online | Microsoft Learn](https://learn.microsoft.com/exchange/security-and-compliance/mail-flow-rules/use-rules-to-filter-bulk-mail)

## For customers with Microsoft Defender for Office 365

- Customers with Microsoft Defender for Office 365 Plan 1 or higher will be able to use the email entity page to discover the BCL value of messages instead of interrogating headers. [Learn more here](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-the-email-entity-page-in-microsoft-defender-for/ba-p/2275420)

- Customers with Microsoft Defender for Office 365 Plan 2 will be able to interrogate bulk values at scale using advanced hunting. See more details here: [Use advanced hunting to discover bulk emails](https://learn.microsoft.com/microsoft-365/security/office-365-security/anti-spam-spam-vs-bulk-about#how-to-tune-bulk-email)

## More Information

[Email Protection Basics in Microsoft 365: Bulk Email - Microsoft Community Hub](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/email-protection-basics-in-microsoft-365-bulk-email/ba-p/3445337)

[What's the difference between junk email and bulk email? - Office 365 | Microsoft Learn](https://learn.microsoft.com/microsoft-365/security/office-365-security/anti-spam-spam-vs-bulk-about)
