---
title: Analyze alerts in Microsoft 365 Defender
description: Analyze alerts seen across devices, users, and mailboxes.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
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
# Analyze alerts in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Alerts are the basis of all incidents and indicate the occurrence of malicious or suspicious events in your environment. Alerts are typically part of a broader attack and provide clues about an incident.

In Microsoft 365 Defender, related alerts are aggregated together to form [incidents](incidents-overview.md). Incidents will always provide the broader context of an attack, however, analyzing alerts can be valuable when deeper analysis is required. 

The **Alerts queue** shows the current set of alerts. You get to the alerts queue from **Incidents & alerts > Alerts** on the quick launch of the Microsoft 365 security center ([security.microsoft.com](https://security.microsoft.com)).

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-queue.png" alt-text="Example of the alerts queue":::

Alerts from different Microsoft security solutions like Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and Microsoft 365 Defender appear here.

By default, the alerts queue in the Microsoft 365 security center displays the new and in progress alerts from the last 30 days. The most recent alert is at the top of the list so you can see it first. 

From the default alerts queue, you can select **Filters** to see a **Filters** pane, from which you can specify a subset of the alerts. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-filter.png" alt-text="Example of the filters pane for the alerts queue":::

You can filter alerts according to these criteria:

- Severity
- Status
- Category
- Detection source
- Tags
- Policy
- Impacted assets

## Analyze an alert

To see the main alert page, select the name of the alert. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-main.png" alt-text="Example of the details page of an alert in the Microsoft 365 security center":::

You can also select the **Open the main alert page** action from the **Manage alert** pane.

An alert page is composed of these sections: 

- Alert story
- Actions taken (including impacted assets)
- Related events
- Summary details

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-main.png" alt-text="Example of the details page of an alert in the Microsoft 365 security center":::

Throughout an alert page, you can select the ellipses (**...**) beside any entity to see available actions, such as opening the specific asset page or taking specific remediation steps.

### Analyze affected assets

The **Actions taken** section has a list of impacted assets, such as mailboxes, devices, and users affected by this alert. 

You can also select **View in action center** to view the **History** tab of the **Action center** in the Microsoft 365 security center. 

### Trace an alert's role in the alert story

The alert story displays all assets or entities related to the alert in a process tree view. The alert in the title is the one in focus when you first land on your selected alert's page. Assets in the alert story are expandable and clickable. They provide additional information and expedite your response by allowing you to take action right in the context of the alert page. 

> [!NOTE]
> The alert story section may contain more than one alert, with additional alerts related to the same execution tree appearing before or after the alert you've selected.

### View more alert information on the details page

The details page shows the details of the selected alert, with details and actions related to it. If you select any of the affected assets or entities in the alert story, the details page changes to provide contextual information and actions for the selected object.

Once you've selected an entity of interest, the details page changes to display information about the selected entity type, historic information when it's available, and options to take action on this entity directly from the alert page.

## Manage alerts

To manage an alert, select the alert in the alerts queue on its row to see a **Manage alert** pane. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-manage.png" alt-text="Example of the summary pane for an alert":::

The **Manage alert** pane allows you to specify:

- The alert status (New, Resolved, In progress).
- The alert's classification  (Not set, True alert, False Alert).
- For the classification as a true alert, the type of threat for the alert in **Determination** field.
- A comment on the alert.

> [!NOTE]
> One way of managing alerts it through the use of tags. The tagging capability for Microsoft Defender for Office 365 is incrementally being rolled out and is currently in preview. <br>
> Currently, modified tag names are only applied to alerts created *after* the update. Alerts that were generated before the modification will not reflect the updated tag name. 

From this pane, you can also perform these additional actions: 

- Open the main alert page
- Consult a Microsoft threat expert
- View submission
- Link to another incident
- See the alert in a timeline
- Create a suppression rule

Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-actions.png" alt-text="Example of the actions on an alert in the Microsoft 365 security center":::

The list of additional actions depends on the type of alert.

## Resolve an alert

Once you're done analyzing an alert and it can be resolved, go to the **Manage alert** pane for the alert and mark the it status as **Resolved** and classify it as either a **False alert** or **True alert**. For true alerts, specify the alert's threat type in the **Determination** field.

Classifying alerts and specifying their determination helps tune Microsoft 365 Defender to provide more true alerts and less false alerts.

## See also

- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Analyze incidents](investigate-incidents.md)
