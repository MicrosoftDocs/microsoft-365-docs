---
title: Add support for anonymous inbound email over IPv6
f1.keywords: 
  - NOCSH
author: chrisda
ms.author: chrisda
manager: chrisda
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: b68df621-0a5f-4824-8abc-41e0c4fd1398
ms.collection: 
  - m365-security
  - tier3
ms.custom: 
  - seo-marvel-apr2020
description: Admin can learn how to configure support for anonymous inbound email from IPv6 sources in Exchange Online and Exchange Online Protection.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Add support for anonymous inbound email over IPv6 in Microsoft 365

Microsoft 365 organizations with Exchange Online mailboxes and standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes support anonymous inbound email over IPv6. The source IPv6 email server must meet both of the following requirements:

- The source IPv6 address must have a valid reverse DNS lookup (PTR) record that allows the destination to find the domain name from the IPv6 address.

- The sender must pass either SPF verification (defined in [RFC 7208](https://tools.ietf.org/html/rfc7208)) or [DKIM verification](http://dkim.org/) (defined in [RFC 6376](https://www.rfc-editor.org/rfc/rfc6376.txt)).

Before your organization can receive anonymous inbound email over IPv6, an admin needs to contact Microsoft support and ask for it. For instructions about how to open a support request, see [Contact support for business products - Admin Help](../../admin/get-help-support.md).

After anonymous inbound IPv6 message support is enabled in your organization, the message will go through the normal message filtering that's provided by the service.

## Troubleshooting

- If the source email server doesn't have an IPv6 reverse DNS lookup record, the messages are rejected with the following error:

  > 450 4.7.25 Service unavailable, sending IPv6 address [2a01:111:f200:2004::240] must have reverse DNS record.

- If the sender doesn't pass SPF or DKIM validation, the messages are rejected with the following error:

  > 450 4.7.26 Service unavailable, message sent over IPv6 [2a01:111:f200:2004::240] must pass either SPF or DKIM validation.

- If you try to receive anonymous IPv6 messages before you've opted in, the message is rejected with the following error:

  > 550 5.2.1 Service unavailable, [contoso.com] does not accept email over IPv6.

## Related articles

[Support for validation of DKIM signed messages](email-authentication-dkim-support-about.md)
