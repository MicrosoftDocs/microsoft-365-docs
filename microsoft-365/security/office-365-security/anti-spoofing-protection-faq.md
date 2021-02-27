---
title: Anti-spoofing protection FAQ
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: troubleshooting

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: 
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can view frequently asked questions and answers about anti-spoofing protection in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# Anti-spoofing protection FAQ

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

This article provides frequently asked questions and answers about anti-spoofing protection for Microsoft 365 organizations with mailboxes in Exchange Online, or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes.

For questions and answers about anti-spam protection, see [Anti-spam protection FAQ](anti-spam-protection-faq.md).

For questions and answers about anti-malware protection, see [Anti-malware protection FAQ](anti-malware-protection-faq-eop.md)

## Why did Microsoft choose to junk unauthenticated inbound email?

Microsoft believes that the risk of continuing to allow unauthenticated inbound email is higher than the risk of losing legitimate inbound email.

## Does junking unauthenticated inbound email cause legitimate email to be marked as spam?

When Microsoft enabled this feature in 2018, some false positives happened (good messages were marked as bad). However, over time, senders adjusted to the requirements. The number of messages that were misidentified as spoofed became negligible for most email paths.

Microsoft itself first adopted the new email authentication requirements several weeks before deploying it to customers. While there was disruption at first, it gradually declined.

## Is spoof intelligence available to Microsoft 365 customers without Defender for Office 365?

Yes. As of October 2018, spoof intelligence is available to all organizations with mailboxes in Exchange Online, and standalone EOP organizations without Exchange Online mailboxes.

## How can I report spam or non-spam messages back to Microsoft?

See [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## I'm an admin and I don't know all of sources for messages in my email domain!

See [You don't know all sources for your email](email-validation-and-authentication.md#you-dont-know-all-sources-for-your-email).

## What happens if I disable anti-spoofing protection for my organization?

We do not recommend disabling anti-spoofing protection. Disabling the protection will allow more phishing and spam messages to be delivered in your organization. Not all phishing is spoofing, and not all spoofed messages will be missed. However, your risk will be higher.

Now that [Enhanced Filtering for Connectors](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) is available, we no longer recommended turning off anti-spoofing protection when your email is routed through another service before EOP.

## Does anti-spoofing protection mean I will be protected from all phishing?

Unfortunately, no. Attackers will adapt to use other techniques (for example, compromised accounts or accounts in free email services). However, anti-phishing protection works much better to detect these other types of phishing methods. The protection layers in EOP are designed work together and build on top of each other.

## Do other large email services block unauthenticated inbound email?

Nearly all large email services implement traditional SPF, DKIM, and DMARC checks. Some services have other, more strict checks, but few go as far as EOP to block unauthenticated email and treat them as spoofed messages. However, the industry is becoming more aware about issues with unauthenticated email, particularly because of the problem of phishing.

## Do I still need to enable the Advanced Spam Filter setting "SPF record: hard fail" (_MarkAsSpamSpfRecordHardFail_) if I enable anti-spoofing?

No. This ASF setting is no longer required. Anti-spoofing protection considers both SPF hard fails and a much wider set of criteria. If you have anti-spoofing enabled and the **SPF record: hard fail** (_MarkAsSpamSpfRecordHardFail_) turned on, you will probably get more false positives.

We recommend that you disable this feature as it provides almost no additional benefit for detecting spam or phishing message, and would instead generate mostly false positives. For more information, see [Advanced Spam Filter (ASF) settings in EOP](advanced-spam-filtering-asf-options.md).

## Does Sender Rewriting Scheme help fix forwarded email?

SRS only partially fixes the problem of forwarded email. By rewriting the SMTP **MAIL FROM**, SRS can ensure that the forwarded message passes SPF at the next destination. However, because anti-spoofing is based upon the **From** address in combination with the **MAIL FROM** or DKIM-signing domain (or other signals), it's not enough to prevent SRS forwarded email from being marked as spoofed.
