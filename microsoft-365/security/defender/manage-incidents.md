---
title: Manage incidents in Microsoft 365 Defender
description: Learn how to assign, update the status,
keywords: incident, incidents, analyze, response, alerts, correlated alerts, assign, update, status, manage, classification, microsoft, 365, m365
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

# Manage incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Incident management is critical in ensuring that threats are contained and addressed.

You manage incidents from **Incidents & alerts > Incidents** on the quick launch of the Microsoft 365 security center ([security.microsoft.com](https://security.microsoft.com)). Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="Example of the incident queue":::

Here are the ways you can manage your incidents:

- Change the incident name
- Add incident tags.
- Assign the incident to a user account
- Resolve them 
- Set its classification and determination
- Add comments.

You can manage incidents from the **Manage incident** pane for an incident. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-manage.png" alt-text="Example of the Manage incident pane of an incident":::

You can display this pane from the **Manage incident** link on the:

- Properties pane of an incident in the incident queue.
- **Summary** page of an incident.

In cases where, while analyzing you would like to move alerts from one incident to another, you can also do so from the **Alerts** tab, thus creating a larger or smaller incident that includes all relevant alerts.

## Edit the incident name

Microsoft 365 Defender automatically assigns a name based on alert attributes such as the number of endpoints affected, users affected, detection sources or categories. This allows you to quickly understand the scope of the incident. For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

You can edit the incident name from the **Incident name** field on the **Manage incident** pane.

> [!NOTE]
> Incidents that existed before the rollout of the automatic incident naming feature will retain their name.

## Add incident tags

You can add custom tags to an incident, for example to flag a group of incidents with a common characteristic. You can later filter the incident queue for all incidents that contain a specific tag.

When you start typing, you have the option to select from a list of selected tags.

## Assign incidents

If an incident has not yet been assigned, you can select **Assign to** and specify the user account. Doing so assigns ownership of the incident and all the alerts associated with it.

## Resolve incident

If the incident has been remediated, select **Resolve incident** to move the toggle to the right. Note that resolving an incident also resolves all the linked and active alerts related to the incident.

An incident that is not resolved displays as **Active**.

## Set the classification and determination

The incident classification is whether it was a true alert or a false alert, which you configure from the **Classification** field. 

If it was a true alert, you should also specify what type of threat it was with the **Determination** field. Specifying the threat type helps your security team see threat patterns and act to defend your organization from them. 

## Add comments

You can add multiple comments to an incident with the **Comment** field. Each comment gets added to the historical events of the incident. You can see the comments and history of an incident from the **Comments and history** link on the **Summary** page.

## Next steps

For new incidents, begin your investigation [investigation](investigate-incidents.md).

For in-process incidents, continue your [investigation](investigate-incidents.md).

For resolved incidents, perform a [post-incident review](first-incident-post.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Investigate incidents](investigate-incidents.md)
