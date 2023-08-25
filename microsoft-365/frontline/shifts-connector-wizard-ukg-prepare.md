---
title: Prerequisites and considerations for the Teams Shifts connector for UKG Dimensions
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: imarquesgil
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about the requirements, prerequisites, and environment setup that you need before you use the Shifts connector wizard or PowerShell to integrate Shifts in Teams with UKG Dimensions.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 3/23/2023
---

# Prerequisites and considerations for the Teams Shifts connector for UKG Dimensions

## Overview

The [Microsoft Teams Shifts connector for UKG Dimensions](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-dimensions) (Preview) enables you to integrate the Shifts app in Microsoft Teams with UKG Dimensions. Your frontline workers can seamlessly view and manage their schedules in UKG Dimensions from within Shifts.

You can use the [Shifts connector wizard](shifts-connector-wizard-ukg.md) (Preview) in the Microsoft 365 admin center or [PowerShell](shifts-connector-ukg-powershell-setup.md) to create a connection and connection instances. After they're set up, you can manage them in the Microsoft 365 admin center or by using PowerShell.

<!--This article gives you an overview of prerequisites, configuration tasks to complete, and important concepts to keep in mind, before you use the wizard or PowerShell to integrate Shifts in Teams with UKG Dimensions.-->

This article lists requirements, prerequisites, and configuration tasks that you must complete before you use the wizard or PowerShell to create a connection. It also gives you an overview of important concepts around how your UKG Dimension structure influences the way you set up your teams in Teams.

## Before you begin

Before you integrate Shifts with UKG Dimensions, your organization must have the following environment requirements already set up. How UKG Dimensions is set up in your organization may determine whether you can use out-of-the-box Teams Shifts connector for UKG Dimensions.

- Your UKG Dimensions environment is configured. This means that your organization has completed the following:

    - You've established how "teams" (grouping of users) are organized to match your organizational structure and business needs.

        > [!IMPORTANT]
        > Shifts currently supports grouping users by location in UKG Dimensions. Other user grouping types aren't supported.

    - You've set up relevant requests, such as shift requests and time off requests, according to your business needs.

        > [!IMPORTANT]
        > Shifts currently supports the following UKG Dimensions request types:

- You're using Azure Active Directory (Azure AD) as your identity provider.

## Prerequisites

Here's the list of information to gather and configuration tasks to complete before you run the [wizard](shifts-connector-wizard-ukg.md) or use [PowerShell](shifts-connector-ukg-powershell-setup.md) to create a connection.

- You’re a Microsoft 365 global admin.

- You know your UKG Dimensions account username and password, along with the following service URLs:

    - API URL
    - Application key
    - Client ID
    - Client secret
    - Single Sign On (SSO) URL

    If you don't have all this information, contact UKG Dimensions support.

- Enable SSO by setting up integration between Azure AD and UKG Dimensions.

    For a step-by-step tutorial, see [Tutorial: Azure AD SSO integration with Kronos Workforce Dimensions.](/azure/active-directory/saas-apps/kronos-workforce-dimensions-tutorial) If you need help or more information about setting up SSO, contact UKG Dimensions support.

- Configure federated SSO authentication in your UKG Dimensions environment.

    See the [Configure UKG Dimensions single sign-on](#configure-single-sign-on) section in this article for steps on how to configure SSO.

- Create at least one team in Teams, and add the following account and people to the team:

    - Frontline workers as teams members
    - Frontline managers as team owners
    - A general account, what we call the Microsoft 365 system account, as team owner.

    > [!NOTE]
    > The Microsoft 365 system account is a general account must be added as team owner to all teams you want to map. You can [create this account in the Microsoft 365 admin center](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner. The Shifts connector uses this account when syncing Shifts changes from UKG Dimensions. We recommend you create an account specifically for this purpose and not use your personal user account.

    If you want to create more than one team, see [Deploy frontline static teams at scale](deploy-teams-at-scale.md).

<!--- You added a Microsoft 365 system account (not your personal user account) as team owner to all teams you want to map.

    You can [create this account in Microsoft 365](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner to all teams that you want to map. The Shifts connector uses this account when syncing Shifts changes from UKG Dimensions. We recommend you create an account specifically for this purpose and not use your personal user account.-->

- Make sure the teams that you want to map don't have any schedules that were created in Shifts or UKG Dimensions. If a team has an existing schedule, you must remove schedule entities from the team before you map a UKG Dimensions instance to it. Follow the steps in the [Remove schedule entities from the team](#remove-schedule-entities-from-teams-you-want-to-map) section of this article. Otherwise, you'll see duplicate shifts.

### Configure single sign-on

[!INCLUDE [shifts-connector-ukg-sso](includes/shifts-connector-ukg-sso.md)]

<a name="remove_schedules"> </a>

### Remove schedule entities from teams you want to map

> [!NOTE]
> Complete this step if you're mapping UKG Dimensions instances to existing teams that have schedule entities. If you're mapping to teams that don't have any schedules or if you've already created new teams to map to, you can skip this step.

Use PowerShell to remove schedule entities from teams.

1. [Install the PowerShell modules and set up your PowerShell environment](shifts-connector-ukg-powershell-manage.md#set-up-your-environment) (if you haven't already).

1. Run the following command:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord).

## Roles and permissions in Teams and their impact on Shifts

## Understand how your UKG Dimensions organizational structure influences Teams and Shifts setup

The way you organize your teams in Teams depends on your UKG Dimensions structure.

As mentioned earlier, Shifts supports grouping users by location in UKG Dimensions. In UKG Dimensions, the nodes in each location represent the hierarchy in your organizational chart. A location path reaches its endpoint when a job type is configured.

Users in UKG Dimensions are assigned and grouped by primary jobs that exist within a location. This means that from a Teams and Shifts standpoint, employees who have the same location path up to the node before job type are part of the same team. The job type in a location path is represented as a scheduling group in Shifts.

## Example

Here's an example to help you understand how your UKG Dimensions structure influences the way you set up your teams and how schedule information syncs to Shifts.

### Scenario

Contoso has hundreds of retail stores spread across the United Kingdom. Each store is located within an Area in the United Kingdom. To simplify this example, we focus on three stores in the Central London Area, to which Contoso wants to start rolling out Teams and Shifts for their frontline employees.

Assumptions:

- Each store is managed by a different manager.
- Frontline workers can't take on shifts from other stores. In other words, business rules set up in UKG Dimensions don't allow employees to work at other stores.

### UKG Dimensions location structure

In this scenario, the UKG Dimensions location structure looks something like this.

|Level |UKG Dimensions location |Nodes |
|---------|---------|---------|
|0|Contoso |Company|
| 1|Retail |Business|
|  2|Central London |Area|
|   3|Soho |Store|
|    4|Beauty advisor |Job type|
|    4|Leather goods sales associate|Job type|
|    4|Sales associate|Job type|
|    4|Personal shopper|Job type|
|   3|Covent Garden|Store|
|    4|Leather good sales associate|Job type|
|    4|Sales associate|Job type|
|   3|Chelsea|Store|
|    4|Sales associate|Job type|
|    4|Personal shopper |Job type|
|    4|Beauty advisor |Job type|

Based on the location structure, UKG Dimensions would provide the following information.

|UKG Dimensions location|Workers|Primary job|Reports to|
|---------|---------|---------|---------|
|Contoso/Retail/Central London/Soho|FLW1, FLW2<br>FLW3, FLW4<br>FLW5, FLW6, FLW7<br>FLW8, FLW9, FLW10|Beauty advisor<br>Leather goods sales associate<br>Sales associate<br>Personal shopper|FLM1|
|Contoso/Retail/Central London/Covent Garden|FLW11, FLW12, FLW13, FLW14<br>FLW15, FLW16|Leather goods sales associate<br>Sales associate|FLM2|
|Contoso/Retail/Central London/Chelsea|FLW17, FLW18, FLW19, FLW20<br>FLW21, FLW21, FLW23<br>FLW24|Sales associate<br>Personal shopper<br>Beauty advisor|FLM3|

#### What implications does this have when setting up teams in Teams?

In this scenario, the IT admin organizes teams in Teams as follows.

1. Create three different teams for each store within the Central London area: Soho Store, Covent Garden Store, Chelsea Store.
1. Add employees that belong to the corresponding UKG Dimensions location to each team, including managers that the employees report to. Frontline workers are added as team members and frontline managers are added as team owners.

Here's how the team structure looks like for each store in the Central London Area.

In this scenario, keep in mind that a frontline worker can only be a member of one team. This is because frontline workers aren't allowed to work at other stores.

#### What implications does this have when running the Shifts connector wizard?

When the IT admin sets up a connection instance in the wizard, each store location is mapped to the relevant team.

|Store location  |Team name |
|---------|---------|
|Contoso/Retail/Central London/Soho|Soho Store|
|Contoso/Retail/Central London/Covent Garden|Covent Garden Store|
|Contoso/Retail/Central London/Chelsea|Chelsea Store

#### What does this look like in Shifts?

In Shifts, the scheduling groups of each team represent the primary jobs defined for the store location.

- Frontline managers see employees within their respective scheduling groups.
- Frontline workers see their own schedule and their team's schedule.


<!--The Shifts connector wizard in the Microsoft 365 admin center enables you to integrate the Shifts app in Microsoft Teams with your workforce management (WFM) system. Your frontline workers can seamlessly view and manage their schedules in your WFM system from within Shifts.

The wizard creates a connection to your UKG Dimensions system and a connection instance. This applies the sync settings and team mappings you choose. Sync settings determine the schedule information and what entities sync between UKG Dimensions and Shifts. Team mappings define the sync relationship between your UKG instances and teams in Microsoft Teams.

You can create one or more connection instances, each with different sync settings. For example, if your organization has multiple locations with different schedule requirements, create a connection instance with unique sync settings for each location. A UKG instance should only be mapped once to a Microsoft team at any given time. However, it's possible in the wizard to have different connection instances with the same mappings. This means that you can create connection instances with duplicated mappings.

With UKG Dimensions, your frontline workers can efficiently manage their schedules and availability in Shifts on their devices. Frontline managers can continue to use UKG to set up schedules.
### Terms used in this article

|Term |Definition |
|-----|-----------|
|Connection |This is where you configure your UKG Dimensions details by providing your account username, password, and service URLs. This enables access to all your WFM (workforce management) instances created in your UKG Dimensions WFM system. |
|Connection instance |This is where you configure: <br> - The synchronization settings that determine how and which schedule information syncs between UKG Dimensions and Shifts <br> - Team mappings to define the relationship between your WFM instances and teams in Microsoft Teams |
|WFM instance | This term refers to a team within your UKG Dimensions WFM system, which is different than a team in Microsoft Teams. |

## Integrate Shifts with UKG Dimensions

The [Microsoft Teams Shifts connector for UKG Dimensions](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-dimensions) enables you to integrate Shifts with UKG Dimensions to manage your schedules and keep them up to date. In this article, we explain how to run the wizard to set up a connection and a connection instance to UKG Dimensions.

> [!NOTE]
> If you prefer, you can use PowerShell to integrate Shifts with UKG Dimensions. To learn more, see [Use PowerShell to connect Shifts to UKG Dimensions](shifts-connector-ukg-powershell-setup.md).

### Prerequisites

Before you try the Shifts connector wizard, check that you meet all these prerequisites:

- Make sure you’re a Microsoft 365 global admin.

- Know your UKG Dimensions account username, password and these other details:

    - API URL
    - Application key
    - Client ID
    - Client secret
    - Single Sign On (SSO) URL

    If you don't have all this information, contact UKG Dimensions support.

- Make sure your organization is using Azure Active Directory (Azure AD). This is the supported identity provider for SSO. To enable SSO, set up integration between Azure AD and UKG Dimensions. For a step-by-step tutorial, see [Tutorial: Azure AD SSO integration with Kronos Workforce Dimensions.](/azure/active-directory/saas-apps/kronos-workforce-dimensions-tutorial) If you need help or more information about setting up SSO, contact UKG Dimensions support.

- Make sure Federated SSO authentication is enabled in your UKG Dimensions environment. Follow the steps below to [configure UKG Dimensions single sign-on](#configure-single-sign-on).

- Make sure you have at least one team set up in Microsoft Teams.

- Make sure you’ve added a Microsoft 365 system account (not your personal user account) as team owner to all teams you want to map.

    You can [create this account in Microsoft 365](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner to all teams that you want to map. The Shifts connector uses this account when syncing Shifts changes from UKG Dimensions. We recommend you create an account specifically for this purpose and not use your personal user account.

- Make sure the teams you want to map don't have any schedules in Shifts or UKG Dimensions. If a team has an existing schedule, follow the steps below to [remove schedule entities from the team](#remove-schedule-entities-from-teams-you-want-to-map) before you map a UKG Dimensions instance to it. Otherwise, you'll see duplicate shifts.

### Configure single sign-on

[!INCLUDE [shifts-connector-ukg-sso](includes/shifts-connector-ukg-sso.md)]

<a name="remove_schedules"> </a>
## Remove schedule entities from teams you want to map

Complete this step if you're mapping UKG Dimensions instances to existing teams with schedule entities. If you're mapping to teams that don't have any schedules or if you've already created new teams to map to, you can skip this step.

Use PowerShell to remove schedule entities from teams.

1. If you don’t have PowerShell installed already, install the PowerShell modules and [set up your PowerShell environment](shifts-connector-ukg-powershell-manage.md#set-up-your-environment)

1. Run this command in PowerShell:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord).

## Run the Shifts connector wizard

After you’ve followed all the previous steps and made sure you meet the prerequisites, now you’re ready to run the wizard and connect your UKG Dimensions system to Shifts in Teams.

### Create a connection

1. In the left navigation menu of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then under **Featured collections**, select **Frontline workers**.

1. Select **Connector Management Console**.
    :::image type="content" source="media/shifts-connector-wizard-get-started.png" alt-text="Screenshot of the details page for the Shifts connector wizard in the Microsoft 365 admin center." lightbox="media/shifts-connector-wizard-get-started.png":::

1. To create a new connection, choose **Add connection**.

1. In the Choose your connector pane, choose **UKG Dimensions**, and then select **Next** to create a UKG Dimensions connection.
<a name="connection_details"> </a>

1. In the Connection settings pane, give your connection a unique name. It can't be longer than 100 characters or have any special characters.

    :::image type="content" source="media/shifts-connector-wizard-ukg-connection-details.png" alt-text="Screenshot of the Connection details page of the wizard, showing connection settings." lightbox="media/shifts-connector-wizard-ukg-connection-details.png":::

1. Enter your UKG Dimensions information and then select **Save connection**.
    - Account username
    - Account password
    - API URL
    - Application key
    - Client ID
    - Client secret
    - SSO URL

    Signing in with your username enables access to all instances created in UKG Dimensions. If you don't know one or more of your connection details, contact your UKG Dimensions delivery partner or account manager.

> [!NOTE]
> - Check that your SSO URL is structured like this sample URL:  
> https://contoso-sso.mykronos.com 
> - Then add this extra text at the end of the URL (after .com), structured like this (for a sample client ID XDV45GTaaaaab43342XA):  
> https://contoso-sso.mykronos.com/oauth2/authorize?client_id=XDV45GTaaaaab43342XA

To create another connection, go to the Connector Management Console page and select **Add connection**.

### Create a connection instance

After you create a connection, you can set up one or more connection instances in that connection.

You'll see all the connections you've created on your **Connector Management Console**. Under the connection where you want to create a new instance, select **Create instance**
    :::image type="content" source="media/shifts-connector-wizard-ukg-create-instance.png" alt-text="Screenshot of the Connector Management Console showing existing connections." lightbox="media/shifts-connector-wizard-ukg-create-instance.png":::

<a name="sync"> </a>
#### Choose settings

On the Settings page, you choose the information to sync from UKG Dimensions to Shifts, the sync frequency, and whether Shifts users can make changes to the data.
    :::image type="content" source="media/shifts-connector-wizard-sync-settings.png" alt-text="Screenshot of the Sync settings page of the wizard, showing sync settings." lightbox="media/shifts-connector-wizard-sync-settings.png":::

1. Enter a name for your connection instance. It can't be longer than 100 characters or have any special characters.

      > [!TIP]
      > You'll be given the following options for the next group of settings:
      >
      > - **Shifts users will not see provider data**: Data won't sync between UKG Dimensions and Shifts.
      > - **Shifts users can see provider data**: Data syncing is unidirectional from UKG Dimensions to Shifts.
      > - **Shifts users can see and change provider data**: Data syncing is bidirectional between UKG Dimensions and Shifts.

2. Choose your basic, **Time card**, and **Request** settings from the options listed above.

3. Then, choose your sync frequency.

4. Enter your Microsoft 365 system account. This is the [account that you created as a prerequisite](#prerequisites) that is a team owner of all the teams you want to map.

<a name="email"> </a>

5. Under **Email notification recipients**, choose who receives email notifications about this connection instance. You can add individual users and groups. The email notifications contain information about setup status and any issues or errors that may occur after the connection instance is set up.

    > [!IMPORTANT]
    > Before you disable a feature by selecting the option **Shifts users will not see provider data**, be aware that:
    >
    > - If the setting **Schedules, groups, shifts, and activities** is disabled, then all other settings, such as **Time off** and **Employee availability**, and more, will also be disabled.
    > - If the setting **Open shift** is disabled, **Open shift request** will also be disabled.
    > - If the setting **Time off** is disabled, **Time off request** will also be disabled.

    > [!IMPORTANT]
    > If you chose any of the following options to disable open shifts, open shift requests, swap requests, offer shift requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
    >
    > - Open shifts: **Shifts users will not see provider data**
    > - Swap requests: **Shifts users will not see provider data**
    > - Time off requests: **Shifts users will not see provider data**
    > - Offer shift requests: **Shifts users will not see provider data**
    >
    > After you run the wizard, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.

6. When you're done choosing your settings, select **Next**.

<a name="instances"> </a>
#### Map UKG Dimensions instances to teams

Choose the UKG Dimensions instances that you want to connect to Shifts, and then map each WFM instance to a team in Teams. You can map up to 400 instances.

##### Manually map instances to teams

:::image type="content" source="media/shifts-connector-wizard-ukg-map.png" alt-text="Screenshot of wizard, showing the list of UKG Dimensions instances." lightbox="media/shifts-connector-wizard-ukg-map.png":::

1. On the **Mapping** page, start by choosing which WFM instance(s) you want to map to Microsoft Teams team(s).

1. Tick the checkbox for each WFM instance you want to map. Instances will only map if you check their boxes.

1. Next, search for and choose the correct Microsoft Teams team.

    Keep in mind that teams that are already mapped to a WFM instance in this connection instance won't be available to map again.

1. Choose the time zone. The closest city is automatically filled in, but you can change it.

1. When you've mapped all your teams, select **Next**.

##### Use a CSV file to map instances to teams

1. On the **Mapping** page, choose **CSV upload tool**.

2. Select **Download template** to get the CSV mapping file. The template includes a list of all your UKG Dimensions instances and their IDs. The top rows of your template will look like this:

   |UKG Dimensions Instance ID |UKG Dimensions Instance Name |Team ID |Team Name |Time Zone |
   |------|------|------|------|------|
   |Automatically prefilled |Automatically prefilled |Blank |Blank |Default*|

   And the bottom rows of your template will look like this:

   |UKG Dimensions Instance ID |UKG Dimensions Instance Name |Team ID |Team Name |Time Zone |
   |------|------|------|------|------|
   |Blank |Blank |Automatically prefilled |Automatically prefilled |Default*|

3. Choose a team that you want to map to a UKG Dimensions instance. Cut and paste the Team ID and Team Name from the bottom half of your template to be in line with the UKG Dimensions instance that you want. A completed row of your template should look like this:

   |UKG Dimensions Instance ID |UKG Dimensions Instance Name |Team ID |Team Name |Time Zone |
   |------|------|------|------|------|
   |Automatically prefilled |Automatically prefilled |Team ID that you moved |Team Name that you moved |Default*|

Repeat this for all your mappings.

4. Enter the correct location in the Time Zone column if needed.

>[!NOTE]
>The wizard supports approximately 460 locations. The Time Zone needs to be according to the tz format. If the specific location you chose isn't supported, you'll be shown an error in the wizard. Try using the closest city or major city within the same time zone.

5. On the **Mapping** page, select **Browse** to find and upload your completed CSV file.

6. Choose **Done** if your file has uploaded correctly. Otherwise, review the provided error report and upload a corrected file.

7. Your new mappings are listed on the **Mappings** page. Choose **Next**.

### Review and finish

Before finishing, review the summary of the connection instance creation process. If you need to make changes during the connection instance creation process, choose **Back**. When you're ready, select **Finish**.

:::image type="content" source="media/shifts-connector-wizard-review.png" alt-text="Screenshot of the Review page of the wizard, showing mappings." lightbox="media/shifts-connector-wizard-review.png":::

The wizard starts the process to set up the connection instance, which may take some time to complete. If you try to edit the connection instance before the setup is complete, you most likely won't be able to view the mappings you created previously.

The email notification recipients you chose will receive email notifications about setup status in case there are any errors.

## Disable open shifts, open shifts requests, swap requests, and time off requests

> [!IMPORTANT]
> If you chose any of the following options to disable open shifts, open shift requests, swap requests, offer shift requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
>
> - Open shifts: **Shifts users will not see provider data**
> - Swap requests: **Shifts users will not see provider data**
> - Time off requests: **Shifts users will not see provider data**
> - Offer shift requests: **Shifts users will not see provider data**
>
> After you edit your settings, make sure you follow the steps to [Disable open shifts, open shifts requests, swap requests, and time off requests.](/microsoft-365/frontline/shifts-connector-wizard-ukg#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests)

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule) to set the following parameters to ```false``` for each team that you mapped to a UKG Dimensions instance:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```
- Offer shift requests: ```offerShiftRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.

<a name="manage"> </a>
## Manage your connection and connection instance

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management Console page lists each connection and connection instance that you've set up, along with information such as health status and sync interval details. You can also access the wizard to create new connections and connection instances and make changes to any of your existing ones. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md).-->

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
