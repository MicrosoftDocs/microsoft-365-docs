---
title: "Backscatter messages and EOP"
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
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection:
- M365-security-compliance
description: "Backscatter messages are automated bounce messages that are sent to forged email addresses. The Backscatterer DNSBL identifies servers that send backscatter messages (which could include many legitimate email sources). Since it isn't a spammer list, we don't try to remove ourselves from the Backscatterer DNSBL."
---

# Backscatter messages and EOP

*Backscatter messages* are non-delivery reports (also known as NDRs or bounce messages) you receive for messages that you didn't send. Spammers forge (spoof) the From: address of their messages, and they often use real email addresses to lend credibility to their messages. So, when they inevitably send messages to non-existent recipients (spam is a high-volume operation), the destination email server might dutifully respond with an NDR, which is sent to the forged sender in the From: address.

Exchange Online Protection (EOP) makes every effort to identify and silently drop messages from dubious sources without generating an NDR. But, based on the sheer volume email flowing through the service, there's always the possibility that EOP will unintentionally send backscatter messages.

Backscatterer.org maintains a block list (also known as a DNS block list or DNSBL) of email servers that were responsible for sending backscatter messages, and EOP servers might appear on this list. But, we don't try to remove ourselves from the Backscatterer.org block list because it isn't a list of spammers (by their own admission).

> [!TIP]
> According to the Backscatter.or website (`http://www.backscatterer.org/?target=usage`), they recommend using their service to check incoming email in Safe mode instead of Reject mode (large email services almost always send some backscatter messages).
