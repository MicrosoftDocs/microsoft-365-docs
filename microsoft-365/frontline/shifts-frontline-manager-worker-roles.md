---
title: Use roles to define your frontline managers and workers in Shifts
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.topic: conceptual
audience: admin
ms.reviewer: harrywong
ms.service: microsoft-365-frontline
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
  - Microsoft Cloud for Retail
description: Learn how to use team owner and team member roles in Teams and the schedule owner role in Shifts to define your frontline managers and workers in Shifts. 
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
- M365-collaboration
- m365-frontline
- teams-1p-app-admin
- highpri
- microsoftcloud-healthcare
- microsoftcloud-retail
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-mar2020
ms.date: 02/20/2024
---

# Use roles to define your frontline managers and workers in Shifts

## Overview

In Shifts, there are two user personas&mdash;frontline manager and frontline worker&mdash;based on users' responsibilities and activities within a team. This article explains these user personas and how to use roles in Shifts and Teams to define your frontline mangers and workers.

- **Frontline managers** are responsible for the creation and overall management of their team’s schedule and shift requests. They're part of the frontline workforce with managerial responsibilities. A frontline manager in Shifts requires one of the following roles:

  - Team owner in Teams
  - Team member in Teams who is elevated to a schedule owner in Shifts

- **Frontline workers** are employees who aren't responsible for scheduling. They view their schedules and interact with their manager or coworkers through requests in Shifts. A frontline worker in Shifts requires the team member role in Teams.

## Capabilities of each role in Shifts and Teams

Each role has different capabilities in Shifts and in Teams. Here's a summary of the capabilities of each role.

|Capability in Shifts  |Team member |Schedule owner |Team owner |
|---------|:---------:|:---------:|:---------:|
|Create, edit, and publish schedules to manage their team’s shifts assignments.||✔️|✔️|
|View and manage (approve or deny) shift requests.||✔️|✔️|
|Manage settings in Shifts for their teams.||✔️| ✔️|
|View and modify their team’s timesheet to process employee payrolls.||✔️|✔️|
|Manage settings in Shifts for their teams.||✔️|✔️|
|View their schedules and their team's schedules.|✔️|✔️|✔️|
|Create and cancel shift requests.|✔️||
|Clock in and out of shifts.|✔️|✔️|✔️|
|Set availability (or working preferences) in Shifts.|✔️|||

|Capability in Teams* |Team member  |Schedule owner |Team owner  |
|---------|:---------:|:---------:|:---------:|
|Add or remove members and guests.|||✔️|
|Edit or delete a team.|||✔️|
|Archive or restore a team.|||✔️|
|Share chat and channel files.|✔️|✔️|✔️|

*Keep in mind that this table compares capabilities in Teams across the three roles. It's not a comprehensive list of capabilities for team owners and members in Teams. Learn more about [team owner and member capabilities in Teams](https://support.microsoft.com/office/team-owner-member-and-guest-capabilities-in-microsoft-teams-d03fdf5b-1a6e-48e4-8e07-b13e1350ec7b).

## Example scenario

Here’s an example of how to use roles in Teams and Shifts for your frontline managers and workers.

At Contoso Ltd., department managers report directly to the store manager. The store manager has more authority within the company as they oversee the hiring of department managers and store associates, help their departments on specific issues, and manage the generation of revenue within their store. Department managers, on the other hand, are responsible for managing the day-to-day operations and people within their department.

Contoso set up their team roles as follows based on employees' responsibilities:

- Store managers are responsible for their store's success, and only get involved in daily department management activities if necessary. For their store's team, the store manager is assigned a **team owner** role in Teams.  

- Department managers manage the day-to-day activities of their team in Shifts, including managing schedules and shift requests. They don’t need team owner privileges in Teams. Department managers are assigned the **team member** role in Teams and **schedule owner** role in Shifts.

- Store associates work in a specific department, and are assigned the **team member** role in Teams.  

## Frontline manager role assignment

Determine the capabilities you want to provide your frontline managers in Shifts, based on your organization's needs.

As mentioned earlier, a frontline manager in Shifts can be a team owner in Teams *or* a team member in Teams who is a schedule owner in Shifts. Team owners can manage their team in Teams. Schedule owners are team members in Teams who can manage schedules in Shifts for their team.

You can elevate the permissions of a team member to a schedule owner role in Shifts so they can create schedules and manage shift requests without making that person a team owner. With schedule owner permissions, a frontline manager can manage their team’s schedule without being able to do things like add or remove members or delete the team.

### Team owner in Teams

Admins can add members to teams and assign team owners in the Teams admin center. To learn more, see [Assign team owners and members in Teams admin center](/microsoftteams/assign-roles-permissions).  

The person who creates a new team in Teams is the team owner by default. Team owners can make any member of their team a co-owner when they invite them to the team or at any point after they join the team. To learn more, see [Add members to a team in Teams](https://support.microsoft.com/office/add-members-to-a-team-in-microsoft-teams-aff2249d-b456-4bc3-81e7-52327b6b38e9).

### Schedule owner in Shifts

As an admin, you use policies to assign schedule owner roles in Shifts for your organization. Use PowerShell to create a policy and assign that policy to individual users or groups of users.

1. Create a TeamsShiftsPolicy instance by using the [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy?view=teams-ps) PowerShell cmdlet.

    Here, we create a new policy named ShiftsScheduleOwners and enable schedule owner permissions in the policy.

    ```powershell
    New-CsTeamsShiftsPolicy -Identity ShiftsScheduleOwners -EnableScheduleOwnerPermissions $true -AccessType UnrestrictedAccess_TeamsApp
    ```

1. Assign the policy to a specific user or group of users by using the [Grant-CsTeamsShiftsPolicy](/powershell/module/teams/grant-csteamsshiftspolicy?view=teams-ps) PowerShell cmdlet.

    In this example, we assign the ShiftsScheduleOwners policy to a user named remy@contoso.com.

    ```powershell
    Grant-CsTeamsShiftsPolicy -Identity remy@contoso.com -PolicyName ShiftsScheduleOwners
    ```

    In this example, we assign the ShiftsScheduleOwners policy to a group specified by its object ID.

    ```powershell
    Grant-CsTeamsShiftsPolicy -Group 83d3ca56-50e9-46fb-abd4-4f66939188f8 -PolicyName ShiftsScheduleOwners
    ```

    > [!IMPORTANT]
    > When a policy is assigned to a group, all members of that group become schedule owners across every Shifts schedule they belong to. Say, for example, adelev@contoso.com is part of the group to which we assigned the ShiftsScheduleOwners policy. This means that adelev@contoso.com is a frontline manager (with the schedule owner role) in Shifts in every team they're a member of.

    Group membership can be static or dynamic. Learn more about [groups in Microsoft Entra ID](/entra/fundamentals/concept-learn-about-groups) and [how to manage Microsoft Entra groups and group membership](/entra/fundamentals/how-to-manage-groups).

After you assign the policy, it can take up to 12 hours for the policy to take effect for your users. The schedule owner policy doesn't show up as one of the listed policies for a user in the Teams admin center.

See also:

- [Get-CsTeamsShiftsPolicy](/powershell/module/teams/get-csteamsshiftspolicy?view=teams-ps)
- [Set-CsTeamsShiftsPolicy](/powershell/module/teams/set-csteamsshiftspolicy?view=teams-ps)
- [Remove-CsTeamsShiftsPolicy](/powershell/module/teams/remove-csteamsshiftspolicy?view=teams-ps)

## Related articles

- [Shifts for frontline workers](shifts-for-teams-landing-page.md)
- [Manage the Shifts app for your organization in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Teams PowerShell overview](/microsoftteams/teams-powershell-overview)
