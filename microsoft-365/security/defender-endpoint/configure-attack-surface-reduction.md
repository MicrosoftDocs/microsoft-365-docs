---
title: Configure attack surface reduction capabilities
description: Use Microsoft Intune, Microsoft Endpoint Configuration Manager, PowerShell cmdlets, and Group Policy to configure attack surface reduction.
keywords: asr, attack surface reduction, windows defender, microsoft defender, antivirus, av
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
ms.date: 06/02/2021
---

# Configure attack surface reduction capabilities

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-assignaccess-abovefoldlink).

Defender for Endpoint includes several attack surface reduction capabilities. To learn more, see [Overview of attack surface reduction capabilities](overview-attack-surface-reduction.md). To configure attack surface reduction in your environment, follow these steps: 

1. [Enable hardware-based isolation for Microsoft Edge](/windows/security/threat-protection/microsoft-defender-application-guard/install-md-app-guard).

2. Enable application control. 

   1. Review base policies in Windows. See [example base policies](/windows/security/threat-protection/windows-defender-application-control/example-wdac-base-policies).
   2. See the [application control design guide](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-design-guide).
   3. Refer to the [application control design guide](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).

3. [Enable controlled folder access](enable-controlled-folders.md).

4. [Turn on Network protection](enable-network-protection.md).

5. [Enable exploit protection](enable-exploit-protection.md).

6. [Configure attack surface reduction rules](enable-attack-surface-reduction.md).

7. Set up your network firewall.

   1. Get an overview of [Windows Defender Firewall with advanced security](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security).
   2. Use the [Windows Defender Firewall design guide](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-design-guide) to decide how you want to design your firewall policies.
   3. Use the [Windows Defender Firewall deployment guide](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-deployment-guide) to set up your organization's firewall with advanced security. 

> [!TIP]
> In most cases, when you configure attack surface reduction capabilities, you can choose from among several methods:
> - Microsoft Endpoint Manager (which now includes Microsoft Intune and Microsoft Endpoint Configuration Manager)
> - Group Policy
> - PowerShell cmdlets
