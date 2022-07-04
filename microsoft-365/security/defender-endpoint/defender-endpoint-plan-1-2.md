---
title: Compare Microsoft Defender for Endpoint plans
description: Compare Defender for Endpoint Plan 1 to Plan 2. Learn about the differences between the plans and select the plan that suits your organization's needs.
keywords: Defender for Endpoint, advanced threat protection, endpoint protection
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 06/17/2022
ms.prod: m365-security
ms.technology: mdep1
ms.localizationpriority: medium
ms.reviewer: shlomi, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Compare Microsoft Defender for Endpoint plans

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats. Defender for Endpoint provides advanced threat protection that includes antivirus, antimalware, ransomware mitigation, and more, together with centralized management and reporting. You can choose from the following options for Microsoft Defender for Endpoint:

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

You can use this article to help clarify what protection is provided by the different features available in Defender for Endpoint Plan 1, Defender for Endpoint Plan 2, the new Defender Vulnerability Management add-on, and Microsoft 365 Defender.

## Compare Defender for Endpoint plans

The following table summarizes what's included in each Defender for Endpoint plan.

| Plan | What's included |
|:---|:---|
| [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md) | <ul><li>[Next-generation protection](defender-endpoint-plan-1.md#next-generation-protection) (includes antimalware and antivirus)</li><li>[Attack surface reduction](defender-endpoint-plan-1.md#attack-surface-reduction)</li><li> [Manual response actions](defender-endpoint-plan-1.md#manual-response-actions)</li><li>[Centralized management](defender-endpoint-plan-1.md#centralized-management)</li><li>[Security reports](defender-endpoint-plan-1.md#reporting)</li><li>[APIs](defender-endpoint-plan-1.md#apis)</li><li>[Support for Windows 10, iOS, Android OS, and macOS devices](defender-endpoint-plan-1.md#cross-platform-support)</li></ul>|
| [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md) | All of the Defender for Endpoint Plan 1 capabilities, plus:<ul><li>[Device discovery](device-discovery.md)</li><li>[Device inventory](machines-view-overview.md)</li><li>[Core Defender Vulnerability Management capabilities](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md)</li><li>[Threat Analytics](threat-analytics.md)</li><li>[Automated investigation and response](automated-investigations.md)</li><li>[Advanced hunting](advanced-hunting-overview.md)</li><li>[Endpoint detection and response](overview-endpoint-detection-response.md)</li><li>[Microsoft Threat Experts](microsoft-threat-experts.md)</li><li>Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux)</li></ul> |
| [Defender Vulnerability Management add-on](../defender-vulnerability-management/defender-vulnerability-management-capabilities.md) | Additional Defender Vulnerability Management capabilities for Defender for Endpoint Plan 2:<ul><li>[Security baselines assessment](../defender-vulnerability-management/tvm-security-baselines.md)</li><li>[Block vulnerable applications](../defender-vulnerability-management/tvm-block-vuln-apps.md)</li><li>[Browser extensions](../defender-vulnerability-management/tvm-browser-extensions.md)</li><li>[Digital certificate assessment](../defender-vulnerability-management/tvm-certificate-inventory.md)</li><li>[Network share analysis](../defender-vulnerability-management/tvm-network-share-assessment.md)</li><li>Support for [Windows](configure-endpoints.md) (client and server) and [non-Windows platforms](configure-endpoints-non-windows.md) (macOS, iOS, Android, and Linux)</li></ul> |
| [Microsoft 365 Defender](../defender/microsoft-365-defender.md) | Services include: <ul><li>[Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)</li><li>[Microsoft Defender Vulnerability Management](../defender-vulnerability-management/defender-vulnerability-management.md)</li><li>[Microsoft Defender for Office 365](../office-365-security/overview.md)</li><li>[Microsoft Defender for Identity](/defender-for-identity/)</li><li>[Microsoft Defender for Cloud Apps](/cloud-app-security/)</li></ul>|

> [!IMPORTANT]
> The standalone versions of Defender for Endpoint Plan 1 and Plan 2 do not include server licenses. To onboard servers, such as endpoints running Windows Server or Linux, you'll need Defender for Servers Plan 1 or Plan 2 as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering. To learn more. see [Overview of Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction).

## Mixed licensing scenarios

Suppose that your organization is using a mix of Microsoft endpoint security subscriptions, such as Defender for Endpoint Plan 1 and Defender for Endpoint Plan 2. **Currently, the highest functional Microsoft endpoint security subscription sets the experience for your tenant**. In this example, your tenant experience would be Defender for Endpoint Plan 2 for all users.

However, **you can contact support and request an override for your tenant experience**. That is, you could request an override to keep the Defender for Endpoint Plan 1 experience for all users. 

- For details about licenses and product terms, see [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- For information about how to contact support, see [Contact Microsoft Defender for Endpoint support](contact-support.md).

> [!TIP]
> If your organization is a small or medium-sized business, see the following articles:
> - [What is Microsoft Defender for Business?](../defender-business/mdb-overview.md)
> - [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md).

## Start a trial

- To try Defender for Endpoint Plan, visit [https://go.microsoft.com/fwlink/p/?LinkID=2168109
](https://go.microsoft.com/fwlink/p/?LinkID=2168109).
- To try the Microsoft Defender Vulnerability Management add-on, visit [https://aka.ms/AddonPreviewTrial](https://aka.ms/AddonPreviewTrial). 

## See also

- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)