---
title: Microsoft Defender portal
description: Learn about the Microsoft Defender portal as the central location for protection, detection, investigation, and response to email, collaboration, identity, device, and app threats.
search.appverid: met150
ms.service: defender-xdr
f1.keywords:
  - NOCSH
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - essentials-manage
  - usx-security
ms.custom:
  - admindeeplinkDEFENDER
  - intro-overview
ms.topic: conceptual
ms.date: 03/26/2024
---

# Microsoft Defender portal

The Microsoft Defender portal at <https://security.microsoft.com> combines protection, detection, investigation, and response to threats across your entire organization and all its components, in a central place. The Defender portal emphasizes quick access to information, simpler layouts, and bringing related information together for easier use. It includes:

- **[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)** helps organizations secure their enterprise with a set of prevention, detection, investigation and hunting features to protect email, and Office 365 resources.
- **[Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-advanced-threat-protection)** delivers preventative protection, post-breach detection, automated investigation, and response for devices in your organization.
- **[Microsoft Defender for Identity](/defender-for-identity/what-is)** is a cloud-based security solution that uses your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization.
- **[Microsoft Defender for Cloud Apps](/cloud-app-security/)** is a comprehensive cross-SaaS and PaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.
- **[Microsoft Sentinel](/azure/sentinel/)** is a cloud-native security information and event management (SIEM) solution that provides proactive threat detection, investigation, and response.

[!INCLUDE [unified-soc-preview](../../includes/unified-soc-preview.md)]

Watch this short video to learn about the Defender portal.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBKau]

## What to expect

The Microsoft Defender portal helps security teams investigate and respond to attacks by bringing in signals from different workloads into a set of unified experiences for:

- Incidents & alerts
- Hunting
- Actions & submissions
- Threat analytics
- Secure score
- Learning hub
- Trials
- Partner catalog

The Microsoft Defender portal emphasizes *unity, clarity, and common goals*.

> [!NOTE]
> In the Microsoft Defender portal, customers see only the security features their subscription includes. For example, if you have Defender for Office 365 but not Defender for Endpoint, you see features and capabilities for Defender for Office 365, but not device protection. 

## Incident and alert investigations

Centralizing security information creates a single place to investigate security incidents across your entire organization and all its components including:

- Hybrid identities
- Endpoints
- Cloud apps
- Business apps
- Email and docs
- IoT
- Network
- Business applications
- Operational technology (OT)
- Infrastructure and cloud workloads

A primary example is **Incidents** under **Incidents & alerts**.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="The Incidents page in the Microsoft Defender portal." lightbox="../../media/incidents-queue/incidents-ss-incidents.png":::

Selecting an incident name displays a page that demonstrates the value of centralizing security information as you get better insights into the full extend of a threat, from email, to identity, to endpoints.

:::image type="content" source="../../media/incidents-overview/incidents-ss-incident-summary.png" alt-text="Screenshot that shows the attack story page for an incident in the Microsoft Defender portal." lightbox="../../media/incidents-overview/incidents-ss-incident-summary.png":::

Take the time to review the incidents in your environment, drill down into each alert, and practice building an understanding of how to access the information and determine next steps in your analysis.

For more information, see [Incidents in the Microsoft Defender portal](incidents-overview.md).

## Hunting

You can build custom detection rules and hunt for specific threats in your environment. **Hunting** uses a query-based threat hunting tool that lets you proactively inspect events in your organization to locate threat indicators and entities. These rules run automatically to check for, and then respond to, suspected breach activity, misconfigured machines, and other findings.

For more information, see [Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](advanced-hunting-overview.md).

## Improved processes

Common controls and content either appear in the same place, or are condensed into one feed of data making it easier to find. For example, find unified settings under **Settings** and permissions under **Permissions**.

### Unified settings

:::image type="content" source="../../media/microsoft-365-defender-portal/defender-portal-settings.png" alt-text="Screenshot of the Settings page in the Microsoft Defender portal" lightbox="../../media/microsoft-365-defender-portal/defender-portal-settings.png":::

### Permissions

:::image type="content" source="../../media/microsoft-365-defender-portal/defender-portal-permissions.png" alt-text="Screenshot of the permissions page in the Microsoft Defender portal" lightbox="../../media/microsoft-365-defender-portal/defender-portal-permissions.png":::

Access to Microsoft Defender XDR is configured with Microsoft Entra global roles or by using custom roles.

- Learn more about how to [manage access to Microsoft Defender XDR](m365d-permissions.md)
- Learn more about how to [create custom roles](custom-roles.md) in Microsoft Defender XDR

For Microsoft Sentinel, after you connect Microsoft Sentinel to the Defender portal, your existing Azure role-based access control (RBAC) permissions allow you to work with the Microsoft Sentinel features that you have access to. Continue to manage roles and permissions for your Microsoft Sentinel users from the Azure portal. Any Azure RBAC changes are reflected in the Defender portal. For more information about Microsoft Sentinel permissions, see:

- [Roles and permissions in Microsoft Sentinel | Microsoft Learn](/azure/sentinel/roles)
- [Manage access to Microsoft Sentinel data by resource | Microsoft Learn](/azure/sentinel/resource-context-rbac)


### Integrated reports

Reports are also unified in Microsoft Defender XDR. Admins can start with a general security report, and branch into specific reports about endpoints, email & collaboration. The links here are dynamically generated based upon workload configuration.

### Quickly view your Microsoft 365 environment

The **Home** page shows many of the common cards that security teams need. The composition of cards and data is dependent on the user role. Because the Defender portal uses role-based access control, different roles see cards that are more meaningful to their day to day jobs.

This at-a-glance information helps you keep up with the latest activities in your organization. Microsoft Defender XDR brings together signals from different sources to present a holistic view of your Microsoft 365 environment.

You can add and remove different cards depending on your needs.

### Search across entities (Preview)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. The search bar is located at the top of the page. As you type, suggestions are provided so that it's easier to find entities. The enhanced search results page centralizes the results from all entities.

You can search across the following entities in Defender for Endpoint and Defender for Identity:

- **Devices** - supported for both Defender for Endpoint and Defender for Identity. Supports use of search operators.
- **Users** - supported for Defender for Endpoint, Defender for Identity, and Defender for Cloud Apps.
- **Files, IPs, and URLs** - same capabilities as in Defender for Endpoint.

  > [!NOTE]
  > IP and URL searches are exact match and don't appear in the search results page – they lead directly to the entity page.

- **MDVM** - same capabilities as in Defender for Endpoint (vulnerabilities, software, and recommendations).

## Threat analytics

Track and respond to emerging threats with the following Microsoft Defender XDR threat analytics:
Threat analytics is the Microsoft Defender XDR threat intelligence solution from expert Microsoft security researchers. It's designed to assist security teams to be as efficient as possible while facing emerging threats, such as:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

## Partner catalog

Microsoft Defender XDR supports two types of partners:

- Third-party integrations to help secure users with effective threat protection, detection, investigation, and response in various security fields of endpoints, vulnerability management, email, identities, and cloud apps.
- Professional services where organizations can enhance the detection, investigation, and threat intelligence capabilities of the platform.

## Send us your feedback

We need your feedback. If there's something you'd like to see, [watch this video to find out how you can trust us to read your feedback](https://www.microsoft.com/videoplayer/embed/RE4K5Ci).

## Explore what the Defender portal has to offer

Keep exploring the features and capabilities in the Defender portal:

- [Manage incidents and alerts](manage-incidents.md)
- [Track and respond to emerging threats with threat analytics](threat-analytics.md)
- [The Action center](m365d-action-center.md)
- [Hunt for threats across devices, emails, apps, and identities](./advanced-hunting-query-emails-devices.md)
- [Custom detection rules](./custom-detection-rules.md)
- [Email & collaboration alerts](../../compliance/alert-policies.md#default-alert-policies)
- [Create a phishing attack simulation](../office-365-security/attack-simulation-training-simulations.md) and [create a payload for training your teams](/microsoft-365/security/office-365-security/attack-simulation-training-payloads)

To explore capabilities related to the Microsoft Sentinel integration with Microsoft Defender XDR in the unified security operations platform (preview), see [Microsoft Sentinel in the Microsoft Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2263690).

## Training for security analysts

With this learning path from Microsoft Learn, you can understand Microsoft Defender XDR and how it can help identify, control, and remediate security threats.

|Training:|Mitigate threats using Microsoft Defender XDR|
|---|---|
|![Microsoft Defender XDR training icon.](../../media/microsoft-365-defender/m365-defender-secure-organization.svg)|Analyze threat data across domains and rapidly remediate threats with built-in orchestration and automation in Microsoft Defender XDR. This learning path aligns with exam SC-200: Microsoft Security Operations Analyst.<p> 9 hr 31 min - Learning Path - 11 Modules|

> [!div class="nextstepaction"]
> [Start >](/training/paths/sc-200-mitigate-threats-using-microsoft-365-defender/)

## See also

- [What's new in Microsoft Defender XDR](whats-new.md)
- [Microsoft Defender for Office 365 in the Microsoft Defender portal](microsoft-365-security-center-mdo.md)
- [Microsoft Defender for Endpoint in Microsoft Defender portal](microsoft-365-security-center-mde.md)
- [Microsoft Defender for Identity in the Microsoft Defender portal](microsoft-365-security-center-mdi.md)
- [Microsoft Defender for Cloud Apps in Microsoft Defender XDR](microsoft-365-security-center-defender-cloud-apps.md)
- [Microsoft Defender for Cloud in the Microsoft Defender portal](microsoft-365-security-center-defender-cloud.md)
- [Microsoft Sentinel in the Microsoft Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2263690)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
