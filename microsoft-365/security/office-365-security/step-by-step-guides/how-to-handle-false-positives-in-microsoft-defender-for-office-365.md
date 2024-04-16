---
title: (False Positives) How to handle legitimate emails getting blocked from delivery using Microsoft Defender for Office 365
description: The steps to handle legitimate email getting blocked(False Positive) by Microsoft Defender for Office 365 in order to prevent lose of business.
ms.service: defender-office-365
f1.keywords: 
 - NOCSH
author: chrisda
ms.author: chrisda
ms.localizationpriority: medium
manager: jarogers
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 01/31/2023
---

# How to handle Legitimate emails getting blocked (False Positive), using Microsoft Defender for Office 365

Microsoft Defender for Office 365 helps deal with important legitimate business emails that are mistakenly blocked as threats (False Positives). Defender for Office 365 can help admins understand *why* legitimate emails are being blocked, how to resolve the situation quickly, and prevent similar situations from happening in the future.

## What you'll need

- Microsoft Defender for Office 365 Plan 1 or 2 (included as part of E5). Exchange Online customers can also leverage this feature.
- Sufficient permissions (Security Administrator role).
- 5-10 minutes to perform the steps below.

## Handling legitimate emails in to Junk folder of end users

1. Ask end users to report the email as **not junk** using Microsoft Message Add-in or the Outlook buttons.
2. End users can also add the sender to the [**safe sender list**](https://support.microsoft.com/office/safe-senders-in-outlook-com-470d4ee6-e3b6-402b-8cd9-a6f00eda7339) in Outlook to prevent the email from these senders landing in Junk folder.
3. Admins can triage the user-reported messages from [the User reported tab on the Submission page](../submissions-admin.md#view-user-reported-messages-to-microsoft).
4. From those reported messages admins can submit to [**Microsoft for analysis**](../submissions-admin.md#notify-users-about-admin-submitted-messages-to-microsoft) and understand why was that email blocked in the first place.
5. If needed, while submitting to Microsoft for analysis, admins can judiciously [create an allow entry for the sender](../tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-domains-and-email-addresses) to mitigate the problem.
6. Once the results from the admin submission are available, read it to understand why emails were blocked and how your tenant setup could be improved to *prevent* similar situations from happening in the future.

## Handling legitimate emails that are in quarantine folder of end users

1. An end user receives an [email digest](../quarantine-quarantine-notifications.md) about quarantined messages as per the settings enabled by security admins.
2. End users can preview the messages in quarantine, block the sender, release the messages, submit those messages to Microsoft for analysis, and request release of those emails from admins.

## Handling legitimate emails in quarantine folder of an admin

1. Admins can view the quarantined emails (including the ones asking permission to request release) from the [review page](../quarantine-admin-manage-messages-files.md).
2. Admins can release the message from quarantine while submitting it to Microsoft for analysis, and create a temporary allow to mitigate the situation.
3. Once the results for submissions are available, admins should read the verdict to understand the reason.
   - If false positives are due to tenant configuration, admins can correct it to mitigate the issue.
   - If false positives are due to other factors, Microsoft learns from the submission and similar messages aren't quarantined anymore. For more information, see [Automatic tenant Allow/Block list expiration management](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447).

> [!NOTE]
> Admins need to manually release any similar messages that have already been quarantined, as the quarantined messages aren't released automatically. To find and release quarantined messages in bulk, see [Can I release or report more than one quarantined message at a time?](../quarantine-faq.yml#can-i-release-or-report-more-than-one-quarantined-message-at-a-time-)
