---
title: Outbound spam protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 6a601501-a6a8-4559-b2e7-56b59c96a586
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the outbound spam controls in Exchange Online Protection (EOP), and what to do if you need to send mass mailings.
ms.service: defender-office-365
ms.date: 1/29/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 1 and Plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Outbound spam protection in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, we take managing outbound spam seriously. Even if one customer intentionally or unintentionally sends spam from their organization, that action can degrade the reputation of the whole service and can affect email delivery for other customers.

This article describes the controls and notifications that are designed to help prevent outbound spam, and what you can do if you need to send mass mailings.

## What admins can do to control outbound spam

- **Use built-in notifications**: When a user exceeds sending limits of [the service](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options) or [outbound spam policies](outbound-spam-policies-configure.md) and is restricted from sending email, the default alert policy named **User restricted from sending email** sends email notifications to members of the **TenantAdmins** (**Global admins**) group. To configure who else receives these notifications, see [Verify the alert settings for restricted users](outbound-spam-restore-restricted-users.md#verify-the-alert-settings-for-restricted-users). Also, the default alert policies named **Email sending limit exceeded** and **Suspicious email sending patterns detected** send email notifications to members of the **TenantAdmins** (**Global admins**) group. For more information about alert policies, see [Alert policies in the Microsoft Defender portal](alert-policies-defender-portal.md).

- **Review spam complaints from third-party email providers**: Many email services like Outlook.com, Yahoo, and AOL provide a feedback loop where we review our messages that are identified as spam by their users. To learn more about sender support for Outlook.com, go to <https://sendersupport.olc.protection.outlook.com/pm/services.aspx>.

## How EOP controls outbound spam

- **Segregation of outbound email traffic**: Every outbound message that's sent through the service is scanned for spam. If the message is determined to be spam, it's delivered from a secondary, less reputable IP address pool named the _high-risk delivery pool_. For more information, see [High-risk delivery pool for outbound messages](outbound-spam-high-risk-delivery-pool-about.md).

- **Monitoring our source IP address reputation**: Microsoft 365 queries various third-party IP blocklists. An alert is generated if any of the IP addresses that we use for outbound email appear on these lists. This monitoring allows us to react quickly when spam has caused our reputation to degrade. When an alert is generated, we have internal documentation that outlines how to get our IP addresses remove (delisted) from blocklists.

- **Disable accounts that send too much spam**<sup>\*</sup>: Even though we segregate outbound spam into the high-risk delivery pool, we can't allow an account (often, a compromised account) to send spam indefinitely. We monitor accounts that are sending spam, and when they exceed an undisclosed limit, the account is blocked from sending email. There are different thresholds for individual users and the entire tenant.

- **Disabling accounts that send too much email too quickly**<sup>\*</sup>: In addition to the limits that look for messages marked as spam, there are also limits that block accounts when they reach an overall outbound message limit, regardless the spam filtering verdict on the outbound messages. A compromised account could send zero-day (previously unrecognized) spam that's missed by the spam filter. Because it can be difficult to identify a legitimate mass mailing campaign vs. a spam campaign, these limits help to minimize any potential damage.

<sup>\*</sup> We don't advertise the exact limits so spammers can't game the system, and so we can increase or decrease the limits as necessary. The limits are high enough to prevent an average business user from ever exceeding them, and low enough to help contain the damage caused by a spammer.

## Recommendations for customers who want to send mass mailings through EOP

It's difficult to strike a balance between customers who want to send a large volume of email vs. protecting the service from compromised accounts and bulk email senders with poor recipient acquisition practices. It's better for us to block a user who's sending too much email than allow bulk activity that results in Microsoft 365 email servers landing on a third-party IP blocklist. The associated cost and risk to the service are simply too great.

As described in the [Exchange Online Service Description](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits), using EOP to send bulk email isn't a supported use of the service, and is permitted only on a "best-effort" basis. For customers who want to send bulk email using EOP, we have the following recommendations:

- Don't send a large rate or volume of email that causes you to run afoul of the [sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1) in the service. This recommendation also includes not sending email to a large list of Bcc recipients.
- Avoid using addresses in your primary email domain (for example, contoso.com) as senders for bulk email. Doing so can affect the delivery of regular email from senders in the domain. Consider using a custom subdomain exclusively for bulk email. For example, use `m.contoso.com` for marketing email and `t.contoso.com` for transactional email.
- Configure any custom subdomains with email authentication records in DNS ([SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), and [DMARC](email-authentication-dmarc-configure.md)). Many email service providers (for example, Gmail, Yahoo!, and Outlook.com) are configured to reject messages that don't meet email authentication standards.
- Marketing email (especially newsletters) should always include a way to unsubscribe from future messages. Some senders require recipients to send an email to a specified alias with the value "Unsubscribe" in the Subject line. However, a one-click option to unsubscribe is preferable for a smoother process.
- Eliminate incorrect and non-existent email aliases from your databases. Any email alias causing a bounce-back is not only unnecessary but also poses a risk to your outbound emails, potentially triggering increased scrutiny from email filtering services. Keep your email database current and devoid of redundant or useless email addresses to maintain deliverability and reputation.

Use the following resources outside of EOP to send bulk email:

- **Send bulk email through on-premises email servers**: Customers maintain their own email infrastructure for mass mailings.
- **Use a third-party bulk email provider**: There are several third-party bulk email solution providers that you can use to send mass mailings. These companies have a vested interest in working with customers to ensure good email sending practices.

  The Messaging, Mobile, Malware Anti-Abuse Working Group (MAAWG) publishes its membership roster at <https://www.maawg.org/about/roster>. Several bulk email providers are on the list, and are known to be responsible internet citizens.
