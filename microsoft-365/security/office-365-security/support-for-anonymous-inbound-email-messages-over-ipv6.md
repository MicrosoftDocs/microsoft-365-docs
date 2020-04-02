---
title: "Add support for anonymous inbound email over IPv6"
f1.keywords:
- NOCSH
author: chrisda
ms.author: chrisda
manager: chrisda
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: b68df621-0a5f-4824-8abc-41e0c4fd1398
ms.collection:
- M365-security-compliance
description: "Admin can learn how to configure support for anonymous inbound email from IPv6 sources in Exchange Online and Exchange Online Protection."
---

# Add support for anonymous inbound email over IPv6 in Office 365

Microsoft 365 organizations with Exchange Online mailboxes and standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes support anonymous inbound email over IPv6. The source IPv6 email server must meet both of the following requirements:

- The source IPv6 address must have a valid reverse DNS lookup (PTR) record that allows the destination to find the domain name from the IPv6 address.

- The sender must pass either SPF verification (defined in [RFC 7208](https://tools.ietf.org/html/rfc7208)) or [DKIM verification](https://dkim.org/) (defined in [RFC 6376](https://www.rfc-editor.org/rfc/rfc6376.txt)).

Before your organization can receive anonymous inbound email over IPv6, an admin needs to contact Microsoft support and ask for it:

1. Open the Microsoft 365 admin center at <https://admin.microsoft.com/adminportal/home> and click **Help** (?).

2. In the **Need help?** flyout that appears, type something descriptive in the search box (for example, "request anonymous inbound IPv6 email"), and then press ENTER.

3. At the bottom of the page, click **Contact support**.

4. In the **Contact support** page that appears, fill out and verify the information (scroll down as necessary), and then click **Contact me**.

After anonymous inbound IPv6 message support is enabled in your organization, the message will go through the normal message filtering that's provided by the service.

## Troubleshooting

- If the source email server doesn't have an IPv6 reverse DNS lookup record, the messages will be rejected with the following error:

  > 450 4.7.25 Service unavailable, sending IPv6 address [2a01:111:f200:2004::240] must have reverse DNS record.

- If the sender doesn't pass SPF or DKIM validation, the messages will be rejected with the following error:

  > 450 4.7.26 Service unavailable, message sent over IPv6 [2a01:111:f200:2004::240] must pass either SPF or DKIM validation.

- If you try to receive anonymous IPv6 messages before you've opted in, the message will be rejected with the following error:

  > 550 5.2.1 Service unavailable, [contoso.com] does not accept email over IPv6.

## For more information

[Support for validation of DKIM signed messages](support-for-validation-of-dkim-signed-messages.md)
