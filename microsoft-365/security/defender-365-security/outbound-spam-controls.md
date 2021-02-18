---
title: Outbound spam protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: overview

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 6a601501-a6a8-4559-b2e7-56b59c96a586
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the outbound spam controls in Exchange Online Protection (EOP), and what to do if you need to send mass mailings.
ms.technology: mdo
ms.prod: m365-security
---

# Outbound spam protection in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, we take managing outbound spam seriously. One customer who intentionally or unintentionally sends spam from their organization can degrade the reputation of the whole service, and can affect email delivery for other customers.

This topic describes the controls and notifications that are designed to help prevent outbound spam, and what you can do if you need to send mass mailings.

## What admins can do to control outbound spam

- **Use built-in notifications**: When a user exceeds sending limits of [the service](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options) or [outbound spam policies](configure-the-outbound-spam-policy.md) and is restricted from sending email, the default alert policy named **User restricted from sending email** sends email notifications to members of the **TenantAdmins** (**Global admins**) group. To configure who else receives these notifications, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users). Also, the default alert policies named **Email sending limit exceeded** and **Suspicious email sending patterns detected** send email notifications to members of the **TenantAdmins** (**Global admins**) group. For more information about alert policies, see [Alert policies in the security and compliance center](../../compliance/alert-policies.md).

- **Review spam complaints from third party email providers**: Many email services like Outlook.com, Yahoo and AOL provide a feedback loop where if any user in their service marks an email from Microsoft 365 as spam, the message is packaged up and sent back to us for review. To learn more about sender support for Outlook.com, go to <https://sendersupport.olc.protection.outlook.com/pm/services.aspx>.

## How EOP controls outbound spam

- **Segregation of outbound email traffic**: Every outbound message that's sent through the service is scanned for spam. If the message is determined to be spam, it's delivered from a secondary, less reputable IP address pool named the _high-risk delivery pool_. For more information, see [High-risk delivery pool for outbound messages](high-risk-delivery-pool-for-outbound-messages.md).

- **Monitoring our source IP address reputation**: Microsoft 365 queries various third party IP block lists. An alert is generated if any of the IP addresses that we use for outbound email appear on these lists. This allows us to react quickly when spam has caused our reputation to degrade. When an alert is generated, we have internal documentation that outlines how to get our IP addresses remove (delisted) from block lists.

- **Disable accounts that send too much spam**<sup>\*</sup>: Even though we segregate outbound spam into the high-risk delivery pool, we can't allow an account (often, a compromised account) to send spam indefinitely. We monitor accounts that are sending spam, and when they exceed an undisclosed limit, the account is blocked from sending email. There are different thresholds for individual users and the entire tenant.

- **Disabling accounts that send too much email too quickly**<sup>\*</sup>: In addition to the limits that look for messages marked as spam, there are also limits that block accounts when they reach an overall outbound message limit, regardless the spam filtering verdict on the outbound messages. A compromised account could send zero-day (previously unrecognized) spam that is missed by the spam filter. Because it can be difficult to identify a legitimate mass mailing campaign vs. a spam campaign, these limits help to minimize any potential damage.

<sup>\*</sup> We don't advertise the exact limits so spammers can't game the system, and so we can increase or decrease the limits as necessary. The limits are high enough to prevent an average business user from ever exceeding them, and low enough to help contain the damage caused by a spammer.

## Recommendations for customers who want to send mass mailings through EOP

It's difficult to strike a balance between customers who want to send a large volume of email vs. protecting the service from compromised accounts and bulk email senders with poor recipient acquisition practices. The cost of a Microsoft 365 email source landing on a third party IP block list is greater than blocking a user who's sending too much email.

As described in the [Exchange Online Service Description](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits), using EOP to send bulk email is not a supported use of the service, and is only permitted on a "best-effort" basis. For customers who do want to send bulk email, we recommend the following solutions:

- **Send bulk email through on-premises email servers**: This means that customers will need to maintain their own email infrastructure for mass mailings.

- **Use a third party bulk email provider**: There are several third party bulk email solution providers that you can use to send mass mailings. These companies have a vested interest in working with customers to ensure good email sending practices.

The Messaging, Mobile, Malware Anti-Abuse Working Group (MAAWG) publishes its membership roster at <https://www.maawg.org/about/roster>. Several bulk email providers are on the list, and are known to be responsible internet citizens.
