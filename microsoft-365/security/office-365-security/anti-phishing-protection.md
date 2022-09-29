---
title: Anti-phishing protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 75af74b2-c7ea-4556-a912-8c48e07271d3
ms.collection: 
  - m365-security
  - m365initiative-defender-office365
ms.custom: 
  - TopSMBIssues
  - seo-marvel-apr2020
description: Admins can learn about the anti-phishing protection features in Exchange Online Protection (EOP) and Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Anti-phishing protection in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

*Phishing* is an email attack that tries to steal sensitive information in messages that appear to be from legitimate or trusted senders. There are specific categories of phishing. For example:

- **Spear phishing** uses focused, customized content that's specifically tailored to the targeted recipients (typically, after reconnaissance on the recipients by the attacker).

- **Whaling** is directed at executives or other high value targets within an organization for maximum effect.

- **Business email compromise (BEC)** uses forged trusted senders (financial officers, customers, trusted partners, etc.) to trick recipients into approving payments, transferring funds, or revealing customer data. Learn more by watching [this video](https://www.youtube.com/watch?v=8Kn31h9HwIQ&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=2).

- **Ransomware** that encrypts your data and demands payment to decrypt it almost always starts out in phishing messages. Anti-phishing protection can't help you decrypt encrypted files, but it can help detect the initial phishing messages that are associated with the ransomware campaign. For more information about recovering from a ransomware attack, see [Recover from a ransomware attack in Microsoft 365](recover-from-ransomware.md).

With the growing complexity of attacks, it's even difficult for trained users to identify sophisticated phishing messages. Fortunately, Exchange Online Protection (EOP) and the additional features in Microsoft Defender for Office 365 can help.

## Anti-phishing protection in EOP

EOP (that is, Microsoft 365 organizations without Microsoft Defender for Office 365) contains features that can help protect your organization from phishing threats:

- **Spoof intelligence**: Use the spoof intelligence insight to review detected spoofed senders in messages from external and internal domains, and manually allow or block those detected senders. For more information, see [Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md).

- **Anti-phishing policies in EOP**: Turn spoof intelligence on or off, turn unauthenticated sender indicators in Outlook on or off, and specify the action for blocked spoofed senders. For more information, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

- **Allow or block spoofed senders in the Tenant Allow/Block List**: When you override the verdict in the spoof intelligence insight, the spoofed sender becomes a manual allow or block entry that only appears on the **Spoofed senders** tab in the Tenant Allow/Block List. You can also manually create allow or block entries for spoof senders before they're detected by spoof intelligence. For more information, see [Manage the Tenant Allow/Block List in EOP](manage-tenant-allow-block-list.md).

- **Implicit email authentication**: EOP enhances standard email authentication checks for inbound email ([SPF](set-up-spf-in-office-365-to-help-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), and [DMARC](use-dmarc-to-validate-email.md) with sender reputation, sender history, recipient history, behavioral analysis, and other advanced techniques to help identify forged senders. For more information, see [Email authentication in Microsoft 365](email-validation-and-authentication.md).

## Additional anti-phishing protection in Microsoft Defender for Office 365

Microsoft Defender for Office 365 contains additional and more advanced anti-phishing features:

- **Anti-phishing policies in Microsoft Defender for Office 365**: Configure impersonation protection settings for specific message senders and sender domains, mailbox intelligence settings, and adjustable advanced phishing thresholds. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md). For more information about the differences between anti-phishing policies in EOP and anti-phishing policies in Defender for Office 365, see [Anti-phishing policies in Microsoft 365](set-up-anti-phishing-policies.md).
- **Campaign Views**: Machine learning and other heuristics identify and analyze messages that are involved in coordinated phishing attacks against the entire service and your organization. For more information, see [Campaign Views in Microsoft Defender for Office 365](campaigns.md).
- **Attack simulation training**: Admins can create fake phishing messages and send them to internal users as an education tool. For more information, see [Simulate a phishing attack](attack-simulation-training.md).

## Other anti-phishing resources

- For end users: [Protect yourself from phishing schemes and other forms of online fraud](https://support.microsoft.com/office/be0de46a-29cd-4c59-aaaf-136cf177d593).

- [How Microsoft 365 validates the From address to prevent phishing](how-office-365-validates-the-from-address.md).
