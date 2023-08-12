---
title: Microsoft 365 Defender portal
description: The Microsoft 365 Defender portal combines protection, detection, investigation, and response to email, collaboration, identity, device, and app threats, in a central place.
keywords: introduction to MMicrosoft 365 Defender, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - admindeeplinkDEFENDER
  - intro-overview
ms.topic: conceptual
adobe-target: true
ms.date: 07/13/2023
---

# Microsoft 365 Defender portal

The [Microsoft 365 Defender portal](https://sip.security.microsoft.com/homepage) combines protection, detection, investigation, and response to email, collaboration, identity, device, and cloud app threats, in a central place. The Microsoft 365 Defender portal emphasizes quick access to information, simpler layouts, and bringing related information together for easier use. It includes:

- **[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)** Microsoft Defender for Office 365 helps organizations secure their enterprise with a set of prevention, detection, investigation and hunting features to protect email, and Office 365 resources.
- **[Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-advanced-threat-protection)** delivers preventative protection, post-breach detection, automated investigation, and response for devices in your organization.
- **[Microsoft Defender for Identity](/defender-for-identity/what-is)** is a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization.
- **[Microsoft Defender for Cloud Apps](/cloud-app-security/)** is a comprehensive cross-SaaS and PaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.

Watch this short video to learn about the Microsoft 365 Defender portal.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBKau]

## What to expect

The Microsoft 365 Defender portal helps security teams investigate and respond to attacks by bringing in signals from different workloads into a set of unified experiences for:

- Incidents & alerts
- Hunting
- Actions & submissions
- Threat analytics
- Secure score
- Learning hub
- Trials
- Partner catalog

Microsoft 365 Defender emphasizes *unity, clarity, and common goals*.

> [!NOTE]
> The Microsoft 365 Defender portal is accessible without any need for customers to take migration steps or purchase a new license. For example, this new portal is accessible to administrators with an E3 subscription, just as it is to those with Microsoft Defender for Office 365 Plan 1 and Plan 2; however, Exchange Online Protection, or Defender for Office 365 Plan 1 customers see only the security features their subscription license supports. The goal of the portal is to centralize security.

## Incident and alert investigations

Centralizing security information creates a single place for investigating security incidents across Microsoft 365. A primary example is **Incidents** under **Incidents & alerts**.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="The Incidents page in the Microsoft 365 Defender portal." lightbox="../../media/incidents-queue/incidents-ss-incidents.png":::

Selecting an incident name displays a page that demonstrates the value of centralizing security information as you'll have better insights into the full extend of a threat, from email, to identity, to endpoints.

:::image type="content" source="../../media/incidents-overview/incidents-ss-incident-summary.png" alt-text="Screenshot that shows the attack story page for an incident in the Microsoft 365 Defender portal." lightbox="../../media/incidents-overview/incidents-ss-incident-summary.png":::

Take the time to review the incidents in your environment, drill down into each alert, and practice building an understanding of how to access the information and determine next steps in your analysis.

For more information, see [incidents in Microsoft 365 Defender](incidents-overview.md).

## Hunting
You can build custom detection rules and hunt for specific threats in your environment. **Hunting** uses a query-based threat hunting tool that lets you proactively inspect events in your organization to locate threat indicators and entities. These rules run automatically to check for, and then respond to, suspected breach activity, misconfigured machines, and other findings.

For more information, see [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md).

## Improved processes

Common controls and content either appear in the same place, or are condensed into one feed of data making it easier to find. For example, unified settings.

### Unified settings

:::image type="content" source="../../media/converged-add-role-9.png" alt-text="The Settings page in the Microsoft 365 Defender portal" lightbox="../../media/converged-add-role-9.png":::

### Permissions

:::image type="content" source="../../media/converged-roles-5.png" alt-text="The Endpoints roles & groups displayed on the Permissions & roles page" lightbox="../../media/converged-roles-5.png":::

Access to Microsoft 365 Defender is configured with Azure AD global roles or by using custom roles.

- Learn more about how to [manage access to Microsoft 365 Defender](m365d-permissions.md)
- Learn more about how to [create custom roles](custom-roles.md) in Microsoft 365 Defender


### Integrated reports

Reports are also unified in Microsoft 365 Defender. Admins can start with a general security report, and branch into specific reports about endpoints, email & collaboration. The links here are dynamically generated based upon workload configuration.

### Quickly view your Microsoft 365 environment

The **Home** page shows many of the common cards that security teams need. The composition of cards and data is dependent on the user role. Because Microsoft 365 Defender portal uses role-based access control, different roles will see cards that are more meaningful to their day to day jobs.

This at-a-glance information helps you keep up with the latest activities in your organization. Microsoft 365 Defender brings together signals from different sources to present a holistic view of your Microsoft 365 environment.

You can add and remove different cards depending on your needs.

### Search across entities (Preview)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.
The search bar is located at the top of the page. As you type, suggestions are provided so that it's easier to find entities. The enhanced search results page centralizes the results from all entities.

You can search across the following entities in Defender for Endpoint and Defender for Identity:

- **Devices** - supported for both Defender for Endpoint and Defender for Identity. Supports use of search operators.
- **Users** - supported for Defender for Endpoint, Defender for Identity, and Defender for Cloud Apps.
- **Files, IPs, and URLs** - same capabilities as in Defender for Endpoint.

  > [!NOTE]
  > IP and URL searches are exact match and don't appear in the search results page – they lead directly to the entity page.

- **MDVM** - same capabilities as in Defender for Endpoint (vulnerabilities, software, and recommendations).

## Threat analytics

Track and respond to emerging threats with the following Microsoft 365 Defender threat analytics:
Threat analytics is the Microsoft 365 Defender threat intelligence solution from expert Microsoft security researchers. It's designed to assist security teams to be as efficient as possible while facing emerging threats, such as:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

## Learning Hub

<a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> includes a learning hub that provides guidance from resources such as the Microsoft security blog, the Microsoft security community on YouTube, and the official documentation.

> [!NOTE]
> There are helpful **filters** along the top of Microsoft 365 Defender learning hub that will let you choose between products (currently Microsoft 365 Defender, Microsoft Defender for Endpoint, and Microsoft Defender for Office 365). Notice that the number of learning resources for each section is listed, which can help learners keep track of how many resources they have at hand for training and learning.
>
> Along with the Product filter, current topics, types of resources (from videos to webinars), levels of familiarity or experience with security areas, security roles, and product features are listed.

> [!TIP]
> There are lots of other learning opportunities in [Microsoft Learn](/training/). You'll find certification training such as [Course MS-500T00: Microsoft 365 Security Administration](/training/courses/ms-500t00).

## Partner catalog

Microsoft 365 Defender supports two types of partners:

- Third-party integrations to help secure users with effective threat protection, detection, investigation, and response in various security fields of endpoints, vulnerability management, email, identities, and cloud apps.
- Professional services where organizations can enhance the detection, investigation, and threat intelligence capabilities of the platform.

## Send us your feedback

We need your feedback. We're always looking to improve, so if there's something you'd like to see, [watch this video to find out how you can trust us to read your feedback](https://www.microsoft.com/videoplayer/embed/RE4K5Ci).

## Explore what the Microsoft 365 Defender portal has to offer

Keep exploring the features and capabilities in Microsoft 365 Defender:

- [Manage incidents and alerts](manage-incidents.md)
- [Track and respond to emerging threats with threat analytics](threat-analytics.md)
- [The Action center](m365d-action-center.md)
- [Hunt for threats across devices, emails, apps, and identities](./advanced-hunting-query-emails-devices.md)
- [Custom detection rules](./custom-detection-rules.md)
- [Email & collaboration alerts](../../compliance/alert-policies.md#default-alert-policies)
- [Create a phishing attack simulation](../office-365-security/attack-simulation-training-simulations.md) and [create a payload for training your teams](/microsoft-365/security/office-365-security/attack-simulation-training-payloads)

## Training for security analysts

With this learning path from Microsoft Learn, you can understand Microsoft 365 Defender and how it can help identify, control, and remediate security threats.

|Training:|Mitigate threats using Microsoft 365 Defender|
|---|---|
|![Microsoft 365 Defender training icon.](../../media/microsoft-365-defender/m365-defender-secure-organization.svg)|Analyze threat data across domains and rapidly remediate threats with built-in orchestration and automation in Microsoft 365 Defender. This learning path aligns with exam SC-200: Microsoft Security Operations Analyst.<p> 9 hr 31 min - Learning Path - 11 Modules|

> [!div class="nextstepaction"]
> [Start >](/training/paths/dsc-200-mitigate-threats-using-microsoft-365-defender/)

## See also

- [What's new in Microsoft 365 Defender](whats-new.md)
- [Microsoft Defender for Office 365 in Microsoft 365 Defender](microsoft-365-security-center-mdo.md)
- [Microsoft Defender for Endpoint in Microsoft 365 Defender](microsoft-365-security-center-mde.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
