---
title: What is Microsoft Defender XDR?
description: Microsoft Defender XDR is a coordinated threat protection solution designed to protect devices, identity, data and applications
keywords: introduction to MMicrosoft Defender XDR, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
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

# What is Microsoft Defender XDR?

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

Microsoft Defender XDR is a unified pre- and post-breach enterprise defense suite that natively coordinates detection, prevention, investigation, and response across endpoints, identities, email, and applications to provide integrated protection against sophisticated attacks.

Here's a list of the different Microsoft Defender XDR products and solutions that Microsoft Defender XDR coordinates with:

- [**Microsoft Defender for Endpoint**](../defender-endpoint/microsoft-defender-endpoint.md)
- [**Microsoft Defender for Office 365**](../office-365-security/mdo-security-comparison.md)
- [**Microsoft Defender for Identity**](/defender-for-identity/what-is)
- [**Microsoft Defender for Cloud Apps**](/defender-cloud-apps/what-is-defender-for-cloud-apps)
- [**Microsoft Defender Vulnerability Management**](../defender-vulnerability-management/defender-vulnerability-management.md)
- [**Microsoft Entra ID Protection**](/azure/active-directory/identity-protection/overview-identity-protection)
- [**Microsoft Data Loss Prevention**](/microsoft-365/compliance/dlp-learn-about-dlp)
- [**App Governance**](/defender-cloud-apps/app-governance-manage-app-governance)

Note that the coordination of alerts from Microsoft Entra ID Protection (Microsoft Entra IP) to Microsoft Defender XDR is in public preview and may be substantially modified before it's commercially released. Microsoft Entra IP is available to customers only if they already have Microsoft Defender XDR. 

With the integrated Microsoft Defender XDR solution, security professionals can stitch together the threat signals that each of these products receive and determine the full scope and impact of the threat; how it entered the environment, what it's affected, and how it's currently impacting the organization. Microsoft Defender XDR takes automatic action to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities.

<a name='microsoft-365-defender-interactive-guide'></a>

## Microsoft Defender XDR interactive guide

In this interactive guide, you'll learn how to protect your organization with Microsoft Defender XDR. You'll see how Microsoft Defender XDR can help you detect security risks, investigate attacks to your organization, and prevent harmful activities automatically.

[Check out the interactive guide](https://aka.ms/M365Defender-InteractiveGuide)

<a name='microsoft-365-defender-protection'></a>

## Microsoft Defender XDR protection

Microsoft Defender XDR services protect:

- **Endpoints with Defender for Endpoint** - Defender for Endpoint is a unified endpoint platform for preventative protection, post-breach detection, automated investigation, and response.
- **Assets with Defender Vulnerability Management** - Microsoft Defender Vulnerability Management delivers continuous asset visibility, intelligent risk-based assessments, and built-in remediation tools to help your security and IT teams prioritize and address critical vulnerabilities and misconfigurations across your organization.
- **Email and collaboration with Defender for Office 365** - Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools.
- **Identities with  Defender for Identity and Microsoft Entra ID Protection** - Microsoft Defender for Identity is a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Microsoft Entra ID Protection uses the learnings Microsoft has acquired from their position in organizations with Microsoft Entra ID, the consumer space with Microsoft Accounts, and in gaming with Xbox to protect your users.
- **Applications with Microsoft Defender for Cloud Apps** - Microsoft Defender for Cloud Apps is a comprehensive cross-SaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4Bzww]

Microsoft Defender XDR's unique cross-product layer augments the individual service components to:

- Help protect against attacks and coordinate defensive responses across the services through signal sharing and automated actions.
- Narrate the full story of the attack across product alerts, behaviors, and context for security teams by joining data on alerts, suspicious events and impacted assets to 'incidents'.
- Automate response to compromise by triggering self-healing for impacted assets through automated remediation.
- Enable security teams to perform detailed and effective threat hunting across endpoint and Office data.

Here's an example of how the Microsoft Defender portal correlates all related alerts across products into a single incident.

:::image type="content" source="../../media/overview-incident.png" alt-text="The incident overview page" lightbox="../../media/overview-incident.png":::

Here's an example of the list of related alerts for an incident.

:::image type="content" source="../../media/incident-list.png" alt-text="The list of alerts for an incident" lightbox="../../media/incident-list.png":::

Here's an example of query-based hunting on top of email and endpoint raw data.

:::image type="content" source="../../media/advanced-hunting.png" alt-text=" The Advanced Hunting page with query details" lightbox="../../media/advanced-hunting.png":::

Microsoft Defender XDR cross-product features include:

- **Cross-product single pane of glass in the Microsoft Defender portal** - A central view for all information on detections, impacted assets, automated actions taken, and related evidence in a single queue and a single pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender portal</a>. 
- **Combined incidents queue** - To help security professionals focus on what is critical by ensuring the full attack scope, impacted assets and automated remediation actions are grouped together and surfaced in a timely manner. 
- **Automatic response to threats** - Critical threat information is shared in real time between the Microsoft Defender XDR products to help stop the progression of an attack. 

   For example, if a malicious file is detected on an endpoint protected by Defender for Endpoint, it will instruct Defender for Office 365 to scan and remove the file from all e-mail messages. The file will be blocked on sight by the entire Microsoft 365 security suite.

- **Self-healing for compromised devices, user identities, and mailboxes** - Microsoft Defender XDR uses AI-powered automatic actions and playbooks to remediate impacted assets back to a secure state. Microsoft Defender XDR leverages automatic remediation capabilities of the suite products to ensure all impacted assets related to an incident are automatically remediated where possible.
- **Cross-product threat hunting** - Security teams can leverage their unique organizational knowledge to hunt for signs of compromise by creating their own custom queries over the raw data collected by the various protection products. Microsoft Defender XDR provides query-based access to 30 days of historic raw signals and alert data across endpoint and Defender for Office 365 data.

## Get started

Microsoft Defender XDR licensing requirements must be met before you can enable the service in the Microsoft Defender portal at <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank"><https://security.microsoft.com></a> For more information, see:

- [Licensing requirements](prerequisites.md#licensing-requirements)
- [Turn on Microsoft Defender XDR](m365d-enable.md)


[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
