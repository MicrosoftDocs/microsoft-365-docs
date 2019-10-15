---
title: Prioritize incidents in Microsoft Threat Protection
description: Learn how to prioritize incidents from the incident queue in Microsoft Threat Protection
keywords: incident, queue, overview, devices, identities, mailbox, email, incidents
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Prioritize incidents in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

Microsoft Threat Protection applies correlation analytics and aggregates all related alerts and investigations from different products into one "incident" entity. By doing so, Microsoft Threat Protection narrates the broader attack story, allowing a security operations analyst to understand and deal with complex threats across the organization.


The **Incidents queue** shows a collection of incidents that were flagged from across devices, identities, and mailboxes. It helps you sort through incidents to prioritize and create an informed cybersecurity response decision.

![Image of incidents queue](../images/incidents-queue.png)

By default, the queue in Microsoft 365 security center displays incidents seen in the last 30 days, with the most recent incident showing at the top of the list, helping you see the most recent incidents first.

Typically, security operation teams start investigations by determining the priority of incidents based on the severity of incidents.

You can apply filters on the incident queue to help determine which incident requires immediate attention. 

## Filter by severity
The severity of an incident is indicative of the impact it can have in your assets. The higher the severity the bigger the impact and typically requires the most immediate attention. 

Incident severity | Description
:---|:---
High </br>(Red) | Threats often associated with advanced persistent threats (APT). These incidents indicate a high risk due to the severity of damage they can inflict on entities.
Medium </br>(Orange) | Threats rarely observed in the organization, such as anomalous registry change, execution of suspicious files, and observed behaviors typical of attack stages.
Low </br>(Yellow) | Threats associated with prevalent malware and hack-tools that do not necessarily indicate an advanced threat targeting the organization.
Informational </br>(Grey) | Informational incidents are those that might not be considered harmful to the network but might be good to keep track of.

## Filter by owner
You can choose to filter the list by selecting assigned to anyone or ones that are assigned to you.

## Filter by status
You can choose to limit the list of incidents shown based on their status to see which ones are active or resolved.

## Filter by data sensitivity
Some attacks focus on targeting to exfiltrate sensitive or valauble data. By applying a filter to see if sensitive data is involved in the incident, you can quickly determine if sensitive information has potentially been compromised and prioritize addressing those incidents.


## Next steps
After you've determined which incident requires the highest priority, you can proceed to do further investigative work on an incident.
- [Investigate incidents](investigate-incidents.md)


## Related topics
- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)