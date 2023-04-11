---
title: Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management (Preview)
author: daisyfell
ms.author: daisyfeller
ms.reviewer: imarquesgil
manager: pamgreen
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use the Shifts connector wizard to integrate Shifts in Teams with Blue Yonder Workforce Management.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 2/27/2023
---

# Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management (Preview)

## Overview

[!INCLUDE [shifts-connector-wizard-intro](includes/shifts-connector-wizard-intro.md)]

### Terms used in this article

|Term |Definition |
|-----|-----------|
|Connection |This is where you configure your Blue Yonder WFM details by providing your service account name, password, and service URLs. This enables access to all your WFM (workforce management) instances created in your Blue Yonder WFM system. |
|Connection instance |This is where you configure: <br> - The synchronization settings that determine how and which schedule information syncs between Blue Yonder WFM and Shifts <br> - Team mappings to define the relationship between your WFM instances and teams in Microsoft Teams |
|WFM instance | This term refers to a site within your Blue Yonder WFM system. |

## Integrate Shifts with Blue Yonder Workforce Management

The [Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder) enables you to integrate Shifts with Blue Yonder Workforce Management (Blue Yonder WFM) to manage your schedules and keep them up to date. In this article, we walk you through how to run the wizard to set up a connection and connection instance to Blue Yonder WFM through the connector.

> [!NOTE]
> You can also use PowerShell to integrate Shifts with Blue Yonder WFM. To learn more, see [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md).

## Before you begin

You must be a Microsoft 365 global admin to run the wizard.

### Prerequisites
<a name="prerequisites"> </a>
[!INCLUDE [shifts-connector-prerequisites](includes/shifts-connector-prerequisites.md)]

- The teams you want to map don't have any schedules. If a team has an existing schedule, [remove the schedule entities from the team](#remove-schedule-entities-from-teams-you-want-to-map) before you map a Blue Yonder WFM instance to it. Otherwise, you'll see duplicate shifts.

## Remove schedule entities from teams you want to map
<a name="remove_schedules"> </a>

> [!NOTE]
> Complete this step if you're mapping Blue Yonder WFM instances to existing teams that have schedule entities. If you're mapping to teams that don't have any schedules or if you're creating new teams to map to, you can skip this step.

Use PowerShell to remove schedule entities from teams.

1. First, you'll need to install the PowerShell modules and get set up. Follow the steps to [set up your environment](shifts-connector-powershell-manage.md#set-up-your-environment)
1. Run the following command:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord).

## Run the wizard

### Create a connection

1. In the left navigation of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then under **Featured collections**, select **Frontline workers**.

1. Select **Connector Management Console**.
    :::image type="content" source="media/shifts-connector-wizard-get-started.png" alt-text="Screenshot of the details page for the Shifts connector wizard in the Microsoft 365 admin center." lightbox="media/shifts-connector-wizard-get-started.png":::

1. To create a new connection, choose **Add connection**.

1. In the Choose your connector pane, choose **Blue Yonder Workforce Management**, and then select **Next** to create a Blue Yonder WFM connection.
<a name="connection_details"> </a>

1. In the Connection settings pane, give your connection a unique name. It can't be longer than 100 characters or have any special characters.

1. Enter your Blue Yonder WFM service account name and password and service URLs. If you don't know one or more of your connection details, contact your Blue Yonder WFM partner.
    :::image type="content" source="media/shifts-connector-wizard-connection-details.png" alt-text="Screenshot of the Connection details page of the wizard, showing connection settings." lightbox="media/shifts-connector-wizard-connection-details.png":::

1. When you're done, select **Save connection**.

> [!NOTE]
> If you need to create another connection, go to the Connector Management Console page, and then select **Add connection**.

### Create a connection instance

After you create a connection, you can set up one or more connection instances in that connection.

You'll see all the connections you've created on your **Connector Management Console**. Under the connection where you want to create a new instance, select **Create instance**.
    :::image type="content" source="media/shifts-connector-wizard-by-create-instance.png" alt-text="Screenshot of the Connector Management Console, showing the button to create a new instance." lightbox="media/shifts-connector-wizard-by-create-instance.png":::

#### Choose settings
<a name="sync"> </a>

On the Settings page, you choose the information to sync from Blue Yonder WFM to Shifts, the sync frequency, and whether Shifts users can make changes to the data.
    :::image type="content" source="media/shifts-connector-wizard-sync-settings.png" alt-text="Screenshot of the Sync settings page of the wizard, showing sync settings." lightbox="media/shifts-connector-wizard-sync-settings.png":::

1. Enter a name for your connection instance. It can't be longer than 100 characters or have any special characters.

1. Enter your Microsoft 365 system account. This is the [account that you created as a prerequisite](#prerequisites) that is a team owner of all the teams you want to map.

<a name="email"> </a>

3. Under **Email notification recipients**, choose who receives email notifications about this connection instance. You can add individual users and groups. The email notifications contain information about setup status and any issues or errors that may occur after the connection instance is set up.

  > [!TIP]
  > You'll be given the following options for the next group of settings: <br>
  > **Shifts users will not see provider data**: Data won't sync between Blue Yonder WFM and Shifts. <br>
  > **Shifts users can see provider data**: Data syncing is unidirectional from Blue Yonder WFM to Shifts. <br>
  > **Shifts users can see and change provider data**: Data syncing is bidirectional between Blue Yonder WFM and Shifts.

4. Choose your basic, **Time card**, and **Request** settings from the options listed above.

5. Then, choose your sync frequency.

    > [!IMPORTANT]
    > Before you disable a feature by selecting the option **Shifts users will not see provider data**, be aware that:
    >
    > - If the setting **Schedules, groups, shifts, and activities** is disabled, then all other settings, such as **Time off** and **Employee availability**, and more, will also be disabled.
    > - If the setting **Open shift** is disabled, **Open shift request** will also be disabled.
    > - If the setting **Time off** is disabled, **Time off request** will also be disabled.

    > [!IMPORTANT]
    > If you chose any of the following options to disable open shifts, open shift requests, swap requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
    >
    > - Open shifts: **Shifts users will not see provider data**
    > - Swap requests: **Shifts users will not see provider data**
    > - Time off requests: **Shifts users will not see provider data**
    >
    > After you run the wizard, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.

6. When you're done choosing your settings, select **Next**.

#### Map Blue Yonder Workforce Management instances to teams
<a name="sites"> </a>

Choose the Blue Yonder WFM instances that you want to connect to Shifts, and then map each WFM instance to a team in Teams. You can map up to 400 instances.

:::image type="content" source="media/shifts-connector-wizard-map.png" alt-text="Screenshot of wizard, showing the list of Blue Yonder WFM instances." lightbox="media/shifts-connector-wizard-map.png":::
<a name="mapping"> </a>
<a name="search_teams"> </a>
Then, map each instance to a team in Teams. You can map an instance to an existing team or you can create a new team.

1. On the **Mapping** page, start by choosing which WFM instance(s) you want to map to Microsoft Teams team(s).

1. Tick the checkbox for each WFM instance you want to map. Instances will only map if you check their boxes.

1. Next, search for and choose the correct Microsoft Teams team.
    Keep in mind that teams that are already mapped to a WFM instance in this connection instance won't be available to map again.

1. Choose the time zone. The closest city will be automatically filled in, but you can change it.

1. When you've mapped all your teams, select **Next**.

### Review and finish

Before finishing, review the summary of the connection instance creation process. If you need to make changes during the connection instance creation process, choose **Back**. When you're ready, select **Finish**.

:::image type="content" source="media/shifts-connector-wizard-review.png" alt-text="Screenshot of the Review page of the wizard, showing mappings." lightbox="media/shifts-connector-wizard-review.png":::

The wizard starts the process to set up the connection instance, which may take some time to complete. If you try to edit the connection instance before the setup is complete, you most likely won't be able to view the mappings you created previously.

The email notification recipients you chose will receive email notifications about setup status in case there are any errors.

Select **Done** to exit the wizard.

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

## Manage your connection and connection instance
<a name="update_connection"> </a>

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management Console page lists each connection and connection instance that you've set up, along with information such as health status and sync interval details. You can also access the wizard to create new connections and connection instances and make changes to any of your existing ones. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-blue-yonder-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md).

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
