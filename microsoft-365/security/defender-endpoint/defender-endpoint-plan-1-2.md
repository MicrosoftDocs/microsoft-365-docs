---
title: Compare Microsoft endpoint security plans
description: Compare Microsoft endpoint security plans, such as Defender for Endpoint Plan 1 to Defender for Endpoint Plan 2. Learn about the differences between the plans and select the plan that suits your organization's needs.
keywords: Defender for Endpoint, advanced threat protection, endpoint protection, endpoint security, device security, cybersecurity
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 10/18/2022
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.reviewer: shlomi, efratka
f1.keywords: NOCSH  
ms.collection: 
- m365-security
- tier1
---

# Compare Microsoft endpoint security plans

Microsoft endpoint security plans, such as Microsoft Defender for Endpoint and Microsoft 365 Defender, were designed to help enterprise organizations prevent, detect, investigate, and respond to advanced threats. Microsoft Defender for Business and Microsoft 365 Business Premium provide similar capabilities, optimized for small and medium-sized businesses. These plans provide advanced threat protection with antivirus and antimalware protection, ransomware mitigation, and more, together with centralized management and reporting. 

This article helps clarify what's included in the following plans: 

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management add-on](../defender-vulnerability-management/index.yml)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) 

> [!IMPORTANT]
> This article provides a summary of threat protection capabilities in Microsoft endpoint security plans; however, it's not intended to be a service description or licensing contract document. For more detailed information, see the following resources:
> - [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
> - [Microsoft 365 Education](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-education)

## Compare Microsoft endpoint security plans

The following table summarizes what's included in Microsoft endpoint security plans.

| Plan | What's included |
|:---|:---|
| [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)  | <ul><li>[Next-generation protection](defender-endpoint-plan-1.md#next-generation-protection) (includes antimalware and antivirus)</li><li>[Attack surface reduction](defender-endpoint-plan-1.md#attack-surface-reduction)</li><li> [Manual response actions](defender-endpoint-plan-1.md#manual-response-actions)</li><li>[Centralized management](defender-endpoint-plan-1.md#centralized-management)</li><li>[Security reports](defender-endpoint-plan-1.md#reporting)</li><li>[APIs](defender-endpoint-plan-1.md#apis)</li><li>[Support for Windows 10, iOS, Android OS, and macOS devices](defender-endpoint-plan-1.md#cross-platform-support)</li></ul>|
| [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)  | All of the Defender for Endpoint Plan 1 capabilities, plus:<ul><li>[Device discovery](device-discovery.md)</li><li>[Device inventory](machines-view-overview.md)</li><li>[Core Defender Vulnerability Management capabilities](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md)</li><li>[Threat Analytics](threat-analytics.md)</li><li>[Automated investigation and response](automated-investigations.md)</li><li>[Advanced hunting](advanced-hunting-overview.md)</li><li>[Endpoint detection and response](overview-endpoint-detection-response.md)</li><li>[Microsoft Threat Experts](microsoft-threat-experts.md)</li><li>Support for [Windows](configure-endpoints.md) (client only) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux)</li></ul> |
| [Defender Vulnerability Management add-on](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md) | More Defender Vulnerability Management capabilities for Defender for Endpoint Plan 2:<ul><li>[Security baselines assessment](../defender-vulnerability-management/tvm-security-baselines.md)</li><li>[Block vulnerable applications](../defender-vulnerability-management/tvm-block-vuln-apps.md)</li><li>[Browser extensions](../defender-vulnerability-management/tvm-browser-extensions.md)</li><li>[Digital certificate assessment](../defender-vulnerability-management/tvm-certificate-inventory.md)</li><li>[Network share analysis](../defender-vulnerability-management/tvm-network-share-assessment.md)</li><li>Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux)</li></ul> |
| [Defender for Business](../defender-business/mdb-overview.md) <sup>[[1](#fn1)]</sup>  | [Services optimized for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md) include: <ul><li>Email protection</li><li>Antispam protection</li><li>Antimalware protection</li><li>Next-generation protection</li><li>Attack surface reduction</li><li>Endpoint detection and response</li><li>Automated investigation and response </li><li>Vulnerability management</li><li>Centralized reporting</li><li>APIs (for integration with custom apps or reporting solutions)</li><li>[Integration with Microsoft 365 Lighthouse](../defender-business/mdb-lighthouse-integration.md)</li></ul> |

(<a id="fn1">1</a>) Microsoft Defender for Business is available as a standalone subscription for small and medium-sized businesses. It's also included as part of [Microsoft 365 Business Premium](/microsoft-365/business-premium). These plans feature advanced security capabilities with a simplified setup and configuration experience. See [Compare Microsoft Defender for Business to Microsoft 365 Business Premium](/microsoft-365/security/defender-business/compare-mdb-m365-plans#compare-microsoft-defender-for-business-to-microsoft-365-business-premium).

> [!TIP]
> For more detailed information, see the following resources:
> - [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
> - [Microsoft 365 Education](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-education)

## Options for onboarding servers

Defender for Endpoint Plan 1 and 2 (standalone), Defender for Business (standalone), and Microsoft 365 Business Premium don't include server licenses. To onboard servers, choose from the following options:

- **Microsoft Defender for Servers Plan 1 or Plan 2** as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering. To learn more. see [Overview of Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction).
- **Microsoft Defender for Business servers (preview)** for small and medium-sized businesses. See [How to get Microsoft Defender for Business servers (preview)](../defender-business/get-defender-business-servers.md).

## Start a trial

- To try Defender for Endpoint, go to the [Defender for Endpoint trial sign-up page](https://go.microsoft.com/fwlink/p/?LinkID=2168109).
- To try the Microsoft Defender Vulnerability Management add-on for Defender for Endpoint Plan 2, visit [https://aka.ms/AddonPreviewTrial](https://aka.ms/AddonPreviewTrial). 

## Mixed licensing scenarios

A mixed licensing scenario is a situation in which an organization is using a mix of enterprise Microsoft endpoint security subscriptions. Some examples are described in the following table: 

| Scenario | Description |
|:---|:---|
| *Mixed tenant* | Use different sets of capabilities for groups of users and their devices. Examples include:<ul><li>Defender for Endpoint Plan 1 and Defender for Endpoint Plan 2</li><li>Microsoft 365 E3 and Microsoft 365 E5</li></ul>  |
| *Mixed trial* | Try a premium level subscription for some users. Examples include: <ul><li>Defender for Endpoint Plan 1 (purchased for all users), and Defender for Endpoint Plan 2 (start a trial subscription for some users)</li><li>Microsoft 365 E3 (purchased for all users), and Microsoft 365 E5 (start a trial for some users)</li></ul> |
| *Phased upgrades* | Upgrade user licenses in phases. Examples include:<ul><li>Moving groups of users from Defender for Endpoint Plan 1 to Plan 2</li><li>Moving groups of users from Microsoft 365 E3 to E5 </li></ul>  |

**If you have Defender for Endpoint Plan 1 and Plan 2 in your tenant, you can now manage your subscription settings across devices**. This new capability enables you to:

- Apply *either* Defender for Endpoint Plan 1 *or* Plan 2 settings to all your devices; or
- Use mixed mode, and apply Defender for Endpoint Plan 1 settings to some devices, and Defender for Endpoint Plan 2 to other devices.

See [Manage your Defender for Endpoint subscription settings across devices](defender-endpoint-subscription-settings.md).

## More resources

- [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- [How to contact support for Defender for Endpoint](contact-support.md).
- [Get started with Microsoft Security (trial offers)](https://www.microsoft.com/security/business/get-started/start-free-trial)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)
- [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
