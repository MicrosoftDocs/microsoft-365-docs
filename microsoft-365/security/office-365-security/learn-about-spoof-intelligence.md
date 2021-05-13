---
title: Spoof intelligence insight
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MOE150
  - MET150
ms.assetid: 978c3173-3578-4286-aaf4-8a10951978bf
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the spoof intelligence insight in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# Spoof intelligence insight in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are not available in all organizations. To use the old experience, see [Manage spoofed senders using the spoof intelligence policy and spoof intelligence insight in EOP](walkthrough-spoof-intelligence-insight.md).

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email messages are automatically protected against spoofing. EOP uses **spoof intelligence** as part of your organization's overall defense against phishing. For more information, see [Anti-spoofing protection in EOP](anti-spoofing-protection.md).

When a sender spoofs an email address, they appear to be a user in one of your organization's domains, or a user in an external domain that sends email to your organization. Attackers who spoof senders to send spam or phishing email need to be blocked. But there are scenarios where legitimate senders are spoofing. For example:

- Legitimate scenarios for spoofing internal domains:
  - Third-party senders use your domain to send bulk mail to your own employees for company polls.
  - An external company generates and sends advertising or product updates on your behalf.
  - An assistant regularly needs to send email for another person within your organization.
  - An internal application sends email notifications.

- Legitimate scenarios for spoofing external domains:
  - The sender is on a mailing list (also known as a discussion list), and the mailing list relays email from the original sender to all the participants on the mailing list.
  - An external company sends email on behalf of another company (for example, an automated report or a software-as-a-service company).

You can use the **spoof intelligence insight** in the Security & Compliance Center to quickly identify spoofed senders who are legitimately sending you unauthenticated email (messages from domains that don't pass SPF, DKIM, or DMARC checks), and manually allow those senders.

By allowing known senders to send spoofed messages from known locations, you can reduce false positives (good email marked as bad). By monitoring the allowed spoofed senders, you provide an additional layer of security to prevent unsafe messages from arriving in your organization.

Likewise, you can review spoofed senders that were allowed by spoof intelligence and manually block those senders from the spoof intelligence insight.

The rest of this article explains how to use the spoof intelligence insight in the Security & Compliance Center and in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

> [!NOTE]
>
> - Only spoofed senders that were detected by spoof intelligence appear in the spoof intelligence insight. When you override the allow or block verdict in the insight, the spoofed sender becomes a manual allow or block entry that only appears on the **Spoof** tab in the Tenant Allow/Block List. You can also manually create allow or block entries for spoofed senders before they're detected by spoof intelligence. For more information, see [Manage the Tenant Allow/Block List in EOP](tenant-allow-block-list.md).
>
> - The spoof intelligence insight and the **Spoof** tab in the Tenant Allow/Block list replace the functionality of the spoof intelligence policy that was available on the anti-spam policy page in the Security & Compliance Center.
>
>- The spoof intelligence insight shows 7 days worth of data. The **Get-SpoofIntelligenceInsight** cmdlet shows 30 days worth of data.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Anti-phishing** page, use <https://protection.office.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To modify the spoof intelligence policy or enable or disable spoof intelligence, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to the spoof intelligence policy, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- You enable and disable spoof intelligence in anti-phishing policies in EOP and Microsoft Defender for Office 365. Spoof intelligence is enabled by default. For more information, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md) or [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

- For our recommended settings for spoof intelligence, see [EOP default anti-phishing policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-default-anti-phishing-policy-settings).

## Open the spoof intelligence insight in the Security & Compliance Center

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-phishing**.

2. On the main **Anti-phishing page**, the spoof intelligence insight has two modes:

   - **Insight mode**: If spoof intelligence is enabled, the insight shows you how many messages were detected by spoof intelligence during the past seven days.
   - **What if mode**: If spoof intelligence is disabled, then the insight shows you how many messages *would* have been detected by spoof intelligence during the past seven days.

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

### About allowed spoofed senders

An allowed spoofed sender in **Non-suspicious domains** in the spoof intelligence insight or a blocked sender in **Suspicious domains** that you manually changed to **Allowed to spoof** only allows messages from the combination of the spoofed domain *and* the sending infrastructure. It does not allow email from the spoofed domain from any source, nor does it allow email from the sending infrastructure for any domain.

For example, the following spoofed sender is allowed to spoof:

- **Domain**: gmail.com
- **Infrastructure**: tms.mx.com

Only email from that domain/sending infrastructure pair will be allowed to spoof. Other senders attempting to spoof gmail.com aren't automatically allowed. Messages from senders in other domains that originate from tms.mx.com are still checked by spoof intelligence, and might be blocked.

## Use the spoof intelligence insight in Exchange Online PowerShell or standalone EOP PowerShell

In PowerShell, you use the **Get-SpoofIntelligenceInsight** cmdlet to **view** allowed and blocked spoofed senders that were detected by spoof intelligence. To manually allow or block the spoofed senders, you need to use the **New-TenantAllowBlockListSpoofItems** cmdlet. For more information, see [Use PowerShell to configure the Tenant Allow/Block List](tenant-allow-block-list.md#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-the-tenant-allowblock-list).

To view the information in the spoof intelligence insight, run the following command:

```powershell
Get-SpoofIntelligenceInsight
```

For detailed syntax and parameter information, see [Get-SpoofIntelligenceInsight](/powershell/module/exchange/get-spoofintelligenceinsight).

## Other ways to manage spoofing and phishing

Be diligent about spoofing and phishing protection. Here are related ways to check on senders who are spoofing your domain and help prevent them from damaging your organization:

- Check the **Spoof Mail Report**. You can use this report often to view and help manage spoofed senders. For information, see [Spoof Detections report](view-email-security-reports.md#spoof-detections-report).

- Review your Sender Policy Framework (SPF) configuration. For a quick introduction to SPF and to get it configured quickly, see [Set up SPF in Microsoft 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md). For a more in-depth understanding of how Office 365 uses SPF, or for troubleshooting or non-standard deployments such as hybrid deployments, start with [How Office 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md).

- Review your DomainKeys Identified Mail (DKIM) configuration. You should use DKIM in addition to SPF and DMARC to help prevent attackers from sending messages that look like they are coming from your domain. DKIM lets you add a digital signature to email messages in the message header. For information, see [Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md).

- Review your Domain-based Message Authentication, Reporting, and Conformance (DMARC) configuration. Implementing DMARC with SPF and DKIM provides additional protection against spoofing and phishing email. DMARC helps receiving mail systems determine what to do with messages sent from your domain that fail SPF or DKIM checks. For information, see [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md).