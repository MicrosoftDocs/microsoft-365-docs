---
title: Deploy Shifts to your frontline teams at scale
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: arnavgupta, imarquesgil
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

The [Shifts app](https://support.microsoft.com/office/get-started-in-shifts-5f3e30d8-1821-4904-be26-c3cd25a497d6) in Microsoft Teams is a schedule management tool that helps you create, update, and manage schedules for your team to keep frontline workers connected and in sync.  

To start using Shifts, frontline managers are responsible for configuring Shifts settings like enabling requests for open shifts, swap shifts, and offer shifts, time off requests and time clock for their respective teams. Frontline managers must also create schedule groups to start creating and assigning shifts.

As an admin, you can now standardize these Shifts settings across all your frontline teams and manage them centrally by deploying Shifts to your frontline teams at scale in the Teams admin center. You can select which capabilities to turn on or off and create schedule groups that will be set uniformly across all your frontline teams. Your frontline managers can start using Shifts straight out-of-the-box with minimal setup required.

> [!IMPORTANT]
> This feature will start rolling out for public preview in December 2023. Capabilities to edit Shifts settings configurations after the first deployment will come soon.

## Prerequisites

- Your frontline employees must have a Microsoft 365 F3, F1, E3, or E5 license. [Learn more about frontline licensing](flw-licensing-options.md).
- You created your organization’s frontline teams through the [deploy frontline dynamic teams](deploy-dynamic-teams-at-scale.md) experience in the Teams admin center.
- The admin running the deployment process is a Teams admin.  

## Set up Shifts for your frontline teams

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline apps**.
1. On the Manage frontline apps page, next to **Deploy Shifts to your teams** in the table, select **Set up**.

    :::image type="content" source="media/dsas-setup.png" alt-text="Screenshot of the table on the Manage frontline apps page, showing the Set up button for deploying Shifts. "lightbox="dsas-setup.png":::

1. Review the setup and prerequisites information, and then select **Next**.

### Configure Shifts settings

Choose the Shifts capabilities that you want to be available to your frontline teams. Capabilities include the ability to create and request open shifts, swap shifts and offer shifts, time-off requests, and time clock. [Learn more about Shifts settings](https://support.microsoft.com/office/manage-settings-in-shifts-1aef353d-e2df-4661-abdd-4014cb57f17b).

> [!IMPORTANT]
> The settings you choose are applied to every team that you deploy Shifts to. Your frontline managers won't be able to change these settings in Shifts.

:::image type="content" source="media/dsas-shift-request-settings.png" alt-text="Screenshot of the Configure Shifts settings page, showing shift request and time-off settings. "lightbox="dsas-shift-request-setting.png":::

1. Under **Shift requests**, set the types of shift requests you want to allow:  

    - **Open shifts**: Turn on to allow frontline managers to publish unfilled shifts and frontline workers to view and request those shifts.
    - **Swap shift requests**: Turn on to allow frontline workers to swap shifts with other employees and frontline managers to approve or reject the requests.
    - **Offer shift requests**: Turn on to allow frontline workers to offer shifts to other employees and frontline managers to approve or reject the requests.
1. Choose whether to allow **Time off-requests**. When this setting is on, frontline workers can request time off, and frontline managers can approve or reject the requests.  

    Keep in mind that if you turn off this setting, frontline managers can still assign time off to employees.  
1. Add time-off reasons.

    :::image type="content" source="media/dsas-time-off-reasons.png" alt-text="Screenshot of the Configure Shifts settings page, showing settings for time-off reasons and time clock. "lightbox="dsas-time-off-reasons.png":::

    Under **Time-off reasons**, select **Add**, and then for each time-off reason that you create:
    1. Give it a name. It can’t be longer than 40 characters.  
    1. Choose an icon.
    1. Enter a unique code. The code can be up to 100 alphanumeric characters long. For example, A01.  

    Make sure the time-off reasons reflect what’s supported across your frontline organization. Frontline managers use these time-off reasons when they assign time off to frontline workers. And, if you turned on **Time-off requests**, your frontline workers choose from these time-off reasons from when they request time off.  
1. Under **Time clock**, turn on or turn off **Clock in/clock out**. When this setting is on, frontline workers can clock in and out of their shifts and record breaks, and frontline managers can export their team’s time report.  
1. When you’re done choosing your settings, select **Next**.

### Create schedule groups

In this step, you identify the schedule owners in your organization and define how schedule groups are created and managed across your frontline teams.

 - Schedule owners, similar to team owners, are frontline managers who create and manage schedules for their teams. [Learn more about schedule owners](schedule-owner-for-shift-management.md).
 - Schedule groups are used to further group employees based on common characteristics within a team. For example, schedule groups can be departments or job types.

You can choose to allow schedule owners to create and manage schedule groups or you can do so centrally in the Teams admin center.  

1. In the **Group ID** box, enter the group ID of the group that contains the schedule owners in your organization.  
1. Choose one of the following options to define how schedule groups are managed:
    - **Schedule groups are created and managed by schedule owners**
    - **Schedule groups are created and managed in the Teams admin center**
1. If you chose the option to create and manage schedule groups in the Teams admin center, select **Add** to add schedule groups.

    For each schedule group that you create:
    1. Give it a unique name. It can’t be longer than 40 characters. This is the name that frontline managers and workers see in the Shifts schedule.  
    1. Choose an icon.
    1. Enter a unique code. The code can be up to 100 alphanumeric characters long.
1. When you're done, select **Next**.

### Review and finish setup

Review your settings. If you need to make changes, select **Back**, and edit the settings that you want. When you're ready, select **Finish setup**.

:::image type="content" source="media/dsas-finish-setup.png" alt-text="Screenshot of the Review and finish setup page, showing a summary of the selected settings. "lightbox="dsas-finish-setup.png":::

The setup status in the table changes to **Completed** when setup is finished.  

## Deploy Shifts to your frontline teams

When setup is completed, you’re ready to deploy Shifts to your frontline teams.  

1. On the Manage frontline apps page, next to **Deploy Shifts to your teams** in the table, choose **Deploy**.  

    :::image type="content" source="media/dsas-deploy.png" alt-text="Screenshot of the table on the Manage frontline apps page, showing the Deploy button for deploying Shifts. "lightbox="dsas-deploy.png":::

1. Select the teams that you want to deploy Shifts to, and then choose **Next**.

    :::image type="content" source="media/dsas-select-teams.png" alt-text="Screenshot of the Select teams page, showing a list of teams. "lightbox="dsas-select-teams.png":::

1. For each team that you selected, set the time zone for the team’s schedule in Shifts. The time zone should reflect the team's location.

    You can also set a default time zone, which is automatically applied to all teams. If you choose to set a default time zone, you can still select different time zones for specific teams.

    :::image type="content" source="media/dsas-select-time-zone.png" alt-text="Screenshot of the Select team time zones page, showing a list of teams and time zones. "lightbox="dsas-select-time-zone.png":::

    > [!NOTE]
    > Frontline managers can later change the time zone setting for their teams in Shifts. You might want to ask your frontline managers to verify the time zone and adjust it if needed, before they start using Shifts.
1. When you’re done, select **Deploy**.

    :::image type="content" source="media/dsas-time-zone-deploy.png" alt-text="Screenshot of the Select team time zones page, showing the Deploy button. "lightbox="dsas-time-zone-deploy.png":::

    This process can take a while depending on how many teams you're deploying Shifts to. Refresh the Manage frontline apps page to get the latest status.

    :::image type="content" source="media/dsas-deploy-completed.png" alt-text="Screenshot of the table on the Manage frontline apps page, showing a deployment status of Deployed. "lightbox="dsas-deploy-completed.png":::

    When deployment is completed, the deployment status shows as **Deployed** in the table. On the **Shifts** card, you’ll see the number of frontline teams that Shifts is deployed to. You can also download a CSV file with a list of those teams.

    You can repeat this process to deploy Shifts to any of your frontline teams that don't already have it deployed. Keep in mind that you can't redeploy Shifts to teams that already have Shifts enabled. The capability to edit Shifts settings configurations for your teams after the first deployment will be supported in the future.

## Troubleshoot errors

If an error occurred during the deployment process, the status in the table shows as **Error** after you refresh the Manage frontline apps page.

Select the link to download an error CSV file and use the information in it help resolve the errors. Then, rerun the [deployment experience](#deploy-shifts-to-your-frontline-teams).  

## Related articles

- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
