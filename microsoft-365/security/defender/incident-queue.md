---
title: Prioritize incidents in Microsoft 365 Defender
description: Learn how to filter incidents from the incident queue in Microsoft 365 Defender
keywords: incident, queue, overview, devices, identities, users, mailbox, email, incidents, analyze, response, triage
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
  - tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 05/18/2023
---

# Prioritize incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender applies correlation analytics and aggregates related alerts and automated investigations from different products into an incident. Microsoft 365 Defender also triggers unique alerts on activities that can only be identified as malicious given the end-to-end visibility in Microsoft 365 Defender has across the entire suite of products. This view gives your security analysts the broader attack story, which helps them better understand and deal with complex threats across your organization.

The **Incident queue** shows a collection of incidents that were created across devices, users, and mailboxes. It helps you sort through incidents to prioritize and create an informed cybersecurity response decision, a process known as incident triage.

You get to the incident queue from **Incidents & alerts > Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="The Incident section showing the incident queue in the Microsoft 365 Defender portal." lightbox="../../media/incidents-queue/incidents-ss-incidents.png":::

The **Most recent incidents and alerts** section shows a graph of the number of alerts received and incidents created in the last 24 hours.

By default, the incident queue in the Microsoft 365 Defender portal displays incidents seen in the last six months. The most recent incident is at the top of the list so you can see it first.

The incident queue has customizable columns (select **Choose columns**) that give you visibility into different characteristics of the incident or the impacted entities. This filtering helps you make an informed decision regarding the prioritization of incidents for analysis.

For more visibility at a glance, automatic incident naming generates incident names based on alert attributes such as the number of endpoints affected, users affected, detection sources, or categories. This allows you to quickly understand the scope of the incident.

For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

> [!NOTE]
> Incidents that existed prior to the rollout of automatic incident naming will not have their name changed.

The incident queue also provides multiple filtering options, that when applied, enable you to perform a broad sweep of all existing incidents in your environment, or decide to focus on a specific scenario or threat. Applying filters on the incident queue can help determine which incident requires immediate attention. 

The **Filters** list above the list of incidents shows the currently applied filters.

## Available filters

From the default incident queue, you can select **Filter** to see a **Filter** pane, from which you specify a filtered set of incidents. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-filters.png" alt-text="The Filters pane for the incident queue in the Microsoft 365 Defender portal." lightbox="../../media/incidents-queue/incidents-ss-incidents-filters.png":::

You can also see the **Filter** pane by selecting any of the filters in the **Filters** list above the list of incidents.

This table lists the filter names that are available.

| Filter name | Description |
|:-------|:-----|
| Status | Select **New**, **In progress**, or **Resolved**. |
| Severity | The severity of an incident is indicative of the impact it can have on your assets. The higher the severity, the bigger the impact and typically requires the most immediate attention. Select **High**, **Medium**, **Low**, or **Informational**. |
| Incident assignment | Select the assigned user or users. |
| Multiple service sources  | Specify whether the filter is for more than one service source. |
| Service sources  | Specify incidents that contain alerts from: App Governance, Microsoft 365 Defender, Microsoft Defender for Office 365, Microsoft Defender for Endpoint, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps. |
| Tags | Select one or multiple tag names from the list. |
| Multiple categories  | Specify whether the filter is for more than one category. |
| Categories | Choose categories to focus on specific tactics, techniques, or attack components seen. |
| Entities | Specify the name of an asset such as a user, device, mailbox, or application name. |
| Data sensitivity | Some attacks focus on targeting to exfiltrate sensitive or valuable data. By applying a filter for specific sensitivity labels, you can quickly determine if sensitive information has potentially been compromised and prioritize addressing those incidents. <br><br> This filter displays information only when you've applied [sensitivity labels from Microsoft Purview Information Protection](../../compliance/sensitivity-labels.md). |
| Device groups | Specify a [device group](/windows/security/threat-protection/microsoft-defender-atp/machine-groups) name. |
| OS platform | Specify device operating systems. |
| Classification | Specify the set of classifications of the related alerts. |
| Automated investigation state | Specify the status of automated investigation.  |
| Associated threat | Specify a named threat.  |
| Alert policies | Specify an alert policy title.  |


The default filter is to show all alerts and incidents with a status of **New** and **In progress** and with a severity of **Low**, **Medium**, or **High**.

You can quickly remove a filter by selecting the **X** in the name of a filter in the **Filters** list. 

## Save custom filters as URLs

Once you've configured a useful filter in the incidents queue, you can bookmark the URL of the browser tab or otherwise save it as a link on a Web page, a Word document, or a place of your choice. Bookmarking gives you single-click access to key views of the incident queue, such as:

- New incidents
- High-severity incidents
- Unassigned incidents
- High-severity, unassigned incidents
- Incidents assigned to me
- Incidents assigned to me and for Microsoft Defender for Endpoint
- Incidents with a specific tag or tags
- Incidents with a specific threat category
- Incidents with a specific associated threat
- Incidents with a specific actor

Once you have compiled and stored your list of useful filter views as URLs, use it to quickly process and prioritize the incidents in your queue and [manage](manage-incidents.md) them for subsequent assignment and analysis.

## Search for incidents

From the **Search for name or ID** box above the list of incidents, you can type the incident ID or the incident name. When you select an incident from the list of search results, the Microsoft 365 Defender portal opens a new tab with the properties of the incident, from which you can start your [investigation](investigate-incidents.md).

## Search for impacted assets

You can name an asset&mdash;such as a user, device, mailbox, or application name&mdash;and find all the related incidents. 

## Specify a time range

The default list of incidents is for those that occurred in the last six months. You can specify a new time range from the drop-down box next to the calendar icon by selecting:

 - One day
 - Three days
 - One week
 - 30 days
 - 30 days
 - Six months
 - A custom range in which you can specify both dates and times

## Next steps

After you've determined which incident requires the highest priority, select it and:

- [Manage](manage-incidents.md) the properties of the incident for tags, assignment, immediate resolution for false positive incidents, and comments.
- Begin your [investigations](investigate-incidents.md).

## See also
- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Investigate incidents](investigate-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
