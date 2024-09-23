---
title: Manage Shifts permissions for frontline managers
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
description: Learn how to manage Shifts permissions for your frontline managers. You can use the shiftsRoleDefinition Graph API to control the Shifts settings that frontline managers can configure for their teams and whether they can create and manage schedule groups.
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
ms.date: 02/28/2024
---

# Manage Shifts permissions for frontline managers

Frontline managers in Shifts are users that have [the team owner or schedule owner role](schedule-owner-for-shift-management.md). They create and manage schedules for their teams. By default, frontline managers can do the following in Shifts:

- Configure [Shifts settings](https://support.microsoft.com/office/manage-settings-in-shifts-1aef353d-e2df-4661-abdd-4014cb57f17b) for their teams. For example, frontline managers can turn on time clock and set whether frontline workers on their team can swap shifts and request time off.  
- Create and manage schedule groups for their teams in Shifts. Schedule groups are used to group frontline workers based on common characteristics within a team, such as departments or job types.

Depending on the needs of your organization, you might need to restrict the Shifts capabilities that are available to frontline managers for managing their team schedules. This article describes how you can control permissions to these capabilities using the [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition?view=graph-rest-beta) Graph API.

## Frontline manager capabilities in Shifts for managing their teams

The following table lists the settings and schedule group capabilities that are available to frontline managers in Shifts for managing their teams, and indicates whether you can restrict the capability.

|Setting/capability|Description|Use shiftsRoleDefinition Graph API to control permissions|
|---------|---------|:---------:|
|Team time zone|Set the team's time zone and closest city.||
|Start of week|Set the day of the week for schedules to start.||
|Copying shifts|Set whether shifts activities are automatically included when copying shifts.||
|Open shifts|Turn on or turn off the ability to create and request open shifts.|✔️<sup>1</sup>|
|Swap shifts|Turn on or off workers' ability to swap shifts with each other. |✔️<sup>1</sup>|
|Offer shift|Turn on or off workers' ability to offer shifts to coworkers.|✔️<sup>1</sup>|
|Time-off requests|Turn on or turn off workers' ability to request time off.|✔️|
|Time-off reasons|Add and edit time-off reasons for the team.|✔️|
|Time clock|Turn on or turn off time clock for the team.|✔️|
|Time clock geolocation|Define time clock geolocation (takes precedence over time clock setting)|✔️|
|Visibility of past shifts|Turn on or turn off workers' ability to see coworkers' past shifts.||
|Visibility of time off|Turn on or turn off workers' ability to see each other's time-off details.||
|Visibility of shifts details|Turn on or turn off workers' ability to see each other's shift details.||
|Manage schedule groups|Add, rename, and delete schedule groups.|✔️|
|Manage schedule group membership|Add and remove team members from schedule groups.||

<sup>1</sup>You manage these three capabilities through the `CanModifyShiftRequestsCapabilities` parameter.

You can also use the [Create or replace schedule](/graph/api/team-put-schedule?view=graph-rest-1.0) Graph API to define Shifts settings and the [Create schedulingGroup](/graph/api/schedule-post-schedulinggroups?view=graph-rest-1.0) Graph API to manage schedule groups and membership.  

## Example scenario

At Contoso Ltd, department managers report directly to the store manager. Store managers have more authority within the company than department managers, and roles are assigned as follows:

- Store managers are team owners in Teams.
- Department managers are team members in Teams and schedule owners in Shifts.

Contoso reviewed the Shifts capabilities of their frontline managers and determined the following requirements based on their business needs:

- [Frontline managers shouldn't be able to choose whether their teams can use time clock in Shifts](#frontline-managers-shouldnt-be-able-to-choose-whether-their-teams-can-use-time-clock-in-shifts).
- [Department managers shouldn't be able to choose whether they can add and edit time-off reasons in Shifts](#department-managers-shouldnt-be-able-to-choose-whether-they-can-add-and-edit-time-off-reasons-in-shifts).

### Frontline managers shouldn't be able to choose whether their teams can use time clock in Shifts

Contoso decided not to use time clock in Shifts for now because they want their frontline workers to use the in-store stations to clock in and out of their shifts. This means that they need to:

- Remove permissions for store managers (team owners) and department managers (schedule owners) to change the time clock setting in Shifts for their teams.
- Set the time clock setting in Shifts to **Off** for all teams.
  
To do this:

1. To prevent frontline managers from changing the time clock setting for their teams, use the [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition?view=graph-rest-beta) Graph API and remove the `CanModifyTimeClockCapabilities` parameter from the `allowedResourceActions` list for the team owner role and schedule owner role on every team using Shifts.

    This example shows the permissions of the team owner role for the Contoso Chicago store (team ID fb963991-69a8-4d2c-8465-cd8e374891c4).

    **Request**<br>
    ```http
    PATCH https://graph.microsoft.com/beta/teams/fb963991-69a8-4d2c-8465-cd8e374891c4/schedule/shiftsRoleDefinition/teamowner
    Content-Type: application/json

    {
    "shiftsRoleDefinition": [
      {
        "allowedResourceActions": [
           "CanModifyShiftRequestsCapabilities",
           "CanModifyTimeOffRequestsCapabilities",
           "CanModifySchedulingGroups",
           "CanModifyTimeOffReasons"
         ]
      }
     ]
    }     
    ```

1. To turn off time clock in Shifts for all teams, use the [Create or replace schedule](/graph/api/team-put-schedule?view=graph-rest-1.0) Graph API and set the `timeClockEnabled parameter` to `false` for every team.

    Here, time clock is turned off for the Contoso Chicago store (team ID fb963991-69a8-4d2c-8465-cd8e374891c4).

    **Request**<br>
    ```http
    PUT https://graph.microsoft.com/v1.0/teams/fb963991-69a8-4d2c-8465-cd8e374891c4/schedule
    Content-Type: application/json

    {
      "enabled": true,
      "timeZone": "America/Chicago”, 
      "timeClockEnabled": false
    }
    ```

Here's what the time clock setting in Shifts looks like for store managers and department managers at Contoso before and after removing their permissions to change it. After removing their permissions, the setting is unavailable in Shifts.

:::image type="content" source="media/flm-shifts-permissions-time-clock.png" alt-text="Example of the time clock setting in Shifts for frontline managers before and after removing their permissions to change it.":::

### Department managers shouldn't be able to choose whether they can add and edit time-off reasons in Shifts

At Contoso, adding and editing time-off reasons is the responsibility of the store manager. This means that they need to remove permissions for department managers (schedule owners) to add and edit time-off reasons in Shifts for all teams.

To do this, use the [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition?view=graph-rest-beta) Graph API and remove the `CanModifyTimeOffReasons` parameter from the `allowedResourceActions` list for the schedule owner role on every team using Shifts.

This example shows the permissions of the schedule owner role for the Contoso Chicago store (team ID fb963991-69a8-4d2c-8465-cd8e374891c4).

**Request**<br>
```http
PATCH https://graph.microsoft.com/beta/teams/fb963991-69a8-4d2c-8465-cd8e374891c4/schedule/shiftsRoleDefinition/scheduleowner
Content-Type: application/json

{
"shiftsRoleDefinition": [
  {
    "allowedResourceActions": [
       "CanModifyShiftRequestsCapabilities",
       "CanModifyTimeOffRequestsCapabilities",
       "CanModifySchedulingGroups"
     ]
  }
 ]
}
```

Here's what the time-off reasons option in Shifts looks like for department managers at Contoso before and after removing their permissions to use it. After removing their permissions, the option is unavailable in Shifts.

:::image type="content" source="media/flm-shifts-permissions-time-off-reasons.png" alt-text="Example of the time-off reasons option in Shifts for department managers before and after removing their permissions to use it.":::

## Related articles

- [Shifts for frontline workers](shifts-for-teams-landing-page.md)
- [Manage the Shifts app for your organization in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
