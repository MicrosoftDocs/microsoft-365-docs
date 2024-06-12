---
title: Set up open shifts across locations in Shifts for your frontline
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: nvandanapu
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up open shifts across locations in Shifts for your frontline. With this feature, frontline managers can offer open shifts across multiple locations for frontline workers to request.  
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 

---

# Set up open shifts across locations in Shifts for your frontline

> [!IMPORTANT]
> This feature is currently in public preview.

## Overview

With the open shifts across locations feature in Shifts, your frontline managers can offer open shifts across multiple locations (teams) within an area for frontline workers to request. Workers can see and request open shifts that are available at other locations.

With this feature, you can:

- Optimize your workforce by balancing the supply and demand of shifts across locations within an area.
- Empower your frontline workers by giving them the flexibility to request open shifts at locations convenient to them.
- Enhance customer satisfaction with the ability to schedule anyone within an area to help ensure your locations are fully staffed.

## Prerequisites

To enable this feature, you must complete the following Prerequisites

- Define a [frontline operational hierarchy](deploy-frontline-operational-hierarchy.md) in the Teams admin center to map your organization's structure of frontline teams and locations to a hierarchy.
- Assign a code to at least one schedule group in a team that matches the code of the schedule group in other teams. Schedule groups in Shifts are used to group employees based on common characteristics within a team. For example, schedule groups can be departments or job types.

You control the availability of this feature for your frontline teams by assigning codes to schedule groups. The code for a particular schedule group in a team must match the code of the corresponding schedule group on other teams within the same level of your hierarchy for open shifts to be available on those other teams.

In this way, open shifts shared by a frontline manager in one location are available to all workers that belong to the same schedule group in other locations within the same area.

### Create and assign schedule group codes

## Example

Here’s an example to help you understand how to assign schedule group codes to enable open shifts across locations.

### Scenario

Contoso has hundreds of stores. Each store is grouped into an area and is managed by a different manager. To simplify this scenario, we focus on three stores in the West area.

In this example:

- Contoso set up an operational hierarchy in the Teams admin center to map their frontline team structure.
- Bellevue, Redmond, and Seattle are "sister" locations that are on the same level of the hierarchy. They share the parent node, West.  
- The schedule groups in Shifts at these locations are based on job types: Pickers, Runners, Stockers, Inventory specialists.

Contoso wants to enable open shifts across locations for Pickers in the Bellevue and Redmond stores but not in the Seattle store. To do this, the Contoso admin completes the following steps:

## User experience


<!--## Prerequisites

To enable this feature, you must complete the following prerequisites:

- Your frontline teams must be created through the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience in the Teams admin center.

    > [!NOTE]
    > Mapping frontline attributes is part of the setup process when you deploy frontline dynamic teams. It's an optional step. If you want to allow your frontline to easily reach each other by department or job title, map your attributes to enable targeted communications.
    >
    > If you've already deployed your frontline dynamic teams and you want to enable targeted communications for those teams, go to the [Dynamic teams settings page](deploy-dynamic-teams-at-scale.md#edit-your-frontline-team-settings), and map your attributes.
- To use [automatic tags](#automatic-tags), tags must be turned on for your organization. In the Teams admin center, go to **Teams** > **Teams settings**. Under **Tagging**, check that the **Who can manage tags** setting is set to an option other than **Not enabled**. [Learn more about how to turn on tags for your organization](/microsoftteams/manage-tags).

## Set up targeted communications

### Map your frontline attributes

Map your attributes on the Map frontline attributes page of the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience. Select the Microsoft Entra attribute for **Department** and **Job title** that best represents the departments and job titles in your organization. You can map one or both attributes.

:::image type="content" source="media/targeted-comms-map-attributes.png" alt-text="Screenshot of the Map frontline attributes page of the deploy frontline dynamic teams experience in the Teams admin center." lightbox="media/targeted-comms-map-attributes.png":::

### View your mapped attribute values

After you mapped your attributes, you can view your list of mapped values. These values are used for targeted communications and represent the unique departments and job titles in your organization.

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline apps**.
1. In the table, next to **Targeted communications**, choose **Review**.
1. Your mapped values are listed under **Values status**.

    :::image type="content" source="media/targeted-comms-view-values.png" alt-text="Screenshot of the Targeted communications page in the Teams admin center, showing list of mapped attribute values." lightbox="media/targeted-comms-view-values.png":::

    If your organization has new departments or job titles that aren’t in the list, choose **Refresh values** to update the list. Keep in mind that this process can take several hours to complete.

    > [!NOTE]
    > If you want to change or remove the **Department** or **Job title** attribute, go to the [Dynamic teams settings page](deploy-dynamic-teams-at-scale.md#edit-your-frontline-team-settings), edit your attributes, and then come back here to view the updated values.

## Automatic tags

With automatic tags, your frontline workers can reach each other by department or job title in Teams channel conversations. Anyone on the team can use the tags in @mentions to notify those people who are associated with that tag.

Your frontline can quickly and easily reach the right groups of people. And because the tags are automatically created based on your mapped attribute values, team owners don’t have to manually create and assign tags or manage them locally.

For example, a regional store manager who oversees all Northwind Trader stores in their region needs to notify all store associates and supervisors about a potentially harmful product that must be immediately removed from all stores. The manager @mentions the **Store Associate** and **Store Supervisor** tag in their channel post to notify all store associates and supervisors.

:::image type="content" source="media/targeted-comms-automatic-tags.png" alt-text="Screenshot of automatic tags used in a  Teams channel conversation." lightbox="media/targeted-comms-automatic-tags.png":::

Automatic tags are created and available after you map your attributes.

### Team owners

To allow frontline teams to use automatic tags in Teams, team owners must select the **Show members the option to @mention groups based on job title or department. This will notify everyone in that group.** check box in team settings for each of their respective teams.

:::image type="content" source="media/targeted-comms-automatic-tags-setting.png" alt-text="Screenshot of the option in team settings to @mention groups based on job title or department" lightbox="media/targeted-comms-automatic-tags-setting.png":::

[Learn more about using tags in Teams](https://support.microsoft.com/office/using-tags-in-microsoft-teams-667bd56f-32b8-4118-9a0b-56807c96d91e).

## Related articles

- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
- [Manage tags in Teams](/microsoftteams/manage-tags)-->
