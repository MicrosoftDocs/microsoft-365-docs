---
title: Shifts for frontline workers
description: Get the admin guidance you need to set up and manage Shifts, the schedule management tool, in Microsoft Teams.
ms.topic: conceptual
author: lana-chin
ms.author: v-chinlana
manager: jtremper
audience: admin
ms.reviewer: imarquesgil
f1.keywords:
- NOCSH
ms.service: microsoft-365-frontline
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
  - microsoftcloud-healthcare
  - microsoftcloud-retail
  - m365solution-frontline
  - m365solution-scenario
  - teams-1p-app-admin
search.appverid: MET150
ms.localizationpriority: high
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
  - Microsoft Cloud for Retail
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-jun2020
ms.date: 03/15/2024
---

# Shifts for frontline workers

Shifts, the schedule management tool in Teams, keeps your frontline workforce connected and in sync. It's built mobile first for fast and effective schedule management and communications. With Shifts, frontline managers and workers can seamlessly manage schedules and keep in touch.

Managers can create, update, and manage shift schedules for their teams. They can assign shifts, add open shifts, and approve schedule requests from employees. Workers can view their own and their team's schedules, set their availability, request to swap or offer a shift, request time off, and clock in and out.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE42FjP]

Use the following resources to help you set up and manage Shifts in your organization.

## Set up and manage Shifts

|&nbsp;  |&nbsp; |
|---------|---------|
|:::image type="icon" source="/office/media/icons/deploy-teams.png":::|**[Deploy Shifts at scale](deploy-shifts-at-scale.md)** Configure and manage Shifts settings centrally in the Teams admin center and deploy Shifts to your frontline teams at scale. |
|:::image type="icon" source="/office/media/icons/administrator-teams.png":::|**[Manage Shifts](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)** Get an overview of how to manage Shifts for your organization. Learn how to control access to Shifts, pin Shifts to the Teams app bar for easy access, enable shift-based tags, and more. |
|:::image type="icon" source="/office/media/icons/users-group.png":::|**[Use roles to define your frontline managers and workers in Shifts](shifts-frontline-manager-worker-roles.md)** Learn how to use team owner and team member roles in Teams and the schedule owner role in Shifts to define your frontline managers and workers in Shifts. |
|:::image type="icon" source="/office/media/icons/api-teams.png":::|**[Manage Shifts permissions for frontline managers](manage-shifts-permissions-frontline-managers.md)** Learn how to control the Shifts capabilities that are available to frontline managers for managing their team schedules, such as the Shifts settings that they can configure and whether they can create and manage schedule groups. |
|:::image type="icon" source="/office/media/icons/help.png":::| **[Shifts data FAQ](/microsoftteams/expand-teams-across-your-org/shifts/shifts-data-faq?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)** Learn where Shifts data is stored and other topics related to Shifts data, including retention, retrieval, and encryption.|

## Shifts connectors

If you're using a third-party workforce management (WFM) system for scheduling, you can integrate directly with Shifts through managed Shifts connectors. After you set up a connection, your frontline workers can seamlessly view and manage their schedules in your WFM system from within Shifts.

|&nbsp;  |&nbsp;  |
|---------|---------|
|:::image type="icon" source="/office/media/icons/connector-teams.png":::| **[Overview](shifts-connectors.md)** Get an overview of Shifts connectors and how they work. Learn about the managed connectors that are available and the supported WFM systems.   |
|:::image type="icon" source="/office/media/icons/connector-teams.png":::| **[Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder)** <ul><li>Learn how to set up a connection to Blue Yonder Workforce Management by using the [Shifts connector wizard](shifts-connector-wizard.md) or [PowerShell](shifts-connector-blue-yonder-powershell-setup.md).</li><li>Learn how to manage your connection to Blue Yonder Workforce Management by using the [Microsoft 365 admin center](shifts-connector-blue-yonder-admin-center-manage.md) or [PowerShell](shifts-connector-powershell-manage.md).</li></ul> |
|:::image type="icon" source="/office/media/icons/connector-teams.png":::| **[Teams Shifts connector for UKG Pro Workforce Management](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-pro-workforce-management)**<ul><li>Learn how to set up a connection to UKG Pro Workforce Management by using the [Shifts connector wizard](shifts-connector-wizard-ukg.md) or [PowerShell](shifts-connector-ukg-powershell-setup.md).</li><li>Learn how to manage your connection to UKG Pro Workforce Management by using the [Microsoft 365 admin center](shifts-connector-ukg-admin-center-manage.md) or [PowerShell](shifts-connector-ukg-powershell-manage.md).</li></ul>|
|:::image type="icon" source="/office/media/icons/connector-teams.png":::| **[Reflexis Shifts connector for Microsoft Teams](shifts-connectors.md#reflexis-shifts-connector-for-microsoft-teams)** Learn about integrating Shifts with the Reflexis WFM system through the connector.|

## Shifts extensions

|&nbsp;|&nbsp;|
| ------------- | ------------- |
|:::image type="icon" source="/office/media/icons/api-teams.png":::| **[Shift Graph APIs](/graph/api/resources/shift)** Shifts Graph APIs allow you to integrate Shifts data with external WFM systems. You have the flexibility to build custom Shifts experiences in the back end, while giving users a rich, front-end experience in Teams.             |
|:::image type="icon" source="/office/media/icons/process-flow-teams.png":::| **[Shifts + Power Automate](https://github.com/OfficeDev/Microsoft-Teams-Shifts-Power-Automate-Templates)** Shifts + Power Automate lets you take info from Shifts and create custom workflows with other apps and perform operations at scale. Automate key processes with little to no code. The triggers and templates support various scenarios such as enabling auto-approvals for shift requests when a manager’s approval isn't needed. |

## Featured training

|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
|:::image type="icon" source="/office/media/icons/get-started-teams.png":::  |  [Video: What is Shifts?](https://support.office.com/article/what-is-shifts-f8efe6e4-ddb3-4d23-b81b-bb812296b821) |:::image type="icon" source="/office/media/icons/calendar.png"::: |  [Video: Create a shifts schedule](https://support.microsoft.com/office/create-a-shifts-schedule-2b94ca38-36db-4a1c-8fee-f8f0fec9a984) |:::image type="icon" source="/office/media/icons/blocks-teams.png":::|  [Video: Manage a Shifts schedule](https://support.microsoft.com/office/manage-and-view-a-shifts-schedule-63acda7b-ea39-441a-b1c6-c404a72e79f7) |
