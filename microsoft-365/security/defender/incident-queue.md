---
title: Prioritize incidents in Microsoft 365 Defender
description: Learn how to filter incidents from the incident queue in Microsoft 365 Defender
keywords: incident, queue, overview, devices, identities, users, mailbox, email, incidents
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

# Prioritize incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender



Microsoft 365 Defender applies correlation analytics and aggregates all related alerts and investigations from different products into one incident. Microsoft 365 Defender also triggers unique alerts on activities that can only be identified as malicious given the end-to-end visibility that Microsoft 365 Defender has across the entire estate and suite of products. This view gives your security operations analyst the broader attack story, which helps them better understand and deal with complex threats across the organization.


The **Incidents queue** shows a collection of incidents that were flagged from across devices, users, and mailboxes. It helps you sort through incidents to prioritize and create an informed cybersecurity response decision.


![Image of incidents queue](../../media/incidents-queue.png) 

By default, the queue in the Microsoft 365 security center displays incidents seen in the last 30 days. The most recent incident is at the top of the list so you can see it first.

The incident queue exposes customizable columns that give you visibility into different characteristics of the incident or the contained entities. This helps you make an informed decision regarding prioritization of incidents to handle.

For additional visibility at a glance, automatic incident naming generates incident names based on alert attributes such as the number of endpoints affected, users affected, detection sources, or categories. This allows you to quickly understand the scope of the incident.

For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

> [!NOTE]
> Incidents that existed prior the rollout of automatic incident naming will not have their name changed.

The incident queue also exposes multiple filtering options, that when applied, enable you to perform a broad sweep of all existing incidents in your environment, or decide to focus on a specific scenario or threat. Applying filters on the incident queue can help determine which incident requires immediate attention. 

## Available filters

### Assigned to
You can choose to show alerts that are assigned to you or those handled by automation.

### Categories
Choose categories to focus on specific tactics, techniques, or attack components seen. 

### Classification
Filter incidents based on the set classifications of the related alerts. The values include true alerts, false alerts, or not set.

### Data sensitivity
Some attacks focus on targeting to exfiltrate sensitive or valuable data. By applying a filter to see if sensitive data is involved in the incident, you can quickly determine if sensitive information has potentially been compromised and prioritize addressing those incidents.

>[!NOTE]
>Only applicable if Microsoft Information Protection is turned on.

### Device group
Filter by defined device groups.

### Investigation state
Filter incidents by the status of automated investigation. 

### Multiple categories 
You can choose to see only incidents that have mapped to multiple categories  and can thus potentially cause more damage. 

### Multiple service sources 
Filter to only see incidents that contain alerts from different sources (Microsoft Defender for Endpoint, Microsoft Cloud App Security, Microsoft Defender for Identity, Microsoft Defender for Office 365).

### OS platform
Limit the incident queue view by operating system.

### Service sources
By choosing a specific source, you can focus on incidents that contain at least one alert from that chosen source. 

### Severity
The severity of an incident is indicative of the impact it can have on your assets. The higher the severity, the bigger the impact and typically requires the most immediate attention. 

### Status
You can choose to limit the list of incidents shown based on their status to see which ones are active or resolved.




## Next steps
After you've determined which incident requires the highest priority, you can proceed to do further investigative work on an incident.
- [Investigate incidents](investigate-incidents.md)


## See also
- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
