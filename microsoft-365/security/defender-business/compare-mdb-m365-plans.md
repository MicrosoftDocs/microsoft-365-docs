---
title: Compare security features in Microsoft 365 plans for small and medium-sized businesses
description: How does Defender for Business compare to Defender for Endpoint and Microsoft 365 Business Premium? See what's included in each plan so you can make a more informed decision for your company.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp
audience: Admin
ms.topic: reference
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 09/26/2022
ms.reviewer: shlomiakirav
ms.collection: 
- SMB
- m365-initiative-defender-business
- m365-security
f1.keywords: NOCSH
---

# Compare security features in Microsoft 365 plans for small and medium-sized businesses

Microsoft offers a wide variety of cloud solutions and services, including plans for small and medium-sized businesses. For example, [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) includes security and device-management capabilities, along with productivity features such as Office apps. This article describes the security features in Microsoft 365 Business Premium, Microsoft Defender for Business, and [Microsoft Defender for Endpoint](../defender-endpoint/microsoft-defender-endpoint.md).


**Use this article to**:

- [Compare Microsoft Defender for Business to Microsoft 365 Business Premium](#compare-microsoft-defender-for-business-to-microsoft-365-business-premium).
- [Compare Defender for Business (standalone) to Defender for Endpoint enterprise offerings](#compare-microsoft-defender-for-business-to-microsoft-defender-for-endpoint-plans-1-and-2).

> [!TIP]
> Defender for Business is available as a standalone security solution for small and medium-sized businesses. Defender for Business is now included in Microsoft 365 Business Premium. If you already have Microsoft 365 Business Basic or Standard, consider either upgrading to Microsoft 365 Business Premium or adding Defender for Business to your current subscription to get more threat protection capabilities for your devices.

## Compare Microsoft Defender for Business to Microsoft 365 Business Premium

> [!IMPORTANT]
> This article provides a high-level overview of features and capabilities that are included in Microsoft Defender for Business (as a standalone plan) and Microsoft 365 Business Premium (which includes Defender for Business). It's not intended to be a service description or licensing contract document. For more detailed information, see the following resources:
> - [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
> - [Microsoft 365 Education](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-education)


| Plan | Description |
|:---|:---|
| **[Defender for Business](mdb-overview.md)** (standalone) | **Antivirus, antimalware, and ransomware protection for devices**<ul><li>[Next-generation protection](../defender-endpoint/microsoft-defender-antivirus-in-windows-10.md) (antivirus/antimalware protection on devices together with cloud protection)</li><li>[Attack surface reduction](../defender-endpoint/overview-attack-surface-reduction.md) (network protection, firewall, and attack surface reduction rules) <sup>[[a](#fna)]</sup></li><li>[Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) (behavior-based detection and manual response actions)</li><li>[Automated investigation and response](../defender/m365d-autoir.md) (with self-healing for detected threats)</li><li>[Microsoft Defender Vulnerability Management](mdb-view-tvm-dashboard.md) (view exposed devices and recommendations)</li><li>[Cross-platform support for devices](mdb-onboard-devices.md) (Windows, Mac, iOS, and Android) <sup>[[b](#fnb)]</sup></li><li>[Centralized management and reporting](mdb-get-started.md) (Microsoft 365 Defender portal)</li><li>[APIs for integration](../defender-endpoint/management-apis.md) (for Microsoft partners or your custom tools and apps)</li></ul> |
| **[Microsoft 365 Business Premium](../../business-premium/index.md)** | **Defender for Business capabilities, together with productivity and additional security capabilities**<ul><li>[Microsoft 365 Business Standard](../../admin/admin-overview/what-is-microsoft-365-for-business.md) (Office apps and services, and Microsoft Teams)</li><li>[Shared computer activation](/deployoffice/overview-shared-computer-activation) (for deploying Microsoft 365 Apps)</li><li>[Windows 10/11 Business](../../business-premium/m365bp-upgrade-windows-10-pro.md) (upgrade from previous versions of Windows Pro)</li><li>[Windows Autopilot](/mem/autopilot/windows-autopilot) (for setting up and configuring Windows devices)</li><li>[Exchange Online Protection](../office-365-security/exchange-online-protection-overview.md) (antiphishing, antispam, antimalware, and spoof intelligence for email)</li><li>[Microsoft Defender for Office 365 Plan 1](/microsoft-365/office-365-security/overview) (advanced antiphishing, real-time detections, Safe Attachments, Safe Links)</li><li>[Auto-expanding archiving](../../compliance/autoexpanding-archiving.md) (for email)</li><li>[Azure Active Directory Premium Plan 1](/azure/active-directory/fundamentals/active-directory-whatis) (identity management)</li><li>[Microsoft Intune](/mem/intune/fundamentals/what-is-intune) (device onboarding and management)</li><li>[Azure Information Protection Premium Plan 1](/azure/information-protection/what-is-information-protection) (protection for sensitive information)</li><li>[Azure Virtual Desktop](/azure/virtual-desktop/overview) (centrally managed, secure virtual machines in the cloud)</li></ul> |

  
(<a id="fna">a</a>) Microsoft Intune is required to modify or customize attack surface reduction rules. Intune can be added on to the standalone version of Defender for Business. Intune is included in Microsoft 365 Business Premium.

(<a id="fnb">b</a>) Microsoft Intune is required to onboard iOS and Android devices. See [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).

## Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2

Defender for Business brings the enterprise-grade capabilities of Defender for Endpoint to small and medium-sized businesses. The following table compares security features and capabilities in Defender for Business to the enterprise offerings, Microsoft Defender for Endpoint Plans 1 and 2.

|Feature/capability|[Defender for Business](mdb-overview.md)<br/>(standalone)|[Defender for Endpoint Plan 1](../defender-endpoint/defender-endpoint-plan-1.md)<br/>(for enterprise customers) |[Defender for Endpoint Plan 2](../defender-endpoint/microsoft-defender-endpoint.md)<br/>(for enterprise customers) |
|---|---|---|---|
|[Centralized management](../defender-endpoint/manage-atp-post-migration.md) <sup>[[1](#fn1)]</sup> | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Simplified client configuration](mdb-simplified-configuration.md)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::| | |
|[Microsoft Defender Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::| |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Attack surface reduction capabilities](../defender-endpoint/overview-attack-surface-reduction.md) <sup>[[2](#fn2)]</sup>|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Next-generation protection](../defender-endpoint/next-generation-protection.md)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) <sup>[[3](#fn3)]</sup>|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Automated investigation and response](../defender-endpoint/automated-investigations.md) <sup>[[4](#fn4)]</sup>|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: ||:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Threat hunting](../defender-endpoint/advanced-hunting-overview.md) and six months of data retention <sup>[[5](#fn5)]</sup> | | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Threat analytics](../defender-endpoint/threat-analytics.md) <sup>[[6](#fn6)]</sup>|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Cross-platform support](../defender-endpoint/minimum-requirements.md) <br/>(Windows, Mac, iOS, and Android OS) <sup>[[7](#fn7)]</sup>|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Microsoft Threat Experts](../defender-endpoint/microsoft-threat-experts.md)| | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|Partner APIs|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
|[Microsoft 365 Lighthouse integration](../../lighthouse/m365-lighthouse-overview.md) <br/>(For viewing security incidents across customer tenants) <sup>[[8](#fn8)]</sup>|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |

(<a id="fn1">1</a>) Onboard and manage devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or by using Microsoft Intune, managed in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)).

(<a id="fn2">2</a>) Intune is required to configure and manage [ASR rules](../defender-endpoint/attack-surface-reduction.md).

(<a id="fn3">3</a>) Endpoint detection and response (EDR) capabilities in Defender for Business include behavior-based detection and the following manual response actions: 
- Run antivirus scan
- Isolate device
- Stop and quarantine a file
- Add an indicator to block or allow a file

(<a id="fn4">4</a>) In Defender for Business, automated investigation and response is turned on by default, tenant wide. Turning off automated investigation and response affects real-time protection. See [Review settings for advanced features](mdb-configure-security-settings.md#review-settings-for-advanced-features).  

(<a id="fn5">5</a>) There's no timeline view in Defender for Business.

(<a id="fn6">6</a>) In Defender for Business, threat analytics are optimized for small and medium-sized businesses.

(<a id="fn7">7</a>) See [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).

(<a id="fn8">8</a>) The ability to view incidents across tenants using Defender for Endpoint is new!

> [!TIP]
> Also see [Compare Microsoft endpoint security plans](../defender-endpoint/defender-endpoint-plan-1-2.md) and [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Next steps

- [See the requirements for Microsoft Defender for Business](mdb-requirements.md)
- [Get Microsoft Defender for Business](get-defender-business.md)
- [Learn how to set up and configure Microsoft Defender for Business](mdb-setup-configuration.md)
