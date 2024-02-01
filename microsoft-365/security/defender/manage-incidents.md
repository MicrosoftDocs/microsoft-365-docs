---
title: Manage incidents in Microsoft Defender XDR
description: Learn how to assign, update the status,
keywords: incident, incidents, attack story, analyze, response, alerts, correlated alerts, assign, update, status, manage, classification, microsoft, 365, m365
ms.service: defender-xdr
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
ms.date: 01/22/2024
---

# Manage incidents in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**

- Microsoft Defender XDR

Incident management is critical to ensuring that incidents are named, assigned, and tagged to optimize time in your incident workflow and more quickly contain and address threats.

> [!TIP]
> For a limited time during January 2024, when you visit the **Incidents** page, Defender Boxed appears. Defender Boxed highlights your organization's security successes, improvements, and response actions during 2023. To reopen Defender Boxed, in the Microsoft Defender portal, go to **Incidents**, and then select **Your Defender Boxed**.

You can manage incidents from **Incidents & alerts > Incidents** on the quick launch of the Microsoft Defender portal ([security.microsoft.com](https://security.microsoft.com)). Here's an example.

:::image type="content" source="../../media/incidents-queue/fig1-manageincidents.png" alt-text="Highlighting the manage incident option within the incident queue and quick launch pane in the Microsoft Defender portal" lightbox="../../media/incidents-queue/fig1-manageincidents.png":::

Here are the ways you can manage your incidents:

- [Edit the incident name](#edit-the-incident-name)
- [Assign or change severity](#assign-or-change-incident-severity)
- [Add incident tags](#add-incident-tags)
- [Assign the incident to a user account](#assign-an-incident)
- [Resolve them](#resolve-an-incident)
- [Specify its classification](#specify-the-classification)
- [Add comments](#add-comments)
- Assess the activity audit and add comments in the [Activity log](#activity-log)

You can manage incidents from the **Manage incident** pane for an incident. Here's an example.

:::image type="content" source="../../media/incidents-queue/fig2-new-manageincidents.png" alt-text="The Manage incident pane in the Microsoft Defender portal" lightbox="../../media/incidents-queue/fig2-new-manageincidents.png":::

You can display this pane from the **Manage incident** link on the:

- **Alert story** page.
- Properties pane of an incident in the incident queue.
- **Summary** page of an incident.
- Manage incident option located on the upper right side of the Incident page.

In cases where you want to move alerts from one incident to another, you can also do so from the **Alerts** tab, thus creating a larger or smaller incident that includes all relevant alerts.

## Edit the incident name

Microsoft Defender XDR automatically assigns a name based on alert attributes such as the number of endpoints affected, users affected, detection sources or categories. The incident name allows you to quickly understand the scope of the incident. For example: *Multi-stage incident on multiple endpoints reported by multiple sources.*

You can edit the incident name from the **Incident name** field on the **Manage incident** pane.

> [!NOTE]
> Incidents that existed before the rollout of the automatic incident naming feature will retain their name.

## Assign or change incident severity

You can assign or change the severity of an incident from the **Severity** field on the **Manage incident** pane. The severity of an incident is determined by the highest severity of the alerts associated with it. The severity of an incident can be set to high, medium, low, or informational.

## Add incident tags

You can add custom tags to an incident, for example to flag a group of incidents with a common characteristic. You can later filter the incident queue for all incidents that contain a specific tag.

The option to select from a list of previously-used and selected tags appear after you start typing.

## Assign an incident

You can select the **Assign to** box and specify the user account to assign an incident. To reassign an incident, remove the current assignment account by selecting the "x" next to the account name and then select the **Assign to** box. Assigning ownership of an incident assigns the same ownership to all the alerts associated with it.

You can get a list of incidents assigned to you by filtering the incident queue. 

1. From the incident queue, select **Filters**.
2. In the **Incident assignment** section, clear **Select all**. Select **Assigned to me**, **Assigned to another user**, or **Assigned to a user group**.
3. Select **Apply**, and then close the **Filters** pane.

You can then save the resulting URL in your browser as a bookmark to quickly see the list of incidents assigned to you.

## Resolve an incident

Select **Resolve incident** to move the toggle to the right when an incident is remediated. Resolving an incident also resolves all the linked and active alerts related to the incident.

An incident that isn't resolved displays as **Active**.

## Specify the classification

From the **Classification** field, you specify whether the incident is:

- **Not set** (the default).
- **True positive** with a type of threat. Use this classification for incidents that accurately indicate a real threat. Specifying the threat type helps your security team see threat patterns and act to defend your organization from them.
- **Informational, expected activity** with a type of activity. Use the options in this category to classify incidents for security tests, red team activity, and expected unusual behavior from trusted apps and users.
- **False positive** for types of incidents that you determine can be ignored because they're technically inaccurate or misleading.

Classifying incidents and specifying their status and type helps tune Microsoft Defender XDR to provide better detection determination over time.

## Add comments

You can add multiple comments to an incident with the **Comment** field. The comment field supports text and formatting, links, and images. Each comment is limited to 30,000 characters.

All comments are added to the historical events of the incident. You can see the comments and history of an incident from the **Comments and history** link on the **Summary** page.

## Activity log

The **Activity log** displays a list of all the comments and actions performed on the incident, known as *Audits and comments*. All changes made to the incident, whether by a user or by the system, are recorded in the activity log. The activity log is available from the **Activity log** option on the incident page or on the incident side pane.

:::image type="content" source="../../media/incidents-queue/fig3-manageincidents.png" alt-text="Highlighting the activity log option from the incident page in the Microsoft Defender portal" lightbox="../../media/incidents-queue/fig3-manageincidents.png":::

You can filter the activities within the log by comments and actions. Click the **Content: Audits, Comments** then select the content type to filter activities. Here's an example.

:::image type="content" source="../../media/incidents-queue/fig4-manageincidents.png" alt-text="Highlighting the filter options within the activity log pane from the incident page in the Microsoft Defender portal" lightbox="../../media/incidents-queue/fig4-manageincidents.png":::

You can also add your own comments using the comment box available within the activity log. The comment box accepts text and formatting, links, and images.

:::image type="content" source="../../media/incidents-queue/fig5-res-manageincidents.png" alt-text="Highlighting the comment box from the incident page in the Microsoft Defender portal" lightbox="../../media/incidents-queue/fig5-manageincidents.png":::

## Next steps

For new incidents, begin your [investigation](investigate-incidents.md).

For in-process incidents, continue your [investigation](investigate-incidents.md).

For resolved incidents, perform a [post-incident review](first-incident-post.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Investigate incidents](investigate-incidents.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
