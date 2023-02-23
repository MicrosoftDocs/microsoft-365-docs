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
ms.date: 1/31/2023
search.appverid:
- MET150
ms.collection:
- m365-security
- tier1
ms.custom:
description: Learn how to manage allow entries and block entries in the Tenant Allow/Block List in the Security portal.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Manage allows and blocks in the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> To allow phishing URLs that are part of third-party attack simulation training, use the [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md) to specify the URLs. Don't use the Tenant Allow/Block List.

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The Tenant Allow/Block List in the Microsoft 365 Defender portal gives you a way to manually override the Microsoft 365 filtering verdicts. The Tenant Allow/Block List is used during mail flow for incoming messages from external senders. Note that it doesn't apply to messages within the organization.

The Tenant Allow/Block list is available in the Microsoft 365 Defender portal at <https://security.microsoft.com> \> **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

For entry creation and configuration instructions, see the following topics:

- **Domains and email addresses** and **spoofed senders**: [Allow or block emails using the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md)
- **Files**: [Allow or block files using the Tenant Allow/Block List](tenant-allow-block-list-files-configure.md)
- **URLs**: [Allow or block URLs using the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md).

These articles contain procedures in the Microsoft 365 Defender Portal and in PowerShell.

## Block entries in the Tenant Allow/Block List

> [!NOTE]
> In the Tenant Allow/Block List, block entries take precedence over allow entries.

Use the Submissions portal (also known as *admin submission*) at <https://security.microsoft.com/reportsubmission> to create block entries for the following types of items as you report them as false negatives to Microsoft:

- **Domains and email addresses**:
  - Email messages from these senders are marked as *high confidence spam* (SCL = 9). What happens to the messages is determined by the [anti-spam policy](anti-spam-policies-configure.md) that detected the message for the recipient. In the default anti-spam policy and new custom policies, messages that are marked as high confidence spam are delivered to the Junk Email folder by default. In Standard and Strict [preset security policies](preset-security-policies.md), high confidence spam messages are quarantined.
  - Users in the organization can't send email to these blocked domains and addresses. They'll receive the following non-delivery report (also known as an NDR or bounce message): '550 5.7.703 Your message can't be delivered because one or more recipients are blocked by your organization's tenant recipient block policy'. The entire message is blocked for all recipients of the message, even if only one recipient email address or domain is defined in a block entry.

  > [!NOTE]
  > To block only spam from a specific sender, add the email address or domain to the block list in [anti-spam policies](anti-spam-policies-configure.md). To block all email from the sender, use **Domains and email addresses** in the Tenant Allow/Block List.

- **Files**: Email messages that contain these blocked files are marked as malware and moved to quarantine.

- **URLs**: Email messages that contain these blocked URLs are blocked as *high confidence phishing*. Messages containing the blocked URLs are quarantined.

In the Tenant Allow/Block List, you can also directly create block entries for the following types of items:

- **Domains and email addresses**, **Files**, and **URLs**.

- **Spoofed senders**: If you manually override an existing allow verdict from [spoof intelligence](anti-spoofing-spoof-intelligence.md), the blocked spoofed sender becomes a manual block entry that appears only on the **Spoofed senders** tab in the Tenant Allow/Block List.

By default, block entries for **domains and email addresses**, **files** and **URLs** expire after 30 days, but you can set them to expire up 90 days or to never expire. Block entries for **spoofed senders** never expire.

## Allow entries in the Tenant Allow/Block List

In most cases, you can't directly create allow entries in the Tenant Allow/Block List:

- **Domains and email addresses**, **files**, and **URLs**: You can't create allow entries directly in the Tenant Allow/Block List. Instead you use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report the **email**, **email attachment**, or **URL** to Microsoft as **Should not have been blocked (False positive)**.

- **Spoofed senders**:
  - If spoof intelligence has already blocked the message as spoofing, use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report the **email** to Microsoft as **Should not have been blocked (False positive)**.
  - You can proactively create an allow entry for a spoofed sender on the **Spoofed sender** tab in the Tenant Allow/Block List before [spoof intelligence](anti-spoofing-spoof-intelligence.md) identifies and blocks the message as spoofing.

The following list describes what happens in the Tenant Allow/Block List when you report something to Microsoft as a false positive in the Submissions portal:

- **Email attachments** and **URLs**: An allow entry is created and it appears on the **Files** or **URLs** tab in the Tenant Allow/Block List.

- **Email**: If a message was blocked by the Microsoft 365 filtering stack, an allow entry might be created in the Tenant Allow/Block List:

  - If the message was blocked by [spoof intelligence](anti-spoofing-spoof-intelligence.md), an allow entry for the sender is created, and it appears on the **Spoofed senders** tab in the Tenant Allow Block List.

  - If the message was blocked by [domain or user impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) in Defender for Office 365, an allow entry is not created in the Tenant Allow/Block List. Instead, the domain or sender is added to the **Trusted senders and domains section** in the [anti-phishing policy](anti-phishing-policies-mdo-configure.md#use-the-microsoft-365-defender-portal-to-modify-anti-phishing-policies) that detected the message.

  - If the message was blocked for other reasons, an allow entry for the sender is created, and it appears on the **Domains & addresses** tab in the Tenant Allow Block List.

  - If the message was not blocked, and an allow entry for the sender is not created, it won't show on the **Spoofed senders** tab or the **Domains & addresses** tab.

By default, allow entries for domains and email addresses, files, and URLs exist for 30 days. During those 30 days, Microsoft will learn from the allow entries and [remove them or automatically extend them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). By default, allow entries for spoofed senders never expire.

> [!NOTE]
> Microsoft does not allow you to create allow entries directly. Unnecessary allow entries expose your organization to malicious email which could have been filtered by the system.
>
> Microsoft manages the creation of allow entries from the Submission page. Allow entries are created for the domains or email addresses, spoofed senders, URLs, or files (*entities*) that were determined to be malicious during mail flow. For example, if the sender and a URL in a message were determined to be bad, allow entries are created for the sender and the URL.
>
> When the entity in the allow entry is encountered again, all filters that are associated with the entity are skipped. Other entities that are associated with the message are still evaluated by the filtering system before making a decision.
>
> If messages from the domain or email address pass other checks in the filtering stack during mail flow, the messages will be delivered. For example, if [email authentication](email-authentication-about.md) passes, a message from a sender in the allow entry will be delivered.

## What to expect after you add an allow or block entry

After you add an allow entry through the Submissions portal or a block entry in the Tenant Allow/Block List, the entry should start working immediately 99.999% of the time. For the rest, it could take up to 24 hours.

An allow is created by default for a period of 30 calendar days so that Microsoft could learn from it and then remove it. With **[allow expiry management](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447)**, if Microsoft has not learned from the allow entry, Microsoft will automatically extend the expiry time of allow entries that will soon expire by another 30 days. This extension helps to prevent legitimate email from going to junk or quarantine again. If Microsoft does not learn within 90 calendar days from the date of the original creation of the allow entry, Microsoft will remove the allow entry. You will be kept informed throughout the process using emails.

If Microsoft has learned from the allow entry, the entry will be removed, and you'll get an alert informing you about it.
