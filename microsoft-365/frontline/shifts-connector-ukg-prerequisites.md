---
title: Prerequisites and requirements for the Teams Shifts connector for UKG Pro Workforce Management
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about the requirements, prerequisites, and environment setup that you need before you use the Shifts connector wizard or PowerShell to integrate Shifts in Teams with UKG Pro Workforce Management.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/20/2024
---

# Prerequisites and requirements for the Teams Shifts connector for UKG Pro Workforce Management

## Overview

The [Microsoft Teams Shifts connector for UKG Pro Workforce Management](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-pro-workforce-management) enables you to integrate the Shifts app in Microsoft Teams with your UKG Pro Workforce Management (UKG Pro WFM) system. Your frontline workers can seamlessly view and manage their schedules in UKG Pro WFM from within Shifts.

You can use the [Shifts connector wizard](shifts-connector-wizard-ukg.md) in the Microsoft 365 admin center or [PowerShell](shifts-connector-ukg-powershell-setup.md) to create a connection and connection instances. After they're set up, you can manage them in the Microsoft 365 admin center or by using PowerShell. There are no additional licensing fees for using the connector.

This article lists requirements, prerequisites, and configuration tasks that you must complete before you use the [wizard](shifts-connector-wizard-ukg.md) or [PowerShell](shifts-connector-ukg-powershell-setup.md) to create a connection. It also gives you an overview of how to set up your teams in Teams based on your UKG Pro WFM organizational structure.

## Before you begin

Before you integrate Shifts with UKG Pro WFM, your organization must have the following environment requirements already set up.

- Your UKG Pro WFM environment is configured. This means that your organization has completed the following:

    - You've established how "teams" (groupings of users) are organized to match your organizational structure and business needs, and your users are grouped by location.

        > [!IMPORTANT]
        > Shifts currently supports grouping users by location in UKG Pro WFM. Other user grouping types aren't supported.

    - You've set up relevant requests, such as shift requests and time off requests, according to your business needs.

        > [!IMPORTANT]
        > Shifts currently supports the following UKG Pro WFM request types:
        >  - Open shift requests. Partial shift criteria aren't supported.
        >  - Swap requests.  
        >  - Requests to cover shifts. Partial shift criteria aren't supported.
        >  - Time off requests.
        >  - Availability patterns change request subtype.  

- You're using Microsoft Entra ID as your identity provider.

## Prerequisites

Make sure you gather the following information and complete the following configuration tasks before you use the [wizard](shifts-connector-wizard-ukg.md) or [PowerShell](shifts-connector-ukg-powershell-setup.md) to create a connection.

### Accounts

- You're a Microsoft 365 Global Administrator.
- You know your UKG Pro WFM account username and password, along with the following service URLs:

    - API URL
    - Application key
    - Client ID
    - Client secret
    - [Single Sign On (SSO) URL](#enable-sso-by-setting-up-integration-between-azure-ad-and-ukg-pro-workforce-management)

    If you don't have all this information, contact UKG Pro WFM support.

    > [!IMPORTANT]
    > The UKG Pro WFM account you use must have an access profile which allows full access to all API-based integrations in UKG.

<a name='enable-sso-by-setting-up-integration-between-azure-ad-and-ukg-pro-workforce-management'></a>

### Enable SSO by setting up integration between Microsoft Entra ID and UKG Pro Workforce Management

For a step-by-step tutorial, see [Tutorial: Microsoft Entra SSO integration with Kronos Workforce Dimensions](/azure/active-directory/saas-apps/kronos-workforce-dimensions-tutorial). If you need help or more information about setting up SSO, contact UKG Pro WFM support.

### Configure federated SSO authentication in UKG Pro Workforce Management

Follow these steps to configure federated SSO authentication in your UKG Pro WFM environment.

> [!IMPORTANT]
> Make sure that the username and email in Microsoft Entra ID match what's in each user's profile in UKG Pro WFM.

#### Step 1: Change user accounts to federated accounts

Each Shifts user who you want to connect to UKG Pro WFM needs a federated account in UKG Pro WFM.

1. Sign in to UKG Pro WFM by using an admin or super user account that has access to Application Setup.
1. On the left menu, go to **Maintenance** > **People information**.
1. Open the user's profile.
1. Under the **Employee** section, expand **Information**.
1. Change the **Authentication Type** to **Federated**.
1. Save your changes and repeat the process for all Shifts users who you want to connect to UKG Pro WFM.

#### Step 2: Allow Shifts SSO redirection URLs

Configure the connector's redirection URL. This allows UKG Pro WFM to redirect the user to the Shifts app in Teams as part of the SSO flow.

1. Sign in to UKG Pro WFM by using an admin or super user account that has access to Application Setup.
1. On the left menu, go to **Administration** > **Application Setup**.
1. Then, go to **System Configuration** and choose **System Settings**.
1. Select **Global Values**.
1. In the **global.oAuth.authCode.redirection.uris** field, enter the value, "https://aka.ms/shifts/connector/ukgdimensions/auth".
1. In the **global.oAuthToken.redirection.domain.whiteList** field, enter the value, "aka.ms".
1. Select **Save**.

### Create at least one team in Teams

Create at least one team in Teams, and add the following people and account to it:

- Frontline workers as team members.
- Frontline managers as team owners and/or schedule owners. To learn more about team owners and schedule owners in Shifts, see [Use roles to define your frontline managers and workers in Shifts](shifts-frontline-manager-worker-roles.md).

    > [!NOTE]
    > When adding people to your teams, make sure you do the following:
    >
    > - Add frontline workers to every team that they're allowed to work at, based on their UKG Pro WFM locations.
    > - Add frontline managers to every team in which they have frontline workers as direct reports. Otherwise, managers will only receive workers' requests in UKG Pro WFM and not in Shifts.

- A general account, what we call the Microsoft 365 system account, as team owner.

    The Microsoft 365 system account is a general account must be added as team owner to all teams you want to map. [Create this account in the Microsoft 365 admin center](/microsoft-365/admin/add-users/add-users) and assign it a Microsoft 365 license. Then, add the account as a team owner. The Shifts connector uses this account when syncing Shifts changes from UKG Pro WFM. We recommend you create an account specifically for this purpose and not use your personal user account.

For guidance on creating frontline teams, see [How to find the best frontline team solution for your organization](frontline-team-options.md). If you want to create more than one team, see [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md) and [Deploy frontline static teams at scale](deploy-teams-at-scale.md).

<a name="remove_schedules"> </a>

### Make sure the teams that you want to map don't have any existing schedules

> [!NOTE]
> This step applies only if you're running the wizard to create a connection. If you're using PowerShell to create a connection, the PowerShell script removes existing schedules from teams for you.

If a team has an existing schedule that was created in Shifts, follow these steps to remove schedule entities from the team before you map a UKG Pro WFM location (also called a WFM instance) to it. Otherwise, you'll see duplicate shifts.

Use PowerShell to remove schedule entities from teams.

1. [Install the PowerShell modules and set up your PowerShell environment](shifts-connector-ukg-powershell-manage.md#set-up-your-environment) (if you haven't already).

1. Run the following command:

    ```powershell
    Remove-CsTeamsShiftsScheduleRecord -TeamId <Teams team ID> -DateRangeStartDate <start time> -DateRangeEndDate <end time> -ClearSchedulingGroup:$false -EntityType <the scenario entities that you want to remove, the format is @(scenario1, scenario2, ...)> -DesignatedActorId <Teams team owner ID>
    ```

    To get a list of scenarios for the `EntityType` parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector). Schedule data will be removed for the date and time range that you specify.

To learn more, see [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord).

## Understand how your UKG Pro Workforce Management organizational structure influences Teams and Shifts setup

As mentioned earlier, Shifts supports grouping users by location in UKG Pro WFM. In UKG Pro WFM, the nodes in each location represent the hierarchy in your organizational chart. A location path reaches its endpoint when a job type is configured.

Users in UKG Pro WFM are assigned and grouped by jobs that exist within a location. This means that from a Teams and Shifts standpoint, employees who have the same location path up to the node before the job type are considered as part of the same team. The job types in the location path are synced and represented as [schedule groups](https://support.microsoft.com/office/what-is-shifts-f8efe6e4-ddb3-4d23-b81b-bb812296b821) in Shifts.

## Example

Here's an example to help you understand how your UKG Pro WFM structure influences the way you set your teams, mapping considerations, and how information syncs to Shifts.  

### Scenario

Contoso has hundreds of retail stores spread across the United Kingdom. Each store is located within an Area in the United Kingdom. To simplify this example, we focus on three stores in the Central London Area, to which Contoso wants to start rolling out Teams and Shifts for their frontline employees.

Assumptions:

- Each store is managed by a different manager.
- Some frontline workers are allowed to take shifts from other stores within the Central London Area. In other words, in UKG Pro WFM, these frontline workers are part of a job transfer set.

> [!NOTE]
> Shifts doesn't yet support workers' requests across different teams when integrated with a WFM system. This means that workers can't offer or swap shifts with workers who are in different locations (that is, on different teams in Teams). Workers can only perform these actions within their own team.

### UKG Pro Workforce Management location structure

In this scenario, the UKG Pro WFM location structure looks something like this, in which the Company node represents the top-most level in the hierarchy.

:::image type="content" source="media/shifts-connector-ukg-prerequisites-chart.png" alt-text="A chart showing the UKG Pro WFM location structure for the Contoso example scenario." lightbox ="media/shifts-connector-ukg-prerequisites-chart.png":::

Here's how frontline managers (FLM) and frontline workers (FLW) are set up in the location structure in UKG Pro WFM. The table lists each workers' primary job and who they report to.

|UKG Pro WFM location|Users|Primary job|Reports to|
|---------|---------|---------|---------|
|Contoso/Retail/Central London/Soho|FLW1<sup>1</sup>, FLW2<br>FLW3, FLW4<br>FLW5<sup>2</sup>, FLW6, FLW7<br>FLW8, FLW9, FLW10|Beauty advisor<br>Leather goods sales associate<br>Sales associate<br>Personal shopper|FLM1|
|Contoso/Retail/Central London/Covent Garden|FLW11, FLW12<br>FLW13, FLW14|Leather goods sales associate<br>Sales associate|FLM2|
|Contoso/Retail/Central London/Chelsea|FLW15<br>FLW16<br>FLW17|Sales associate<br>Personal shopper<br>Beauty advisor|FLM3|

<sup>1</sup>FLW1 can also work as a beauty advisor in Central London/Chelsea.<br>
<sup>2</sup>FLW5 can also work as a sales associate in Central London/Covent Garden and Central London/Chelsea.

#### What does this mean when I set up teams in Teams?

In this scenario, the IT admin organizes teams in Teams as follows.

1. Create three different teams in Teams for each store within the Central London area: Soho Store, Covent Garden Store, Chelsea Store.
1. Add employees that belong to the corresponding UKG Pro WFM location to each team, including managers that the employees report to. Frontline workers are added as team members and frontline managers are added as team owners and/or schedule owners.

    Here's the list of teams and the people added to each team.

    |Team name|Team members|Team owners and/or schedule owners|
    |---------|---------|---------|
    |Soho Store|FLW1, FLW2, FLW3, FLW4, FLW5, FLW6, FLW7, FLW8, FLW9, FLW10|FLM1|
    |Covent Garden Store|FLW5, FLW11, FLW12, FLW13, FLW14|FLM2|
    |Chelsea Store|FLW1, FLW5, FLW15, FLW16, FLW17|FLM3|

    Keep in mind that FLW1 and FLW5 are added to all teams for the store locations that they're allowed to work at. The other frontline workers aren't allowed to work at other stores, and are added only to the team that represents their primary job location.

    > [!NOTE]
    > In UKG Pro WFM, if you have departments with business locations, create teams for each department (instead of for each store). As mentioned earlier in this article, to establish the mapping between platforms, we take the location path up to the node and consider that a team.

#### What does this mean when I run the Shifts connector wizard?

When the IT admin sets up a connection instance in the [wizard](shifts-connector-wizard-ukg.md), they map each store location to the relevant team, as shown in the following table.

|Store location  |Team name |
|---------|---------|
|Contoso/Retail/Central London/Soho|Soho Store|
|Contoso/Retail/Central London/Covent Garden|Covent Garden Store|
|Contoso/Retail/Central London/Chelsea|Chelsea Store

#### What does this look like in Shifts?

In Shifts, the schedule groups of each team represent the jobs defined for the store location.

Within each store, in Shifts:

- Frontline managers see employees within their respective schedule groups (that is, job types).
- Frontline workers see their own schedule and their team's schedule.
- Frontline workers can communicate with coworkers in their own store through chat.
- Frontline workers and managers can request time off, swap shifts, offer shifts, and open shifts if the requests are configured in UKG Pro WFM and set to be synced in the connection instance settings that you configure in the [wizard](shifts-connector-wizard-ukg.md).
- Frontline workers and managers can reach other employees in their store who are on shift, if [shift-based tags](/microsoftteams/manage-tags) are enabled.

For employees who work at multiple stores, in Shifts:

- Frontline workers and managers can only make requests within a particular store. Shifts currently doesn't support workers' requests between different stores when integrated with a WFM system.
- Frontline workers can view their schedule and their team’s schedule in any store they work at.

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
