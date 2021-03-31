---
title: Manage incidents in Microsoft 365 Defender
description: Learn how to assign, update the status,
keywords: incident, incidents, alerts, correlated alerts, assign, update, status, manage, classification, microsoft, 365, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
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

# Manage incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender



Managing incidents is critical in ensuring that threats are contained and addressed. In Microsoft 365 Defender, you have access to managing incidents on devices, users, and mailboxes. 


You can manage incidents by selecting an incident from the **Incidents queue**. 

You can edit the name of an incident, resolve it, set its classification and determination. You can also assign the incident to yourself, add incident tags and comments.

In cases where while investigating you would like to move alerts from one incident to another you can also do so from the Alerts tab, thus creating a larger or smaller incident that include all relevant alerts.

## Edit incident name
Incidents are automatically assigned a name based on alert attributes such as the number of endpoints affected, users affected, detection sources or categories. This allows you to quickly understand the scope of the incident.

For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

You can modify the incident name to better align with your preferred naming convention.

> [!NOTE]
> Incidents that existed prior the rollout of the automatic incident naming feature will retain their name.



## Assign incidents
If an incident has not yet been assigned, you can select **Assign to me** to assign the incident to yourself. Doing so assumes ownership of not just the incident, but also all the alerts associated with it.

## Set status and classification
### Incident status
You can categorize incidents (as **Active**, or **Resolved**) by changing their status as your investigation progresses. This helps you organize and manage how your team can respond to incidents.

For example, your SOC analyst can review the urgent **Active** incidents for the day, and decide to assign them to herself for investigation.

Alternatively, your SOC analyst might set the incident as **Resolved** if the incident has been remediated. Resolving an incident will automatically close all alerts that are part of the incident and still open. 

### Classification and determination
You can choose not to set a classification, or decide to specify whether an incident is true or false. Doing so helps the team see patterns and learn from them. 

## Add comments
You can add comments and view historical events about an incident to see previous changes made to it.

Whenever a change or comment is made to an alert, it is recorded in the Comments and history section.

Added comments instantly appear on the pane.

## Add incident tags
You can add custom tags to an incident, for example to flag a group of incidents with a common characteristic. You can later filter the incidents queue for all incidents that contain a specific tag.
