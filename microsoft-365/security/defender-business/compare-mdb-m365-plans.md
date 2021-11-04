---
title: Compare Microsoft Defender for Business to Microsoft 365 Business Premium
description: Understand the differences between Defender for Business and Microsoft 365 Business Premium. Knowing what's included in each plan can help you make an informed decision for your company.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: reference
ms.date: 11/04/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Compare Microsoft Defender for Business to Microsoft 365 Business Premium

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

Microsoft offers a wide variety cloud solutions and services, including several different plans for small and medium-sized businesses. For example, [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) includes security and device management capabilities, along with productivity features, like Office apps. You can use this article to see how Microsoft 365 Business Premium compares to Microsoft Defender for Business.

**You don't have to have a Microsoft 365 subscription to buy and use Microsoft Defender for Business.** Microsoft Defender for Business is a standalone security solution for small and medium-sized businesses. If you do already have another subscription (such as Microsoft 365 Business Basic or Standard), consider adding Microsoft Defender for Business to get additional threat protection capabilities. 

> [!TIP]
> If your company is a small or medium-sized business (300 or fewer users) and you would like to sign up for the Microsoft Defender for Business preview program, visit [https://aka.ms/MDB-Preview](https://aka.ms/MDB-Preview).

## Compare security features in Microsoft Defender for Business to Microsoft 365 Business Premium

The following table compares security features and capabilities in Defender for Business to Microsoft 365 Business Premium. <br/><br/>

| Feature/Capability | [Microsoft Defender for Business](mdb-overview.md) | [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) |
|:---|:---|:---|
| Email protection | Yes ([email scanning](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md) in Microsoft Defender Antivirus) | Yes ([Exchange Online Protection](../office-365-security/exchange-online-protection-overview.md)) |
| Antispam protection | Yes (for devices) | Yes (for Microsoft 365 email content, such as messages and attachments) |
| Antimalware protection | Yes (for devices) | Yes (for Microsoft 365 email content, such as messages and attachments) |
| [Next-generation protection](../defender-endpoint/microsoft-defender-antivirus-in-windows-10.md) <br/> (antivirus and antimalware protection) | Yes (Microsoft Defender Antivirus is included in Windows 10 and later)  | Yes (Microsoft Defender Antivirus is included in Windows 10 and later) |
| [Attack surface reduction](../defender-endpoint/overview-attack-surface-reduction.md) <br/>(attack surface reduction rules and other protection)	| Yes (Attack surface reduction rules built into Windows 10 and later, plus centrally managed capabilities) | Yes (Attack surface reduction rules built into Windows 10 and later) |
| [Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) | Yes. Includes: <br/>- Behavior-based detection <br/>- Manual response actions <br/>- Live response	 | No |
| [Automated investigation and response](../defender-endpoint/automated-investigations.md) | Yes | No |
| [Threat & vulnerability management](../defender-endpoint/tvm-dashboard-insights.md) | Yes | No |
| Centralized management and reporting | Yes. You can onboard Windows client devices and manage them in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), or choose to manage devices in Microsoft Endpoint Manager ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). | Yes. You can manage Windows client devices in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)). Devices must be onboarded in Microsoft Endpoint Manager ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). |
| [APIs](../defender-endpoint/apis-intro.md) <br/>(enables you to integrate with custom apps or reporting solutions)  | Yes | Yes |

> [!NOTE]
> This article is intended to provide a high-level overview of threat protection features included in Microsoft Defender for Business and Microsoft 365 Business Premium. This article is not intended to serve as a service description or licensing contract document. For more information, see the following resources:
> - [Microsoft 365 Business Premium service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-business-service-description)
> - [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)

## Compare Microsoft Defender for Business to Microsoft Defender for Endpoint

The following table compares security features and capabilities in Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2. <br/><br/>

| Feature/Capability | [Defender for Business](mdb-overview.md) | [Defender for Endpoint Plan 1](../defender-endpoint/defender-endpoint-plan-1.md) | [Defender for Endpoint Plan 2](../defender-endpoint/microsoft-defender-endpoint.md) |
|:---|:---|:---|
| [Centralized management](../defender-endpoint/manage-atp-post-migration.md) <br/> Onboard and manage devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or in Microsoft Endpoint Manager ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)).| Yes | Yes | Yes |
| [Simplified client configuration](mdb-simplified-configuration.md) | Yes | No | No |
| [Threat & vulnerability management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md) | Yes | No | Yes |
| [Attack surface reduction capabilities](../defender-endpoint/overview-attack-surface-reduction.md) | Yes | Yes | Yes |
| [Next-generation protection](../defender-endpoint/next-generation-protection.md) | Yes | Yes | Yes |
| [Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) | Yes <sup>[[1](#fn1)]</sup> | No | Yes |
| [Automated investigation and response](../defender-endpoint/automated-investigations.md) | Yes <sup>[[1](#fn1)]</sup> | No | Yes |
| [Threat hunting](../defender-endpoint/advanced-hunting-overview.md) and 6 months of data retention | No | No | Yes |
| [Threat analytics](../defender-endpoint/threat-analytics.md) | Yes <sup>[[1](#fn1)]</sup> | No | Yes |
| [Cross-platform support](../defender-endpoint/minimum-requirements.md) <br/>(Windows, macOS, iOS, and Android OS) | Yes <sup>[[2](#fn1)]</sup> | Yes | Yes |
| [Microsoft Threat Experts](../defender-endpoint/microsoft-threat-experts.md) | No | No | Yes |
| Partner APIs | Yes | Yes | Yes |
| [Microsoft 365 Lighthouse integration](../../lighthouse/m365-lighthouse-overview.md) <br/>(For viewing security incidents across customer tenants) | Yes | No | No |


(<a id="fn1">1</a>) Optimized for small and medium-sized businesses

(<a id="fn2">2</a>) During the preview program, Windows client devices are supported in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))

## Next steps

- [See the requirements for Microsoft Defender for Business](mdb-requirements.md)

- [Learn how to set up and configure Microsoft Defender for Business](mdb-setup-configuration.md) 