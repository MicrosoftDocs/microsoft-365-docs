---
title: Manage Shifts permissions for frontline managers
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
description: Learn how to manage Shifts permissions for frontline managers to control the Shifts settings that they can configure for their teams.
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
ms.date: 
---

# Manage Shifts permissions for frontline managers

Frontline managers create and manage their team’s schedule and shift requests. By default, frontline managers can do the following in Shifts:

- Configure [Shifts settings](https://support.microsoft.comoffice/manage-settings-in-shifts-1aef353d-e2df-4661-abdd-4014cb57f17b) for their teams. For example, they can set whether frontline workers on their team can swap shifts and request time off.  
- Create and manage schedule groups for their teams in Shifts. Schedule groups are used to group frontline workers based on common characteristics within a team, such as departments or job types.

Depending on the needs of your organization, you might need to control which settings frontline managers can configure in Shifts for their teams and whether frontline managers can create and manage schedule groups. You control these capabilities by using the [Graph API]().

The following table lists what frontline managers can do, and indicates whether you can restrict their permissions to do so.

The following table lists the capabilities that are available to frontline managers for managing their teams, and indicates whether you can restrict their permissions to do so.

|Capability|Description|Can control permissions|
|---------|---------|:---------:|
|Team time zone|Select the team's time zone and closest city.||
|Start of week|Set the day of the week for schedules to start.||
|Copying shifts|Set whether shifts activities are automatically included when copying shifts.||
|Open shifts|Turn on or turn off the ability to create and request open shifts.|✔️&sup1;|
|Swap shifts|Turn on or off workers' ability to swap shifts with each other. |✔️&sup1;|
|Offer shift|Turn on or off workers' ability to offer shifts to coworkers.|✔️&sup1;|
|Time-off requests|Turn on or turn off workers' ability to request time off.|✔️|
|Time-off reasons|Add and edit time-off reasons for the team.|✔️|
|Time clock|Turn on or turn off time clock for their time.|✔️|
|Time clock geolocation|Define time clock geolocation (take precedence over time clock setting)|✔️|
|Visibility of past shifts|Turn on or turn off workers' ability to see coworkers' past shifts.||
|Visibility of time off|Turn on or turn off workers' ability to see each other's time-off details.||
|Visibility of shifts details|Turn on or turn off workers' ability to see each other's shift details.||
|Manage schedule groups|Add, rename, and delete schedule groups.|✔️|
|Manage schedule group membership|Add and remove team members from schedule groups.||

&sup1;These capabilities are managed by a single `CanModifyShiftRequestsCapabilities` parameter.

## Related articles

- [Shifts for frontline workers](shifts-for-teams-landing-page.md)
- [Manage the Shifts app for your organization in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
