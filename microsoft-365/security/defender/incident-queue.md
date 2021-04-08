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

Microsoft 365 Defender applies correlation analytics and aggregates related alerts and automated investigations from different products into an incident. Microsoft 365 Defender also triggers unique alerts on activities that can only be identified as malicious given the end-to-end visibility that Microsoft 365 Defender has across the entire suite of products. This view gives your security analysts the broader attack story, which help them better understand and deal with complex threats across your organization.

The **Incidents queue** shows a collection of incidents that were created across devices, users, and mailboxes. It helps you sort through incidents to prioritize and create an informed cybersecurity response decision. 

You get to the incidents queue from ***Incidents & alerts > Incidents** on the quick launch of the Microsoft 365 security center ([security.microsoft.com](https://security.microsoft.com)).

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="Example of the incidents queue":::

By default, the queue in the Microsoft 365 security center displays incidents seen in the last 30 days. The most recent incident is at the top of the list so you can see it first.

The incident queue has customizable columns (select **Choose columns**) that give you visibility into different characteristics of the incident or the impacted entities. This helps you make an informed decision regarding the prioritization of incidents for anaylsis.

For additional visibility at a glance, automatic incident naming generates incident names based on alert attributes such as the number of endpoints affected, users affected, detection sources, or categories. This allows you to quickly understand the scope of the incident.

For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

> [!NOTE]
> Incidents that existed prior the rollout of automatic incident naming will not have their name changed.

The incident queue also exposes multiple filtering options, that when applied, enable you to perform a broad sweep of all existing incidents in your environment, or decide to focus on a specific scenario or threat. Applying filters on the incident queue can help determine which incident requires immediate attention. 

## Available filters

From the default incidents queue, you can select **Filters** to see a Filters pane, from which you can view a filtered set of incidents. Here is an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-filters.png" alt-text="Example of the filters pane for the incidents queue":::

This table lists the filter names that are available.

| Filter name | Description |
|:-------|:-----|
| Assigned to | You can choose to show alerts that are assigned to you or those handled by automation. |
| Categories | Choose categories to focus on specific tactics, techniques, or attack components seen. |
| Classification | Filter incidents based on the set classifications of the related alerts. The values include true alerts, false alerts, or not set. |
| Data sensitivity | Some attacks focus on targeting to exfiltrate sensitive or valuable data. By applying a filter to see if sensitive data is involved in the incident, you can quickly determine if sensitive information has potentially been compromised and prioritize addressing those incidents. <br><br> Only applicable if Microsoft Information Protection is turned on.|
| Device group | Filter by defined device groups. |
| Investigation state | Filter incidents by the status of automated investigation.  |
| Multiple categories | You can choose to see only incidents that have mapped to multiple categories  and can thus potentially cause more damage. |
| Multiple service sources  | Filter to only see incidents that contain alerts from different sources (Microsoft Defender for Endpoint, Microsoft Cloud App Security, Microsoft Defender for Identity, Microsoft Defender for Office 365). |
| OS platform | Limit the incident queue view by operating system. |
| Service sources | By choosing a specific source, you can focus on incidents that contain at least one alert from that chosen source. |
| Severity | The severity of an incident is indicative of the impact it can have on your assets. The higher the severity, the bigger the impact and typically requires the most immediate attention. |
| Status | You can choose to limit the list of incidents shown based on their status to see which ones are active or resolved. |
|||

## Incident response workflow

Here is the typical workflow for responding to incidents:

1. Identify and triage the highest priority incidents for investigation and resolution.
2. For each high-priority incident, begin an [investigation](investigate-incidents.md):

   a. View the summary of the incident to understand it's scope, what entities are affected, and severity (the **Summary** tab).

   b. Begin looking at the alerts to understand their origin, scope, and severity (the **Alerts** tab).

   c. As needed, gather information on impacted devices, users, and mailboxes (the **Devices**, **Users**, and **Mailboxes** tabs).

   d. See how Microsoft 365 Defender has automatically resolved some alerts (the **Investigations** tab).
   
   e. As needed, use information in the data set for the incident for more information (the **Evidence and Response** tab).

As you investigate, you should be concerned with:

- Reducing any additional impact on your tenant (containment).
- Removing the security threat (eradication).
- Restoring your tenant resources to the state they were in before the attack (recovery).

After you resolve the incident, take a moment to learn from it to:

- Understand the type of the attack and its impact.
- Research the attack in the security community for a security attack trend.
- Recount the workflow you used to resolve the incident and update your standard workflows and plalbooks as needed.

Here is a summary of the basic process.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-process.png" alt-text="The basic process for investigating incidents":::

## Next step

After you've determined which incident requires the highest priority, select it and begin your [investigation](investigate-incidents.md).

## See also
- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
