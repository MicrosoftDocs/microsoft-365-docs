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

ms.localizationpriority: medium
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

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

*Backscatter* is non-delivery reports (also known as NDRs or bounce messages) that you receive for messages that you didn't send. Backscatter is caused by spammers forging (spoofing) the From address (also known as the `5322.From` or P2 address) in their messages. Spammers will often use real email addresses as the From address to lend credibility to their messages. When spam is sent to a non-existent recipient, the destination email server is essentially tricked into returning the undeliverable message in an NDR to the forged sender in the From address.

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP makes every effort to identify and silently drop messages from dubious sources without generating an NDR. But, based on the sheer volume email flowing through the service, there's always the possibility that EOP will unintentionally send backscatter.

Backscatterer.org maintains a blocklist (also known as a DNS blocklist or DNSBL) of email servers that were responsible for sending backscatter, and EOP servers might appear on this list. But, we don't try to remove ourselves from the Backscatterer.org blocklist because (by their own admission) their list isn't a list of spammers.

> [!TIP]
> The Backscatterer.org website (<http://www.backscatterer.org/?target=usage>) recommends using their service in Safe mode instead of Reject mode, because large email services almost always send some backscatter.
