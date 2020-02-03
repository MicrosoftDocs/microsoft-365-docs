---
title: "Unverified Sender"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "To prevent phishing messages from reaching your mailbox, Outlook.com and Outlook on the web verify that the sender is who they say they are and mark suspicious messages as junk email."
---

# Unverified Sender

> [!NOTE]
> These updates are rolling out now, and might not be available yet for all users. This feature is supported for Enterprise outlook.com users. It is not currently available for consumer outlook.com.

To prevent phishing messages from reaching your mailbox, Outlook.com and Outlook on the web verify that the sender is who they say they are and mark suspicious messages as junk email.

> [!IMPORTANT]
> When a message is marked as a phishing scam, Outlook.com and Outlook on the web display a warning at the top of the page, but any links in the message can still be opened.

## How can I identify a suspicious message in my inbox?

Outlook.com and Outlook on the web show indicators when the sender of a message either can't be identified or their identity is different from what you see in the From address.

## You see a '?' in the sender image

When Outlook.com and Outlook on the web can't verify the identity of the sender using email authentication techniques, they display a '?' in the sender photo.

![Message did not pass verification](../media/message-did-not-pass-verification.jpg)

Not every message that fails to authenticate is malicious. However, you should be careful about interacting with messages that don't authenticate if you don't recognize the sender. Or, if you recognize a sender that normally doesn't have a '?' in the sender image, but you suddenly start seeing it, that could be a sign the sender is being spoofed.

## How to manage which messages receive the unverified sender treatment 

If you are an Office 365 customer you can manage this feature through the Office 365 Security & Compliance Center.

- In the Security & Compliance Center, global or security administrators can turn the feature on or off, through anti-spoofing protection under the Anti-Phish policy. Additionally, you can use the **Set-AntiPhishPolicy** cmdlet in Exchange Online PowerShell. For details, see [Anti-phishing protection in Office 365](anti-phishing-protection.md) and [Set-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/set-antiphishpolicy).

    ![Editing unauthenticated senders in the graphic interface.](../media/unverified-sender-article-editing-unauthenticated-senders.jpg)

- If an admin has identified a false positive, and a sender should not be receiving the unverified sender treatment, one of the following actions can be taken to add the sender to the Spoof Intelligence spoof allow list:

  - Add the domain pair through the Spoof Intelligence Insight. For details, see [Walkthrough: spoof intelligence insight](walkthrough-spoof-intelligence-insight.md).

  - Add the domain pair through the **Set-PhishFilterPolicy** cmdlet in Exchange Online PowerShell. For details, see [Set-PhishFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/set-phishfilterpolicy) and [Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md).

Additionally, we don't apply the unverified sender treatment if the message was delivered to the Inbox via mail flow rules (also known as transport rules), Safe Domain List (Anti-Spam Policy), or Safe Sender List.

## Frequently asked questions

### What criteria does Outlook.com and Outlook on the web use to add the '?' and the 'via' properties?

For the '?' in the sender image:  Outlook.com requires that the message pass either SPF or DKIM authentication and receive either a dmarc pass, or a composite authentication pass from Office 365 Spoof Intelligence. For details, see [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md) and [Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md).

For the via tag: If the domain in the From address is different from the domain in the DKIM signature or the SMTP MAIL FROM, Outlook.com displays the domain in one of those two fields (preferring the DKIM signature).

### How do I remove the '?'

For the '?' in the sender image: As a sender, you should authenticate your message with either SPF or DKIM.

For the via tag: As a sender, you should ensure that either the domain in the DKIM signature or the SMTP MAIL FROM is the same as, or is a subdomain of, the domain in the From address.

### Does Outlook.com and Outlook on the web show this for every message that doesn't pass authentication?

Not necessarily. Outlook.com and Outlook on the web may have other properties within the message to authenticate the sender.

## Related topics

[Help protect your Outlook.com email account](https://support.office.com/article/a4f20fc5-4307-4ece-8231-6d4d4bd8a9ba)

[Deal with phishing or spoofing in Outlook.com](https://support.office.com/article/0d882ea5-eedc-4bed-aebc-079ffa1105a3)

[Filter junk email and spam in Outlook on the web](https://support.office.com/article/db786e79-54e2-40cc-904f-d89d57b7f41d)
