---
title: "Anti-spoofing protection FAQ"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Frequently asked questions and answers for admins about anti-spoofing protection in Exchange Online and standalone Exchange Online Protection (EOP)."
---

# Anti-malware protection FAQ in Office 365

This topic provides frequently asked questions and answers about anti-spoofing protection for Office 365 customers with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) customers without Exchange Online mailboxes.

For questions and answers about anti-spam protection, see [Anti-spam protection FAQ](anti-spam-protection-faq.md).

For questions and answers about anti-malware protection, see [Anti-malware protection FAQ](anti-malware-protection-faq-eop.md).

For questions and answers about anti-spoofing protection, see [Anti-spoofing protection FAQ](anti-spoofing-protection-faq.md).

## Why did Microsoft choose to block unauthenticated email and treat it as spoofed?

Because of the impact of phishing attacks, and because email authentication has been around for over 15 years, Microsoft believes that the risk of continuing to allow unauthenticated inbound email is higher than the risk of losing legitimate inbound email.

## Does spoof intelligence cause legitimate email to be marked as spam?

When spoof intelligence was first deployed in 2018, some false positives happened (good messages were marked as bad). However, over time, senders adjusted to the new sender authentication requirements, and number of messages that were misidentified as spoofed became negligible for most email paths.

Microsoft itself first adopted anti-spoofing several weeks before deploying it to customers. While there was disruption at first, it gradually declined.

## Will Microsoft bring spoof intelligence to Outlook.com and Office 365 customers without ATP?

Anti-spoofing technology was initially deployed to organizations that had Office 365 Enterprise E5 subscriptions or the Office 365 Advanced Threat Protection (ATP) add-on for their subscription. As of October, 2018 we've extended the protection to all organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes. In the future, we might release spoof intelligence for Outlook.com. However, if we do, there may be some capabilities that are not applied such as reporting and custom overrides.

## How can I report spam or non-spam messages back to Microsoft?

See [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## I'm an admin and I don't know all of the senders for my email domain

Please see [Administrators of domains that are not Office 365 customers](#administrators-of-domains-that-are-not-office-365-customers).

## Does anti-spoofing protection mean I will be protected from all phishing?

Unfortunately, no. Attackers will adapt to use other techniques (for example, compromised accounts or accounts in free email services). However, anti-phishing protection works much better to detect these other types of phishing methods. The protection layers in Office 365 are designed work together and build on top of each other.

## Do other large email services block unauthenticated inbound email?

Nearly all large email services implement traditional SPF, DKIM, and DMARC checks. Some services have other, more strict checks, but few go as far as Office 365 to block unauthenticated email and treat them as a spoofed messages. However, the industry is becoming more aware about issues with unauthenticated email, particularly because of the problem of phishing.

## Do I still need to enable the Advanced Spam Filter setting "SPF record: hard fail" (_MarkAsSpamSpfRecordHardFail_) if I enable anti-spoofing?

No, this ASF setting no longer required because anti-spoofing not only considers SPF hard fails, but a much wider set of criteria. If you have anti-spoofing enabled and the **SPF record: hard fail** (_MarkAsSpamSpfRecordHardFail_) turned on, you will probably get more false positives.

We recommend that you disable this feature as it provides almost no additional benefit for detecting spam or phishing message, and would instead instead generate mostly false positives. For more information, see [Advanced Spam Filter (ASF) settings in Office 365](advanced-spam-filtering-asf-options.md).

## Does Sender Rewriting Scheme (SRS) help fix forwarded email?

SRS only partially fixes the problem of forwarded email. By rewriting the SMTP **MAIL FROM**, SRS can ensure that the forwarded message passes SPF at the next destination. However, because anti-spoofing is based upon the **From** address in combination with the **MAIL FROM** or DKIM-signing domain (or other signals), it's not enough to prevent SRS forwarded email from being marked as spoofed.
