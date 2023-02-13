---
title: Use the Shifts connector wizard to connect Shifts to UKG Dimensions
author: samanro
ms.author: samanro
ms.reviewer: imarquesgil
manager: pamgreen
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use the Shifts connector wizard to integrate Shifts in Teams with UKG Dimensions.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/28/2022
---

# Use the Shifts connector wizard to connect Shifts to UKG Dimensions

## Overview

[!INCLUDE [shifts-connector-wizard-intro](includes/shifts-connector-wizard-intro.md)]

## Integrate Shifts with UKG Dimensions

The [Microsoft Teams Shifts connector for UKG Dimensions](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-dimensions) enables you to integrate Shifts with UKG Dimensions to manage your schedules and keep them up to date. In this article, we walk you through how to run the wizard to set up a connection and a connection instance to UKG Dimensions through the connector.

> [!NOTE]
> You can also use PowerShell to integrate Shifts with UKG Dimensions. To learn more, see [Use PowerShell to connect Shifts to UKG Dimensions](shifts-connector-ukg-powershell-setup.md).

## Before you begin

You must be a Microsoft 365 global admin to run the wizard.

<a name="prerequisites"> </a>
### Prerequisites
[!INCLUDE [shifts-connector-ukg-prerequisites](includes/shifts-connector-ukg-prerequisites.md)]

- The teams you want to map don't have any schedules. If a team has an existing schedule, [remove the schedule from the team](#remove-schedules-from-teams-you-want-to-map) before you map a UKG Dimensions instance to it. Otherwise, you'll see duplicate shifts.

### Configure single sign-on

[!INCLUDE [shifts-connector-ukg-sso](includes/shifts-connector-ukg-sso.md)]

<a name="remove_schedules"> </a>
## Remove schedules from teams you want to map

> [!NOTE]
> Complete this step if you're mapping UKG Dimensions instances to existing teams that have schedules. If you're mapping to teams that don't have any schedules or if you've already created new teams to map to, you can skip this step.

Use PowerShell to remove schedules from teams.

1. First, you'll need to install the PowerShell modules and get set up. Follow the steps to [set up your environment](shifts-connector-ukg-powershell-manage.md#set-up-your-environment)
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
1. In the Choose your connector pane, choose **UKG Dimensions**, and then select **Next** to create a UKG Dimensions connection.
<a name="connection_details"> </a>
1. In the Connection settings pane, give your connection a unique name. It can't be longer than 100 characters or have any special characters.
    :::image type="content" source="media/shifts-connector-wizard-ukg-connection-details.png" alt-text="Screenshot of the Connection details page of the wizard, showing connection settings." lightbox="media/shifts-connector-wizard-ukg-connection-details.png":::
1. Enter your UKG Dimensions service account name (which enables access to all instances created in UKG Dimensions) and password and service URLs. If you don't know one or more of your connection details, contact your UKG Dimensions delivery partner or account manager.
1. When you're done, select **Save connection**.

> [!NOTE]
> If you need to create another connection, go to the Connector Management Console page, and then select **Add connection**.

### Create a connection instance

After you create a connection, you can set up one or more connection instances in that connection.

You'll see all the connections you've created on your **Connector Management Console**. Under the connection where you want to create a new instance, select **Create instance**.

<a name="sync"> </a>
#### Choose settings

On the Settings page, you choose the information to sync from UKG Dimensions to Shifts, the sync frequency, and whether Shifts users can make changes to the data.

1. Enter a name for your connection instance. It can't be longer than 100 characters or have any special characters.
1. Enter your Microsoft 365 system account. This is the [account that you created as a prerequisite](#before-you-begin) that is a team owner of all the teams you want to map.
    :::image type="content" source="media/shifts-connector-wizard-ukg-sync-settings.png" alt-text="Screenshot of the Sync settings page of the wizard, showing sync settings." lightbox="media/shifts-connector-wizard-ukg-sync-settings.png":::
<a name="email"> </a>
1. Under **Email notification recipients**, choose who receives email notifications about this connection instance. You can add individual users and groups. The email notifications contain information about setup status and any issues or errors that may occur after the connection instance is set up.
1. Next you'll need to choose what UKG Dimensions data your users can see and change. Choose your settings for:
    1. **Schedules, groups, shifts, and activities**
    1. **Open shifts**
    1. **Time off**
    1. **Employee availability**
1. Then choose your sync frequency.
1. Under **Time card**, choose whether users can post time card entries.
1. Under **Requests**, choose your settings for:
    1. **Swap requests**
    1. **Offer shifts requests**
    1. **Open shifts requests**
    1. **Time off requests**

    > [!IMPORTANT]
    > If you chose any of the following options to disable open shifts, open shift requests, swap requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
    >
    > - Open shifts: **Shifts users will not see UKG Dimensions data**
    > - Swap requests: **Feature is disabled for all users**
    > - Time off requests: **Feature is disabled for all users**
    >
    > After you run the wizard, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.
 
1. When you're done choosing your settings, select **Next**.

<a name="instances"> </a>
#### Map UKG Dimensions instances to teams

Choose the UKG Dimensions instances that you want to connect to Shifts, and then map each WFM instance to a team in Teams. You can map up to 400 instances.

- [Manually map instances to teams](#manually-map-instances-to-teams)

<a name="map_manual"> </a>
##### Manually map instances to teams

:::image type="content" source="media/shifts-connector-wizard-ukg-sites.png" alt-text="Screenshot of wizard, showing the list of UKG Dimensions instances." lightbox="media/shifts-connector-wizard-ukg-sites.png":::

:::image type="content" source="media/shifts-connector-wizard-ukg-search-team.png" alt-text="Screenshot of the pane showing the search team option and create a new team option." lightbox="media/shifts-connector-wizard-ukg-search-team.png":::

[!INCLUDE [shifts-connector-manually-map-instances](includes/shifts-connector-manually-map-instances.md)]

### Review and finish

Before finishing, review the summary of the connection instance creation process. If you need to make changes to any team mappings, choose **Edit**. When you're ready, select **Finish**.

:::image type="content" source="media/shifts-connector-wizard-ukg-review.png" alt-text="Screenshot of the Review page of the wizard, showing mappings." lightbox="media/shifts-connector-wizard-ukg-review.png":::

You’ll see a message to confirm that we received your request.

:::image type="content" source="media/shifts-connector-wizard-ukg-operation-id.png" alt-text="Screenshot of the wizard page, showing confirmation message and operation ID." lightbox="media/shifts-connector-wizard-ukg-operation-id.png":::

The wizard starts the process to set up the connection instance. This process may take some time to complete. The email notification recipients you chose will receive email notifications about setup status in case there are any errors. You'll also receive email confirmation that your request was received, along with a link to how you can check setup status.

Select **Done** to exit the wizard.

## Disable open shifts, open shifts requests, swap requests, and time off requests

> [!IMPORTANT]
> Follow these steps only if you chose any of the following options to disable open shifts, open shift requests, swap requests, or time off requests in the wizard. Completing this step hides the capability in Shifts.
>
> - Open shifts: **Shifts users will not see UKG Dimensions data**
> - Swap requests: **Feature is disabled for all users**
> - Time off requests: **Feature is disabled for all users**
>
> Without this second step, users will still see the capability in Shifts, and will get an "unsupported operation" error message if they try to use it.

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule) to set the following parameters to ```false``` for each team that you mapped to a UKG Dimensions instance:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.

<a name="manage"> </a>
## Manage your connection and connection instance

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management Console page lists each connection and connector instance that you've set up, along with information such as health status and sync interval details. You can also access the wizard to create new connections and connection instances and make changes to any of your existing ones. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md).

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
