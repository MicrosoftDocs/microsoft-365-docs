---
title: Compare security features in Microsoft 365 plans for small and medium-sized businesses
description: How does Defender for Business compare to Defender for Endpoint and Microsoft 365 Business Premium? See what's included in each plan so you can make a more informed decision for your company.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp
audience: Admin
ms.topic: reference
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

# Compare security features in Microsoft 365 plans for small and medium-sized businesses

Microsoft offers a wide variety of cloud solutions and services, including plans for small and medium-sized businesses. For example, [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) includes security and device-management capabilities, along with productivity features such as Office apps. This article describes the security features in Microsoft 365 Business Premium, Microsoft Defender for Business, and [Microsoft Defender for Endpoint](../defender-endpoint/microsoft-defender-endpoint.md).


**Use this article to**:

- [Compare Microsoft Defender for Business (standalone) to Microsoft 365 Business Premium](#compare-security-features-in-microsoft-defender-for-business-to-microsoft-365-business-premium)
- [Compare Defender for Business (standalone) to Microsoft Defender for Endpoint enterprise offerings](#compare-microsoft-defender-for-business-to-microsoft-defender-for-endpoint-plans-1-and-2)

**You don't need a Microsoft 365 subscription to buy and use Microsoft Defender for Business.** Microsoft Defender for Business is available as a standalone security solution for small and medium-sized businesses. It's also included in Microsoft 365 Business Premium. If you already have Microsoft 365 Business Basic or Standard, consider either upgrading to Microsoft 365 Business Premium or adding Defender for Business to get more threat protection capabilities for your devices.

## Compare security features in Microsoft Defender for Business to Microsoft 365 Business Premium

> [!NOTE]
> This article provides a high-level overview of threat protection features included in Microsoft Defender for Business (as a standalone plan) and Microsoft 365 Business Premium (which includes Defender for Business). It's not intended to be a service description or licensing contract document. For more information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

**As of March 1, 2022, Defender for Business is included in Microsoft 365 Business Premium. Defender for Business is also available as a standalone subscription.** The following table compares security features and capabilities in Defender for Business (standalone) to Microsoft 365 Business Premium.

|Feature/capability|[Microsoft Defender for Business](mdb-overview.md)<br/>(standalone)|[Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md)<br/>(includes Defender for Business)|
|---|---|---|
|Email protection|Yes <br/>[Email scanning with Microsoft Defender Antivirus](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md)|Yes <ul><li>[Exchange Online Protection](../office-365-security/exchange-online-protection-overview.md)</li><li>[Email scanning with Microsoft Defender Antivirus](../defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus.md)</li></ul>|
|Antispam protection|Yes<br/>For devices|Yes <ul><li>For devices</li><li>For Microsoft 365 email content, such as messages and attachments</li></ul>|
|Antimalware protection|Yes<br/>For devices|Yes<ul><li>For devices</li><li>For Microsoft 365 email content, such as messages and attachments</li></ul>|
|[Next-generation protection](../defender-endpoint/microsoft-defender-antivirus-in-windows-10.md) <br/> (antivirus and antimalware protection)|Yes<br/>Microsoft Defender Antivirus is included in Windows 10 and later|Yes <ul><li>Microsoft Defender Antivirus is included in Windows 10 and later</li><li>Next-generation protection policies for onboarded devices</li></ul>|
|[Attack surface reduction](../defender-endpoint/overview-attack-surface-reduction.md) <br/>(ASR rules in Windows 10 or later and firewall protection)|Yes|Yes|
|[Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) <br/>(behavior-based detection and manual response actions)|Yes|Yes|
|[Automated investigation and response](../defender-endpoint/automated-investigations.md)|Yes|Yes|
|[Threat & vulnerability management](../defender-endpoint/tvm-dashboard-insights.md)|Yes|Yes|
|Centralized management and reporting|Yes|Yes|
|[APIs](../defender-endpoint/apis-intro.md) <br/>(for integration with custom apps or reporting solutions)|Yes|Yes|

## Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2

Defender for Business brings the enterprise-grade capabilities of Defender for Endpoint to small and medium-sized businesses. The following table compares security features and capabilities in Defender for Business to the enterprise offerings, Microsoft Defender for Endpoint Plans 1 and 2.

|Feature/capability|[Defender for Business](mdb-overview.md)<br/>(standalone)|[Defender for Endpoint Plan 1](../defender-endpoint/defender-endpoint-plan-1.md)<br/>(for enterprise customers) |[Defender for Endpoint Plan 2](../defender-endpoint/microsoft-defender-endpoint.md)<br/>(for enterprise customers) |
|---|---|---|---|
|[Centralized management](../defender-endpoint/manage-atp-post-migration.md) |Yes <sup>[[1](#fn1)]</sup>|Yes|Yes|
|[Simplified client configuration](mdb-simplified-configuration.md)|Yes|No|No|
|[Threat & vulnerability management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)|Yes|No|Yes|
|[Attack surface reduction capabilities](../defender-endpoint/overview-attack-surface-reduction.md)|Yes|Yes|Yes|
|[Next-generation protection](../defender-endpoint/next-generation-protection.md)|Yes|Yes|Yes|
|[Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md)|Yes <sup>[[2](#fn2)]</sup>|No|Yes|
|[Automated investigation and response](../defender-endpoint/automated-investigations.md)|Yes <sup>[[3](#fn3)]</sup>|No|Yes|
|[Threat hunting](../defender-endpoint/advanced-hunting-overview.md) and six months of data retention |No <sup>[[4](#fn4)]</sup>|No|Yes|
|[Threat analytics](../defender-endpoint/threat-analytics.md)|Yes <sup>[[5](#fn5)]</sup>|No|Yes|
|[Cross-platform support](../defender-endpoint/minimum-requirements.md) <br/>(Windows, Mac, iOS, and Android OS)|Yes <sup>[[6](#fn6)]</sup>|Yes|Yes|
|[Microsoft Threat Experts](../defender-endpoint/microsoft-threat-experts.md)|No|No|Yes|
|Partner APIs|Yes|Yes|Yes|
|[Microsoft 365 Lighthouse integration](../../lighthouse/m365-lighthouse-overview.md) <br/>(For viewing security incidents across customer tenants)|Yes |Yes <sup>[[7](#fn7)]</sup>|Yes <sup>[[7](#fn7)]</sup>|

(<a id="fn1">1</a>) Onboard and manage devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or by using Microsoft Intune, managed in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)).

(<a id="fn2">2</a>) Endpoint detection and response (EDR) capabilities in Defender for Business include behavior-based detection and the following manual response actions: 
- Run antivirus scan
- Isolate device
- Stop and quarantine a file
- Add an indicator to block or allow a file

(<a id="fn3">3</a>) In Defender for Business, automated investigation and response is turned on by default, tenant wide. If you turn off automated investigation and response, that affects real-time protection. See [Review settings for advanced features](mdb-configure-security-settings.md#review-settings-for-advanced-features).  

(<a id="fn4">4</a>) There's no timeline view in Defender for Business.

(<a id="fn5">5</a>) In Defender for Business, threat analytics are optimized for small and medium-sized businesses.

(<a id="fn6">6</a>) See [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).

(<a id="fn7">7</a>) The ability to view incidents across tenants using Defender for Endpoint is new!

## Next steps

- [See the requirements for Microsoft Defender for Business](mdb-requirements.md)
- [Get Microsoft Defender for Business](get-defender-business.md)
- [Learn how to set up and configure Microsoft Defender for Business](mdb-setup-configuration.md)
