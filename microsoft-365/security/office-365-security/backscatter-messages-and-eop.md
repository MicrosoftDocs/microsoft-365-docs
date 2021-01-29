---
title: Backscatter in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: In this article, you'll learn about Backscatter and Microsoft Exchange Online Protection (EOP)
ms.technology: mdo
ms.prod: m365-security
---

# Backscatter in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


*Backscatter* is non-delivery reports (also known as NDRs or bounce messages) you receive for messages that you didn't send. Spammers forge (spoof) the From: address of their messages, and they often use real email addresses to lend credibility to their messages. So, when spammers inevitably send messages to non-existent recipients (spam is a high-volume operation), the destination email server is essentially tricked into returning the undeliverable message in an NDR to the forged sender in the From: address.

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP makes every effort to identify and silently drop messages from dubious sources without generating an NDR. But, based on the sheer volume email flowing through the service, there's always the possibility that EOP will unintentionally send backscatter.

Backscatterer.org maintains a block list (also known as a DNS block list or DNSBL) of email servers that were responsible for sending backscatter, and EOP servers might appear on this list. But, we don't try to remove ourselves from the Backscatterer.org block list because it isn't a list of spammers (by their own admission).

> [!TIP]
> The Backscatter.org website (<http://www.backscatterer.org/?target=usage>) recommends using their service to check incoming email in Safe mode instead of Reject mode (large email services almost always send some backscatter).
