---
title: Compare Microsoft Defender for Business to other Microsoft 365 plans
description: Understand the differences between Defender for Business and Defender for Endpoint. Knowing what's included in each plan can help you make an informed decision for your organization.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: reference
ms.date: 02/23/2022
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-initiative-defender-business
- m365-security-compliance
---

# Compare Microsoft Defender for Business (preview) to Microsoft 365 Business Premium

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

Microsoft offers a wide variety of cloud solutions and services, including several different plans for small and medium-sized businesses. For example, [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) includes security and device management capabilities, along with productivity features, like Office apps. 

**Use this article to**:

- [Compare Microsoft Defender for Business (preview) to Microsoft 365 Business Premium](#compare-security-features-in-microsoft-defender-for-business-to-microsoft-365-business-premium)
- [Compare Defender for Business to Microsoft Defender for Endpoint enterprise offerings](#compare-microsoft-defender-for-business-to-microsoft-defender-for-endpoint-plans-1-and-2)


**You don't have to have a Microsoft 365 subscription to buy and use Microsoft Defender for Business (preview).** Microsoft Defender for Business (preview) is a standalone security solution for small and medium-sized businesses. If you do already have another subscription (such as Microsoft 365 Business Basic or Standard), consider adding Microsoft Defender for Business to get more threat protection capabilities. 

> [!TIP]
> If your organization is a small or medium-sized business (300 or fewer users) and you would like to sign up for the Microsoft Defender for Business preview program, visit [https://aka.ms/MDB-Preview](https://aka.ms/MDB-Preview). To learn more, see [Get Microsoft Defender for Business](get-defender-business.md).

## Compare security features in Microsoft Defender for Business to Microsoft 365 Business Premium

> [!NOTE]
> This article is intended to provide a high-level overview of threat protection features included in Microsoft Defender for Business (preview) and Microsoft 365 Business Premium. This article is not intended to serve as a service description or licensing contract document. For more information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)

The following table compares security features and capabilities in Defender for Business (standalone) to Microsoft 365 Business Premium. In March 2022, Defender for Business will be rolled out as part of Microsoft 365 Business Premium. <br/><br/>

| Feature/Capability | [Microsoft Defender for Business](mdb-overview.md)<br/>(standalone; currently in preview) | [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md)<br/>(includes Defender for Business)) |
|:---|:---|:---|
| Email protection | Yes ([email scanning](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md) in Microsoft Defender Antivirus) | Yes <br/> [Exchange Online Protection](../office-365-security/exchange-online-protection-overview.md) <br/>[Email scanning](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md) in Microsoft Defender Antivirus |
| Antispam protection | Yes (for devices) | Yes <br/>For devices<br/>For Microsoft 365 email content, such as messages and attachments |
| Antimalware protection | Yes (for devices) | Yes <br/>For devices<br/>For Microsoft 365 email content, such as messages and attachments |
| [Next-generation protection](../defender-endpoint/microsoft-defender-antivirus-in-windows-10.md) <br/> (antivirus and antimalware protection) | Yes (Microsoft Defender Antivirus is included in Windows 10 and later)  | Yes <br/>Microsoft Defender Antivirus is included in Windows 10 and later<br/>Next-generation protection policies for onboarded devices |
| [Attack surface reduction](../defender-endpoint/overview-attack-surface-reduction.md) <br/>(attack surface reduction rules and other protection)	| Yes (Attack surface reduction rules built into Windows 10 and later, plus centrally managed capabilities) | Yes <br/>Attack surface reduction rules are built into Windows 10 and later <br/>Centrally managed capabilities |
| [Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) | Yes. Includes: <br/>- Behavior-based detection <br/>- Manual response actions <br/>- Live response	 | Yes. Includes: <br/>- Behavior-based detection <br/>- Manual response actions <br/>- Live response	 |
| [Automated investigation and response](../defender-endpoint/automated-investigations.md) | Yes | Yes |
| [Threat & vulnerability management](../defender-endpoint/tvm-dashboard-insights.md) | Yes | Yes |
| Centralized management and reporting | Yes. <br/>You can onboard devices and manage them in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or Microsoft Intune ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). | Yes. <br/>You can onboard devices and manage them in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or Microsoft Intune ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). |
| [APIs](../defender-endpoint/apis-intro.md) <br/>(enables you to integrate with custom apps or reporting solutions)  | Yes | Yes |



## Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2

Defender for Business (preview) brings enterprise-grade capabilities of Defender for Endpoint to small and medium-sized businesses. The following table compares security features and capabilities in Defender for Business (preview) to Microsoft Defender for Endpoint Plans 1 and 2. <br/><br/>

| Feature/Capability | [Defender for Business](mdb-overview.md) (preview) | [Defender for Endpoint Plan 1](../defender-endpoint/defender-endpoint-plan-1.md) | [Defender for Endpoint Plan 2](../defender-endpoint/microsoft-defender-endpoint.md) |
|:---|:---|:---|
| [Centralized management](../defender-endpoint/manage-atp-post-migration.md) <sup>[[1](#fn1)]</sup> | Yes | Yes | Yes |
| [Simplified client configuration](mdb-simplified-configuration.md) | Yes | No | No |
| [Threat & vulnerability management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md) | Yes | No | Yes |
| [Attack surface reduction capabilities](../defender-endpoint/overview-attack-surface-reduction.md) | Yes | Yes | Yes |
| [Next-generation protection](../defender-endpoint/next-generation-protection.md) | Yes | Yes | Yes |
| [Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) | Yes <sup>[[2](#fn2)]</sup> | No | Yes |
| [Automated investigation and response](../defender-endpoint/automated-investigations.md) | Yes <sup>[[2](#fn2)]</sup> | No | Yes |
| [Threat hunting](../defender-endpoint/advanced-hunting-overview.md) and six months of data retention | No | No | Yes |
| [Threat analytics](../defender-endpoint/threat-analytics.md) | Yes <sup>[[2](#fn2)]</sup> | No | Yes |
| [Cross-platform support](../defender-endpoint/minimum-requirements.md) <br/>(Windows, macOS, iOS, and Android OS) | Yes <sup>[[3](#fn3)]</sup> | Yes | Yes |
| [Microsoft Threat Experts](../defender-endpoint/microsoft-threat-experts.md) | No | No | Yes |
| Partner APIs | Yes | Yes | Yes |
| [Microsoft 365 Lighthouse integration](../../lighthouse/m365-lighthouse-overview.md) <br/>(For viewing security incidents across customer tenants) | Yes | No | No |

(<a id="fn1">1</a>) Onboard and manage devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or with another tool, such as Microsoft Endpoint Manager ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)).

(<a id="fn2">2</a>) These capabilities are optimized for small and medium-sized businesses.

(<a id="fn3">3</a>) During the preview program, Windows client devices are supported in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

## Next steps

- [See the requirements for Microsoft Defender for Business (preview)](mdb-requirements.md)

- [Learn how to set up and configure Microsoft Defender for Business (preview)](mdb-setup-configuration.md) 