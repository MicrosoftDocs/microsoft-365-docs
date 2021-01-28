---
title: Support for validation of Domain Keys Identified Mail (DKIM) signed messages
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: a4c95148-a00c-4d12-85ed-88520b547d97
ms.collection: 
  - M365-security-compliance
description: Learn about the validation of DKIM signed messages in Exchange Online Protection and Exchange Online
ms.technology: mdo
ms.prod: m365-security
---

# Support for validation of DKIM signed messages

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

Exchange Online Protection (EOP) and Exchange Online both support inbound validation of Domain Keys Identified Mail ([DKIM](https://www.rfc-editor.org/rfc/rfc6376.txt)) messages.

DKIM validates that an email message wasn't *spoofed* by someone else, and was sent from the domain it *says* it came from. It ties an email message to the organization that sent it. DKIM verification is used automatically for all messages sent with IPv6. Microsoft 365 also supports DKIM when mail is sent over IPv4. (For more information about IPv6 support, see [Support for anonymous inbound email messages over IPv6](support-for-anonymous-inbound-email-messages-over-ipv6.md).)

DKIM validates a digitally signed message that appears in the DKIM-Signature header of the message headers. The results of a DKIM-Signature validation are stamped in the Authentication-Results header. The message header text appears similar to the following (where contoso.com is the sender):

 `Authentication-Results: <contoso.com>; dkim=pass (signature was verified) header.d=example.com;`

> [!NOTE]
> For more information about the Authentication-Results header, see RFC 7001 ([Message Header Field for Indicating Message Authentication Status](https://www.rfc-editor.org/rfc/rfc7001.txt). Microsoft's DKIM implementation conforms with this RFC.

Admins can create Exchange [mail flow rules](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) on the results of DKIM validation. These mail flow rules will allow admins to filter or route messages as needed.
