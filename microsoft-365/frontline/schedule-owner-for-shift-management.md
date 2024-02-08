---
title: Manage schedule owners for shift management
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.topic: conceptual
audience: admin
ms.reviewer: imarquesgil
ms.service: microsoft-365-frontline
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
  - Microsoft Cloud for Retail
description: Learn how to manage shift owners for schedule management. You can set a policy to elevate the permission of a team member to a schedule owner. 
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
  - microsoftcloud-healthcare
  - microsoftcloud-retail
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-mar2020
ms.date: 
---

# Schedule Owner for shift management

In Shifts, there are two user personas, based on a user's responsibilities within a team: frontline manager and frontline worker.

- **Frontline managers** are responsible for the creation and overall management of their team’s schedule and requests. They're part of the frontline workforce with managerial responsibilities. A frontline manager in Shifts requires one of the following roles:

  - Team owner in Teams
  - Team member in Teams who is elevated to a schedule owner in Shifts

- **Frontline workers** are employees who aren't responsible for scheduling. They view their schedules and interact with their manager or coworkers through requests in Shifts. A frontline worker in Shifts requires the team member role in Teams.

## Capabilities of each role in Shifts and Teams

Each role has different capabilities in Shifts and in Teams. Here's a summary of the capabilities of each role.

### In Shifts

|Capability  |Team member |Schedule owner |Team owner |
|---------|---------|---------|---------|
|Create, edit, and publish schedules to manage their team’s shifts assignments.||✔️|✔️|
|View and manage (approve or deny) shift requests.||✔️|✔️|
|Manage settings in Shifts for their teams.||✔️| ✔️|
|View and modify their team’s timesheet to process employee payrolls.||✔️|✔️|
|Manage settings in Shifts for their teams.||✔️|✔️|
|View their schedules and their team's schedules.|✔️|✔️|✔️|
|Create and cancel shift requests.|✔️||
|Clock in and out of shifts.|✔️|✔️|✔️|
|Set availability (or working preferences) in Shifts.|✔️|||

### In Teams

|Capability  |Team member  |Schedule owner |Team owner  |
|---------|---------|---------|---------|
|Add or remove members and guests.|||✔️|
|Edit or delete a team.|||✔️|
|Archive or restore a team.|||✔️|
|Create a channel and participate in conversations.|✔️|✔️|✔️|
|Share chat and channel files.|✔️|✔️|✔️|

This isn't a complete list. Learn more about [team owner and member capabilities in Teams](https://support.microsoft.com/office/team-owner-member-and-guest-capabilities-in-microsoft-teams-d03fdf5b-1a6e-48e4-8e07-b13e1350ec7b).

## Example scenario

Here’s an example of how to use role assignments in Teams and Shifts for your frontline managers and workers.

At Contoso Ltd., department managers report directly to the store manager. The store manager has more authority within the company as they oversee the hiring of department managers and store associates, help their departments on specific issues, and manage the generation of revenue within their store. Department managers, on the other hand, are responsible for managing the day-to-day operations and people within their department.

Based on employee responsibilities, Contoso set up their team roles as follows:

- Store managers are responsible for their store's success, and only get involved in daily department management activities if necessary. For their store's team, the store manager has a **team owner** role in Teams.  

- Department managers manage the day-to-day activities of their team in Shifts, and don’t require team owner privileges in Teams. Although store managers have more seniority than department managers, department managers handle the scheduling of people on their teams. Department managers are assigned the **team member** role in Teams and **schedule owner** role in Shifts.

- Store associates work in a specific department, and are assigned the **team member** role in Teams.  

## Frontline manager role assignment

### Team owner


### Schedule owner

As an admin, you use policies to control schedule management ownership in your organization. You manage these policies by using the following PowerShell cmdlets:

- [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy?view=teams-ps)
- [Get-CsTeamsShiftsPolicy](/powershell/module/teams/get-csteamsshiftspolicy?view=teams-ps)
- [Set-CsTeamsShiftsPolicy](/powershell/module/teams/set-csteamsshiftspolicy?view=teams-ps)
- [Grant-CsTeamsShiftsPolicy](/powershell/module/teams/grant-csteamsshiftspolicy?view=teams-ps)
- [Remove-CsTeamsShiftsPolicy](/powershell/module/teams/remove-csteamsshiftspolicy?view=teams-ps)

1. Create a new policy using the [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy?view=teams-ps) PowerShell cmdlet.

In this example, we create a new policy named ScheduleOwnerPolicy with the Schedule Owner feature turned on.

```powershell
New-CsTeamsShiftsPolicy –Identity ScheduleOwnerPolicy  -EnableScheduleOwnerPermissions $true -AccessType UnrestrictedAccess_TeamsApp
```

1. Assign the policy to a specific user or group of users by using the [Grant-CsTeamsShiftsPolicy](/powershell/module/teams/grant-csteamsshiftspolicy?view=teams-ps) PowerShell cmdlet.

In this example, we assign a policy named ScheduleOwnerPolicy to a user named remy@contoso.com.

```powershell
Grant-CsTeamsShiftsPolicy -Identity remy@contoso.com -PolicyName ScheduleOwnerPolicy
```

In this example, we assign a policy named ScheduleOwnerPolicy to a group specified by its object ID.

```powershell
Grant-CsTeamsShiftsPolicy -Group 83d3ca56-50e9-46fb-abd4-4f66939188f8 -PolicyName ScheduleOwnerPolicy

++++++++++++++++++++

## Overview

The Schedule Owner feature lets you elevate the permissions of a team member so that they can manage schedules without making the employee a team owner. With Schedule Owner permissions, an employee can manage their team’s schedule without being able to modify any other team properties such as updating, editing, or deleting team channels.

What can a user with schedule owner permissions do?

- Create, edit, and publish schedules to manage their team’s shift assignments.
- View and approve shift requests including requests to swap shifts and take open shifts.
- Manage settings in Shifts to enable certain features for the team.
- View and modify their team’s timesheet to process employee payrolls.

## Why Schedule Owner?

Without the Schedule Owner feature, day-to-day business functions could be disrupted. While the team owner helps to run the team, they might not necessarily be the person in charge of day-to-day scheduling. In this case, transferring only the schedule management responsibility to another team member streamlines daily operations within the team and eliminates the confusion of two team members having the same access privileges.

## Scenario

Here’s an example of how your organization can use the Schedule Owner feature.

You work in a large organization where department managers report directly to the store manager. The store manager has more authority within your company and is the team owner in Shifts. Department managers, on the other hand, are only ever added to Shifts as team members. While store managers have more seniority than department managers, it makes more sense for department managers to handle the day-to-day scheduling of their team’s employees.

*Without Schedule Owner*, department managers must be given the exact same privileges as the team owner. Recently, department managers have been moving information around, and changing the name of channels, and it has caused complications with the store manager’s work. The store manager wants the department managers to be able to organize their schedules, but doesn't want them to be able to change anything else on the team, outside of Shifts.

*With Schedule Owner*, the department managers can be given scheduling privileges, without any other team owner privileges.

## Manage schedule ownership

As an admin, you use policies to control schedule management ownership in your organization. You manage these policies by using the following PowerShell cmdlets:

- [New-CsTeamsShiftsPolicy](/powershell/module/teams/new-csteamsshiftspolicy?view=teams-ps)
- [Get-CsTeamsShiftsPolicy](/powershell/module/teams/get-csteamsshiftspolicy?view=teams-ps)
- [Set-CsTeamsShiftsPolicy](/powershell/module/teams/set-csteamsshiftspolicy?view=teams-ps)
- [Grant-CsTeamsShiftsPolicy](/powershell/module/teams/grant-csteamsshiftspolicy?view=teams-ps)
- [Remove-CsTeamsShiftsPolicy](/powershell/module/teams/remove-csteamsshiftspolicy?view=teams-ps)

### Example 1

Here, we create a new policy named ScheduleOwnerPolicy with the Schedule Owner feature turned on.

```powershell
New-CsTeamsShiftsPolicy –Identity ScheduleOwnerPolicy  -EnableScheduleOwnerPermissions $true -AccessType UnrestrictedAccess_TeamsApp
```

### Example 2

In this example, we assign a policy named ScheduleOwnerPolicy to a user named remy@contoso.com.

```powershell
Grant-CsTeamsShiftsPolicy -Identity remy@contoso.com -PolicyName ScheduleOwnerPolicy
```

### Example 3

In this example, we assign a policy named ScheduleOwnerPolicy to a group specified by its object id.

```powershell
Grant-CsTeamsShiftsPolicy -Group 83d3ca56-50e9-46fb-abd4-4f66939188f8 -PolicyName ScheduleOwnerPolicy
```

## Related articles

- [Manage the Shifts app for your organization in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
