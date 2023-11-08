---
title: Deploy Shifts to your frontline teams at scale
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: arnavgupta
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to deploy Shifts to your frontline teams at scale in the Teams admin center. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 

---

# Deploy Shifts to your frontline teams at scale

## Overview

## Prerequisites

- Your frontline employees must have a Microsoft 365 F3, F1, E3, or E5 license. [Learn more about frontline licensing](flw-licensing-options.md).
- Your organization’s frontline teams are created through the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience in the Teams admin center.
- The admin running the deployment process is a Teams admin.  

## Set up Shifts for your frontline teams

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline apps**.
2. On the Manage frontline apps page, next to **Deploy Shifts to your teams** in the table, choose **Set up**.
3. Review the setup and prerequisites information, and then select **Next**.

### Configure Shifts settings

Choose the Shifts capabilities that you want to be available to your frontline teams. Capabilities include the ability to create and request open shifts, swap shifts, and offer shifts, time-off requests, and the time clock. [Learn more about Shifts settings](https://support.microsoft.com/office/manage-settings-in-shifts-1aef353d-e2df-4661-abdd-4014cb57f17b).
 
The settings you choose are applied to every team that you deploy Shifts to.

1. Under **Shift requests**, set the types of shift requests you want to allow:  

    - **Open shifts**: Turn on this setting to allow frontline managers to publish unfilled shifts and frontline workers to view and request those shifts.
    - **Swap shift requests**: When you turn on this setting, frontline workers can swap shifts with other employees and frontline managers can approve or reject the requests.
    - **Offer shift requests**: Turn on this setting to allow frontline workers to offer shifts to other employees and frontline managers to approve or reject the requests.
2. Choose whether to allow **Time off-requests**. When this setting is on, frontline workers can request time off, and frontline managers can approve or reject the requests.  

    Keep in mind that if you turn off this setting, frontline managers can still assign time off to employees.  
3. Add time-off reasons.

    Under **Time-off reasons**, select **Add**, and then for each time-off reason that you create:
    - Give it a name. It can’t be longer than 40 characters.  
    - Choose an icon.
    - Enter a unique code. The code can be up to 100 alphanumeric characters long. For example, A01.  

    Make sure the time-off reasons reflect what’s supported across your frontline organization. Frontline managers use these time-off reasons when they assign time off to frontline workers. And, if you turned on **Time-off requests**, your frontline workers choose from these time-off reasons from when they request time off.  
4. Under **Time clock**, turn on or turn off **Clock in/clock out**. When this setting is on, frontline workers can clock in and out of their shifts and record breaks, and frontline managers can export their team’s time report.  
5. When you’re done choosing your settings, select **Next**.

### Create schedule groups

In this step, you identify the schedule owners in your organization and specify how schedule groups are created and managed across your frontline teams.

In Shifts, schedule owners are frontline managers who create and manage schedules for their teams. Schedule groups represent groups of employees who have the same job type in the schedule???. You can allow schedule owners to create and manage schedule groups or you can do so centrally in the Teams admin center.  

1. In the **Group ID** box, enter the group ID of the group that contains the schedule owners in your organization.  
2. Choose one of the following options to define how schedule groups are managed:
    - **Schedule groups are created and managed by schedule owners**
    - **Schedule groups are created and managed in the Teams admin center**
3. If you chose the option to create and manage schedule groups in the Teams admin center, select **Add** to add schedule groups.
    For each schedule group that you create:
    - Give it a name. It can’t be longer than 40??? characters.  
    - Choose an icon.
    - Enter a unique code. The code can be up to ??? alphanumeric characters long.
4. When you're done, select **Next**.

### Review and finish setup

Review your settings. If you need to make changes, choose **Back**, and edit the settings that you want. When you're ready, select **Finish setup**.

Setup can take ???. Refresh the Manage frontline apps page to get the latest status. The setup status in the table changes to **Completed** when setup is finished.  

## Deploy Shifts to your frontline teams

When setup is completed, you’re ready to deploy Shifts to your frontline teams.  

1. On the Manage frontline apps page, next to **Deploy Shifts to your teams** in the table, choose **Deploy**.  
2. Select the teams that you want to deploy Shifts to, and then choose **Next**.
3. For each team that you selected, set the time zone for the team’s schedule in Shifts.

    You can also set a default time zone that’s automatically applied to all teams. If you choose to set a default time zone, you can still select different time zones for specific teams.
4. When you’re done selecting team time zones, choose **Deploy**.

    This process can take ??? depending on how many teams you're deploying Shifts to. After deployment is completed, the deployment status shows as **Deployed** on the Manage frontline apps page, along with the deployment date.  

    On the **Shifts** tile, you’ll see the number of frontline teams that Shifts is deployed to. You can also download a CSV file with a list of those teams.

## Related articles

- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
