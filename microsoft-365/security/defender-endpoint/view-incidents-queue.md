---
title: View and organize the Incidents queue
ms.reviewer: 
description: See the list of incidents and learn how to apply filters to limit the list and get a more focused view.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-edr
ms.topic: conceptual
ms.subservice: edr
search.appverid: met150
ms.date: 01/24/2024
---

# View and organize the Microsoft Defender for Endpoint Incidents queue

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

> [!TIP]
> For a limited time during January 2024, when you visit the **Incidents** page, Defender Boxed appears. Defender Boxed highlights your organization's security successes, improvements, and response actions during 2023. To reopen Defender Boxed, in the Microsoft Defender portal, go to **Incidents**, and then select **Your Defender Boxed**.


The **Incidents queue** shows a collection of incidents that were flagged from devices in your network. It helps you sort through incidents to prioritize and create an informed cybersecurity response decision.

By default, the queue displays incidents seen in the last 6 months, with the most recent incident showing at the top of the list, helping you see the most recent incidents first.

There are several options you can choose from to customize the Incidents queue view. 

On the top navigation you can:
- Customize columns to add or remove columns 
- Modify the number of items to view per page
- Select the items to show per page
- Batch-select the incidents to assign 
- Navigate between pages
- Apply filters
- Customize and apply date ranges

:::image type="content" source="media/atp-incident-queue.png" alt-text="The Incidents queue" lightbox="media/atp-incident-queue.png":::

## Sort and filter the incidents queue
You can apply the following filters to limit the list of incidents and get a more focused view.

### Severity

Incident severity | Description
:---|:---
High </br>(Red) | Threats often associated with advanced persistent threats (APT). These incidents indicate a high risk due to the severity of damage they can inflict on devices.
Medium </br>(Orange) | Threats rarely observed in the organization, such as anomalous registry change, execution of suspicious files, and observed behaviors typical of attack stages.
Low </br>(Yellow) | Threats associated with prevalent malware and hack-tools that do not necessarily indicate an advanced threat targeting the organization.
Informational </br>(Grey) | Informational incidents might not be considered harmful to the network but might be good to keep track of.

## Assigned to
You can choose to filter the list by selecting assigned to anyone or ones that are assigned to you.

### Category
Incidents are categorized based on the description of the stage by which the cybersecurity kill chain is in. This view helps the threat analyst to determine priority, urgency, and corresponding response strategy to deploy based on context.

### Status
You can choose to limit the list of incidents shown based on their status to see which ones are active or resolved.

### Data sensitivity
Use this filter to show incidents that contain sensitivity labels.

## Incident naming

To understand the incident's scope at a glance, incident names are automatically generated based on alert attributes such as the number of endpoints affected, users affected, detection sources or categories.

For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

> [!NOTE]
> Incidents that existed prior the rollout of automatic incident naming will retain their name.


## See also
- [Incidents queue](/microsoft-365/security/defender-endpoint/view-incidents-queue)
- [Manage incidents](manage-incidents.md)
- [Investigate incidents](investigate-incidents.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
