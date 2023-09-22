---
title: Manage incidents in Microsoft 365 Defender
description: Learn how to assign, update the status,
keywords: incident, incidents, attack story, analyze, response, alerts, correlated alerts, assign, update, status, manage, classification, microsoft, 365, m365
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

# Manage incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Incident management is critical to ensuring that incidents are named, assigned, and tagged to optimize time in your incident workflow and more quickly contain and address threats.

You can manage incidents from **Incidents & alerts > Incidents** on the quick launch of the Microsoft 365 Defender portal ([security.microsoft.com](https://security.microsoft.com)). Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents2.png" alt-text="The Incidents page in the Microsoft 365 Defender portal" lightbox="../../media/incidents-queue/incidents-ss-incidents2.png":::

Here are the ways you can manage your incidents:

- [Edit the incident name](#edit-the-incident-name)
- [Add incident tags](#add-incident-tags)
- [Assign the incident to a user account](#assign-an-incident)
- [Resolve them](#resolve-an-incident)
- [Specify its classification](#specify-the-classification)
- [Add comments](#add-comments)

You can manage incidents from the **Manage incident** pane for an incident. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents-manage2.png" alt-text="The Manage incident pane in the Microsoft 365 Defender portal" lightbox="../../media/incidents-queue/incidents-ss-incidents-manage2.png":::

You can display this pane from the **Manage incident** link on the:

- **Alert story** page.
- Properties pane of an incident in the incident queue.
- **Summary** page of an incident.
- Manage incident option located on the upper right side of the Incident page.

In cases where you want to move alerts from one incident to another, you can also do so from the **Alerts** tab, thus creating a larger or smaller incident that includes all relevant alerts.

## Edit the incident name

Microsoft 365 Defender automatically assigns a name based on alert attributes such as the number of endpoints affected, users affected, detection sources or categories. This allows you to quickly understand the scope of the incident. For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

You can edit the incident name from the **Incident name** field on the **Manage incident** pane.

> [!NOTE]
> Incidents that existed before the rollout of the automatic incident naming feature will retain their name.

## Add incident tags

You can add custom tags to an incident, for example to flag a group of incidents with a common characteristic. You can later filter the incident queue for all incidents that contain a specific tag.

When you start typing, you have the option to select from a list of previously-used and selected tags.

## Assign an incident

If an incident has not yet been assigned, you can select the **Assign to** box and specify the user account. To re-assign an incident, remove the current assignment account by selecting the "x" next to the account name and then select the **Assign to** box. Assigning ownership of an incident assigns the same ownership to all the alerts associated with it.

You can get a list of incidents assigned to you by filtering the incident queue. 

1. From the incident queue, select **Filters**.
2. in the **Incident assignment** section, clear **Select all** and select **Assigned to me**.
3. Select **Apply**, and then close the **Filters** pane.

You can then save the resulting URL in your browser as a bookmark to quickly see the list of incidents assigned to you.

## Resolve an incident

If the incident has been remediated, select **Resolve incident** to move the toggle to the right. Note that resolving an incident also resolves all the linked and active alerts related to the incident.

An incident that is not resolved displays as **Active**.

## Specify the classification

From the **Classification** field, you specify whether the incident is:

- **Not set** (the default).
- **True positive** with a type of threat. Use this classification for incidents that accurately indicate a real threat. Specifying the threat type helps your security team see threat patterns and act to defend your organization from them.
- **Informational, expected activity** with a type of activity. Use the options in this category to classify incidents for security tests, red team activity, and expected unusual behavior from trusted apps and users.
- **False positive** for types of incidents that you determine can be ignored because they are technically inaccurate or misleading.

Classifying incidents and specifying their status and type helps tune Microsoft 365 Defender to provide better detection determination over time.

## Add comments

You can add multiple comments to an incident with the **Comment** field. Each comment gets added to the historical events of the incident. You can see the comments and history of an incident from the **Comments and history** link on the **Summary** page.

## Next steps

For new incidents, begin your [investigation](investigate-incidents.md).

For in-process incidents, continue your [investigation](investigate-incidents.md).

For resolved incidents, perform a [post-incident review](first-incident-post.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Investigate incidents](investigate-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
