---
title: What is Microsoft 365 Defender?
description: Microsoft 365 Defender is a coordinated threat protection solution designed to protect devices, identity, data and applications
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
ms.author: diannegali
author: diannegali
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
ms.date: 03/01/2023
---

# What is Microsoft 365 Defender?

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Microsoft 365 Defender is a unified pre- and post-breach enterprise defense suite that natively coordinates detection, prevention, investigation, and response across endpoints, identities, email, and applications to provide integrated protection against sophisticated attacks.

Here's a list of the different Microsoft 365 Defender products and solutions that Microsoft 365 Defender coordinates with:

- [**Microsoft Defender for Endpoint**](../defender-endpoint/microsoft-defender-endpoint.md)
- [**Microsoft Defender for Office 365**](../office-365-security/microsoft-defender-for-office-365-product-overview.md)
- [**Microsoft Defender for Identity**](/defender-for-identity/what-is)
- [**Microsoft Defender for Cloud Apps**](/defender-cloud-apps/what-is-defender-for-cloud-apps)
- [**Microsoft Defender Vulnerability Management**](../defender-vulnerability-management/defender-vulnerability-management.md)
- [**Azure Active Directory Identity Protection**](/azure/active-directory/identity-protection/overview-identity-protection)
- [**Microsoft Data Loss Prevention**](/microsoft-365/compliance/dlp-learn-about-dlp)
- [**App Governance**](/defender-cloud-apps/app-governance-manage-app-governance)

Note that the coordination of alerts from Azure Active Directory Identity Protection (AAD IP) to Microsoft 365 Defender is in public preview and may be substantially modified before it's commercially released. AAD IP is available to customers only if they already have Microsoft 365 Defender. 

With the integrated Microsoft 365 Defender solution, security professionals can stitch together the threat signals that each of these products receive and determine the full scope and impact of the threat; how it entered the environment, what it's affected, and how it's currently impacting the organization. Microsoft 365 Defender takes automatic action to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities.

## Microsoft 365 Defender interactive guide

In this interactive guide, you'll learn how to protect your organization with Microsoft 365 Defender. You'll see how Microsoft 365 Defender can help you detect security risks, investigate attacks to your organization, and prevent harmful activities automatically.

[Check out the interactive guide](https://aka.ms/M365Defender-InteractiveGuide)

## Microsoft 365 Defender protection

Microsoft 365 Defender services protect:

- **Endpoints with Defender for Endpoint** - Defender for Endpoint is a unified endpoint platform for preventative protection, post-breach detection, automated investigation, and response.
- **Assets with Defender Vulnerability Management** - Microsoft Defender Vulnerability Management delivers continuous asset visibility, intelligent risk-based assessments, and built-in remediation tools to help your security and IT teams prioritize and address critical vulnerabilities and misconfigurations across your organization.
- **Email and collaboration with Defender for Office 365** - Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools.
- **Identities with  Defender for Identity and Azure Active Directory (Azure AD) Identity Protection** - Microsoft Defender for Identity is a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Azure AD Identity Protection uses the learnings Microsoft has acquired from their position in organizations with Azure AD, the consumer space with Microsoft Accounts, and in gaming with Xbox to protect your users.
- **Applications with Microsoft Defender for Cloud Apps** - Microsoft Defender for Cloud Apps is a comprehensive cross-SaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4Bzww]

Microsoft 365 Defender's unique cross-product layer augments the individual service components to:

- Help protect against attacks and coordinate defensive responses across the services through signal sharing and automated actions.
- Narrate the full story of the attack across product alerts, behaviors, and context for security teams by joining data on alerts, suspicious events and impacted assets to 'incidents'.
- Automate response to compromise by triggering self-healing for impacted assets through automated remediation.
- Enable security teams to perform detailed and effective threat hunting across endpoint and Office data.

Here's an example of how the Microsoft 365 Defender portal correlates all related alerts across products into a single incident.

:::image type="content" source="../../media/overview-incident.png" alt-text="The incident overview page" lightbox="../../media/overview-incident.png":::

Here's an example of the list of related alerts for an incident.

:::image type="content" source="../../media/incident-list.png" alt-text="The list of alerts for an incident" lightbox="../../media/incident-list.png":::

Here's an example of query-based hunting on top of email and endpoint raw data.

:::image type="content" source="../../media/advanced-hunting.png" alt-text=" The Advanced Hunting page with query details" lightbox="../../media/advanced-hunting.png":::

Microsoft 365 Defender cross-product features include:

- **Cross-product single pane of glass in the Microsoft 365 Defender portal** - A central view for all information on detections, impacted assets, automated actions taken, and related evidence in a single queue and a single pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. 
- **Combined incidents queue** - To help security professionals focus on what is critical by ensuring the full attack scope, impacted assets and automated remediation actions are grouped together and surfaced in a timely manner. 
- **Automatic response to threats** - Critical threat information is shared in real time between the Microsoft 365 Defender products to help stop the progression of an attack. 

   For example, if a malicious file is detected on an endpoint protected by Defender for Endpoint, it will instruct Defender for Office 365 to scan and remove the file from all e-mail messages. The file will be blocked on sight by the entire Microsoft 365 security suite.

- **Self-healing for compromised devices, user identities, and mailboxes** - Microsoft 365 Defender uses AI-powered automatic actions and playbooks to remediate impacted assets back to a secure state. Microsoft 365 Defender leverages automatic remediation capabilities of the suite products to ensure all impacted assets related to an incident are automatically remediated where possible.
- **Cross-product threat hunting** - Security teams can leverage their unique organizational knowledge to hunt for signs of compromise by creating their own custom queries over the raw data collected by the various protection products. Microsoft 365 Defender provides query-based access to 30 days of historic raw signals and alert data across endpoint and Defender for Office 365 data.

## Get started

Microsoft 365 Defender licensing requirements must be met before you can enable the service in the Microsoft 365 Defender portal at <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank"><https://security.microsoft.com></a> For more information, see:

- [Licensing requirements](prerequisites.md#licensing-requirements)
- [Turn on Microsoft 365 Defender](m365d-enable.md)


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
