---
title: Incidents in Microsoft 365 Defender
description: Investigate incidents seen across devices, users, and mailboxes in the Microsoft 365 security center.
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
localization_priority: Normal
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

# Incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](m365d-evaluation.md?ocid=cx-docs-MTPtriallab) or [run your pilot project in production](m365d-pilot.md?ocid=cx-evalpilot).
>

An incident in Microsoft 365 Defender is a collection of correlated alerts and associated data that make up the story of an attack. 

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant. 

Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an incident.

:::image type="content" source="../../media/incidents-overview/incidents.png" alt-text="How Microsoft 365 Defender correlates events from entities into an incident":::

Watch this short overview of incidents in Microsoft 365 Defender (4 minutes).

<br>

>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Bzwz?]

Grouping related alerts into an incident gives you a comprehensive view of an attack. For example, you can see:

- Where the attack started.
- What tactics were used.
- How far the attack has gone into your tenant.
- The scope of the attack, such as how many devices, users, and mailboxes were impacted. 
- All of the data associated with the attack.

If [enabled](m365d-enable.md), Microsoft 365 Defender can [automatically investigate and resolve](m365d-autoir.md) alerts through automation and artificial intelligence. You can also perform additional remediation steps to resolve the attack. 

## Incidents and alerts in the Microsoft 365 security center

You manage incidents from **Incidents & alerts > Incidents** on the quick launch of the Microsoft 365 security center ([security.microsoft.com](https://security.microsoft.com)). Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="The Incidents page in the Microsoft 365 security center":::

Selecting an incident name displays a summary of the incident and provides access to tabs with additional information.

:::image type="content" source="../../media/incidents-overview/incidents-ss-incident-summary.png" alt-text="Example of the Summary page for an incident in the Microsoft 365 security center":::

The additional tabs for an incident are:

- Alerts 

  All the alerts related to the incident and their information.

- Devices

  All the devices that have been identified to be part of or related to the incident.

- Users

  All the users that have been identified to be part of or related to the incident.

- Mailboxes

  All the mailboxes that have been identified to be part of or related to the incident.

- Investigations

  All the automated investigations triggered by alerts in the incident.

- Evidence and Response

  All the supported events and suspicious entities in the alerts in the incident.

- Graph (in preview)

  A figure showing the connection of alerts to the impacted assets in your organization.

Here's the relationship between an incident and its data and the tabs of an incident in the Microsoft 365 security center.

:::image type="content" source="../../media/incidents-overview/incidents-security-center.png" alt-text="The relationship of an incident and its data to the tabs of an incident in the Microsoft 365 security center":::

## Example incident response workflow for Microsoft 365 Defender

Here's an example workflow for responding to incidents in Microsoft 365 with the Microsoft 365 security center.

:::image type="content" source="../../media/incidents-overview/incidents-example-workflow.png" alt-text="Example of an incident response workflow for Microsoft 365":::

On an ongoing basis, identify the highest priority incidents for analysis and resolution in the incident queue and get them ready for response. This is a combination of:

- [Triaging](incident-queue.md) to determining the highest priority incidents through filtering and sorting of the incident queue.
- [Managing](manage-incidents.md) incidents by modifying their title, assigning them to an analyst, and adding tags and comments.

1. For each incident, begin an [attack and alert investigation and analysis](investigate-incidents.md):
 
   a. View the summary of the incident to understand it's scope and severity and what entities are affected (the **Summary** tab).

   b. Begin analyzing the alerts to understand their origin, scope, and severity (the **Alerts** tab).

   c. As needed, gather information on impacted devices, users, and mailboxes (the **Devices**, **Users**, and **Mailboxes** tabs).

   d. See how Microsoft 365 Defender has automatically resolved some alerts (the **Investigations** tab).
   
   e. As needed, use information in the data set for the incident for more information (the **Evidence and Response** tab).

2. After or during your analysis, perform containment to reduce any additional impact of the attack and eradication of the security threat.

3. As much as possible, recover from the attack by restoring your tenant resources to the state they were in before the incident.

4. [Resolve](manage-incidents.md#resolve-incident) the incident and take time for post-incident learning to:

   - Understand the type of the attack and its impact.
   - Research the attack in [Threat Analytics](threat-analytics.md) and the security community for a security attack trend.
   - Recall the workflow you used to resolve the incident and update your standard workflows, processes, policies, and playbooks as needed.
   - Determine whether changes in your security configuration are needed and implement them.

If you are new to security analysis, see the [introduction to responding to your first incident](incidents-overview.md) for additional information and to step through an example incident.

## Example security operations for Microsoft 365 Defender

Here's an example of security operations for Microsoft 365 Defender.

:::image type="content" source="../../media/incidents-overview/incidents-example-operations.png" alt-text="An example of security operations for Micosoft 365 Defender":::

Daily tasks can include:

- [Managing](manage-incidents.md) incidents
- Reviewing [automated investigation and response (AIR)](m365d-action-center.md) actions
- Reviewing the latest [Threat Analytics](threat-analytics.md)
- [Responding](investigate-incidents.md) to incidents

Monthly tasks can include:

- Reviewing [AIR settings](m365d-configure-auto-investigation-response.md)
- Reviewing [Secure Score](microsoft-secure-score-improvement-actions.md) and [Threat & Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)
- Reporting to your IT security management chain

Quarterly tasks can include a report and briefing of security results to the Chief Information Security Officer (CISO).

Annual tasks can include conducting a major incident or breach exercise to test your staff, systems, and processes. 

Daily, monthly, quarterly, and annual tasks can be used to update or refine processes, policies, and security configurations.

## Next steps

**If you are new** to security analysis and incident response:

- See the [Respond to your first incident walkthrough](first-incident-overview.md) to get a guided tour of a typical process of analysis, remediation, and post-incident review in the Microsoft 365 security center with an example of an attack.

**If you have experience** with security analysis and incident response:

- Get started with the incident queue from the **Incidents** page of the Microsoft 365 security center. From here, you can:

  - See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. 

  - [Manage incidents](manage-incidents.md), which includes renaming, assignment, classifying, and adding tags and comments based on your incident management workflow.

  - Perform [investigations](investigate-incidents.md) of incidents.

- See these [incident response playbooks](https://docs.microsoft.com/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks.

