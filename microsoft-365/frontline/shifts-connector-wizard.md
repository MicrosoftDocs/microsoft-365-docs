---
title: Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management
author: lanachin
ms.author: v-lanachin
ms.reviewer: 
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use the Shifts connector wizard to integrate Shifts in Teams with Blue Yonder Workforce Management.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management

## Overview

[!INCLUDE [shifts-connector-wizard-intro](includes/shifts-connector-wizard-intro.md)]

## Integrate Shifts with Blue Yonder Workforce Management

The [Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder) enables you to integrate Shifts with Blue Yonder Workforce Management (Blue Yonder WFM) to manage your schedules and keep them up to date. In this article, we walk you through how to run the wizard to set up a connection to Blue Yonder WFM through the connector.

> [!NOTE]
> You can also use PowerShell to integrate Shifts with Blue Yonder WFM. To learn more, see [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md).

## Before you begin

You must be a Microsoft 365 global admin to run the wizard.

### Prerequisites
<a name="prerequisites"> </a>
[!INCLUDE [shifts-connector-prerequisites](includes/shifts-connector-prerequisites.md)]

- The teams you want to map don't have any schedules. If a team has an existing schedule, [remove the schedule from the team](#remove-schedules-from-teams-you-want-to-map) before you map a Blue Yonder WFM instance to it. Otherwise, you'll see duplicate shifts.

## Remove schedules from teams you want to map
<a name="remove_schedules"> </a>

> [!NOTE]
> Complete this step if you're mapping Blue Yonder WFM instances to existing teams that have schedules. If you're mapping to teams that don't have any schedules or if you're creating new teams to map to, you can skip this step.

Use PowerShell to remove schedules from teams.

1. First, you'll need to install the PowerShell modules and get set up. Follow the steps to [set up your environment](shifts-connector-powershell-manage.md#set-up-your-environment)
1. Run the following command:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord).

## Run the wizard

### Get started

1. In the left navigation of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then go to the **Apps and email** section.
1. Select **Connect your workforce management system**. Here, you can learn more about Shifts connectors and the frontline worker and manager experience when you connect Shifts to your WFM system.
    :::image type="content" source="media/shifts-connector-wizard-get-started.png" alt-text="Screenshot of the details page for the Shifts connector wizard in the Microsoft 365 admin center." lightbox="media/shifts-connector-wizard-get-started.png":::
1. When you're ready, select **Get started**.
1. On the Choose your connector page, choose **Blue Yonder Workforce Management**, and then select **Next** to create a Blue Yonder WFM connection.

### Enter connection details
<a name="connection_details"> </a>

1. On the Connection details page, give your connection a unique name. It can't be longer than 128 characters or have any special characters.
    :::image type="content" source="media/shifts-connector-wizard-connection-details.png" alt-text="Screenshot of the Connection details page of the wizard, showing connection settings." lightbox="media/shifts-connector-wizard-connection-details.png":::
1. Enter your Blue Yonder WFM service account name and password and service URLs.
1. When you're done, select **Next** to test the connection with the settings you entered.

### Choose sync settings
<a name="sync"> </a>

On the Sync settings page, you choose the information to sync from Blue Yonder WFM to Shifts, the sync frequency, and whether Shifts users can make changes to the data.

1. Enter your Microsoft 365 system account.
    :::image type="content" source="media/shifts-connector-wizard-sync-settings.png" alt-text="Screenshot of the Sync settings page of the wizard, showing sync settings." lightbox="media/shifts-connector-wizard-sync-settings.png":::
<a name="email"> </a>
1. Under **Email notification recipients**, choose who receives email notifications about this connection. You can add individual users and groups. The email notifications contain information about connection setup status and any issues or errors that may occur after the connection is set up.
1. Choose your sync settings:
    1. Under **Schedule and shifts**, choose the Blue Yonder WFM data that Shifts users can see or change, and then set the sync frequency.
    1. Under **Time card**, choose what action Shifts users can do with time entries.
    1. Under **Requests**, choose the types of requests that Shifts users can see and create.

    > [!IMPORTANT]
    > If you chose any of the following options to disable open shifts, open shift requests, swap requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
    >
    > - Open shifts: **Shifts users will not see Blue Yonder WFM data**
    > - Swap requests: **Feature is disabled for all users**
    > - Time off requests: **Feature is disabled for all users**
    >
    > After you run the wizard, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.
 
1. When you're done choosing your settings, select **Create connection**.

### Map Blue Yonder Workforce Management instances to teams
<a name="sites"> </a>

Choose the Blue Yonder WFM instances that you want to connect to Shifts, and then map each instance to a team in Teams. You can map up to 100 instances. There's two ways that you can do this:

- [Manually map instances to teams](#manually-map-instances-to-teams)
- [Prepare and upload a CSV file that defines your mappings](#use-a-csv-file-to-map-instances-to-teams)

#### Manually map instances to teams

Select the instances that you want to map.

:::image type="content" source="media/shifts-connector-wizard-sites.png" alt-text="Screenshot of wizard, showing the list of Blue Yonder WFM instances." lightbox="media/shifts-connector-wizard-sites.png":::
<a name="mapping"> </a>
<a name="search_teams"> </a>
Then, map each instance to a team in Teams. You can map an instance to an existing team or you can create a new team.
:::image type="content" source="media/shifts-connector-wizard-search-team.png" alt-text="Screenshot of the pane showing the search team option and create a new team option." lightbox="media/shifts-connector-wizard-search-team.png":::

[!INCLUDE [shifts-connector-manually-map-instances](includes/shifts-connector-manually-map-instances.md)]

#### Use a CSV file to map instances to teams

1. Select **switch to bulk mode**.
1. Select **download a template file** to download a mapping template that you can use to define your mappings.

    :::image type="content" source="media/shifts-connector-wizard-mapping-file.png" alt-text="Screenshot of the Upload mapping file page of the wizard." lightbox="media/shifts-connector-wizard-mapping-file.png":::

1. Use the template to create your mapping file. It contains these columns, in the following order, starting with the first column. An asterisk (*) indicates a required column.

    |Column name  |Description  |
    |---------|---------|
    |**Blue Yonder Instance ID*** |The Blue Yonder WFM instance ID.|
    |**Blue Yonder Instance Name**|The Blue Yonder WFM instance name.|
    |**Team ID*** |The team ID.|
    |**Team Name**|The team name.|
    |**Time zone*** |The time zone in tz database format. For example, Europe/London.|

    > [!NOTE]
    > You only need to fill out the required columns (Blue Yonder Instance ID, Team ID, Time zone) to map instances to teams.

    Here's an example of what a mapping file looks like.

    |Blue Yonder Instance ID|Blue Yonder Instance Name|Team ID|Team Name|Time zone|
    |---------|---------|---------|---------|---------|
    |2111|Contoso US Team|3a4d78a-2261|US Team|America/Los_Angeles|
    |3212|Contoso UK Team|2d1f6c2e-5272|UK Team|Europe/London|
    |4865||bfa6o89e-1328||America/Toronto|

1. When you've created your mapping file, select **Browse** to upload it. The wizard validates your file. If it finds errors, you'll see a list of the errors, and a message requesting that you correct them. Otherwise, you'll see a message to continue to the next step.  
1. Select **Next**.

### Review and finish

Review your settings. If you need to make changes to any team mappings, choose **Edit** to do so. When you're ready, select **Finish**.

:::image type="content" source="media/shifts-connector-wizard-review.png" alt-text="Screenshot of the Review page of the wizard, showing mappings." lightbox="media/shifts-connector-wizard-review.png":::

You’ll see a message to confirm that we received your request along with an operation ID. Make a note of the operation ID. You'll need it to check the setup status of your connection.

:::image type="content" source="media/shifts-connector-wizard-operation-id.png" alt-text="Screenshot of the wizard page, showing confirmation message and operation ID." lightbox="media/shifts-connector-wizard-operation-id.png":::

The wizard starts the process to set up the connection and map the instances to the teams you selected. This process may take some time to complete. The recipients you chose will receive email notifications about setup status.

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

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule) to set the following parameters to ```false``` for each team that you mapped to a Blue Yonder WFM instance:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.

## Manage your connection
<a name="update_connection"> </a>

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management page lists each connection that you've set up, along with information such as health status and sync interval details. You can also access the wizard to make changes to any of your connections. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-blue-yonder-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md).

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
