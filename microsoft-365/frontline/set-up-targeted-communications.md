---
title: Set up targeted communications for your frontline
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: yinchang, aaglick
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to your map frontline attributes to enable targeted communications features, such as automatic tags, for your frontline teams. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/02/2024

---

# Set up for targeted communications for your frontline

## Overview

Setting up targeted communications in Microsoft Teams enables you to deliver personalized communications experiences, such as [automatic tags](#automatic-tags) and [targeted announcements in Viva Connections](#targeted-announcements-in-viva-connections), to your frontline teams.

To set up targeted communications, you identify and map your frontline attributes by choosing one Microsoft Entra attribute each for **Department** and **Job title** that represents the departments and job titles in your organization. The mapped attribute values, which are pulled from user profile data stored in Microsoft Entra ID, are used to identify, and target communications to specific groups of people based on their department or job title.

You map frontline attributes through the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience in the Teams admin center.

Streamline and simplify communications for your frontline. After you map your attributes, your frontline teams can use targeted communication features, like automatic tags in Teams channel conversations and targeted announcements in Viva Connections, and additional frontline capabilities that are coming soon.

## Prerequisites

- To use [targeted announcements in Viva Connections](#targeted-announcements-in-viva-connections), your frontline teams must be created through the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience and you must define a [frontline operational hierarchy](deploy-frontline-operational-hierarchy.md) in the Teams admin center.

- To use [automatic tags](#automatic-tags), tags must be turned on for your organization. In the Teams admin center, go to **Teams** > **Teams settings**. Under **Tagging**, check that the **Who can manage tags** setting is set to an option other than **Not enabled**. [Learn more about how to turn on tags for your organization](/microsoftteams/manage-tags).

## Set up targeted communications

> [!IMPORTANT]
> Automatic tags are available to your teams after you [map your attributes](#map-your-frontline-attributes). In other words, you can enable automatic tags by mapping your attributes without having to complete all the steps in the process to deploy frontline dynamic teams.
>
> If you're deploying frontline dynamic teams, mapping your attributes is an optional step. To allow your frontline to easily reach each other by department or job title, map your attributes to enable targeted communications.
>
>If you've already deployed your frontline dynamic teams and you want to enable targeted communications for those teams, go to the [Dynamic teams settings page](deploy-dynamic-teams-at-scale.md#edit-your-frontline-team-settings), and map your attributes.

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

## Targeted announcements in Viva Connections

Announcements allow you to create and share targeted, time-sensitive messages in the Viva Connections app.

- On Teams mobile, employees get a notification on the lock screen of their device alerting them of a new announcement.
- In the Viva Connections mobile experience, the announcement appears at the top of the dashboard.

Frontline managers can target announcements to specific groups of workers based on their location, department, and job title. When drafting an announcement, they can filter the audience by choosing location, department, and job title properties, which are automatically created based on your mapped attribute values.

To learn more, see [Use announcements in Viva Connections](/viva/connections/announcements-viva-connections).

## Related articles

- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
- [Manage tags in Teams](/microsoftteams/manage-tags)
- [Use announcements in Viva Connections](/viva/connections/announcements-viva-connections)
