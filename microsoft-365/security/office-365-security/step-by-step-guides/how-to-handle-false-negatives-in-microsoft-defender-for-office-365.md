---
title: (False Negatives) How to handle malicious emails that are delivered to recipients using Microsoft Defender for Office 365
description: The steps to handle malicious emails coming through to end users and inboxes (as False Negatives) with Microsoft Defender for Office 365 in order to prevent loss of business.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: jarogers
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# How to handle malicious emails that are delivered to recipients (False Negatives), using Microsoft Defender for Office 365

Microsoft Defender for Office 365 helps deal with malicious emails (False Negative) that are delivered to recipients and that put your organizational productivity at risk.
Defender for Office 365 can help you understand why emails are getting delivered, how to resolve the situation quickly, and how to prevent similar situations from happening in the future.

## What you'll need

- Microsoft Defender for Office 365 Plan 1 and 2 (included as part of E5). Exchange Online customers can also leverage this.
- Sufficient permissions (Security Administrator role).
- 5-10 minutes to perform the steps below.

## Handling malicious emails in the Inbox folder of end users

1. Ask end users to report the email as **phishing** or **junk** using Microsoft Message Add-in or Microsoft Phish add-in or the Outlook buttons.
2. End users can also add the sender to the [block senders list](https://support.microsoft.com/office/block-a-mail-sender-b29fd867-cac9-40d8-aed1-659e06a706e4#:~:text=1%20On%20the%20Home%20tab%2C%20in%20the%20Delete,4%20Click%20OK%20in%20both%20open%20dialog%20boxes..) in Outlook to prevent emails from this sender from being delivered to their inbox.
3. Admins can triage the user reported messages from [User reported tab on the Submissions page](/microsoft-365/security/office-365-security/admin-submission#view-user-reported-messages-to-microsoft).
4. From those reported messages, admins can **submit to** [Microsoft for analysis](/microsoft-365/security/office-365-security/admin-submission#notify-users-from-within-the-portal) to learn why that email was allowed in the first place.
5. If needed, while submitting to Microsoft for analysis, admins can [create a block entry for the sender](../tenant-allow-block-list-email-spoof-configure.md#create-block-entries-for-domains-and-email-addresses) to mitigate the problem.
6. Once the results for submissions are available, read the verdict to understand why emails were allowed, and how your tenant setup could be improved to prevent similar situations from happening in the future.

## Handling malicious emails in junk folder of end users

1. Ask end users to report the email as **phishing** using Microsoft Message Add-in, or Microsoft Phish Add-in, or the Outlook buttons.
2. Admins can triage the user reported messages from the [User reported tab on the Submissions page](/microsoft-365/security/office-365-security/admin-submission#view-user-reported-messages-to-microsoft).
3. From those reported messages admins can **submit to** [Microsoft for analysis](/microsoft-365/security/office-365-security/admin-submission#notify-users-from-within-the-portal) and learn why that email was allowed in the first place.
4. If needed, while submitting to Microsoft for analysis, admins can [create a block entry for the sender](../tenant-allow-block-list-email-spoof-configure.md#create-block-entries-for-domains-and-email-addresses) to mitigate the problem.
5. Once the results for submissions are available, read the verdict to understand why emails were allowed, and how your tenant setup could be improved to prevent similar situations from happening in the future.

## Handling malicious emails landing in the quarantine folder of end users

1. End users receive an [email digest](../quarantine-quarantine-notifications.md) about quarantined messages as per the settings enabled by admins.
2. End users can preview the messages in quarantine, block the sender, and submit those messages to Microsoft for analysis.

## Handling malicious emails landing in the quarantine folder of admins

1. Admins can view the quarantined emails (including the ones asking permission to request release) from the [review page](/microsoft-365/security/office-365-security/quarantine-admin-manage-messages-files).
2. Admins can submit any malicious, or suspicious messages to Microsoft for analysis, and create a block to mitigate the situation while waiting for verdict.
3. Once the results for submissions are available, read the verdict to learn why the emails were allowed, and how your tenant setup could be improved to prevent similar situations from happening in the future.
