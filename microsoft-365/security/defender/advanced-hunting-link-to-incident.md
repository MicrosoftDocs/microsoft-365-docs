---
title: Link query results to an incident
description: Link query results to an incident
keywords: advanced hunting, incident, pivot, entity, go hunt, relevant events, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft 365, Microsoft 365 Defender
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# Link query results to an incident

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint

The link to incident feature lets you select advanced hunting query results to add to a new or existing incident under investigation. This feature helps you easily capture records from advanced hunting activities so you can create a richer timeline or context of events regarding an incident. 

## Link results to new or existing incidents

1. In the advanced hunting query page, first enter your query in the query field provided then select **Run query** to get your results.

    ![Image showing query page](../../media/link-to-incident-1.png)
2. In the Results page, select the events or records that are related to a new or current investigation you are working on, then select **Link to incident**.

    ![Image showing link to incident button](../../media/link-to-incident-1b.png)
3. Find the **Alert details** section in the Link to incident pane, then select **Create new incident** to convert the events to alerts and group the selected records to a new incident:

 
    ![Image showing event details showing create new incident](../../media/link-to-incident-3-create-new.png)	
    
    Or select **Link to an existing incident** to add the selected records to an existing one. Choose the related incident from the dropdown list of existing incidents. 

    ![Image showing event details showing link to existing](../../media/link-to-incident-3-link-to-existing.png)
4. For either selection, provide the following details, then select **Next**:
      - Alert title - provide a descriptive title for the results that your incident responders can understand. This becomes the alert title.
      - Severity - Choose the severity applicable to the group of alerts.
      - Category - Choose the appropriate threat category for the alerts.
      - Description - Give a helpful description for the grouped alerts.
      - Recommended actions - Provide remediation actions.

5. In the Impacted entities section, select the main affected or impacted entity. Only the applicable entities based on the query results appear on this section. In our example, the Sender is the impacted entity. There are four different senders, therefore four alerts are created and linked to the chosen incident. 
     ![Image showing impacted entities](../../media/link-to-incident-4-impacted-entities.png)   
6. Select **Next**.
7. Review the details you have provided in the Summary section.
     ![Image showing summary](../../media/link-to-incident-5-summary.png) 
8. Select **Done**.

## View linked records in the incident

You can select the incident name to view the incident that the events are linked to.
     ![Image showing incident page with linked alerts](../../media/link-to-incident-6-incident-page.png) 

In our example, the four alerts, representing the four selected events, were linked successfully to a new incident. 

In each of the alert pages, you can find the complete information on the event or events in timeline view (if available) and query results view.
     ![Image showing alert story](../../media/link-to-incident-7-alert-story.png) 

![Image showing inspect record](../../media/link-to-incident-7-inspect-record.png) 

## Filter for events added using advanced hunting
You can view which alerts were generated from advanced hunting by filtering the Incidents queue and Alerts queue by **Manual** detection source.

![Image showing event details showing link to existing](../../media/link-to-incident-8-filter.png) 