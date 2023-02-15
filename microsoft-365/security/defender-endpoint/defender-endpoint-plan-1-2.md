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
ms.date: 02/07/2023
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.reviewer: shlomiakirav, efratka
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
| [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)  | - [Next-generation protection](defender-endpoint-plan-1.md#next-generation-protection) (includes antimalware and antivirus)<br/>- [Attack surface reduction](defender-endpoint-plan-1.md#attack-surface-reduction)<br/>-  [Manual response actions](defender-endpoint-plan-1.md#manual-response-actions)<br/>- [Centralized management](defender-endpoint-plan-1.md#centralized-management)<br/>- [Security reports](defender-endpoint-plan-1.md#reporting)<br/>- [APIs](defender-endpoint-plan-1.md#apis)<br/>- [Support for Windows 10, iOS, Android OS, and macOS devices](defender-endpoint-plan-1.md#cross-platform-support)|
| [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)  | All of the Defender for Endpoint Plan 1 capabilities, plus:<br/>- [Device discovery](device-discovery.md)<br/>- [Device inventory](machines-view-overview.md)<br/>- [Core Defender Vulnerability Management capabilities](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md)<br/>- [Threat Analytics](threat-analytics.md)<br/>- [Automated investigation and response](automated-investigations.md)<br/>- [Advanced hunting](advanced-hunting-overview.md)<br/>- [Endpoint detection and response](overview-endpoint-detection-response.md)<br/>- [Endpoint Attack Notifications](endpoint-attack-notifications.md)<br/>- Support for [Windows](configure-endpoints.md) (client only) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux) |
| [Defender Vulnerability Management add-on](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md) | More Defender Vulnerability Management capabilities for Defender for Endpoint Plan 2: <br/>- [Security baselines assessment](../defender-vulnerability-management/tvm-security-baselines.md)<br/>- [Block vulnerable applications](../defender-vulnerability-management/tvm-block-vuln-apps.md)<br/>- [Browser extensions](../defender-vulnerability-management/tvm-browser-extensions.md)<br/>- [Digital certificate assessment](../defender-vulnerability-management/tvm-certificate-inventory.md)<br/>- [Network share analysis](../defender-vulnerability-management/tvm-network-share-assessment.md)<br/>- Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux) |
| [Defender for Business](../defender-business/mdb-overview.md) <sup>[[1](#fn1)]</sup>  | [Services optimized for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md) include: <br/>- Email protection<br/>- Antispam protection<br/>- Antimalware protection<br/>- Next-generation protection<br/>- Attack surface reduction<br/>- Endpoint detection and response<br/>- Automated investigation and response <br/>- Vulnerability management<br/>- Centralized reporting<br/>- APIs (for integration with custom apps or reporting solutions)<br/>- [Integration with Microsoft 365 Lighthouse](../defender-business/mdb-lighthouse-integration.md) |

(<a id="fn1">1</a>) Microsoft Defender for Business is available as a standalone subscription for small and medium-sized businesses. It's also included as part of [Microsoft 365 Business Premium](/microsoft-365/business-premium). These plans feature advanced security capabilities with a simplified setup and configuration experience. See [Compare Microsoft Defender for Business to Microsoft 365 Business Premium](/microsoft-365/security/defender-business/compare-mdb-m365-plans#compare-microsoft-defender-for-business-to-microsoft-365-business-premium).

> [!TIP]
> For more detailed information, see the following resources:
> - [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
> - [Microsoft 365 Education](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-education)

## Options for onboarding servers

Defender for Endpoint Plan 1 and 2 (standalone), Defender for Business (standalone), and Microsoft 365 Business Premium don't include server licenses. To onboard servers, choose from the following options:

- **Microsoft Defender for Servers Plan 1 or Plan 2** (*recommended for enterprise customers*) as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering. To learn more. see [Overview of Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction).
- **Microsoft Defender for Business servers** (*recommended for small and medium-sized businesses who have [Microsoft Defender for Business](../defender-business/mdb-overview.md)*). To learn more, see [How to get Microsoft Defender for Business servers](../defender-business/get-defender-business-servers.md).
- **Microsoft Defender for Endpoint for Servers** (*if you already have these licenses*). See [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md).

## Mixed licensing scenarios

Suppose that your organization is using a mix of Microsoft endpoint security subscriptions, such as Defender for Endpoint Plan 1 and Defender for Endpoint Plan 2. **Currently, the highest functional Microsoft endpoint security subscription sets the experience for your tenant**. In this example, your tenant experience would be Defender for Endpoint Plan 2 for all users.

However, **you can contact support and request an override for your tenant experience**. That is, you could request an override to keep the Defender for Endpoint Plan 1 experience for all users. 

- For more information about licenses and product terms, see [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- For information about how to contact support, see [Contact Microsoft Defender for Endpoint support](contact-support.md).

> [!TIP]
> If your organization is a small or medium-sized business, see [What happens if I have a mix of Microsoft endpoint security subscriptions](/microsoft-365/security/defender-business/mdb-faq#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions)?

## Start a trial

- To try Defender for Endpoint, go to the [Defender for Endpoint trial sign-up page](https://go.microsoft.com/fwlink/p/?LinkID=2168109).
- To try the Microsoft Defender Vulnerability Management add-on for Defender for Endpoint Plan 2, visit [https://aka.ms/AddonPreviewTrial](https://aka.ms/AddonPreviewTrial). 

## See also

- [Get started with Microsoft Security (trial offers)](https://www.microsoft.com/security/business/get-started/start-free-trial)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)
- [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
