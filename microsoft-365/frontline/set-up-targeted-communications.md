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

Setting up targeted communications enables you to deliver personalized communications experiences to your frontline teams.

During setup, you use Microsoft Entra attributes to map departments and job titles in your organization. The attributes you choose for **Department** and **Job title** map to values stored in user profile data in Microsoft Entra ID. These values are used to identify and target communications to specific groups of people.

Streamline and simplify communications for your frontline. By mapping frontline attributes, your frontline teams can use targeted communications features, like automatic tags in Teams channels conversations, and additional frontline capabilities that are coming soon.

Mapping frontline attributes is part of the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience in the Teams admin center. It’s an optional step. You decide whether to map attributes when you deploy your frontline dynamic teams.

If you already deployed your frontline dynamic teams and you want to enable targeted communications, rerun the experience, and map your attributes.

## Set up targeted communications

### Map your frontline attributes

You map attributes on the Map frontline attributes page of the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience. Select the Microsoft Entra attribute for **Department** and **Job title** that best represents the departments and job titles in your organization. You can map one or both attributes.

### View your mapped attribute values

After you mapped your attributes, you can view your list of mapped values. These values are enabled for targeted communications and represent the unique departments and job titles in your organization.

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline apps**.
1. In the table, next to **Targeted communications**, choose **Review**.
1. Your mapped values are listed under Values status on the Targeted communications page.

    If your organization has new departments or job titles that aren’t in the list, choose **Refresh values** to update the list. This process can take several hours to complete. 

    > [!NOTE]
    > If you want to change or remove the **Department** or **Job title** attribute, rerun the deploy frontline dynamic teams experience, make your changes, and then come back here to view the updated values.

## Automatic tags








## Related articles

- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
