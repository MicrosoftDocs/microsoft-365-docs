---
title: Spoof intelligence insight
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: overview

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid:
ms.collection: 
  - M365-security-compliance
description: Admins can learn how the spoof intelligence insight works. They can quickly determine which senders are legitimately sending email into their organizations from domains that don't pass email authentication checks (SPF, DKIM, or DMARC, or composite authentication).
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Spoof intelligence insight in EOP

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email messages are automatically protected against spoofing by EOP as of October 2018. EOP uses spoof intelligence as part of your organization's overall defense against phishing. For more information, see [Anti-spoofing protection in EOP](anti-spoofing-protection.md).

When a sender spoofs an email address, they appear to be a user in one of your organization's domains, or a user in an external domain that sends email to your organization. Attackers who spoof senders to send spam or phishing email need to be blocked. But there are scenarios where legitimate senders are spoofing. For example:

- Legitimate scenarios for spoofing internal domains:
  - Third-party senders use your domain to send bulk mail to your own employees for company polls.
  - An external company generates and sends advertising or product updates on your behalf.
  - An assistant regularly needs to send email for another person within your organization.
  - An internal application sends email notifications.
- Legitimate scenarios for spoofing external domains:
  - The sender is on a mailing list (also known as a discussion list), and the mailing list relays email from the original sender to all the participants on the mailing list.
  - An external company sends email on behalf of another company (for example, an automated report or a software-as-a-service company).

You can use the spoof intelligence insight to quickly identify senders who are legitimately sending you unauthenticated email (messages from domains that don't pass SPF, DKIM, or DMARC checks).

By allowing known senders to send spoofed messages from known locations, you can reduce false positives (good email marked as bad). By monitoring the allowed spoofed senders, you provide an additional layer of security to prevent unsafe messages from arriving in your organization.

> [!NOTE]
> Only spoofed senders that have been allowed or blocked by spoof intelligence appear in the spoof intelligence insight. If you manually allow or block a detected spoofed sender from the insight, the entry disappears from the insight and is moved into the list of allowed or blocked spoofed senders in the [Tenant Allow/Block List](tenant-allow-block-list.md#use-the-security--compliance-center-to-create-allow-or-block-spoofed-sender-entries-in-the-tenant-allowblock-list). Likewise, if you [remove the allowed or blocked spoofed sender entry](tenant-allow-block-list.md#use-the-security--compliance-center-to-remove-entries-from-the-tenant-allowblock-list) from the Tenant Allow/Block List, future allowed or blocked messages from the spoofed sender will appear back in the spoof intelligence insight.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the spoof intelligence insight on the **Anti-phishing** page, use <https://protection.office.com/antiphishing>.

- You need to be assigned permissions in the Security & Compliance Center before you can do the procedures in this article:
  - **Organization Management**
  - **Security Administrator**
  - **Security Reader**
  - **Global Reader**

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

  **Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).

- You enable or disable spoof intelligence in anti-phishing policies in Microsoft Defender for Office 365. Spoof intelligence is enabled by default. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

## Open the spoof intelligence insight in the Security & Compliance Center

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-phishing**.

2. On the main **Anti-phishing page**, the spoof intelligence insight looks like this:

   ![Screenshot of spoof intelligence insight](../../media/28aeabac-c1a1-4d16-9fbe-14996f742a9a.png)

   This insight has two modes:

   - **Insight mode**: If spoof intelligence is enabled, the insight shows you how many messages were impacted by our spoof intelligence capabilities over the past seven days.
   - **What if mode**: If spoof intelligence is disabled, then the insight shows you how many messages *would* have been impacted by our spoof intelligence capabilities over the past seven days.

   Either way, the spoofed domains displayed in the insight are separated into two categories: **Suspicious domains** and **Non-suspicious domains**.

   - **Suspicious domains** include:

     - High-confidence spoof: Based on the historical sending patterns and the reputation score of the domains, we're highly confident that the domains are spoofing, and messages from these domains are more likely to be malicious.

     - Moderate confidence spoof: Based on historical sending patterns and the reputation score of the domains, we're moderately confident that the domains are spoofing, and that messages sent from these domains are legitimate. False positives are more likely in this category than high-confidence spoof.

   **Non-suspicious domains**: The domain failed explicit email authentication checks [SPF](how-office-365-uses-spf-to-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), and [DMARC](use-dmarc-to-validate-email.md)). However, the domain passed our implicit email authentication checks ([composite authentication](email-validation-and-authentication.md#composite-authentication)). As a result, no anti-spoofing action was taken on the message.

### View information about spoofed messages

On the spoof intelligence insight, click **Suspicious domains** or **Non-suspicious domains** to go to the **Spoof intelligence insight** page. The page contains the following information:

- **Spoofed domain**: The domain of the spoofed user that's displayed in the **From** box in email clients. This address is also known as the `5322.From` address.
- **Infrastructure**: Also known as the _sending infrastructure_. This will be one of the following values:
  - The domain found in a reverse DNS lookup (PTR record) of the source email server's IP address.
  - If the source IP address has no PTR record, then the sending infrastructure is identified as \<source IP\>/24 (for example, 192.168.100.100/24).
- **Message count**: The number of messages from the combination of the spoofed domain _and_ the sending infrastructure to your organization within the last 7 days.
- **Last seen**: The last date when a message was received from the sending infrastructure that contains the spoofed domain.
- **Spoof type**: One of the following values:
  - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
  - **External**: The spoofed sender is in an external domain.
- **Allowed to spoof**: The value depends on whether you clicked **Suspicious domains** or **Non-suspicious domains** on the insight:
  - **Suspicious domains**: The **Allowed to spoof** value is always **No**. Messages from the combination of the spoofed domain _and_ sending infrastructure are marked as bad by spoof intelligence. The action that's taken on the spoofed messages is controlled by the default anti-phishing policy or custom anti-phishing policies (the default value is **Move message to Junk Email folder**). For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).
  - **Non-suspicious domains**: The **Allowed to spoof** value is always **Yes**. Messages from the combination of the spoofed domain _and_ sending infrastructure are marked as good by spoof intelligence.

You can click selected column headings to sort the results.

To filter the results, you have the following options:

- Use the **Filter spoofed domain** box to enter a comma-separated list of spoofed domain values to filter the results.
- Use the **Filter infrastructure** box to enter a comma-separated list of infrastructure values to filter the results.
- Click the **Filter** button to filter the results by **Spoof type**.

### View details about spoofed messages

Select an item in the list to view details. A flyout appears with the following information and features:

- **Allowed to spoof**: Use this toggle to override the spoof intelligence verdict:
  - If you originally selected **Suspicious domains** in the insight, **Allowed to spoof** is turned off. To turn it on, which moves the entry from the spoof intelligence insight to the Tenant Allow/Block List as an allow entry for spoof, slide the toggle to on: ![Toggle on](../../media/scc-toggle-on.png).
  - If you originally selected **Non-suspicious domains** in the insight, **Allowed to spoof** is turned on. To turn it off, which moves the entry from the spoof intelligence insight to the Tenant Allow/Block List as a block entry for spoof, slide the toggle to off: ![Toggle off](../../media/scc-toggle-off.png).

- Why we caught this.
- What you need to do.
- A domain summary that includes most of the same information from the main spoof intelligence page.
- WhoIs data about the sender.
- Similar messages we have seen in your tenant from the same sender.

   ![Screenshot of a domain in the spoof intelligence insight details pane](../../media/03ad3e6e-2010-4e8e-b92e-accc8bbebb79.png)

### About allowed spoofed senders

An allowed spoofed sender in **Non-suspicious domains** in the spoof intelligence insight or a blocked sender in **Suspicious domains** that you manually changed to **Allowed to spoof** only allows messages from the combination of the spoofed domain *and* the sending infrastructure. It does not allow email from the spoofed domain from any source, nor does it allow email from the sending infrastructure for any domain.

For example, the following spoofed sender is allowed to spoof:

- **Domain**: gmail.com
- **Infrastructure**: tms.mx.com

Only email from that domain/sending infrastructure pair will be allowed to spoof. Other senders attempting to spoof gmail.com aren't automatically allowed. Messages from senders in other domains that originate from tms.mx.com are still checked by spoof intelligence, and might be blocked.

## Related topics

[Anti-spoofing protection in Microsoft 365](anti-spoofing-protection.md)
