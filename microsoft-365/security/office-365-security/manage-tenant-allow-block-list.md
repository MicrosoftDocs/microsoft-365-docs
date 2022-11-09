---
title: Manage allows and blocks in the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
ms.date: 08/11/2022
search.appverid:
- MET150
ms.collection:
- m365-security
ms.custom:
description: Learn how to manage allows and blocks in the Tenant Allow/Block List in the Security portal.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Manage your allows and blocks in the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The Tenant Allow/Block List in the Microsoft 365 Defender portal gives you a way to manually override the Microsoft 365 filtering verdicts. The Tenant Allow/Block List is used during mail flow for incoming messages from external senders (does not apply to intra-org messages) and at the time of user clicks.

The Tenant Allow/Block list is available in the Microsoft 365 Defender portal at <https://security.microsoft.com> \> **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

For entry creation and configuration instructions, see the following topics:

- **Domains and email addresses** and **spoofed senders**: [Allow or block emails using the Tenant Allow/Block List](allow-block-email-spoof.md)
- **Files**: [Allow or block files using the Tenant Allow/Block List](allow-block-files.md)
- **URLs**: [Allow or block URLs using the Tenant Allow/Block List](allow-block-urls.md).

These articles contain procedures in the Microsoft 365 Defender Portal and in PowerShell.

## Block entries in the Tenant Allow/Block List

> [!NOTE]
> In the Tenant Allow/Block List, block entries take precedence over allow entries.

Use the Submissions portal (also known as *admin submission*) at <https://security.microsoft.com/reportsubmission> to create block entries for the following types of items as you report them as false positives to Microsoft:

- **Domains and email addresses**:
  - Email messages from these senders are marked as *high confidence spam* (SCL = 9). What happens to the messages is determined by the [anti-spam policy](configure-your-spam-filter-policies.md) that detected the message for the recipient. In the default anti-spam policy and new custom policies, messages that are marked as high confidence spam are delivered to the Junk Email folder by default. In Standard and Strict [preset security policies](preset-security-policies.md), high confidence spam messages are quarantined.
  - Users in the organization can't send email to these blocked domains and addresses. They'll receive the following non-delivery report (also known as an NDR or bounce message): '550 5.7.703 Your message can't be delivered because one or more recipients are blocked by your organization's tenant recipient block policy'. The message will be blocked for all recipients, even if the message contains only one recipient email address or domain that's defined in block entry.

  > [!NOTE]
  > To block only spam from a specific sender, add the email address or domain to the block list in [anti-spam policies](configure-your-spam-filter-policies.md). To block all email from the sender, use **Domains and email addresses** in the Tenant Allow/Block List.

- **Files**: Email messages that contain these blocked files are blocked as *malware*.

- **URLs**: Email messages that contain these blocked URLs are blocked as *high confidence phishing*. Messages containing the blocked URLs are quarantined.

In the Tenant Allow/Block List, you can also directly create block entries for the following types of items:

- **Domains and email addresses**, **Files**, and **URLs**.

- **Spoofed senders**: If you manually override an existing allow verdict from [spoof intelligence](learn-about-spoof-intelligence.md), the blocked spoofed sender becomes a manual block entry that appears only on the **Spoofed senders** tab in the Tenant Allow/Block List.

By default, block entries for **domains and email addresses**, **files** and **URLs** expire after 30 days, but you can set them to expire up 90 days or to never expire. Block entries for **spoofed senders** never expire.

## Allow entries in the Tenant Allow/Block List

In most cases, you can't directly create allow entries in the Tenant Allow/Block List:

- **Domains and email addresses**, **files**, and **URLs**: You can't create allow entries directly in the Tenant Allow/Block List. Instead you use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report the **email**, **email attachment**, or **URL** to Microsoft as **Should not have been blocked (False positive)**.

- **Spoofed senders**:
  - If spoof intelligence has already blocked the message as spoofing, use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report the **email** to Microsoft as **Should not have been blocked (False positive)**.
  - You can proactively create an allow entry for a spoofed sender on the **Spoofed sender** tab in the Tenant Allow/Block List before [spoof intelligence](learn-about-spoof-intelligence.md) identifies and blocks the message as spoofing.

The following list describes what happens in the Tenant Allow/Block List when you report something to Microsoft as a false positive in the Submissions portal:

- **Email attachments** and **URLs**: An allow entry is created and it appears on the **Files** or **URLs** tab in the Tenant Allow/Block List.

- **Email**: If a message was blocked by the Microsoft 365 filtering stack, an allow entry might be created in the Tenant Allow/Block List:

  - If the message was blocked by [spoof intelligence](learn-about-spoof-intelligence.md), an allow entry for the sender is created, and it appears on the **Spoofed senders** tab in the Tenant Allow Block List.

  - If the message was blocked by [domain or user impersonation protection](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) in Defender for Office 365, an allow entry is not created in the Tenant Allow/Block List. Instead, the domain or sender is added to the **Trusted senders and domains section** in the [anti-phishing policy](configure-mdo-anti-phishing-policies.md#use-the-microsoft-365-defender-portal-to-modify-anti-phishing-policies) that detected the message.

  - If the message was blocked for other reasons, an allow entry for the sender is created, and it appears on the **Domains & addresses** tab in the Tenant Allow Block List.

  - If the message was not blocked, and an allow entry for the sender is not created, it won't show on the **Spoofed senders** tab or the **Domains & addresses** tab.

By default, allow entries for **domains and email addresses**, **files** and **URLs** expire after 30 days, which is also the maximum. Allow entries for **spoofed senders** never expire.

> [!NOTE]
> Microsoft does not allow you to create allow entries directly as it leads to creation of allows that are not needed, thus exposing the customer's tenant to malicious emails which might otherwise have been filtered by the system.
>
> Microsoft manages the allow creation process from Submission by creating allows for those entities (domains or email addresses, spoofed senders, URLs, files) which were determined to be malicious by filters during mail flow. For example, if the sender and a URL in the message were determined to be bad, an allow entry is created for the sender, and an allow entry is created for the URL.
>
> When that entity (domain or email address, URL, file) is encountered again, all filters associated with that entity are skipped.
>
> During mail flow, if messages from the domain or email address pass other checks in the filtering stack, the messages will be delivered. For example, if [email authentication](email-validation-and-authentication.md) passes, a message from a sender in the allow entry will be delivered.

## What to expect after you add an allow or block entry

After you add an allow entry through the Submissions portal or a block entry in the Tenant Allow/Block List, the entry should start working immediately 99.999% of the time. For the rest, it could take up to 24 hours.

We recommend letting entries automatically expire after 30 days to see if the system has learned about the allow or block. If not, you should make another entry to give the system another 30 days to learn.

With **allow expiry management** (currently in Private preview), if Microsoft has not learned from the allow entry, Microsoft will automatically extend the expiry time of allow entries that will soon expire by another 30 days. This extension helps to prevent legitimate email from going to junk or quarantine again. If Microsoft does not learn within 90 calendar days from the date of the original creation of the allow entry, Microsoft will remove the allow entry.

If Microsoft has learned from the allow entry, the entry will be removed, and you'll get an alert informing you about it.
