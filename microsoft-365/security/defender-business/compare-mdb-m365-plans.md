---
title: Compare security features in Microsoft 365 plans for small and medium-sized businesses
description: Understand the differences between Defender for Business and Defender for Endpoint. Knowing what's included in each plan can help you make an informed decision for your company.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: reference
ms.date: 03/15/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-initiative-defender-business
- m365-security-compliance
---

# Compare Microsoft Defender for Business to Microsoft 365 Business Premium

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

Microsoft offers a wide variety of cloud solutions and services, including several different plans for small and medium-sized businesses. For example, [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) includes security and device management capabilities, along with productivity features, like Office apps. This article is designed to help clarify what security features, such as device protection, are included in Microsoft 365 Business Premium, Microsoft Defender for Business, and Microsoft Defender for Endpoint.

Microsoft Defender for Business is available as a standalone offering or as part of Microsoft 365 Business Premium (beginning March 1, 2022).

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

**Use this article to**:

- [Compare Microsoft Defender for Business (standalone) to Microsoft 365 Business Premium](#compare-security-features-in-microsoft-defender-for-business-to-microsoft-365-business-premium)
- [Compare Defender for Business (standalone) to Microsoft Defender for Endpoint enterprise offerings](#compare-microsoft-defender-for-business-to-microsoft-defender-for-endpoint-plans-1-and-2)

**You don't have to have a Microsoft 365 subscription to buy and use Microsoft Defender for Business.** Microsoft Defender for Business is included in Microsoft 365 Business Premium, and it is available as a standalone security solution for small and medium-sized businesses. If you already have Microsoft 365 Business Basic or Standard, consider adding either upgrading to Microsoft 365 Business Premium or adding Microsoft Defender for Business to get more threat protection capabilities. 

## Compare security features in Microsoft Defender for Business to Microsoft 365 Business Premium

> [!NOTE]
> This article is intended to provide a high-level overview of threat protection features included in Microsoft Defender for Business (as a standalone plan) and Microsoft 365 Business Premium (which includes Defender for Business). This article is not intended to serve as a service description or licensing contract document. For more information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)

**Beginning March 1, 2022, Defender for Business will start rolling out as part of Microsoft 365 Business Premium. Defender for Business as a standalone offering is still in preview.**

The following table compares security features and capabilities in Defender for Business (standalone) to Microsoft 365 Business Premium. 

 <br/><br/>

| Feature/Capability | [Microsoft Defender for Business](mdb-overview.md)<br/>(standalone; currently in preview) | [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md)<br/>(includes Defender for Business) |
|:---|:---|:---|
| Email protection | Yes <br/>- [Email scanning with Microsoft Defender Antivirus](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md) | Yes <br/>- [Exchange Online Protection](../office-365-security/exchange-online-protection-overview.md) <br/>- [Email scanning with Microsoft Defender Antivirus](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md) |
| Antispam protection | Yes <br/>- For devices | Yes <br/>- For devices<br/>- For Microsoft 365 email content, such as messages and attachments |
| Antimalware protection | Yes<br/>- For devices | Yes <br/>- For devices<br/>- For Microsoft 365 email content, such as messages and attachments |
| [Next-generation protection](../defender-endpoint/microsoft-defender-antivirus-in-windows-10.md) <br/> (antivirus and antimalware protection) | Yes<br/>- Microsoft Defender Antivirus is included in Windows 10 and later  | Yes <br/>- Microsoft Defender Antivirus is included in Windows 10 and later<br/>- Next-generation protection policies for onboarded devices |
| [Attack surface reduction](../defender-endpoint/overview-attack-surface-reduction.md) <br/>(ASR rules in Windows 10 or later and firewall protection)	| Yes  | Yes  |
| [Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) <br/>(behavior-based detection and manual response actions) | Yes | Yes |
| [Automated investigation and response](../defender-endpoint/automated-investigations.md) | Yes | Yes |
| [Threat & vulnerability management](../defender-endpoint/tvm-dashboard-insights.md) | Yes | Yes |
| Centralized management and reporting  | Yes  | Yes  |
| [APIs](../defender-endpoint/apis-intro.md) <br/>(for integration with custom apps or reporting solutions)  | Yes | Yes |


## Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2

Defender for Business brings enterprise-grade capabilities of Defender for Endpoint to small and medium-sized businesses. 

The following table compares security features and capabilities in Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2. <br/><br/>

| Feature/Capability | [Defender for Business](mdb-overview.md)<br/>(standalone; currently in preview) | [Defender for Endpoint Plan 1](../defender-endpoint/defender-endpoint-plan-1.md) | [Defender for Endpoint Plan 2](../defender-endpoint/microsoft-defender-endpoint.md) |
|:---|:---|:---|:---|
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

- [See the requirements for Microsoft Defender for Business](mdb-requirements.md)
- [Get Microsoft Defender for Business](get-defender-business.md)
- [Learn how to set up and configure Microsoft Defender for Business](mdb-setup-configuration.md) 
