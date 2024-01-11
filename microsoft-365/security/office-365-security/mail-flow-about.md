---
title: Mail flow in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: overview
ms.localizationpriority: medium
ms.assetid: e109077e-cc85-4c19-ae40-d218ac7d0548
ms.custom: 
  - seo-marvel-apr2020
description: Admin can learn about the options for configuring mail flow and routing in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.collection: 
- m365-security
- tier3
search.appverid: met150
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Mail flow in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Exchange Online mailboxes, or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, all messages sent to your organization pass through EOP before users see them. You have options about how to route messages that pass through EOP for processing before they're routed to user mailboxes.

## Working with messages and message access options

EOP offers flexibility in how your messages are routed. The following articles explain steps in the mail flow process:

- [Directory Based Edge Blocking](/exchange/mail-flow-best-practices/use-directory-based-edge-blocking) rejects messages to invalid recipients at the service network perimeter by default.

- [View or edit accepted domains in EOP](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) describes how to manage domains that are associated with your EOP service.

- Your EOP service can help you manage subdomains that you add to your organization. Learn more about subdomains at [Enable mail flow for subdomains in Exchange Online](/exchange/mail-flow-best-practices/manage-accepted-domains/enable-mail-flow-for-subdomains).

- [Configure mail flow using connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow) introduces connectors and shows how you can use them to customize mail routing. Scenarios include ensuring secure communication with a partner organization and setting up a smart host.

- [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) describes how to configure connectors if your mail is routed to a service or device before EOP.

- In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange. These mail flow rules translate the EOP spam filtering verdict so the junk email rule in the mailbox can move the message to the Junk Email folder. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).

  If you don't  want to move messages to each user's Junk Email folder, you can choose another action by editing the default anti-spam policy or custom anti-spam policies. For more information, see [Actions in anti-spam policies](anti-spam-protection-about.md#actions-in-anti-spam-policies).

## Verify mail flow

To verify that EOP mail flow is working correctly, use the following tests:

- Send an email message from any web-based email account to a recipient in your Microsoft 365 organization.
- Send an email messages from a user in your organization to a web-based email account.
- If you configured connectors for email communication between an on-premises environment or a partner organization, you can use the built-in connector validation to test mail flow. For more information, see [Validate connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/validate-connectors).

## Support for anonymous inbound email over IPv6

EOP supports receiving anonymous inbound email over IPv6, but an admin is required to opt in by contacting Microsoft support. To open a support request, see [Get support for Microsoft 365 for business](/microsoft-365/admin/get-help-support).

After the organization has opted in, the organization can receive anonymous inbound email over IPv6 as long as the source IPv6 email server meets both of the following requirements:

- The source IPv6 address must have a valid reverse DNS lookup (PTR) record that allows the destination to find the domain name from the IPv6 address.
- The sender must pass either SPF verification (defined in [RFC 7208](https://tools.ietf.org/html/rfc7208)) or [DKIM verification](http://dkim.org/) (defined in [RFC 6376](https://www.rfc-editor.org/rfc/rfc6376.txt)).

Anonymous messages from IPv6 sources go through regular EOP (and possibly Microsoft Defender for Office 365) message filtering.

### Troubleshooting anonymous IPv6 inbound mail flow

- If the source email server doesn't have an IPv6 reverse DNS lookup record, the messages are rejected with the following error:

  > 450 4.7.25 Service unavailable, sending IPv6 address [2a01:111:f200:2004::240] must have reverse DNS record.

- If the sender doesn't pass SPF or DKIM validation, the messages are rejected with the following error:

  > 450 4.7.26 Service unavailable, message sent over IPv6 [2a01:111:f200:2004::240] must pass either SPF or DKIM validation.

- If you try to receive anonymous IPv6 messages before you've opted in, the message is rejected with the following error:

  > 550 5.2.1 Service unavailable, [contoso.com] does not accept email over IPv6.

## Mail flow delivery FAQ

This FAQ provides information about queued, deferred, and bounced messages in EOP.

### Why is mail queuing?

Messages are queued or deferred if the service is unable to make a connection to the destination server for delivery. Messages aren't deferred if a 500-series (permanent) error is returned from the destination server.

### How does a message become deferred?

Messages are held when a connection to the destination server can't be made, and the destination server returns temporary errors. For example, connection time-out, connection refused, or other 400-series errors. 500-series (permanent) errors result in return of the message in a non-delivery report (also known as an NDR or bounce message).

### How long does a message remain in deferral and what is the retry interval?

Deferred messages remain in our queues for one day. Retry attempts are based on the errors that we receive from the destination email server. The first few deferrals are 15 minutes or less. The interval for subsequent retries increases to a maximum of 60 minutes. The interval duration expansion is dynamic, and considers multiple variables (queue size, internal message priority, etc.).

### After communication to the email server is restored, how are queued messages distributed?

Queued messages are automatically processed in the order in which they were received, and are queued for delivery when the server became unavailable.

