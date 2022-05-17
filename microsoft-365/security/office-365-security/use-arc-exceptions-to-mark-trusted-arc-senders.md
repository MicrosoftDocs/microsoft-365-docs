---
title: Use Trusted ARC senders for legitimate devices and services between the sender and receiver
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article
ms.localizationpriority: high
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
  - seo-marvel-apr2020
description: Authenticated Received Chain (ARC) is email authentication that helps preserve authentication results across devices the come between the sender and recipient. Here's how to make exceptions for your trusted ARC Senders.
ms.technology: mdo
ms.prod: m365-security
---

# Make a list of trusted Authenticated Received Chain (ARC) Senders

**Applies to**
- Exchange Online Protection
- Microsoft Defender for Office 365 plan 1 and plan 2
- Microsoft 365 Defender

Email authentication mechanisms like [SPF](set-up-spf-in-office-365-to-help-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), [DMARC](use-dmarc-to-validate-email.md) are used to verify the senders of emails for the safety of email recipients, but some *legitimate* services may make changes to the email between the sender and recipient. This intervention from legitimate services might *accidentally* cause the message to fail email authentication at subsequent checks on the way to the receiver.

**Trusted ARC sealers** lets admins add a list of trusted intermediaries in the Microsoft 365 Defender portal. This allows Microsoft to honor ARC signatures from trusted intermediaries, preventing these legitimate messages from failing the authentication chain.

> [!NOTE]
> Email senders use authentication mechanisms like SPF, DKIM, DMARC to authenticate emails, but some legitimate services used by companies can make changes to the email header, content, or its route, and this can cause the email to fail authentication methods like DKIM or DMARC, by design, when it reaches the next node in its journey (the next hop).
>
> Trusted ARC sealers allows admins to add trusted intermediaries who have implemented ARC sealing, to a list. When an email is routed to Office 365 through trusted intermediary of the Office 365 tenant, Microsoft validates the ARC signature, and, based on the ARC results, can honor authentication details provided.

## What service or device should be on your trusted ARC sealers list?

Devices and servers that intervene in an organization’s email flow may modify header and other content, or cause authentication to fail for other reasons. By adding a trusted ARC sealer, Office 365 will validate and trust the authentication results that the sealer provides when delivering mail to your tenant in Office 365.

Administrators should add ***only*** legitimate services as trusted ARC sealers. This will help messages that must first go through that service to pass email authentication checks, and prevent legitimate messages from being sent to Junk due to authentication failures.

## Steps to add Trusted ARC sealer from Microsoft 365 Defender portal

Trusted ARC sealers in Microsoft 365 Defender portal shows all the ARC sealers acknowledged by and added to your tenant.

To add a new Trusted ARC sealer do this:

1. **Navigate** to [the email authentication settings](https://security.microsoft.com/authentication?viewid=ARC) page.

2. If this is the first time you've added a trusted ARC sealer, click **Add button**.
3. Add trusted ARC sealers in the textbox shown.
    1. Notice that you're adding the domains (example fabrikam.com).
    1. The domain name you enter here must be a match to the domain shown in the domain 'd' tag in ARC-Seal and ARC-Message-Signature headers (on the email headers for the message).
    1. You can see these in the properties of the message in Outlook.

