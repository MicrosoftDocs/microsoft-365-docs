---
title: Enable the Evaluation
description: Set up your Microsoft 365 Defender trial lab or pilot environment to try out and experience the security solution designed to protect devices, identity, data, and applications in your organization.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: 
author: 
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

## Enable MDE Evaluation

### Configure Attack Surface Reduction

You can configure attack surface reduction with many tools, including:

- Microsoft Intune

- Microsoft Endpoint Configuration Manager

- Group Policy

- PowerShell cmdlets

Article | Description
-|-
[Enable hardware-based isolation for Microsoft Edge](/windows/security/threat-protection/microsoft-defender-application-guard/install-md-app-guard) | How to prepare for and install Application Guard, including hardware and software requirements
[Enable application control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control)|How to control applications run by users and protect kernel mode processes
[Exploit protection](./enable-exploit-protection.md)|How to automatically apply exploit mitigation techniques on both operating system processes and on individual apps
[Network protection](./enable-network-protection.md)|How to prevent users from using any apps to access dangerous domains
[Controlled folder access](./enable-controlled-folders.md)|How to protect valuable data from malicious apps
[Attack surface reduction](./enable-attack-surface-reduction.md)|How to prevent actions and apps that are typically used by exploit-seeking malware
[Network firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-deployment-guide)|How to protect devices and data across a network

### Configure Microsoft Defender Antivirus

You can configure Microsoft Defender Antivirus with a number of tools, including:

- Microsoft Intune
- Microsoft Endpoint Configuration Manager
- Group Policy
- PowerShell cmdlets
- Windows Management Instrumentation (WMI)

The following broad categories of features can be configured:

- Cloud-delivered protection
- Always-on real-time protection, including behavioral, heuristic, and machine-learning-based protection
- How end users interact with the client on individual endpoints

The following articles describe how to perform key tasks when configuring Microsoft Defender Antivirus. Each article includes instructions for the applicable configuration tool (or tools).

|Article  |Description  |
|---------|---------|
|[Utilize Microsoft cloud-provided Microsoft Defender Antivirus protection](cloud-protection-microsoft-defender-antivirus.md)     | Use cloud-delivered protection for advanced, fast, robust antivirus detection.        |
|[Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md)     |Enable behavior-based, heuristic, and real-time antivirus protection.         |
|[Configure end-user interaction with Microsoft Defender Antivirus](configure-end-user-interaction-microsoft-defender-antivirus.md) | Configure how end users in your organization interact with Microsoft Defender Antivirus, what notifications they see, and whether they can override settings. |

> [!TIP]
> You can also review the [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md) topic for an overview of each tool and links to further help.

See
