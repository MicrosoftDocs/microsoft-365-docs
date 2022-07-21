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
ms.date: 07/14/2022
ms.prod: m365-security
ms.technology: mdep1
ms.localizationpriority: medium
ms.reviewer: shlomi, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Compare Microsoft endpoint security plans

Microsoft endpoint security plans, such as Microsoft Defender for Endpoint and Microsoft 365 Defender, were designed to help enterprise organizations prevent, detect, investigate, and respond to advanced threats. Microsoft Defender for Business and Microsoft 365 Business Premium provide similar capabilities, optimized for small and medium-sized businesses. These plans provide advanced threat protection with antivirus and antimalware protection, ransomware mitigation, and more, together with centralized management and reporting. 

This article helps clarify what's included in the following plans: 

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium](../../business-premium/index.md)

> [!IMPORTANT]
> This article provides a summary of threat protection capabilities in Microsoft endpoint security plans; however, it's not intended to be a service description or licensing contract document. For more detailed information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Compare Microsoft endpoint security plans

The following table summarizes what's included in Microsoft endpoint security plans.

| Plan | What's included |
|:---|:---|
| [Microsoft 365 Defender](../defender/microsoft-365-defender.md) | Services include: <ul><li>[Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)</li><li>[Microsoft Defender Vulnerability Management](../defender-vulnerability-management/defender-vulnerability-management.md)</li><li>[Microsoft Defender for Office 365](../office-365-security/overview.md)</li><li>[Microsoft Defender for Identity](/defender-for-identity/)</li><li>[Microsoft Defender for Cloud Apps](/cloud-app-security/)</li></ul>|
| [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md) <sup>[[1](#fn1)]</sup> | <ul><li>[Next-generation protection](defender-endpoint-plan-1.md#next-generation-protection) (includes antimalware and antivirus)</li><li>[Attack surface reduction](defender-endpoint-plan-1.md#attack-surface-reduction)</li><li> [Manual response actions](defender-endpoint-plan-1.md#manual-response-actions)</li><li>[Centralized management](defender-endpoint-plan-1.md#centralized-management)</li><li>[Security reports](defender-endpoint-plan-1.md#reporting)</li><li>[APIs](defender-endpoint-plan-1.md#apis)</li><li>[Support for Windows 10, iOS, Android OS, and macOS devices](defender-endpoint-plan-1.md#cross-platform-support)</li></ul>|
| [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md) <sup>[[2](#fn2)]</sup> | All of the Defender for Endpoint Plan 1 capabilities, plus:<ul><li>[Device discovery](device-discovery.md)</li><li>[Device inventory](machines-view-overview.md)</li><li>[Core Defender Vulnerability Management capabilities](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md)</li><li>[Threat Analytics](threat-analytics.md)</li><li>[Automated investigation and response](automated-investigations.md)</li><li>[Advanced hunting](advanced-hunting-overview.md)</li><li>[Endpoint detection and response](overview-endpoint-detection-response.md)</li><li>[Microsoft Threat Experts](microsoft-threat-experts.md)</li><li>Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux)</li></ul> |
| [Defender Vulnerability Management add-on](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md) | Additional Defender Vulnerability Management capabilities for Defender for Endpoint Plan 2:<ul><li>[Security baselines assessment](../defender-vulnerability-management/tvm-security-baselines.md)</li><li>[Block vulnerable applications](../defender-vulnerability-management/tvm-block-vuln-apps.md)</li><li>[Browser extensions](../defender-vulnerability-management/tvm-browser-extensions.md)</li><li>[Digital certificate assessment](../defender-vulnerability-management/tvm-certificate-inventory.md)</li><li>[Network share analysis](../defender-vulnerability-management/tvm-network-share-assessment.md)</li><li>Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux)</li></ul> |
| [Defender for Business](../defender-business/mdb-overview.md) <sup>[[3](#fn3)]</sup> <br/>and<br/>[Microsoft 365 Business Premium](../../business-premium/index.md) | [Services optimized for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md) include: <ul><li>Email protection</li><li>Antispam protection</li><li>Antimalware protection</li><li>Next-generation protection</li><li>Attack surface reduction</li><li>Endpoint detection and response</li><li>Automated investigation and response </li><li>Threat & vulnerability management</li><li>Centralized reporting</li><li>APIs (for integration with custom apps or reporting solutions)</li><li>[Integration with Microsoft 365 Lighthouse](../defender-business/mdb-lighthouse-integration.md)</li></ul> |

(<a id="fn1">1</a>) Microsoft Defender for Endpoint Plan 1 is available as a standalone subscription for commercial and education customers. It's also included as part of Microsoft 365 E3/A3.

(<a id="fn2">2</a>) Microsoft Defender for Endpoint Plan 2, which was previously called Microsoft Defender for Endpoint, is available as a standalone subscription. It's also included as part of the following plans:

- Windows 11 Enterprise E5/A5
- Windows 10 Enterprise E5/A5
- Microsoft 365 E5/A5/G5 (which includes Windows 10 or Windows 11 Enterprise E5)
- Microsoft 365 E5/A5/G5/F5 Security
- Microsoft 365 F5 Security & Compliance

(<a id="fn3">3</a>) Microsoft Defender for Business is available as a standalone subscription for small and medium-sized businesses. It's also included as part of Microsoft 365 Business Premium. These plans feature advanced security capabilities with a simplified setup and configuration experience.

## Options for onboarding servers

The standalone versions of Defender for Business, Defender for Endpoint Plan 1 and 2, and Microsoft 365 Business Premium do not include server licenses. To onboard servers, choose from the following options:

- **Microsoft Defender for Servers Plan 1 or Plan 2** as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering. To learn more. see [Overview of Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction).
- **Microsoft Defender for Business servers (preview)** for small and medium-sized businesses. See [How to get Microsoft Defender for Business servers (preview)](../defender-business/get-defender-business-servers.md).

## Mixed licensing scenarios

A mixed licensing scenario is a situation in which an organization is using a mix of Microsoft endpoint security subscriptions. The following table lists a few examples. 

| Scenario | Description |
|:---|:---|
| Mixed tenant | Use different sets of capabilities for groups of users. Examples:<br/>- Using Defender for Endpoint Plan 1 to some users, and Defender for Endpoint Plan 2 for other users <br/>- Using Microsoft 365 E3 for some users, and Microsoft 365 E5 for other users    |
| Mixed trial | Try a premium level subscription for some users. Examples: <br/>- Defender for Endpoint Plan 1 (purchased for most users), and Defender for Endpoint Plan 2 (trial for some users) <br/>Microsoft 365 E3 (purchased for most users), and Microsoft 365 E5 (trial for some users) |
| Phased upgrades | Upgrade user licenses in phases. Examples:<br/>- Moving groups of users from Defender for Endpoint Plan 1 to Defender for Endpoint Plan 2 <br/>- Moving groups of users from Microsoft 365 E3 to Microsoft 365 E5   |

> [!NOTE]
> Microsoft 365 E3 includes Defender for Endpoint Plan 1, and Microsoft 365 E5 includes Defender for Endpoint Plan 2.

### Choose your subscription state

Up until recently, in cases of mixed licenses, the highest functional Microsoft endpoint security subscription would set the experience for your tenant. Referring to the preceding examples, the tenant experience would be Defender for Endpoint Plan 2 or Microsoft 365 E5 for all users. However, you now have more options available. For example, you can choose to set your subscription state to:

- Use Defender for Endpoint Plan 1 features and capabilities across all onboarded devices
- Use Defender for Endpoint Plan 2 features and capabilities across all onboarded devices
- Choose which devices receive Defender for Endpoint Plan 1 or Plan 2 features and capabilities



However, **you can contact support and request an override for your tenant experience**. That is, you could request an override to keep the Defender for Endpoint Plan 1 experience for all users. 

- For details about licenses and product terms, see [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- For information about how to contact support, see [Contact Microsoft Defender for Endpoint support](contact-support.md).

> [!TIP]
> If your organization is a small or medium-sized business, see the following articles:
> - [What is Microsoft Defender for Business?](../defender-business/mdb-overview.md)
> - [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md).

## Start a trial

- To try Defender for Endpoint, go to the [Defender for Endpoint trial sign-up page](https://go.microsoft.com/fwlink/p/?LinkID=2168109).
- To try the Microsoft Defender Vulnerability Management add-on for Defender for Endpoint Plan 2, visit [https://aka.ms/AddonPreviewTrial](https://aka.ms/AddonPreviewTrial). 

## See also

- [Get started with Microsoft Security (trial offers)](https://www.microsoft.com/security/business/get-started/start-free-trial)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)
