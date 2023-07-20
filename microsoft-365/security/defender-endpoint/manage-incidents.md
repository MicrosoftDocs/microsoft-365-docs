---
title: Manage Microsoft Defender for Endpoint incidents
description: Manage incidents by assigning it, updating its status, or setting its classification.
keywords: incidents, manage, assign, status, classification, true alert, false alert
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Manage Microsoft Defender for Endpoint incidents

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Managing incidents is an important part of every cybersecurity operation. You can manage incidents by selecting an incident from the **Incidents queue** or the **Incidents management pane**. 


Selecting an incident from the **Incidents queue** brings up the **Incident management pane** where you can open the incident page for details.

:::image type="content" source="images/atp-incidents-mgt-pane-updated.png" alt-text="The incidents management pane" lightbox="images/atp-incidents-mgt-pane-updated.png":::

You can assign incidents to yourself, change the status and classification, rename, or comment on them to keep track of their progress.

> [!TIP]
> For additional visibility at a glance, incident names are automatically generated based on alert attributes such as the number of endpoints affected, users affected, detection sources or categories. This allows you to quickly understand the scope of the incident.
>
> For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*
>
> Incidents that existed prior the rollout of automatic incident naming will retain their names.
>

:::image type="content" source="images/atp-incident-details-updated.png" alt-text="The incident detail page" lightbox="images/atp-incident-details-updated.png":::

## Assign incidents
If an incident has not been assigned yet, you can select **Assign to me** to assign the incident to yourself. Doing so assumes ownership of not just the incident, but also all the alerts associated with it.

## Set status and classification
### Incident status
You can categorize incidents (as **Active**, or **Resolved**) by changing their status as your investigation progresses. This helps you organize and manage how your team can respond to incidents.

For example, your SOC analyst can review the urgent **Active** incidents for the day, and decide to assign them to himself for investigation.

Alternatively, your SOC analyst might set the incident as **Resolved** if the incident has been remediated. 

### Classification
You can choose not to set a classification, or decide to specify whether an incident is true or false. Doing so helps the team see patterns and learn from them.

### Add comments
You can add comments and view historical events about an incident to see previous changes made to it.

Whenever a change or comment is made to an alert, it is recorded in the Comments and history section.

Added comments instantly appear on the pane.



## Related topics
- [Incidents queue](/microsoft-365/security/defender-endpoint/view-incidents-queue)
- [View and organize the Incidents queue](view-incidents-queue.md)
- [Investigate incidents](investigate-incidents.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
