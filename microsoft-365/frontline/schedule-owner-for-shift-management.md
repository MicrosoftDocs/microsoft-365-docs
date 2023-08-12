---
title: Manage schedule owners for shift management
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.topic: how-to
audience: admin
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
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-mar2020
ms.date: 10/28/2022
---

# Schedule Owner for shift management

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
