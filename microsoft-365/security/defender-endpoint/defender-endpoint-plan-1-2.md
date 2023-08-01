---
title: Compare Microsoft endpoint security plans
description: Compare Microsoft endpoint security plans, such as Defender for Endpoint Plan 1 to Defender for Endpoint Plan 2. Learn about the differences between the plans and select the plan that suits your organization's needs.
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 06/29/2023
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

The following table summarizes at a high level what's included in Microsoft endpoint security plans.  

| Plan | What's included |
|:---|:---|
| [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)  | - [Next-generation protection](defender-endpoint-plan-1.md#next-generation-protection) (includes antimalware and antivirus)<br/>- [Attack surface reduction](defender-endpoint-plan-1.md#attack-surface-reduction)<br/>- [Manual response actions](defender-endpoint-plan-1.md#manual-response-actions)<br/>- [Centralized management](defender-endpoint-plan-1.md#centralized-management)<br/>- [Security reports](defender-endpoint-plan-1.md#reporting)<br/>- [APIs](defender-endpoint-plan-1.md#apis)<br/>- [Support for Windows 10, Windows 11, iOS, Android OS, and macOS devices](defender-endpoint-plan-1.md#cross-platform-support)|
| [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)  | All of the Defender for Endpoint Plan 1 capabilities, plus:<br/>- [Device discovery](device-discovery.md)<br/>- [Device inventory](machines-view-overview.md)<br/>- [Core Defender Vulnerability Management capabilities](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md)<br/>- [Threat Analytics](threat-analytics.md)<br/>- [Automated investigation and response](automated-investigations.md)<br/>- [Advanced hunting](advanced-hunting-overview.md)<br/>- [Endpoint detection and response](overview-endpoint-detection-response.md)<br/>- [Endpoint Attack Notifications](endpoint-attack-notifications.md)<br/>- Support for [Windows](configure-endpoints.md) (client only) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux) |
| [Defender Vulnerability Management add-on](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md) | More Defender Vulnerability Management capabilities for Defender for Endpoint Plan 2: <br/>- [Security baselines assessment](../defender-vulnerability-management/tvm-security-baselines.md)<br/>- [Block vulnerable applications](../defender-vulnerability-management/tvm-block-vuln-apps.md)<br/>- [Browser extensions](../defender-vulnerability-management/tvm-browser-extensions.md)<br/>- [Digital certificate assessment](../defender-vulnerability-management/tvm-certificate-inventory.md)<br/>- [Network share analysis](../defender-vulnerability-management/tvm-network-share-assessment.md)<br/> - [Hardware and firmware assessment](../defender-vulnerability-management/tvm-hardware-and-firmware.md) <br/> - [Authenticated scan for Windows](../defender-vulnerability-management/windows-authenticated-scan.md) <br/> - Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux) |
| [Defender for Business](../defender-business/mdb-overview.md)  | [Services optimized for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md) include: <br/>- Antispam protection<br/>- Antimalware protection<br/>- Next-generation protection<br/>- Attack surface reduction<br/>- Endpoint detection and response<br/>- Automated investigation and response <br/>- Vulnerability management<br/>- Centralized reporting<br/>- APIs (for integration with custom apps or reporting solutions)<br/>- [Integration with Microsoft 365 Lighthouse](../defender-business/mdb-lighthouse-integration.md) |

> [!TIP]
> [Mixed-licensing scenarios](#mixed-licensing-scenarios) in Defender for Endpoint are now in preview!  You can manage your subscription settings to use a combination of Defender for Endpoint Plan 1 and Plan 2 licenses across devices. See [Manage Microsoft Defender for Endpoint subscription settings across client devices (preview!)](defender-endpoint-subscription-settings.md).
> 

## Mixed-licensing scenarios

A mixed-licensing scenario is a situation in which an organization is using a mix of subscriptions, such as Defender for Endpoint Plan 1 and Plan 2. The following table describes examples of mixed-licensing scenarios: 

| Scenario | Description |
|:---|:---|
| *Mixed tenant* | Use different sets of capabilities for groups of users and their devices. Examples include:<br/>- Defender for Endpoint Plan 1 and Defender for Endpoint Plan 2<br/>- Microsoft 365 E3 and Microsoft 365 E5  |
| *Mixed trial* | Try a premium level subscription for some users. Examples include: <br/>- Defender for Endpoint Plan 1 (purchased for all users), and Defender for Endpoint Plan 2 (a trial subscription has been started for some users)<br/>- Microsoft 365 E3 (purchased for all users), and Microsoft 365 E5 (a trial subscription has been started for some users) |
| *Phased upgrades* | Upgrade user licenses in phases. Examples include:<br/>- Moving groups of users from Defender for Endpoint Plan 1 to Plan 2<br/>- Moving groups of users from Microsoft 365 E3 to E5  |

**If you have Defender for Endpoint Plan 1 and Plan 2 in your tenant, the ability to manage your subscription settings across client devices is now in preview**! This new capability enables you to:

- Apply *either* Defender for Endpoint Plan 1 *or* Plan 2 settings to all your client devices; or
- Use mixed mode, and apply Defender for Endpoint Plan 1 settings to some client devices, and Defender for Endpoint Plan 2 to other client devices.

You can also use a newly added license usage report to track status. 

**For more information, including how to use mixed-licensing scenarios in your tenant, see [Manage your Defender for Endpoint subscription settings across devices](defender-endpoint-subscription-settings.md)**.

> [!NOTE]
> Mixed-license scenarios are not currently supported for Microsoft Defender for Business. See [What happens if I have a mix of Microsoft endpoint security subscriptions](/microsoft-365/security/defender-business/mdb-faq?#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions)?

## Options for onboarding servers

Defender for Endpoint Plan 1 and 2, Defender for Business, and Microsoft 365 Business Premium don't include server licenses. To onboard servers, choose from the following options:

- **Microsoft Defender for Servers Plan 1 or Plan 2** (*recommended for enterprise customers*) as part of the [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering. To learn more. see [Overview of Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction).
- **Microsoft Defender for Endpoint for Servers** (*recommended for enterprise customers*). To learn more, see [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md).
- **Microsoft Defender for Business servers** (*recommended for small and medium-sized businesses who have [Microsoft Defender for Business](../defender-business/mdb-overview.md)*). To learn more, see [How to get Microsoft Defender for Business servers](../defender-business/get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).

## Start a trial

- To try Defender for Endpoint, go to the [Defender for Endpoint trial sign-up page](https://go.microsoft.com/fwlink/p/?LinkID=2168109).
- To try the Microsoft Defender Vulnerability Management add-on for Defender for Endpoint Plan 2, visit [https://aka.ms/AddonPreviewTrial](https://aka.ms/AddonPreviewTrial). 

> [!TIP]
> If your organization is a small or medium-sized business, see [What happens if I have a mix of Microsoft endpoint security subscriptions](/microsoft-365/security/defender-business/mdb-faq#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions)?

## Learn more about subscriptions and licensing

- [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
