---
title: Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management
author: lanachin
ms.author: v-lanachin
ms.reviewer: 
manager: samanro
ms.topic: article
audience: admin
ms.service: msteams
search.appverid: MET150
description: Learn how to use the Shifts connector wizard to integrate Shifts in Teams with Blue Yonder Workforce Management.
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_FLW
appliesto: 
  - Microsoft Teams
---

# Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management

## Overview

The Shifts connector wizard in the Microsoft 365 admin center enables you to integrate the Shifts app in Microsoft Teams with your workforce management (WFM) system. After you set up a connection, your frontline workers can seamlessly view and manage their schedules in your WFM system from within Shifts.

The wizard configures the Shifts connector, creates a connection to your WFM system, and applies the sync settings and team mappings that you choose. Sync settings determine the schedule information that's synced between your WFM system and Shifts. Team mappings define the sync relationship between your WFM sites and teams in Teams. You can map to existing teams and new teams.

You can set up multiple connections, each with different sync settings. For example, if your organization has multiple locations with different schedule requirements, create a connection with unique sync settings for each location. Keep in mind that a WFM site can only be mapped to one team at any given time. If a WFM site is already mapped to a team, it can't be mapped to another team.

With your WFM system as the system of record, your frontline workers can see and swap shifts, manage their availability, and request time off in Shifts on their devices. Frontline managers can continue to use your WFM system to set up schedules.

## Integrate Shifts with Blue Yonder Workforce Management

Currently, the wizard supports the [Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder). This connector enables you to integrate Shifts with Blue Yonder Workforce Management (Blue Yonder WFM) to manage your schedules and keep them up to date. In this article, we walk you through how to run the wizard to set up a connection to Blue Yonder WFM through the connector.

> [!NOTE]
> You can also use PowerShell to integrate Shifts with Blue Yonder WFM. To learn more, see [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md).

## Before you begin

You must be a Microsoft 365 global admin to run the wizard.

### Prerequisites
<a name="prerequisites"> </a>
[!INCLUDE [shifts-connector-prerequisites](../../includes/shifts-connector-prerequisites.md)]

- The teams you want to map don't have any schedules. If a team has an existing schedule, [remove the schedule from the team](#remove-schedules-from-teams-you-want-to-map) before you map a Blue Yonder WFM site to it. Otherwise, you'll see duplicate shifts.

## Remove schedules from teams you want to map
<a name="remove_schedules"> </a>

> [!NOTE]
> Complete this step if you're mapping Blue Yonder WFM sites to existing teams that have schedules. If you're mapping to teams that don't have any schedules or if you're creating new teams to map to, you can skip this step.

Use PowerShell to remove schedules from teams.

1. First, you'll need to install the PowerShell modules and get set up. Follow the steps to [set up your environment](shifts-connector-powershell-manage.md#set-up-your-environment).
1. Run the following command:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector?view=teams-ps). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord?view=teams-ps).

## Run the wizard

### Get started

1. In the left navigation of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then go to the **Apps and email** section.
1. Select **Connect your workforce management system**. Here, you can learn more about Shifts connectors and the frontline worker and manager experience when you connect Shifts to your WFM system.
    :::image type="content" source="../../media/shifts-connector-wizard-get-started.png" alt-text="Screenshot of the details page for the Shifts connector wizard in the Microsoft 365 admin center." lightbox="../../media/shifts-connector-wizard-get-started.png":::
1. When you're ready, select **Get started**.
1. Select **Next** to create a Blue Yonder WFM connection.

### Enter connection details
<a name="connection_details"> </a>

1. On the Connection details page, give your connection a unique name. It can't be longer than 128 characters or have any special characters.
    :::image type="content" source="../../media/shifts-connector-wizard-connection-details.png" alt-text="Screenshot of the Connection details page of the wizard, showing connection settings." lightbox="../../media/shifts-connector-wizard-connection-details.png":::
1. Enter your Blue Yonder WFM service account name and password and service URLs.
1. When you're done, select **Next** to test the connection with the settings you entered.

### Choose sync settings
<a name="sync"> </a>

On the Sync settings page, you choose the information to sync from Blue Yonder WFM to Shifts, the sync frequency, and whether Shifts users can make changes to the data.

1. Enter your Microsoft 365 system account.
    :::image type="content" source="../../media/shifts-connector-wizard-sync-settings.png" alt-text="Screenshot of the Sync settings page of the wizard, showing sync settings." lightbox="../../media/shifts-connector-wizard-sync-settings.png":::
<a name="email"> </a>
1. Under **Email notification recipients**, choose who receives email notifications about this connection. You can add individual users and groups. The email notifications contain information about connection setup status and any issues or errors that may occur after the connection is set up.
1. Choose your sync settings:
    1. Under **Schedule and shifts**, choose the Blue Yonder WFM data that Shifts users can see or change, and then set the sync frequency.
    2. Under **Requests**, choose the types of requests that Shifts users can see and create.

    > [!IMPORTANT]
    > If you chose any of the following options to disable open shifts, open shift requests, swap requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
    >
    > - Open shifts: **Shifts users will not see Blue Yonder WFM data**
    > - Swap requests: **Feature is disabled for all users**
    > - Time off requests: **Feature is disabled for all users**
    >
    > After you run the wizard, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.
 
1. When you're done choosing your settings, select **Create connection**.

### Map Blue Yonder Workforce Management sites to teams
<a name="sites"> </a>

Choose the Blue Yonder WFM sites you want to connect to Shifts. You can select up to 100 sites.

:::image type="content" source="../../media/shifts-connector-wizard-sites.png" alt-text="Screenshot of wizard, showing list of Blue Yonder WFM sites." lightbox="../../media/shifts-connector-wizard-sites.png":::
<a name="mapping"> </a>
<a name="search_teams"> </a>
Then, map each Blue Yonder WFM site that you selected to a team in Teams. You can map a site to an existing team or you can create a new team.
:::image type="content" source="../../media/shifts-connector-wizard-search-team.png" alt-text="Screenshot of the pane showing the search team option and create a new team option." lightbox="../../media/shifts-connector-wizard-search-team.png":::
#### To map a site to an existing team

1. Select the site name.
2. In the pane, search for the team, and then select it. Keep in mind that teams that are already mapped to a site in this connection don't show up in the search.
3. Choose the time zone and closest city.
4. Select **Save**, and then select **Next**.

#### To map a site to a new team

1. Select the site name.
2. In the pane, choose **Create a new team**. You'll be taken to a new tab in your browser where you can create a new team in the Microsoft 365 admin center.
    1. Enter a name and an optional description for the team.
    1. Add one or more team owners. Make sure you add the Microsoft 365 system account as owner.
    1. Add team members.
    1. Add a team email address and choose a privacy setting.
    1. Review your settings, and then choose **Add team**. When your team is created, choose **Close**.
3. Go back to the wizard, search for, and then select the new team you created.
4. Choose the time zone and closest city.
5. Select **Save**, and then select **Next**.

### Review and finish

Review your settings. If you need to make changes to any team mappings, choose **Edit** to do so. When you're ready, select **Finish**.

:::image type="content" source="../../media/shifts-connector-wizard-review.png" alt-text="Screenshot of the Review page of the wizard, showing mappings." lightbox="../../media/shifts-connector-wizard-review.png":::

You’ll see a message to confirm that we received your request along with an operation ID. Make a note of the operation ID. You'll need it to check the setup status of your connection.

:::image type="content" source="../../media/shifts-connector-wizard-operation-id.png" alt-text="Screenshot of the wizard page, showing confirmation message and operation ID." lightbox="../../media/shifts-connector-wizard-operation-id.png":::

The wizard starts the process to set up the connection and map the sites to the teams you selected. This process may take some time to complete. The recipients you chose will receive email notifications about setup status.

Select **Done** to exit the wizard.

You’re on your way but you’re not done yet! Be sure to check your email. You'll receive a confirmation that we received your request along with a [link](shifts-connector-powershell-manage.md#check-connection-setup-status) to how you can check setup status.

> [!NOTE]
> If an issue or error occurs in a connection after it's set up, you'll get notified in email. Follow the instructions in the email to troubleshoot the issue.

## Disable open shifts, open shifts requests, swap requests, and time off requests

> [!IMPORTANT]
> Follow these steps only if you chose any of the following options to disable open shifts, open shift requests, swap requests, or time off requests in the wizard. Completing this step hides the capability in Shifts.
>
> - Open shifts: **Shifts users will not see Blue Yonder WFM data**
> - Swap requests: **Feature is disabled for all users**
> - Time off requests: **Feature is disabled for all users**
>
> Without this second step, users will still see the capability in Shifts, and will get an "unsupported operation" error message if they try to use it.

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule?view=graph-rest-1.0) to set the following parameters to ```false``` for each team that you mapped to a Blue Yonder WFM site:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.

## If you need to make changes to a connection
<a name="update_connection"> </a>

After a connection is set up, you use PowerShell to make changes to it. For example, you can update sync settings, team mappings, and disable sync for a connection. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md).

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md)
- [Manage the Shifts app in Teams](manage-the-shifts-app-for-your-organization-in-teams.md)
