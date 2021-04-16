---
title: Incidents in Microsoft 365 Defender
description: Investigate incidents seen across devices, users, and mailboxes.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
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

If [enabled](m365d-enable.md), Microsoft 365 Defender can automatically investigate and resolve alerts through automation and artificial intelligence. You can also perform additional remediation steps to resolve the attack. 

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

Here's the relationship between an incident and its data and the tabs of an incident in the Microsoft 365 security center.

:::image type="content" source="../../media/incidents-overview/incidents-security-center.png" alt-text="The relationship of an incident and its data to the tabs of an incident in the Microsoft 365 security center":::

## Next step

The incident queue from the **Incidents** page lists the most recent incidents. From here, you can:

- See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. 
- Perform an [investigation](investigate-incidents.md) of an incident.
- [Manage incidents](manage-incidents.md), which includes renaming, assigning them, classifying, and adding tags for your incident management workflow.
