---
title: Microsoft Defender for Office 365 support for Microsoft Teams
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 
ms.collection: 
  - m365-security
  - tier1
description: Admins can learn about Microsoft Teams features in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 3/6/2023
---

# Microsoft Defender for Office 365 support for Microsoft Teams

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

The use of collaboration tools, particularly Microsoft Teams, has exploded over recent years and as more customers use these tools attackers will follow. Microsoft Defender for Office 365 (MDO) already provides protection against malicious URLs in Teams through Safe Links, and we are expanding this with a new set of capabilities designed to disrupt the attack chain. We’re excited to invite you to preview these new features, including:

- Reporting Suspicious Messages and Files to Admins and Microsoft – Reporting Malicious Messages and Files gives end users the ability to report to their admin’s potential malicious messages. The admins can review these messages and report them to Microsoft. For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

- Zero-Hour Auto Purge (ZAP) – ZAP is an existing email protection feature that retroactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered. For read or unread messages that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Note: For this preview, ZAP will be quarantining based on URLs only, not spam. For more information, see [Zero-hour auto purge in Exchange Online](zero-hour-auto-purge.md).

- Quarantine – Messages that are identified as malicious within Teams and ZAP will be reviewable by the admin within the quarantine experience. The admin will be able to review the details of the message and release the message if they desire. For more information, see [Manage quarantined messages and files as an admin](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-messages-in-microsoft-teams).

- Advanced Hunting – Advanced Hunting is a query-based threat hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. Flexible access to data enables unconstrained hunting for both known and potential threats. For more information, see [Proactively hunt for threats with advanced hunting](../defender/advanced-hunting-overview.md).

- Remediation - [Need blurb for Teams] 

- Attack Simulation & Training -  Attack simulation training in the Microsoft 365 Defender portal is now enabled to run realistic attack scenarios in Teams. These simulated attacks can help you identify and find vulnerable users before a real attack impacts your bottom line. For more information, see [Get started using Attack simulation training](attack-simulation-training-get-started.md). 