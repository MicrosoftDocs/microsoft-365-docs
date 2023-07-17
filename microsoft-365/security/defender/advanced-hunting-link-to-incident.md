---
title: Link query results to an incident
description: Link query results to an incident
keywords: advanced hunting, incident, pivot, entity, go hunt, relevant events, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft 365, Microsoft 365 Defender
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365initiative-m365-defender
  - tier1
ms.topic: conceptual
ms.date: 06/25/2021
---

# Link query results to an incident

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

You can use the link to incident feature to add advanced hunting query results to a new or existing incident under investigation. This feature helps you easily capture records from advanced hunting activities, which enables you to create a richer timeline or context of events regarding an incident. 

## Link results to new or existing incidents

1. In the advanced hunting query page, first enter your query in the query field provided then select **Run query** to get your results.

    :::image type="content" source="../../media/link-to-incident-1.png" alt-text="The Query page in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-1.png":::

2. In the Results page, select the events or records that are related to a new or current investigation you're working on, then select **Link to incident**.

    :::image type="content" source="../../media/link-to-incident-1b.png" alt-text="The Link to incident option of the Results tab in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-1b.png":::

3. Find the **Alert details** section in the Link to incident pane, then select **Create new incident** to convert the events to alerts and group them to a new incident:

    :::image type="content" source="../../media/link-to-incident-3-create-new.png" alt-text="The Alert details section in the Link to incident pane in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-3-create-new.png":::
    
    Or select **Link to an existing incident** to add the selected records to an existing one. Choose the related incident from the dropdown list of existing incidents. You can also enter the first few characters of the incident name or ID to find the existing incident. 

    :::image type="content" source="../../media/link-to-incident-3-link-to-existing.png" alt-text="The Alert details section in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-3-link-to-existing.png":::

4. For either selection, provide the following details, then select **Next**:
      - **Alert title** - provide a descriptive title for the results that your incident responders can understand. This descriptive title becomes the alert title.
      - **Severity** - Choose the severity applicable to the group of alerts.
      - **Category** - Choose the appropriate threat category for the alerts.
      - **Description** - Give a helpful description for the grouped alerts.
      - **Recommended actions** - Provide remediation actions.

5. In the **Impacted entities** section, select the main affected or impacted entity. Only the applicable entities based on the query results appear in this section. In our example, we used a query to find events related to a possible email exfiltration incident, therefore the Sender is the impacted entity. If there are four different senders, for instance, four alerts are created and linked to the chosen incident.

     :::image type="content" source="../../media/link-to-incident-4-impacted-entities.png" alt-text="The impacted entity in the Link to incident section in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-4-impacted-entities.png":::

1. Select **Next**.
1. Review the details you've provided in the **Summary** section.
   :::image type="content" source="../../media/link-to-incident-5-summary.png" alt-text="The results page in the Link to incident section in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-5-summary.png":::
     
1. Select **Done**.

## View linked records in the incident

You can select the incident name to view the incident that the events are linked to.
:::image type="content" source="../../media/link-to-incident-6-incident-pg.png" alt-text="The event details screen in the Summary tab in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-6-incident-pg.png":::

In our example, the four alerts, representing the four selected events, were linked successfully to a new incident. 

In each of the alert pages, you can find the complete information on the event or events in timeline view (if available) and query results view.
:::image type="content" source="../../media/link-to-incident-7-alert-story.png" alt-text="The full details of an event in the Timeline tab in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-7-alert-story.png":::

You can also select the event to open the **Inspect record** pane.
:::image type="content" source="../../media/link-to-incident-7-inspect-record.png" alt-text="The inspect record details of an event in the Timeline tab in the Microsoft 365 Defender portal" lightbox="../../media/link-to-incident-7-inspect-record.png":::

## Filter for events added using advanced hunting
You can view which alerts were generated from advanced hunting by filtering the Incidents queue and Alerts queue by **Manual** detection source.

:::image type="content" source="../../media/link-to-incident-8-filter.png" alt-text="The manual filtering of Incidents and Alerts queue in the Filters page in the Microsoft 365 Defender portal " lightbox="../../media/link-to-incident-8-filter.png":::
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
