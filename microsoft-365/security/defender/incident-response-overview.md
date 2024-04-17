---
title: Investigate and respond with Microsoft Defender XDR
description: Investigate and respond to incidents with the capabilities of Microsoft Defender XDR.
ms.service: defender-xdr
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
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 08/11/2023
---

# Investigate and respond with Microsoft Defender XDR

Here are the primary investigate and respond tasks for Microsoft Defender XDR:

- [Respond to incidents](#incident-response)
- [Review and approve automatic remediation actions](#automated-investigation-and-remediation)
- [Search for known threats in your data](#proactive-search-for-threats-with-advanced-hunting)
- [Understand the latest cyberattacks](#get-ahead-of-emerging-threats-with-threat-analytics)

## Incident response

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant. Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft Defender XDR automatically aggregates the alerts and their associated information into an incident.

On an ongoing basis, you need to identify the highest priority incidents for analysis and resolution in the incident queue and get them ready for response. This is a combination of:

- [Prioritizing](incident-queue.md) to determining the highest priority incidents through filtering and sorting of the incident queue. This is also known as triaging.
- [Managing](manage-incidents.md) incidents by modifying their title, assigning them to an analyst, adding tags and comments, and when resolved, classifying them.

For each incident, use your incident response workflow to analyze the incident and its alerts and data to contain the attack, eradicate the threat, recover from the attack, and learn from it. See [this example](incidents-overview.md#example-incident-response-workflow-for-microsoft-365-defender) for Microsoft Defender XDR.

## Automated investigation and remediation

If your organization is using Microsoft Defender XDR, your security operations team receives an alert within the Microsoft Defender portal whenever a malicious or suspicious activity or artifact is detected. Given the never-ending flow of threats that can come in, security teams often face the challenge of addressing the high volume of alerts. Fortunately, Microsoft Defender XDR includes automated investigation and response (AIR) capabilities that can help your security operations team address threats more efficiently and effectively.

When an automated investigation completes, a verdict is reached for every piece of evidence of an incident. Depending on the verdict, remediation actions are identified. In some cases, remediation actions are taken automatically; in other cases, remediation actions await approval through the Microsoft Defender XDR Action center.

For more information, see [Automated investigation and response in Microsoft Defender XDR](m365d-autoir.md).

## Proactive search for threats with advanced hunting

It's not enough to respond to attacks as they occur. For extended, multi-phase attacks such as ransomware, you must proactively search for the evidence of an attack in progress and take action to stop it before it completes.

Advanced hunting is a query-based threat hunting tool in Microsoft Defender XDR that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. This flexible access to the Microsoft Defender XDR data enables unconstrained hunting for both known and potential threats.

You can use the same threat hunting queries to build custom detection rules. These rules run automatically to check for and then respond to suspected breach activity, misconfigured machines, and other findings.

See [Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](advanced-hunting-overview.md) for more information.

## Get ahead of emerging threats with threat analytics

Threat analytics is a threat intelligence capability in Microsoft Defender XDR designed to assist your security team to be as efficient as possible while facing emerging threats. It includes detailed analysis and information on:

- Active [threat actors](/microsoft-365/security/intelligence/microsoft-threat-actor-naming) and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Threat analytics also includes information on related incidents and impacted assets within your Microsoft 365 tenant for each identified threat.

Each identified threat includes an analyst report, a comprehensive analysis of the threat written by Microsoft security researchers who are at the forefront of cybersecurity detection and analysis. These reports can also provide information on how the attacks appear in Microsoft Defender XDR.

For more information, see [Threat analytics in Microsoft Defender XDR](threat-analytics.md).

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
