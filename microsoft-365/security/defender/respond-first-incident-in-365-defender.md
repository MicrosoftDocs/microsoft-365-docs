---
title: Responding to your first incident in Microsoft 365 Defender
description: The basics of responding to your first incident in Microsoft 365 Defender.
keywords: incidents, alerts, investigate, correlation, attack, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, self-study, ramp up, ramp-up, onboard, incident responder
search.product: eADQiWindows 10XVcnh
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
  - m365solution-firstincident
  - highpri
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 08/03/2023
---

# Responding to your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

If you're new to using Microsoft 365 Defender, this guide outlines what you need to do and points you to other Microsoft resources to help you confidently perform your [day-to-day incident response tasks](integrate-microsoft-365-defender-secops-services.md). The intended results of using this guide are:

- You'll quickly learn to use Microsoft 365 Defender to respond to incidents and alerts.
- You’ll discover the portal's features to aid incident investigation and remediation through the videos and tutorials.

Microsoft 365 Defender enables you to see relevant threat events across all assets (devices, identities, mailboxes, cloud apps, and more). Consolidated signals from the [Microsoft Defender protection stack](microsoft-365-defender#microsoft-365-defender-protection), [Microsoft Sentinel](microsoft-365-defender-integration-with-azure-sentinel.md), and other [integrated security information and event management (SIEM) solutions](configure-siem-defender.md) allows you to view correlated attack information with full context in one portal, which is critical for successful defense and protection defend your network.

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]

This guide has three main sections:

- Understanding incidents - accessing, triaging, and managing incidents within the portal
- Analyzing attacks - a collection of videos and tutorials on how to investigate specific attacks using the portal's features. 
- Remediating attacks - lists the automated and manual actions to remediate threats. This section includes links to videos and tutorials.

## Start with the Incidents page

Microsoft 365 Defender has many features that you can use to respond to an incident. You can navigate the incidents by selecting **View all incidents** in the Active incidents card on the Home page or through **Incidents & alerts** on the left navigation pane.

**insert two images here**

Each incident contains automatically correlated alerts from different detection sources and might involve various endpoints, identities, or cloud apps. An incident provides a holistic picture and context of suspicious or malicious activity. A single incident gives you an attack’s complete context instead of triaging hundreds of alerts from multiple services.

### Triaging incidents

Incident prioritization varies per responder, security team, and organization. Incident response plans and security teams’ direction can mandate incident priority. Microsoft 365 Defender has various indicators like incident severity, types of users, or threat types to triage and prioritize incidents. You can use any combination of these indicators readily available through the incident queue **filters**.

An example of determining incident priority is combining the information on the following filters:

- High *severity*
- Failed *automation investigation state*
- High *number of impacted assets* 
- *Data sensitivity* is highly confidential
- New *incident status*
- Incident assignment is *unassigned* to any security team member

Filters like severity, investigation states, impacted assets, and incident statuses are automatically determined by Microsoft 365 Defender based on information within your organization’s network, with the additional context of important threat intelligence feeds and the automated remediation actions applied.

### Managing incidents

Individual incident responders contribute to incident management efficiency by providing essential information in incidents and alerts. The following input from when you triage and analyze each incident helps to add further context that other responders can take advantage of:

- Classifying incidents and alerts
- Naming incidents
- Adding tags
- Providing comments

Learn how to classify incidents and alerts through this video:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RE4LHJq>]

You can begin your incident investigation once a priority is determined.

## Next steps
-	Analyze an incident
- Remediate an incident
- Learn Microsoft 365 Defender's features and functions through the Ninja training

## See also
- Integrate Microsoft 365 Defender into your security operations
