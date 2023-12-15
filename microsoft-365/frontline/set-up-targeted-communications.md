---
title: Map frontline attributes for targeted communications
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: yingchang
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Map your frontline attributes to enable targeted communications for your frontline teams. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 

---

# Map frontline attributes for targeted communications

## Overview

Setting up targeted communications enables you to deliver personalized communications experiences, such as [automatic tags](#automatic-tags), to your frontline teams.

To set up targeted communications, you identify and map your frontline attributes by choosing a Microsoft Entra attribute for Department and Job title that represents the departments and job titles in your organization. The mapped attribute values, which are pulled from user profile data stored in Microsoft Entra ID, are used to identify, and target communications to specific groups of people based on their department or job title.

Streamline and simplify communications for your frontline. After you map your attributes, your frontline teams can use targeted communication features, like automatic tags in Teams channel conversations, and additional frontline capabilities that are coming soon.

## Prerequisites

Your frontline teams must be created through the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience in the Teams admin center.

> [!NOTE]
> Mapping frontline attributes is part of the setup process when you deploy frontline dynamic teams. It's an optional step. You decide whether to map attributes for targeted communications when you deploy your frontline dynamic teams.
>
> If you already deployed your frontline dynamic teams and you want to enable targeted communications, rerun the experience, and map your attributes.

## Set up targeted communications

### Map your frontline attributes

Map your attributes on the Map frontline attributes page of the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience. Select the Microsoft Entra attribute for **Department** and **Job title** that best represents the departments and job titles in your organization. You can map one or both attributes.

### View your mapped attribute values

After you mapped your attributes, you can view your list of mapped values. These values are used for targeted communications and represent the unique departments and job titles in your organization.

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline apps**.
1. In the table, next to **Targeted communications**, choose **Review**.
1. Your mapped values are listed under **Values status**.

    If your organization has new departments or job titles that aren’t in the list, choose **Refresh values** to update the list. Keep in mind that this process can take several hours to complete. 

    > [!NOTE]
    > If you want to change or remove the **Department** or **Job title** attribute, rerun the deploy frontline dynamic teams experience, make your changes, and then come back here to view the updated values.

## Automatic tags

With automatic tags, your frontline workers can reach each other by department or job title in Teams channel conversations. Anyone on the team can use the tags in @mentions to notify those people who are associated with that tag.

Your frontline can quickly and easily reach the right groups of people. And because the tags are automatically created based on your mapped attribute values, team owners don’t have to manually create and assign tags or manage them locally.

For example, a regional store manager who oversees all Northwind Trader stores in their region needs to notify all store associates and supervisors about a potentially harmful product that must be immediately removed from all stores. The manager @mentions the Store Associate and Store Supervisor tag in their channel post to notify all store associates and supervisors.

Automatic tags are created and available after you map your attributes. To allow frontline teams to use the tags in Teams, admins and team owners need to do the following:

- **Admins**: Make sure tags is turned on for your organization. In the Teams admin center, go to **Teams** > **Teams settings**.  Under **Tagging**, check that the **Who can manage tags** setting is set to an option other than **Not enabled**.

- **Team owners**: In Teams, team owners must turn on the **Show members the option to @mention groups based on job title or department. This will notify everyone in that group.** setting for each of their respective teams.

## Related articles

- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
