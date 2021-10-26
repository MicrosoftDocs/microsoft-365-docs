---
title: Investigate and respond with Microsoft 365 Defender overview
description: Investigate and respond to incidents with the capabilities of Microsoft 365 Defender.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Investigate and respond with Microsoft 365 Defender overview

Here are the main investigate and respond tasks for Microsoft 365 Defender:

- Responding to incidents
- Reviewing and approving automatic remediation actions
- Searching for known threats in your data
- Understanding the latest cyber-attacks
- Getting help

## Incident response

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant. Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an incident.

On an ongoing basis, identify the highest priority incidents for analysis and resolution in the incident queue and get them ready for response. This is a combination of:

- [Triaging](incident-queue.md) to determining the highest priority incidents through filtering and sorting of the incident queue.
- [Managing](manage-incidents.md) incidents by modifying their title, assigning them to an analyst, and adding tags and comments.

1. For each incident, begin an [attack and alert investigation and analysis](investigate-incidents.md):
 
   1. View the summary of the incident to understand it's scope and severity and what entities are affected with the **Summary** and **Graph** (Preview) tabs.

   1. Begin analyzing the alerts to understand their origin, scope, and severity with the **Alerts** tab.

   1. As needed, gather information on impacted devices, users, and mailboxes with the **Devices**, **Users**, and **Mailboxes** tabs.

   1. See how Microsoft 365 Defender has [automatically resolved some alerts](m365d-autoir.md) with the **Investigations** tab.
   
   1. As needed, use information in the data set for the incident for more information with the **Evidence and Response** tab.

2. After or during your analysis, perform containment to reduce any additional impact of the attack and eradication of the security threat.

3. As much as possible, recover from the attack by restoring your tenant resources to the state they were in before the incident.

4. [Resolve](manage-incidents.md#resolve-an-incident) the incident and take time for post-incident learning to:

   - Understand the type of the attack and its impact.
   - Research the attack in [Threat Analytics](threat-analytics.md) and the security community for a security attack trend.
   - Recall the workflow you used to resolve the incident and update your standard workflows, processes, policies, and playbooks as needed.
   - Determine whether changes in your security configuration are needed and implement them.

## Automated investigation and remediation

If your organization is using Microsoft 365 Defender, your security operations team receives an alert within the Microsoft 365 Defender portal whenever a malicious or suspicious activity or artifact is detected. Given the never-ending flow of threats that can come in, security teams often face the challenge of addressing the high volume of alerts. Fortunately, Microsoft 365 Defender includes automated investigation and response (AIR) capabilities that can help your security operations team address threats more efficiently and effectively.

When an automated investigation completes, a verdict is reached for every piece of evidence for an incident involved. Depending on the verdict, remediation actions are identified. In some cases, remediation actions are taken automatically; in other cases, remediation actions await approval through the Microsoft 365 Defender Action center. 

See [Automated investigation and response in Microsoft 365 Defender](m365d-autoir.md) for more information.

## Proactive search for threats with advanced hunting

It is not enough to respond to attacks as they occur. For extended, multi-phase attacks such as ransomware, you must proactively search for the evidence of an attack in progress and take action to stop it before it completes.

Advanced hunting is a query-based threat hunting tool in Microsoft 365 Defender that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. This flexible access to the Microsoft 365 Defender data enables unconstrained hunting for both known and potential threats.

You can use the same threat hunting queries to build custom detection rules. These rules run automatically to check for and then respond to suspected breach activity, misconfigured machines, and other findings.

See [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md) for more information.

## Get ahead of emerging threats with threat analytics

Threat analytics is a threat intelligence capability in Microsoft 365 Defender designed to assist your security team to be as efficient as possible while facing emerging threats. It includes detailed analysis and information on:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Threat analytics also includes information on related incidents and impacted assets within your Microsoft 365 tenant for each identified threat.

Each identified threat includes an analyst report, a comprehensive analysis of the threat written by Microsoft security researchers who are at the forefront of cybersecurity detection and analysis and can provide information on how the attacks appear in Microsoft 365 Defender.

For more information, see [Threat analytics in Microsoft 365 Defender](threat-analytics.md).

## Collaborate with Microsoft experts

Microsoft Threat Experts - Targeted Attack Notifications is a managed threat hunting service. Once you apply and are accepted, you'll receive targeted attack notifications from Microsoft threat experts, so you won't miss critical threats to your environment. These notifications will help you protect your organization's endpoints, email, and identities. Microsoft Threat Experts – Experts on Demand lets you get expert advice about threats your organization is facing and you can reach out for help on threats your organization is facing. It's available as an additional subscription service.

For more information, see [Microsoft Threat Experts in Microsoft 365 overview](microsoft-threat-experts.md).
