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
ms.author: macapara
author: mjcaparas
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

3. [Controlled folder access](./enable-controlled-folders.md)|How to protect valuable data from malicious apps

4. [Network protection](./enable-network-protection.md)|How to prevent users from using any apps to access dangerous domains

5. [Exploit protection](./enable-exploit-protection.md)|How to automatically apply exploit mitigation techniques on both operating system processes and on individual apps

6. [Attack surface reduction rules](./enable-attack-surface-reduction.md)|How to prevent actions and apps that are typically used by exploit-seeking malware

7. [Network firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-deployment-guide)|How to protect devices and data across a network


> [!TIP]
> In most cases, when you configure attack surface reduction capabilities, you can choose from among several methods:
> 
> - Microsoft Endpoint Manager (which now includes Microsoft Intune and Microsoft Endpoint Configuration Manager)
> - Group Policy
> - PowerShell cmdlets

