---
title: "Anti-phishing protection"
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
ms.assetid: 75af74b2-c7ea-4556-a912-8c48e07271d3
ms.custom: TopSMBIssues
ms.collection:
- M365-security-compliance
description: "Microsoft 365 offers a variety of protection against phishing attacks by default and also through additional offerings such as ATP anti-phishing. This topic introduces the online resources you can use to learn about and implement anti-phishing options and strategies."
---

# Anti-phishing protection

Microsoft 365 offers a variety of protection against phishing attacks by default and also through additional offerings such as ATP anti-phishing. This topic introduces the online resources you can use to learn about and implement anti-phishing options and strategies in Office 365.

## Protect your organization against phishing attacks

As an administrator, use these resources to learn how to protect against impersonation-based phishing attacks and to help you educate your end users so that they don't fall prey to malicious phishing attacks.

Before you make any changes to your Microsoft 365 configuration, ensure that you're up to date on the latest that Microsoft 365 has to offer. [Visit the Microsoft Safety &amp; Security Center](https://www.microsoft.com/security/default.aspx).

- **Ransomware** that encrypts your data and demands payment to decrypt it almost always starts out in phishing messages. Anti-phishing protection can't help you decrypt encrypted files, but it can help detect the initial phishing messages that are associated with the ransomware campaign. For more information about recovering from a ransomware attack, see [Recover from a ransomware attack in Office 365](recover-from-ransomware.md).

For organizations with Office Enterprise E5, you can use ATP anti-phishing in the Security &amp; Compliance Center. ATP anti-phishing applies a set of machine learning models together with impersonation detection algorithms to incoming messages to provide protection for commodity and spear phishing attacks. ATP anti-phishing protects your organization according to policies that are set by your global or security administrators. To learn more, see [ATP anti-phishing capabilities](atp-anti-phishing.md) and [Set up anti-phishing policies](set-up-anti-phishing-policies.md).

For more details about how Microsoft 365 is configured by default to protect you from phishing attacks, see [How Microsoft 365 validates the From: address to prevent phishing](how-office-365-validates-the-from-address.md).

EOP (that is, Office 365 organizations without ATP) contains features that can help protect your organization from phishing threats:

[How Microsoft 365 validates the From: address to prevent phishing](how-office-365-validates-the-from-address.md)

- **Default anti-phishing policy**: Turn spoof intelligence on or off, turn unauthenticated sender identification in Outlook on or off, and specify the action for blocked spoofed senders (move to Junk Email folder or quarantine). For more information, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

- **Implicit email authentication**: EOP enhances standard email authentication checks for inbound email ([SPF](set-up-spf-in-office-365-to-help-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), and [DMARC](use-dmarc-to-validate-email.md)) with sender reputation, sender history, recipient history, behavioral analysis, and other advanced techniques to help identify forged senders. For more information, see [Email authentication in Office 365](email-validation-and-authentication.md).

[ATP anti-phishing capabilities](atp-anti-phishing.md)
