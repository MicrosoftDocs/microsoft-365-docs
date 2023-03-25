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
ms.date: 01/26/2023
ms.reviewer: efratka
ms.collection: 
- SMB
- m365-initiative-defender-business
- m365-security
- tier1

f1.keywords: NOCSH
---

# Compare security features in Microsoft 365 plans for small and medium-sized businesses

> [!IMPORTANT]
> This article provides a high-level overview of features and capabilities that are included in Microsoft Defender for Business (as a standalone plan) and Microsoft 365 Business Premium (which includes Defender for Business). It's not intended to be a service description or licensing contract document. For more detailed information, see the following resources:
> - [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
> - [Microsoft 365 Education](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-education)

Microsoft offers a wide variety of cloud solutions and services, including plans for small and medium-sized businesses. For example, [Microsoft 365 Business Premium](../../business/microsoft-365-business-overview.md) includes security and device-management capabilities, along with productivity features such as Office apps. This article describes the security features in Microsoft 365 Business Premium, Microsoft Defender for Business, and [Microsoft Defender for Endpoint](../defender-endpoint/microsoft-defender-endpoint.md).


**Use this article to**:

- [Compare Defender for Business to Microsoft 365 Business Premium](#compare-defender-for-business-to-microsoft-365-business-premium).
- [Compare Defender for Business (standalone) to Defender for Endpoint Plan 1 and Plan 2](#compare-defender-for-business-to-defender-for-endpoint-plan-1-and-plan-2).

> [!TIP]
> Defender for Business is available as a standalone security solution for small and medium-sized businesses. Defender for Business is now included in Microsoft 365 Business Premium. If you already have Microsoft 365 Business Basic or Standard, consider either upgrading to Microsoft 365 Business Premium or adding Defender for Business to your current subscription to get more threat protection capabilities for your devices.

## Compare Defender for Business to Microsoft 365 Business Premium

Defender for Business provides advanced security protection for your devices, with next-generation protection, endpoint detection and response, and threat & vulnerability management. Microsoft 365 Business Premium includes Defender for Business and provides more cybersecurity and productivity capabilities.

:::image type="content" source="media/mdb-m365bp-comparison.png" alt-text="Diagram comparing Defender for Business to Microsoft 365 Business Premium.":::

The following table provides more information about what's included in each plan:

| Plan | Description |
|:---|:---|
| **[Defender for Business](mdb-overview.md)** (standalone) | **Antivirus, antimalware, and ransomware protection for devices**<br/>- [Next-generation protection](../defender-endpoint/microsoft-defender-antivirus-in-windows-10.md) (antivirus/antimalware protection on devices together with cloud protection)<br/>- [Attack surface reduction](../defender-endpoint/overview-attack-surface-reduction.md) (network protection, firewall, and attack surface reduction rules) (see note 1 below)<br/>- [Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) (behavior-based detection and manual response actions)<br/>- [Automated investigation and response](../defender/m365d-autoir.md) (with self-healing for detected threats)<br/>- [Microsoft Defender Vulnerability Management](mdb-view-tvm-dashboard.md) (view exposed devices and recommendations)<br/>- [Cross-platform support for devices](mdb-onboard-devices.md) (Windows, Mac, iOS, and Android) (see note 2 below)<br/>- [Centralized management and reporting](mdb-get-started.md) (Microsoft 365 Defender portal)<br/>- [APIs for integration](../defender-endpoint/management-apis.md) (for Microsoft partners or your custom tools and apps) |
| **[Microsoft 365 Business Premium](../../business-premium/index.md)** | **Defender for Business plus productivity and additional security capabilities**<br/>- [Microsoft 365 Business Standard](../../admin/admin-overview/what-is-microsoft-365-for-business.md) (Office apps and services, and Microsoft Teams)<br/>- [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) (device onboarding and management)<br/>- [Shared computer activation](/deployoffice/overview-shared-computer-activation) (for deploying Microsoft 365 Apps)<br/>- [Windows 10/11 Business](../../business-premium/m365bp-upgrade-windows-10-pro.md) (upgrade from previous versions of Windows Pro)<br/>- [Windows Autopilot](/mem/autopilot/windows-autopilot) (for setting up and configuring Windows devices)<br/>- [Exchange Online Protection](../office-365-security/eop-about.md) (antiphishing, antispam, antimalware, and spoof intelligence for email)<br/>- [Microsoft Defender for Office 365 Plan 1](/microsoft-365/security/office-365-security/defender-for-office-365) (advanced antiphishing, real-time detections, Safe Attachments, and Safe Links)<br/>- [Auto-expanding archiving](../../compliance/autoexpanding-archiving.md) (for email)<br/>- [Azure Active Directory Premium Plan 1](/azure/active-directory/fundamentals/active-directory-whatis) (identity management)<br/>- [Azure Information Protection Premium Plan 1](/azure/information-protection/what-is-information-protection) (protection for sensitive information)<br/>- [Azure Virtual Desktop](/azure/virtual-desktop/overview) (centrally managed, secure virtual machines in the cloud) |

> [!NOTE]
> 1. Microsoft Intune is required to modify or customize attack surface reduction rules. Intune can be added on to the standalone version of Defender for Business. Intune is included in Microsoft 365 Business Premium.
> 
> 2. You can use *either* mobile threat defense (preview) *or* Microsoft Intune to onboard iOS and Android devices. See [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).

## Compare Defender for Business to Defender for Endpoint Plan 1 and Plan 2

Defender for Business brings the enterprise-grade capabilities of Defender for Endpoint to small and medium-sized businesses. The following table compares security features and capabilities in Defender for Business to the enterprise offerings, Microsoft Defender for Endpoint Plans 1 and 2.

|Feature/capability|[Defender for Business](mdb-overview.md)<br/>(standalone)|[Defender for Endpoint Plan 1](../defender-endpoint/defender-endpoint-plan-1.md)<br/>(for enterprise customers) |[Defender for Endpoint Plan 2](../defender-endpoint/microsoft-defender-endpoint.md)<br/>(for enterprise customers) |
|---|---|---|---|
|[Centralized management](../defender-endpoint/manage-atp-post-migration.md)<br/>(see note 1 below) | :::image type="icon" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Simplified client configuration](mdb-simplified-configuration.md)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::| | |
|[Microsoft Defender Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::| |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Attack surface reduction capabilities](../defender-endpoint/overview-attack-surface-reduction.md) <br/>(see note 2 below)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Next-generation protection](../defender-endpoint/next-generation-protection.md)|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Endpoint detection and response](../defender-endpoint/overview-endpoint-detection-response.md) <br/>(see note 3 below) |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Automated investigation and response](../defender-endpoint/automated-investigations.md) <br/>(see note 4 below) |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: ||:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Threat hunting](../defender-endpoint/advanced-hunting-overview.md) and six months of data retention | | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Threat analytics](../defender-endpoint/threat-analytics.md) <br/>(see note 5 below) |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Cross-platform support](../defender-endpoint/minimum-requirements.md) <br/>Windows, Mac, iOS, and Android OS<br/>(For Windows Server and Linux, see note 6 below) |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Microsoft Threat Experts](../defender-endpoint/microsoft-threat-experts.md)| | |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|Partner APIs|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false":::|
|[Microsoft 365 Lighthouse integration](../../lighthouse/m365-lighthouse-overview.md) <br/>(For viewing security incidents across customer tenants) |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: |:::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included" border="false"::: |

> [!NOTE]
> 1. Onboard and manage devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or by using Microsoft Intune ([https://intune.microsoft.com](https://intune.microsoft.com)).
> 
> 2. Intune is required to configure and manage [ASR rules](../defender-endpoint/attack-surface-reduction.md).
> 
> 3. Endpoint detection and response (EDR) capabilities in Defender for Business include behavior-based detection and the following manual response actions: 
> 
>    - Run antivirus scan
>    - Isolate device
>    - Add an indicator to block or allow a file
> 
> 4. In Defender for Business, automated investigation and response is turned on by default, tenant wide. Turning off automated investigation and response affects real-time protection. See [Review settings for advanced features](mdb-configure-security-settings.md#review-settings-for-advanced-features).  
> 
> 5. In Defender for Business, threat analytics are optimized for small and medium-sized businesses.
> 
> 6. To onboard servers, another license is required. See the following articles:
> 
>    - [Onboard devices to Defender for Business](mdb-onboard-devices.md)
>    - [Onboard devices and configure Microsoft Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md)


## Next steps

- [See the requirements for Microsoft Defender for Business](mdb-requirements.md)
- [Get Microsoft Defender for Business](get-defender-business.md)
- [Learn how to set up and configure Microsoft Defender for Business](mdb-setup-configuration.md)
