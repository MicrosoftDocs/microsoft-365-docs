---
title: Alert classification playbooks
description: Review the alerts for well-known attacks and take recommended actions to remediate the attack and protect your network.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, alert classification, alert grading, classify alert
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
- tier2
ms.topic: how-to
ms.custom:
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
ms.date: 04/03/2023
---

# Alert classification playbooks

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Alert classification playbooks allow you to methodically review and quickly classify the alerts for well-known attacks and take recommended actions to remediate the attack and protect your network. Alert classification will also help in properly classifying the overall incident.

As a security researcher or security operations center (SOC) analyst, you must have access to the Microsoft 365 Defender portal so that you can:

- Assess and review the generated alerts and associated incidents. See [investigate alerts](investigate-alerts.md).
- Search your tenant's security signal data and check for potential threats and suspicious activities. See [advanced hunting](advanced-hunting-overview.md).

> [!NOTE]
> You can provide feedback to Microsoft about true positive and false positives alerts, not only at the end of the investigation, but also during the investigation process. This can help Microsoft with future analysis and classification of security events.

## Microsoft Defender for Office 365

[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365) safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. Defender for Office 365 includes:

- Threat protection policies

   Define threat-protection policies to set the appropriate level of protection for your organization.

- Reports

  View real-time reports to monitor Defender for Office 365 performance in your organization.

- Threat investigation and response capabilities

  Use leading-edge tools to investigate, understand, simulate, and prevent threats.

- Automated investigation and response capabilities

  Save time and effort investigating and mitigating threats.

Defender for Office 365 alerts can be classified as:

- True positive (TP) for confirmed malicious activity.
- False positive (FP) for confirmed non-malicious activity.

> [!NOTE]
> Microsoft 365 Defender portal [https://security.microsoft.com](https://security.microsoft.com) brings together functionality from existing Microsoft security portals. The Microsoft 365 Defender portal emphasizes quick access to information, simpler layouts, and bringing related information together for easier use.

## Microsoft Defender for Cloud Apps

[Microsoft Defender for Cloud Apps](/defender-cloud-apps) is a Cloud Access Security Broker (CASB) that supports various deployment modes including log collection, API connectors, and reverse proxy. It provides rich visibility, control over data travel, and sophisticated analytics to identify and combat cyberthreats across all your Microsoft and third-party cloud services.

Defender for Cloud Apps natively integrates with leading Microsoft solutions and is designed with security professionals in mind. It provides simple deployment, centralized management, and innovative automation capabilities.

The Defender for Cloud Apps framework includes the capability to protect your network against cyberthreats and anomalies, detects unusual behavior across cloud apps to identify ransomware, compromised users or rogue applications. It enables the analysis of high-risk usage and can remediate automatically to limit the risk to your organization.

Defender for Cloud Apps alerts can be classified as:

- TP for confirmed malicious activity.
- Benign true positive (B-TP) for suspicious but not malicious activity, such as a penetration test or other authorized suspicious action.
- FP for confirmed non-malicious activity.

## Alert classification playbooks

See these playbooks for steps to more quickly classify alerts for the following threats:

- [Suspicious email forwarding activity](alert-grading-playbook-email-forwarding.md)
- [Suspicious inbox manipulation rules](alert-grading-playbook-inbox-manipulation-rules.md)
- [Suspicious inbox forwarding rules](alert-grading-playbook-inbox-forwarding-rules.md)
- [Suspicious IP addresses related to password spray activity](alert-grading-password-spray.md)
- [Password spray attacks](alert-grading-password-spray-attack.md)

See [Investigate alerts](investigate-alerts.md) for information on how to examine alerts with the Microsoft 365 Defender portal.
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
