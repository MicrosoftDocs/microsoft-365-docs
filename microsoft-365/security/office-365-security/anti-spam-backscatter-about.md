---
title: Backscatter in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: In this article, admins can about backscatter and how Microsoft Exchange Online Protection (EOP) tries to prevent it.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/22/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Backscatter in EOP

*Backscatter* is non-delivery reports (also known as NDRs or bounce messages) that you receive for messages that you didn't send. Spammers often use real email addresses as the From address to lend credibility to their messages. When a nonexistent recipient receives spam, the destination email server unwittingly sends the NDR to the forged sender in the From address.

Exchange Online Protection (EOP) makes every effort to identify and silently drop messages from dubious sources without generating an NDR. But, it's almost impossible for EOP to send absolutely no backscatter, based on the sheer volume email flowing through the service.

Backscatterer.org maintains a blocklist (also known as a DNS blocklist or DNSBL) of email servers that were responsible for sending backscatter. Their blocklist isn't a list of spammers, and EOP servers might appear on their list.

> [!TIP]
> The Backscatterer.org website (<http://www.backscatterer.org/?target=usage>) recommends using their service in Safe mode as large email services almost always send some backscatter.
>
> The Advanced Spam Filter (ASF) in anti-spam policies has a setting to mark backscatter as spam, but this setting isn't required in most environments. For more information, see [ASF 'mark as spam' settings](anti-spam-policies-asf-settings-about.md#mark-as-spam-settings).
