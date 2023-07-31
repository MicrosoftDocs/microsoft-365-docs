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
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Microsoft Defender for Office 365 support for Microsoft Teams (Preview)

[!include[Prerelease information](../../includes/prerelease.md)]

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

> [!NOTE]
> This article lists new features in the latest release of Microsoft Defender for Office 365. These features are currently in preview. Once you run the cmdlet, please be aware that it will take a few days for the features to to be available. 

With the increased use of collaboration tools like Microsoft Teams, the possibility of malicious attacks using URLs and messages has increased as well. Microsoft Defender for Office 365 already provides protection against malicious URLs in Teams through [Safe Links](safe-links-about.md), and now Microsoft is extending this protection with a new set of capabilities designed to disrupt the attack chain.

- **Reporting suspicious messages and files to admins and Microsoft (optional)**: Users have the ability to report potential malicious messages to their admins. The admins can review these messages and report them to Microsoft. For more information, see [User reported settings in Teams](submissions-teams.md).

- **Zero-Hour Auto Purge (ZAP)**: ZAP is an existing email protection feature that proactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered. For read or unread messages that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Currently, ZAP for Teams takes action on malware or high confidence phishing messages, not spam. For more information, see [Zero-hour auto purge in Microsoft Defender for Office 365](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams).

- **Quarantine**: Admins are able to review quarantined messages that are identified as malicious by ZAP. Admins can also release messages that are determined to be safe. For more information, see [Manage quarantined Teams messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-microsoft-teams-quarantined-messages).

- The **Teams Message Entity Panel** is one single place to store all of Teams message metadata that allows for immediate SecOps review. Any threat coming from chats, group or meeting chats, and other channels can be found in one place as soon as it's assessed. For more information, see [Teams Message Entity Panel for Microsoft Teams](teams-message-entity-panel.md).

- **Attack simulation training**: In order to ensure your users are resilient to phishing attacks in Microsoft Teams, admins can configure phishing simulations in Teams similar to how they do so in email. For more information, see [Microsoft Teams in Attack simulation training](attack-simulation-training-teams.md).

## Enable Microsoft Defender for Teams

If you're interested in previewing the previously described features for ALL users in your tenant, you can use an Exchange Online PowerShell cmdlet to enable them. Make sure you have the latest version of the PowerShell module.

After you [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), run the following command to join the Teams preview:

```powershell
Set-TeamsSecurityPreview -Enable $true
```

> [!NOTE]
> This cmdlet informs Microsoft that you want to join the Teams preview. By running this cmdlet, your tenant will be added to the rollout schedule. The features will be enabled over time during the preview period.

To check the status for your tenant, run the following command:

```powershell
Get-TeamsSecurityPreview
```

## See also

- [Microsoft Teams](/microsoftteams/teams-overview)
- [Managing Teams quarantined messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-microsoft-teams-quarantined-messages)
- [Get started using Attack simulation training in Defender for Office 365](attack-simulation-training-get-started.md)
