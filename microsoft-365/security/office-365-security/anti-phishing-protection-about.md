---
title: Anti-phishing protection
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
ms.assetid: 75af74b2-c7ea-4556-a912-8c48e07271d3
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - TopSMBIssues
description: Admins can learn about the anti-phishing protection features in Exchange Online Protection (EOP) and Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 7/5/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Anti-phishing protection in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

*Phishing* is an email attack that tries to steal sensitive information in messages that appear to be from legitimate or trusted senders. There are specific categories of phishing. For example:

- **Spear phishing** uses focused, customized content that's specifically tailored to the targeted recipients (typically, after reconnaissance on the recipients by the attacker).

- **Whaling** is directed at executives or other high value targets within an organization for maximum effect.

- **Business email compromise (BEC)** uses forged trusted senders (financial officers, customers, trusted partners, etc.) to trick recipients into approving payments, transferring funds, or revealing customer data. Learn more by watching [this video](https://www.youtube.com/watch?v=8Kn31h9HwIQ&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=2).

- **Ransomware** that encrypts your data and demands payment to decrypt it almost always starts in phishing messages. Anti-phishing protection can't help you decrypt encrypted files, but it can help detect the initial phishing messages that are associated with the ransomware campaign. For more information about recovering from a ransomware attack, see [Ransomware incident response playbooks](/security/ransomware/).

With the growing complexity of attacks, it's even difficult for trained users to identify sophisticated phishing messages. Fortunately, Exchange Online Protection (EOP) and the additional features in Microsoft Defender for Office 365 can help.

## Anti-phishing protection in EOP

Microsoft 365 organizations with mailboxes in Exchange Online or standalone EOP organizations without Exchange Online mailboxes contain the following features that help protect your organization from phishing threats:

- **Spoof intelligence**: Use the spoof intelligence insight to review detected spoofed senders in messages from external and internal domains, and manually allow or block those detected senders. For more information, see [Spoof intelligence insight in EOP](anti-spoofing-spoof-intelligence.md).

- **Anti-phishing policies in EOP**: Turn spoof intelligence on or off, turn unauthenticated sender indicators in Outlook on or off, and specify the action for blocked spoofed senders. For more information, see [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md).

  **Honor the sender's DMARC policy when the message is detected as spoof**: Control what happens to messages where the sender fails explicit [DMARC](email-authentication-dmarc-configure.md) checks and the DMARC policy is set to `p=quarantine` or `p=reject`. For more information, see [Spoof protection and sender DMARC policies](anti-phishing-policies-about.md#spoof-protection-and-sender-dmarc-policies).

- **Allow or block spoofed senders in the Tenant Allow/Block List**: When you override the verdict in the spoof intelligence insight, the spoofed sender becomes a manual allow or block entry that only appears on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=SpoofItem>. You can also manually create allow or block entries for spoofed senders before they're detected by spoof intelligence. For more information, see [Spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#spoofed-senders-in-the-tenant-allowblock-list).

- **Implicit email authentication**: EOP enhances standard email authentication checks for inbound email ([SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), and [DMARC](email-authentication-dmarc-configure.md) with sender reputation, sender history, recipient history, behavioral analysis, and other advanced techniques to help identify forged senders. For more information, see [Email authentication in Microsoft 365](email-authentication-about.md).

## Additional anti-phishing protection in Microsoft Defender for Office 365

Microsoft Defender for Office 365 contains additional and more advanced anti-phishing features:

- **Anti-phishing policies in Microsoft Defender for Office 365**: Configure impersonation protection settings for specific message senders and sender domains, mailbox intelligence settings, and adjustable advanced phishing thresholds. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md). For more information about the differences between anti-phishing policies in EOP and anti-phishing policies in Defender for Office 365, see [Anti-phishing policies in Microsoft 365](anti-phishing-policies-about.md).
- **Campaign Views**: Machine learning and other heuristics identify and analyze messages that are involved in coordinated phishing attacks against the entire service and your organization. For more information, see [Campaign Views in Microsoft Defender for Office 365](campaigns.md).
- **Attack simulation training**: Admins can create fake phishing messages and send them to internal users as an education tool. For more information, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

## Other anti-phishing resources

- For end users: [Protect yourself from phishing schemes and other forms of online fraud](https://support.microsoft.com/office/be0de46a-29cd-4c59-aaaf-136cf177d593).
- [How Microsoft 365 validates the From address to prevent phishing](anti-phishing-from-email-address-validation.md).
