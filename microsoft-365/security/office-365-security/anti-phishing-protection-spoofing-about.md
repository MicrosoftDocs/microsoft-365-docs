---
title: Anti-spoofing protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: overview
search.appverid: 
  - MET150
ms.assetid: d24bb387-c65d-486e-93e7-06a4f1a436c0
ms.collection: 
  - m365-security
  - Strat_O365_IP
  - m365initiative-defender-office365
  - EngageScoreSep2022
  - ContentEngagementFY23
  - tier2
ms.custom: 
  - TopSMBIssues
  - seo-marvel-apr2020
ms.localizationpriority: high
description: Admins can learn about the anti-spoofing features that are available in Exchange Online Protection (EOP), which can help mitigate against phishing attacks from spoofed senders and domains.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Anti-spoofing protection in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP includes features to help protect your organization from spoofed (forged) senders.

When it comes to protecting its users, Microsoft takes the threat of phishing seriously. Spoofing is a common technique that's used by attackers. **Spoofed messages appear to originate from someone or somewhere other than the actual source**. This technique is often used in phishing campaigns that are designed to get user credentials. The anti-spoofing technology in EOP specifically examines forgery of the From header in the message body, because that header value is the message sender that's shown in email clients. When EOP has high confidence that the From header is forged, the message is identified as spoofed.

The following anti-spoofing technologies are available in EOP:

- **Email authentication**: An integral part of any anti-spoofing effort is the use of email authentication (also known as email validation) by SPF, DKIM, and DMARC records in DNS. You can configure these records for your domains so destination email systems can check the validity of messages that claim to be from senders in your domains. For inbound messages, Microsoft 365 requires email authentication for sender domains. For more information, see [Email authentication in Microsoft 365](email-authentication-about.md).

  EOP analyzes and blocks messages based on the combination of standard email authentication methods and sender reputation techniques.

  :::image type="content" source="../../media/eop-anti-spoofing-protection.png" alt-text="The EOP anti-spoofing checks" lightbox="../../media/eop-anti-spoofing-protection.png":::

- **Spoof intelligence insight**: Review detected spoofed messages from senders in internal and external domains during the last seven days. For more information, see [Spoof intelligence insight in EOP](anti-spoofing-spoof-intelligence.md).

- **Allow or block spoofed senders in the Tenant Allow/Block List**: When you override the verdict in the spoof intelligence insight, the spoofed sender becomes a manual allow or block entry that only appears on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page at <https://security.microsoft.com/tenantAllowBlockList?viewid=SpoofItem>. You can also manually create allow or block entries for spoof senders before they're detected by spoof intelligence. For more information, see [Spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#spoofed-senders-in-the-tenant-allowblock-list).

- **Anti-phishing policies**: In EOP and Microsoft Defender for Office 365, anti-phishing policies contain the following anti-spoofing settings:
  - Turn spoof intelligence on or off.
  - Turn unauthenticated sender indicators in Outlook on or off.
  - Specify the action for blocked spoofed senders.

  For more information, see [Spoof settings in anti-phishing policies](anti-phishing-policies-about.md#spoof-settings).

  Anti-phishing policies in Defender for Office 365 contain addition protections, including *impersonation* protection. For more information, see [Exclusive settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

- **Spoof detections report**: For more information, see [Spoof Detections report](reports-email-security.md#spoof-detections-report).

  Defender for Office 365 organizations can also use Real-time detections (Plan 1) or Threat Explorer (Plan 2) to view information about phishing attempts. For more information, see [Microsoft 365 threat investigation and response](office-365-ti.md).

## How spoofing is used in phishing attacks

Spoofed senders in messages have the following negative implications for users:

- **Deception**: Messages from spoofed senders might trick the recipient into selecting a link and giving up their credentials, downloading malware, or replying to a message with sensitive content (known as business email compromise or BEC).

  The following message is an example of phishing that uses the spoofed sender msoutlook94@service.outlook.com:

  :::image type="content" source="../../media/1a441f21-8ef7-41c7-90c0-847272dc5350.jpg" alt-text="Phishing message impersonating service.outlook.com." lightbox="../../media/1a441f21-8ef7-41c7-90c0-847272dc5350.jpg":::

  This message didn't come from service.outlook.com, but the attacker spoofed the **From** header field to make it look like it did. The sender attempted to trick the recipient into selecting the **change your password** link and providing their credentials.

  The following message is an example of BEC that uses the spoofed email domain contoso.com:

  :::image type="content" source="../../media/da15adaa-708b-4e73-8165-482fc9182090.jpg" alt-text="Phishing message - business email compromise." lightbox="../../media/da15adaa-708b-4e73-8165-482fc9182090.jpg":::

  The message looks legitimate, but the sender is spoofed.

- **Confusion**: Even users who know about phishing might have difficulty seeing the differences between real messages and messages from spoofed senders.

  The following message is an example of a real password reset message from the Microsoft Security account:

  :::image type="content" source="../../media/58a3154f-e83d-4f86-bcfe-ae9e8c87bd37.jpg" alt-text="Microsoft legitimate password reset." lightbox="../../media/58a3154f-e83d-4f86-bcfe-ae9e8c87bd37.jpg":::

  The message really did come from Microsoft, but users have been conditioned to be suspicious. Because it's difficult to the difference between a real password reset message and a fake one, users might ignore the message, report it as spam, or unnecessarily report the message to Microsoft as phishing.

## Different types of spoofing

Microsoft differentiates between two different types of spoofed senders in messages:

- **Intra-org spoofing**: Also known as _self-to-self_ spoofing. For example:

  - The sender and recipient are in the same domain:
    > From: chris@contoso.com <br> To: michelle@contoso.com

  - The sender and the recipient are in subdomains of the same domain:
    > From: laura@marketing.fabrikam.com <br> To: julia@engineering.fabrikam.com

  - The sender and recipient are in different domains that belong to the same organization (that is, both domains are configured as [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the same organization):
    > From: sender @ microsoft.com <br> To: recipient @ bing.com

    Spaces are used in the email addresses to prevent spambot harvesting.

  Messages that fail [composite authentication](email-authentication-about.md#composite-authentication) due to intra-org spoofing contain the following header values:

  `Authentication-Results: ... compauth=fail reason=6xx`

  `X-Forefront-Antispam-Report: ...CAT:SPOOF;...SFTY:9.11`

  - `reason=6xx` indicates intra-org spoofing.

  - `SFTY` is the safety level of the message. `9` indicates phishing, `.11` indicates intra-org spoofing.

- **Cross-domain spoofing**: The sender and recipient domains are different, and have no relationship to each other (also known as external domains). For example:
    > From: chris@contoso.com <br> To: michelle@tailspintoys.com

  Messages that fail [composite authentication](email-authentication-about.md#composite-authentication) due to cross-domain spoofing contain the following headers values:

  `Authentication-Results: ... compauth=fail reason=000/001`

  `X-Forefront-Antispam-Report: ...CAT:SPOOF;...SFTY:9.22`

  - `reason=000` indicates the message failed explicit email authentication. `reason=001` indicates the message failed implicit email authentication.

  - `SFTY` is the safety level of the message. `9` indicates phishing, `.22` indicates cross-domain spoofing.

  For more information about **Authentication-Results** and `compauth` values, see [Authentication-results message header fields](message-headers-eop-mdo.md#authentication-results-message-header-fields).

## Problems with anti-spoofing protection

Mailing lists (also known as discussion lists) are known to have problems with anti-spoofing protection due to the way they forward and modify messages.

For example, Gabriela Laureano (glaureano@contoso.com) is interested in bird watching, joins the mailing list birdwatchers@fabrikam.com, and sends the following message to the list:

> **From:** "Gabriela Laureano" \<glaureano@contoso.com\> <br> **To:** Birdwatcher's Discussion List \<birdwatchers@fabrikam.com\> <br> **Subject:** Great viewing of blue jays at the top of Mt. Rainier this week <p> Anyone want to check out the viewing this week from Mt. Rainier?

The mailing list server receives the message, modifies its content, and replays it to the members of list. The replayed message has the same From address (glaureano@contoso.com), but a tag is added to the subject line, and a footer is added to the bottom of the message. This type of modification is common in mailing lists, and may result in false positives for spoofing.

> **From:** "Gabriela Laureano" \<glaureano@contoso.com\> <br> **To:** Birdwatcher's Discussion List \<birdwatchers@fabrikam.com\> <br> **Subject:** [BIRDWATCHERS] Great viewing of blue jays at the top of Mt. Rainier this week <p> Anyone want to check out the viewing this week from Mt. Rainier? <p> This message was sent to the Birdwatchers Discussion List. You can unsubscribe at any time.

To help mailing list messages pass anti-spoofing checks, do following steps based on whether you control the mailing list:

- **Your organization owns the mailing list**:
  - Check the FAQ at DMARC.org: [I operate a mailing list and I want to interoperate with DMARC, what should I do?](https://dmarc.org/wiki/FAQ#I_operate_a_mailing_list_and_I_want_to_interoperate_with_DMARC.2C_what_should_I_do.3F).
  - Read the instructions at this blog post: [A tip for mailing list operators to interoperate with DMARC to avoid failures](/archive/blogs/tzink/a-tip-for-mailing-list-operators-to-interoperate-with-dmarc-to-avoid-failures).
  - Consider installing updates on your mailing list server to support ARC. For more information, see <http://arc-spec.org>.

- **Your organization doesn't own the mailing list**:
  - Ask the maintainer of the mailing list to configure email authentication for the domain that the mailing list is relaying from. The owners are more likely to act if enough members ask them to set up email authentication. While Microsoft also works with domain owners to publish the required records, it helps even more when individual users request it.
  - Create Inbox rules in your email client to move messages to the Inbox.
  - Use the Tenant Allow/Block List to create an allow entry for the mailing list to treat it as legitimate. For more information, see [Create allow entries for spoofed senders](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders).

If all else fails, you can report the message as a false positive to Microsoft. For more information, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

## Considerations for anti-spoofing protection

If you're an admin who currently sends messages to Microsoft 365, you need to ensure that your email is properly authenticated. Otherwise, it might be marked as spam or phishing. For more information, see [Solutions for legitimate senders who are sending unauthenticated email](email-authentication-about.md#solutions-for-legitimate-senders-who-are-sending-unauthenticated-email).

Senders in individual user (or admin) Safe Senders lists bypass parts of the filtering stack, including spoof protection. For more information, see [Outlook Safe Senders](create-safe-sender-lists-in-office-365.md#use-outlook-safe-senders).

If at all possible, admins should avoid using allowed sender lists or allowed domain lists in anti-spam policies. These senders bypass most of the filtering stack (high confidence phishing and malware messages are always quarantined). For more information, see [Use allowed sender lists or allowed domain lists](create-safe-sender-lists-in-office-365.md#use-allowed-sender-lists-or-allowed-domain-lists).
