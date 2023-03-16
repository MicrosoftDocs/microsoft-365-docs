---
title: Microsoft Defender for Office 365 support for Microsoft Teams (Preview)
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
ms.collection: 
  - m365-security
  - tier1
description: Admins can learn about Microsoft Teams features in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 3/28/2023
---

# Microsoft Defender for Office 365 support for Microsoft Teams (Preview)

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

> [!NOTE]
> This article lists new features in the latest release of Microsoft Defender for Office 365. These features are currently in preview.

Every Microsoft Defender for Office 365 subscription comes with security capabilities that builds on the core protections offered by EOP. 

With the increased use of collaboration tools like Microsoft Teams, the possibility of malicious attacks using URLs and messages has increased as well. Microsoft Defender for Office 365 already provides protection against malicious URLs in Teams through [Safe Links](safe-links-about.md), and now Microsoft is extending this protection with a new set of capabilities designed to disrupt the attack chain. 

- **Reporting suspicious messages and files to admins and Microsoft**: Users will have the ability to report potential malicious messages to their admins. The admins can review these messages and report them to Microsoft. For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

- **Zero-Hour Auto Purge (ZAP)**: ZAP is an existing email protection feature that proactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered. For read or unread messages that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Note that for this preview, ZAP will be quarantining based on URLs only, not spam. For more information, see [Zero-hour auto purge in Microsoft Defender for Office 365](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams).

- **Quarantine**: Admins will be able to review quarantined messages that are identified as malicious by ZAP. Admins will also be able to release the message and if the message is deemed safe. For more information, see [Manage quarantined messages and files as an admin](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-messages-in-microsoft-teams).

- **Advanced Hunting**: Advanced Hunting is a query-based threat hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. Flexible access to data enables unconstrained hunting for both known and potential threats. For more information, see [Proactively hunt for threats with advanced hunting](../defender/advanced-hunting-overview.md).

- **Remediation**: [Need blurb for Teams] 

- **Attack Simulation & Training**: Attack simulation training in the Microsoft 365 Defender portal is now enabled to run realistic attack scenarios in Teams. These simulated attacks can help you identify and find vulnerable users before a real attack impacts you. For more information, see [Get started using Attack simulation training](attack-simulation-training-get-started.md). 

## See also

- [Microsoft Teams](/microsoftteams/teams-overview)