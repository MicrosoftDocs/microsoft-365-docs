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
ms.date: 08/21/2023
---

# Responding to your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

This guide lists Microsoft resources for new Microsoft 365 Defender users to confidently perform [day-to-day incident response tasks](integrate-microsoft-365-defender-secops-services.md) while using the portal. The intended results of using this guide are:

- You'll quickly learn to use Microsoft 365 Defender to respond to incidents and alerts.
- You’ll discover the portal's features to aid incident investigation and remediation through the videos and tutorials.

Microsoft 365 Defender enables you to see relevant threat events across all assets (devices, identities, mailboxes, cloud apps, and more). The portal consolidates signals from the [Defender protection suite](microsoft-365-defender.md#microsoft-365-defender-protection), [Microsoft Sentinel](microsoft-365-defender-integration-with-azure-sentinel.md), and other [integrated security information and event management (SIEM) solutions](configure-siem-defender.md). Correlated attack information with full context in a single pane of glass enables you to successfully defend and protect your organization.

This guide has three main sections:

- Understanding incidents: accessing, triaging, and managing incidents within the portal
- [Analyzing attacks](respond-first-incident-analyze.md): a collection of videos and tutorials on how to investigate specific attacks using the portal's features.
- [Remediating attacks](respond-first-incident-remediate.md): lists the automated and manual actions that are available within the portal to remediate threats. This section includes links to videos and tutorials.

## Understanding incidents

An [incident](incidents-overview.md) is a chain of processes created, commands, and actions that might not have coincided. An incident provides a holistic picture and context of suspicious or malicious activity. A single incident gives you an attack’s complete context instead of triaging hundreds of alerts from multiple services. 

Microsoft 365 Defender has many features that you can use to respond to an incident. You can navigate the incidents by selecting **View all incidents** in the Active incidents card on the Home page or through **Incidents & alerts** on the left navigation pane.

:::image type="content" source="../../media/first-incident/m365d-viewincidents-home.png" alt-text="View all incidents shown in Microsoft 365 Defender home page" lightbox="../../media/first-incident/m365d-viewincidents-home.png":::
*Figure 1. Active incidents card on the Microsoft 365 Defender home page*

:::image type="content" source="../../media/first-incident/m365d-incidents.png" alt-text="Incident queue in Microsoft 365 Defender" lightbox="../../media/first-incident/m365d-incidents.png":::
*Figure 2. Incident queue*

Each incident contains automatically correlated [alerts](investigate-alerts.md) from [different detection sources](microsoft-365-defender.md#microsoft-365-defender-protection) and might involve various endpoints, identities, or cloud apps.

## Incident triage

Incident prioritization varies per responder, security team, and organization. [Incident response plans](/security/operations/incident-response-planning) and security teams' direction can mandate incident priority. 

Microsoft 365 Defender has various indicators like incident severity, types of users, or threat types to triage and prioritize incidents. You can use any combination of these indicators readily available through the [incident queue](incident-queue.md) filters.

An example of determining incident priority is combining the following factors for an incident:

- The incident has a high severity.
- The automation investigation state failed.
- There are 5 impacted assets where two of the assets are tagged with highly confidential data sensitivity.
- The incident status is new.
- The incident is unassigned to any team member for investigation.

You might assign a high priority to the incident using the information above. You can begin your incident investigation once a priority is determined.

> [!NOTE]
> Microsoft 365 Defender automatically determines filters like severity, investigation states, impacted assets, and incident statuses. The information is based on your organization’s network activities contextualized with threat intelligence feeds and the automated remediation actions applied.

## Manage incidents

You can contribute to [incident management](manage-incidents.md) efficiency by providing essential information in incidents and alerts. When you add information to the following filters from when you triage and analyze each incident, you provide further context to that incident that other responders can take advantage of:

- [Classifying incidents and alerts](manage-incidents.md#specify-the-classification)
- Naming incidents
- Adding tags
- Providing comments

Learn how to classify incidents and alerts through this video:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4LHJq]


## Next steps

-	[Analyze your first incident](respond-first-incident-analyze.md)
- [Remediate your first incident](respond-first-incident-remediate.md)
- Watch demos and the portal's new developments in action in the [Microsoft 365 Defender Virtual Ninja Training](https://adoption.microsoft.com/en-us/ninja-show/)

## See also

- [Integrate Microsoft 365 Defender into your security operations](integrate-microsoft-365-defender-secops-plan.md)
- [Respond to common attacks using incident response playbooks](/security/operations/incident-response-playbooks)
- Learn the portal's features and functions through the [Microsoft 365 Defender Ninja training](https://techcommunity.microsoft.com/t5/microsoft-365-defender/become-a-microsoft-365-defender-ninja/ba-p/1789376)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
