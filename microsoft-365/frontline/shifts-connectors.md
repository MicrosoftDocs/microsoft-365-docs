---
title: Shifts connectors
author: lanachin
ms.author: v-lanachin
ms.reviewer: aaku
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about Shifts connectors and how to use them to connect Shifts to your workforce management system. 
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Shifts connectors

## Overview

Shifts connectors enable you to integrate Shifts, the schedule management tool in Microsoft Teams, with your workforce management (WFM) system. After you set up a connection, your frontline workers can seamlessly view and manage their schedules in your WFM system from within Shifts.

Connecting your WFM system to Teams empowers your frontline workforce to manage schedules more effectively and streamlines everyday processes for higher engagement and productivity. Your frontline workers have one place for their scheduling, communication, and collaboration needs to get work done, from anywhere, on any device.

This article gives you an overview of Shifts connectors and how they work.

## How Shifts connectors work

Connectors sync schedule data between your WFM system and Shifts, bringing your organization’s schedules into Teams. Shifts is where your frontline workers engage for their scheduling needs. Your WFM system is the system of record for business rules, compliance, and intelligence.

Data flows via the connector both ways to ensure schedules are always up to date. Schedules in your WFM system are synced to Shifts. And, changes made to schedules in Shifts are synced back to your WFM system. As the system of record, all business rules are enforced by your WFM system before data is saved to Shifts.

<a name="prereq"> </a>
<a name="schedules"> </a>
## Managed Shifts connectors

Managed Shifts connectors are connectors developed in collaboration with our partners. Managed connectors are hosted and managed either by us or our partners. With managed connectors, only minimal setup is needed.

|Connector|Description|Requirements|
|---------|---------|---------|
|[Microsoft Teams Shifts connector for Blue Yonder](#microsoft-teams-shifts-connector-for-blue-yonder)|Use this connector to integrate Shifts with Blue Yonder Workforce Management. This connector is hosted and managed by Microsoft.|Prerequisites for setting up a connection: <ul><li>Using the [Shifts connector wizard](shifts-connector-wizard.md#prerequisites) in the Microsoft 365 admin center<br>Before you run the wizard, [remove schedules from existing teams that you want to map](shifts-connector-wizard.md#remove-schedules-from-teams-you-want-to-map).</li><li>Using [PowerShell](shifts-connector-blue-yonder-powershell-setup.md#prerequisites)</li></ul>|
|[Microsoft Teams Shifts connector for UKG Dimensions](#microsoft-teams-shifts-connector-for-ukg-dimensions)|Use this connector to integrate Shifts with UKG Dimensions. This connector is hosted and managed by Microsoft.|Prerequisites for setting up a connection: <ul><li>Using the [Shifts connector wizard](shifts-connector-wizard-ukg.md#prerequisites) in the Microsoft 365 admin center<br>Before you run the wizard, [remove schedules from existing teams that you want to map](shifts-connector-wizard-ukg.md#remove-schedules-from-teams-you-want-to-map)</li><li>Using [PowerShell](shifts-connector-ukg-powershell-setup.md#prerequisites)</li></ul>|
|[Reflexis Shifts connector for Microsoft Teams](#reflexis-shifts-connector-for-microsoft-teams)|Use this connector to integrate Shifts with Reflexis Workforce Scheduler. This connector is hosted and managed by Zebra. |To learn more, go to <https://connect.zebra.com/microsoft-connectors>.|

<a name="blue_yonder"> </a>
### Microsoft Teams Shifts connector for Blue Yonder

The Teams Shifts connector for Blue Yonder is a first-party offering that's hosted and managed by Microsoft. With this connector, you can integrate Shifts with Blue Yonder Workforce Management (Blue Yonder WFM) versions 2020.3, 2021.1, or 2021.2 to manage your schedules and keep them up to date.  

> [!NOTE]
> If you have Blue Yonder WFM version 2020.3 or 2021.1, apply the 2020.3.0.4 or 2021.1.0.3 patch. This patch fixes an issue where users get a persistent error message in Shifts. It also  fixes an issue that prevents users from updating their availability in Shifts.

:::image type="content" source="media/shifts-connector-blue-yonder.png" alt-text="Screenshot showing a swap request in Shifts on a mobile device, request approval in Teams on desktop, and a schedule in Blue Yonder WFM." lightbox="media/shifts-connector-blue-yonder.png":::

Frontline managers can:

- Publish shifts and schedules in Blue Yonder WFM and view them in Shifts.
- Create, manage, and assign open shifts in Blue Yonder WFM and view them in Shifts.
- Assign open shifts that were created in Blue Yonder WFM in Shifts.
- Create, edit, and delete time off in Blue Yonder WFM and view in Shifts.
- View and approve schedule requests from workers in both Blue Yonder WFM and Shifts.
- Set and update worker availability in Blue Yonder WFM and view in Shifts.

Frontline workers can:

- See their own and their team's shifts and schedules in Shifts.
- Request time off, open shifts, and swap shifts in Shifts.
- Set their availability in Shifts.

The following actions are currently not supported:

- Add, edit, delete, save, or publish shifts in Shifts.
- Add, edit, delete, save, or publish time off in Shifts.
- Add, edit, delete, save, or publish open shifts in Shifts.

When a frontline manager or worker tries to do any of these actions in Shifts, they'll receive a message to let them know the action isn't supported.

#### Example scenario

Eden, a manager, publishes a schedule in Blue Yonder WFM, which is synced to Shifts in Teams through the connector. Alex, a staff member, gets notified in Teams on his mobile device, and views his schedule and assigned shifts.

Alex needs to take some time off and requests a day off using Shifts. The request is sent to Blue Yonder WFM through the connector. Blue Yonder WFM ensures that the request is compliant with business rules and the request is created. Eden sees and approves the request in Blue Yonder WFM, and the approval is synced to Teams. (Eden can also see and approve the request in Shifts). Alex is notified in Teams that his request is approved and views his updated schedule.

Alex wants to swap a shift with a coworker. In Shifts, Alex sees a list of all shifts that are eligible for a swap based on business rules in Blue Yonder WFM. Alex chooses a shift that's currently assigned to Gena. Gena is notified in Teams on their mobile device and accepts the swap request. Eden sees and approves the request in Shifts, and the approval is synced to Blue Yonder WFM. (Eden can also see and approve the request in Blue Yonder WFM). Alex and Gena are notified in Teams, and view their updated schedules.

#### Set up a connection to Blue Yonder Workforce Management

Integrating Shifts with Blue Yonder WFM using the connector takes just a few steps. You can use the Shifts connector wizard in the Microsoft 365 admin center to quickly set up a connection. The wizard configures the connector based on the settings you choose and creates the connection. If you prefer to use PowerShell, we also provide PowerShell scripts that you can use to get connected.

For step-by-step guidance, see:

- [Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management](shifts-connector-wizard.md)
- [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md)

After a connection is set up, you can update and change connection settings at any time, as needed. To learn more, see:

- [Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-blue-yonder-admin-center-manage.md)
- [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md)

As for the connector itself, you don't need to worry about upgrades or maintenance. We take care of that.

### Microsoft Teams Shifts connector for UKG Dimensions

[!INCLUDE [preview-feature](includes/preview-feature.md)]

The Teams Shifts connector for UKG Dimensions is a first-party offering that's hosted and managed by Microsoft. With this connector, you can integrate Shifts with UKG Dimensions to manage your schedules and keep them up to date.  

:::image type="content" source="media/shifts-connector-ukg-dimensions.png" alt-text="Screenshot showing Shifts on a mobile device, a time off request, and a schedule in UKG Dimensions." lightbox="media/shifts-connector-ukg-dimensions.png":::

Frontline managers can:

- Publish shifts and schedules in UKG Dimensions and view them in Shifts.
- Create, view, manage, and assign open shifts in UKG Dimensions and Shifts in Teams desktop and Teams web app. (Currently, managers can't view or assign open shifts in Shifts on Teams mobile.)
- Create, edit, and delete time off in UKG Dimensions and view in Shifts.
- View and approve schedule requests from workers in both UKG Dimensions and Shifts.
- Set and update worker availability in UKG Dimensions and view in Shifts.

Frontline workers can:

- See their own and their team's shifts and schedules in Shifts.
- Request time off, view time off information, and view their team's open shifts in Shifts.
- View and post timecard entries in Shifts.
- Request open shifts and swap shifts in Shifts.
- Set their availability in Shifts in Teams mobile.

The following actions are currently not supported:

- Add, edit, delete, save, or publish shifts in Shifts.
- Add, edit, delete, save, or publish time off in Shifts.
- Add, edit, delete, save, or publish open shifts in Shifts.

When a frontline manager or worker tries to do any of these actions in Shifts, they'll receive a message to let them know the action isn't supported.

#### Example scenario

Ravi, a manager, publishes a schedule in UKG Dimensions, which is synced to Shifts in Teams through the connector. Camille, a staff member, gets notified in Teams on her mobile device, and views her schedule and her team's schedule. Within the assigned shifts, Camille can also see detailed information, such as tasks, set by the manager.

Camille needs to take some time off and requests a day off using Shifts. The request is sent to UKG Dimensions through the connector. UKG Dimensions ensures that the request is compliant with business rules and the request is created. Ravi sees and approves the request in UKG Dimensions, and the approval is synced to Teams. (Ravi can also see and approve the request in Shifts). Camille is notified in Teams that the request is approved and views her updated schedule.

Camille wants to swap a shift with a coworker. In Shifts, Camille sees a list of all shifts that are eligible for a swap based on business rules in UKG Dimensions. Camille chooses a shift that's currently assigned to Kristen. Kristen is notified in Teams on their mobile device and accepts the swap request. Ravi sees and approves the request in Shifts, and the approval is synced to UKG Dimensions. (Ravi can also see and approve the request in UKG Dimensions). Camille and Kristen are notified in Teams, and view their updated schedules.

#### Set up a connection to UKG Dimensions

Integrating Shifts with UKG Dimensions using the connector takes just a few steps. You can use the Shifts connector wizard in the Microsoft 365 admin center to quickly set up a connection. The wizard configures the connector based on the settings you choose and creates the connection. If you prefer to use PowerShell, we also provide PowerShell scripts that you can use to get connected.

For step-by-step guidance, see:

- [Use the Shifts connector wizard to connect Shifts to UKG Dimensions](shifts-connector-wizard-ukg.md)
- [Use PowerShell to connect Shifts to UKG Dimensions](shifts-connector-ukg-powershell-setup.md)

After a connection is set up, you can update and change connection settings at any time, as needed. To learn more, see:

- [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-admin-center-manage.md)
- [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md)

As for the connector itself, you don't need to worry about upgrades or maintenance. We take care of that.

### Reflexis Shifts connector for Microsoft Teams

The Reflexis Shifts connector for Microsoft Teams is hosted and managed by Zebra. With this connector, you can integrate Shifts with the Reflexis WFM system to manage your schedules and keep them up to date.

Frontline workers have access to their schedule in Shifts in Teams, and their requests are synchronized from Shifts to Reflexis Workforce Scheduler (RWS). The status of requests and shifts created in RWS are synced to Shifts in Teams.

:::image type="content" source="media/shifts-connector-reflexis.png" alt-text="Screenshot showing list of shifts on a mobile device and a schedule in Reflexis." lightbox="media/shifts-connector-reflexis.png":::

Frontline managers can:

- Publish shifts and schedules in Reflexis and view them in Shifts.
- Edit shifts in both Reflexis and Shifts.
- Create, manage, and assign open shifts in both Reflexis and Shifts.
- View and approve schedule requests from workers in both Reflexis and Shifts.

Frontline workers can:

- See their own and their team's shifts and schedules in Shifts.
- Request time off, open shifts, and swap and offer shifts in Shifts.

To learn more, go to <https://connect.zebra.com/microsoft-connectors>.

## Related articles

- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
