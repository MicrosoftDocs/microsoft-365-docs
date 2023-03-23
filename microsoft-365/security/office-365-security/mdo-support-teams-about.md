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

[!include[Prerelease information](../../includes/prerelease.md)]

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

> [!NOTE]
> This article lists new features in the latest release of Microsoft Defender for Office 365. These features are currently in preview.

With the increased use of collaboration tools like Microsoft Teams, the possibility of malicious attacks using URLs and messages has increased as well. Microsoft Defender for Office 365 already provides protection against malicious URLs in Teams through [Safe Links](safe-links-about.md), and now Microsoft is extending this protection with a new set of capabilities designed to disrupt the attack chain.

- **Reporting suspicious messages and files to admins and Microsoft (optional)**: Users will have the ability to report potential malicious messages to their admins. The admins can review these messages and report them to Microsoft. For more information, see [User reported settings in Teams](submissions-teams.md).

- **Zero-Hour Auto Purge (ZAP)**: ZAP is an existing email protection feature that proactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered. For read or unread messages that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Note that for this preview, ZAP will be quarantining based on malicious or phishing messages, and not spam. For more information, see [Zero-hour auto purge in Microsoft Defender for Office 365](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams).

- **Quarantine**: Admins will be able to review quarantined messages that are identified as malicious by ZAP. Admins will also be able to release the message if the message is determined as safe. For more information, see [Manage quarantined messages and files as an admin](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-messages-in-microsoft-teams).

The **Teams Message Entity Panel** is one single place to store all of Teams message metadata that will allow for immediate SecOps review. Any threat coming from chats, group or meeting chats, and other channels can be found in one place as soon as it is assessed. For more information, see [Teams Message Entity Panel for Microsoft Teams](teams-message-entity-panel.md). 

- **Attack Simulation and Training**: In order to ensure your users are resilient to phishing attacks in Microsoft Teams, Admins can configure phishing simulations hosted in Microsoft Teams similar to the way they can with email today, see [Training campaigns in Attack simulation training](/attack-simulation-training-training-campaigns) 

## Enable Microsoft Defender for Teams

If you're interested in the previewing the features, listed above, for ALL users in your tenant, you can enable them via an Exchange Online PowerShell cmdlet. See [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell.md) for more details on how to connect to Exchange Online with PowerShell. Once connected you can enable teams preview as follows:

 ```powershell
Set-TeamsSecurityPreview -Enable $true
```

To check the status for your tenant run the following cmdlet

```powershell
Get-TeamsSecurityPreview
```

## See also

- [Microsoft Teams](/microsoftteams/teams-overview)
- [Managing Teams quarantined messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-messages-in-microsoft-teams)
- [Get started using Attack simulation training in Defender for Office 365](attack-simulation-training-get-started.md)
