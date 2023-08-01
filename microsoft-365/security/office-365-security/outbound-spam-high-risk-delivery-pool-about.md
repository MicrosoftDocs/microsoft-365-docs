---
title: Outbound delivery pools
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: ac11edd9-2da3-462d-8ea3-bbf9dbc6f948
ms.collection: 
  - m365-security
  - tier2
description: Learn how the delivery pools are used to protect the reputation of email servers in the Microsoft 365 datacenters.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Outbound delivery pools

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Email servers in the Microsoft 365 datacenters might be temporarily guilty of sending spam. For example, a malware or malicious spam attack in an on-premises email organization that sends outbound mail through Microsoft 365, or compromised Microsoft 365 accounts. Attackers also try to avoid detection by relaying messages through Microsoft 365 forwarding.

These scenarios can result in the IP address of the affected Microsoft 365 datacenter servers appearing on third-party blocklists. Destination email organizations that use these blocklists will reject email from those Microsoft 365 messages sources.

## High-risk delivery pool

To prevent our IP addresses from being blocked, all outbound messages from Microsoft 365 datacenter servers that are determined to be spam are sent through the _high-risk delivery pool_.

The high risk delivery pool is a separate IP address pool for outbound email that's only used to send "low quality" messages (for example, spam and [backscatter](anti-spam-backscatter-about.md). Using the high risk delivery pool helps prevent the normal IP address pool for outbound email from sending spam. The normal IP address pool for outbound email maintains the reputation sending "high quality" messages, which reduces the likelihood that these IP addresses appear on IP blocklists.

The possibility that IP addresses in the high-risk delivery pool are placed on IP blocklists remains, but this behavior is by design. Delivery to the intended recipients isn't guaranteed, because many email organizations don't accept messages from the high risk delivery pool.

For more information, see [Control outbound spam](outbound-spam-protection-about.md).

> [!NOTE]
> Messages where the source email domain has no A record and no MX record defined in public DNS are always routed through the high-risk delivery pool, regardless of their spam or sending limit disposition.
>
> Messages that exceed the following limits are blocked, so they aren't sent through the high-risk delivery pool:
>
> - The [sending limits of the service](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options).
> - [Outbound spam policies](outbound-spam-policies-configure.md) where the senders are restricted from sending mail.

### Bounce messages

The outbound high-risk delivery pool manages the delivery of all non-delivery reports (also known as NDRs or bounce messages). Possible causes for a surge in NDRs include:

- A spoofing campaign that affects one of the customers using the service.
- A directory harvest attack.
- A spam attack.
- A rogue email server.

Any of these issues can result in a sudden increase in the number of NDRs being processed by the service. These NDRs often appear to be spam to other email servers and services (also known as _[backscatter](anti-spam-backscatter-about.md)_).

### Relay pool

In certain scenarios, messages that are forwarded or relayed via Microsoft 365 are sent using a special relay pool, because the destination shouldn't consider Microsoft 365 as the actual sender. It's important for us to isolate this email traffic, because there are legitimate and invalid scenarios for auto forwarding or relaying email out of Microsoft 365. Similar to the high-risk delivery pool, a separate IP address pool is used for relayed mail. This address pool isn't published because it can change often, and it's not part of published SPF record for Microsoft 365.

Microsoft 365 needs to verify that the original sender is legitimate so we can confidently deliver the forwarded message.

The forwarded or relayed message should meet one of the following criteria to avoid using the relay pool:

- The outbound sender is in an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- SPF passes when the message comes to Microsoft 365.
- DKIM on the sender domain passes when the message comes to Microsoft 365.

You can tell that a message was sent via the relay pool by looking at the outbound server IP (the relay pool is in the 40.95.0.0/16 range).

In cases where we can authenticate the sender, we use Sender Rewriting Scheme (SRS) to help the recipient email system know that the forwarded message is from a trusted source. You can read more about how that works and what you can do to help make sure the sending domain passes authentication in [Sender Rewriting Scheme (SRS) in Office 365](/office365/troubleshoot/antispam/sender-rewriting-scheme).

For DKIM to work, make sure you enable DKIM for sending domain. For example, fabrikam.com is part of contoso.com and is defined in the accepted domains of the organization. If the message sender is sender@fabrikam.com, DKIM needs to be enabled for fabrikam.com. you can read on how to enable at [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md).

To add a custom domain, follow the steps in [Add a domain to Microsoft 365](../../admin/setup/add-domain.md).

If the MX record for your domain points to a third party service or an on-premises email server, you should use [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors). Enhanced Filtering ensures SPF validation is correct for inbound mail and avoids sending email through the relay pool.
