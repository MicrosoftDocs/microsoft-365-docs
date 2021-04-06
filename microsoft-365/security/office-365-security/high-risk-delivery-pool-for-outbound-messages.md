---
title: Outbound delivery pools
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
ms.assetid: ac11edd9-2da3-462d-8ea3-bbf9dbc6f948
ms.collection: 
  - M365-security-compliance
description: Learn how the delivery pools are used to protect the reputation of email servers in the Microsoft 365 datacenters.
ms.technology: mdo
ms.prod: m365-security
---

# Outbound delivery pools

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Email servers in the Microsoft 365 datacenters might be temporarily guilty of sending spam. For example, a malware or malicious spam attack in an on-premises email organization that sends outbound mail through Microsoft 365, or compromised Microsoft 365 accounts. Attackers also try to avoid detection by relaying messages through Microsoft 365 forwarding.

These scenarios can result in the IP address of the affected Microsoft 365 datacenter servers appearing on third-party blocklists. Destination email organizations that use these blocklists will reject email from those messages sources.

## High-risk delivery pool
To prevent this, all outbound messages from Microsoft 365 datacenter servers that's determined to be spam or that exceeds the sending limits of [the service](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options) or [outbound spam policies](configure-the-outbound-spam-policy.md) are sent through the _high-risk delivery pool_.

The high risk delivery pool is a separate IP address pool for outbound email that's only used to send "low quality" messages (for example, spam and [backscatter](backscatter-messages-and-eop.md)). Using the high risk delivery pool helps prevent the normal IP address pool for outbound email from sending spam. The normal IP address pool for outbound email maintains the reputation sending "high quality" messages, which reduces the likelihood that these IP address will appear on IP blocklists.

The very real possibility that IP addresses in the high-risk delivery pool will be placed on IP blocklists remains, but this is by design. Delivery to the intended recipients isn't guaranteed, because many email organizations won't accept messages from the high risk delivery pool.

For more information, see [Control outbound spam](outbound-spam-controls.md).

> [!NOTE]
> Messages where the source email domain has no A record and no MX record defined in public DNS are always routed through the high-risk delivery pool, regardless of their spam or sending limit disposition.

### Bounce messages

The outbound high-risk delivery pool manages the delivery for all non-delivery reports (also known as NDRs, bounce messages, delivery status notifications, or DSNs).

Possible causes for a surge in NDRs include:

- A spoofing campaign that affects one of the customers using the service.
- A directory harvest attack.
- A spam attack.
- A rogue email server.

All of these issues can result in a sudden increase in the number of NDRs being processed by the service. Many times, these NDRs appear to be spam to other email servers and services (also known as _[backscatter](backscatter-messages-and-eop.md)_).
