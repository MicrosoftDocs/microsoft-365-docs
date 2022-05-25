---
title: Shifts connectors
author: lanachin
ms.author: v-lanachin
ms.reviewer: aaku
manager: samanro
ms.topic: article
audience: admin
ms.service: msteams
search.appverid: MET150
description: Learn about Shifts connectors and how to use them to connect Shifts to your workforce management system. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_FLW
appliesto: 
  - Microsoft Teams
---

# Shifts connectors

## Overview

Shifts connectors enable you to integrate Shifts, the schedule management tool in Microsoft Teams, with your workforce management (WFM) system. After you set up a connection, your frontline workers can seamlessly view and manage their schedules in your WFM system from within Shifts.

Connecting your WFM system to Teams empowers your frontline workforce to manage schedules more effectively and streamlines everyday processes for higher engagement and productivity. Your frontline workers have one place for their scheduling, communication, and collaboration needs to get work done, from anywhere, on any device.

This article gives you an overview of Shifts connectors and how they work.

## How Shifts connectors work

Connectors sync schedule data between your WFM system and Shifts, bringing your organization’s schedules into Teams. Shifts is where your frontline workers engage for their scheduling needs. Your WFM system is the system of record for business rules, compliance, and intelligence.

Data flows via the connector both ways to ensure schedules are always up to date. Schedules in your WFM system are synced to Shifts. And, changes made to schedules in Shifts are synced back to your WFM system in real time. As the system of record, all business rules are enforced by your WFM system before data is saved to Shifts.

## Managed Shifts connectors

Managed Shifts connectors are connectors developed in collaboration with our partners. Managed connectors are hosted and managed either by us or our partners. With managed connectors, only minimal setup is needed.

### Microsoft Teams Shifts connector for Blue Yonder
<a name="blue_yonder"> </a>

The Teams Shifts connector for Blue Yonder is a first-party offering that's hosted and managed by Microsoft. With this connector, you can integrate Shifts with Blue Yonder Workforce Management (Blue Yonder WFM) versions 2020.3, 2021.1, or 2021.2 to manage your schedules and keep them up to date.  

> [!NOTE]
> If you have Blue Yonder WFM version 2020.3 or 2021.1, apply the 2020.3.0.4 or 2021.1.0.3 patch. This patch fixes an issue where users get a persistent error message in Shifts. It also  fixes an issue that prevents users from updating their availability in Shifts.

:::image type="content" source="../../media/shifts-connector-blue-yonder.png" alt-text="Screenshot showing a swap request in Shifts on a mobile device, request approval in Teams on desktop, and a schedule in Blue Yonder WFM." lightbox="../../media/shifts-connector-blue-yonder.png":::

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

Alex needs to take some time off and requests a day off using Shifts. The request is sent to Blue Yonder WFM through the connector in real time. Blue Yonder WFM ensures that the request is compliant with business rules and the request is created. Eden sees and approves the request in Blue Yonder WFM, and the approval is synced to Teams. (Eden can also see and approve the request in Shifts). Alex is notified in Teams that his request is approved and views his updated schedule.

Alex wants to swap a shift with a coworker. In Shifts, Alex sees a list of all shifts that are eligible for a swap based on business rules in Blue Yonder WFM. Alex chooses a shift that's currently assigned to Gena. Gena is notified in Teams on their mobile device and accepts the swap request. Eden sees and approves the request in Shifts, and the approval is synced to Blue Yonder WFM. (Eden can also see and approve the request in Blue Yonder WFM). Alex and Gena are notified in Teams, and view their updated schedules.

#### Set up a connection

Integrating Shifts with Blue Yonder WFM using the connector takes just a few steps. You can use the Shifts connector wizard in the Microsoft 365 admin center to quickly set up a connection. The wizard configures the connector based on the settings you choose and creates the connection. If you prefer to use PowerShell, we also provide PowerShell scripts that you can use to get connected.

For step-by-step guidance, see:

- [Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management](shifts-connector-wizard.md)
- [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md)

After a connection is set up, you can use PowerShell to update and change connection settings at any time, as needed. As for the connector itself, you don't need to worry about upgrades or maintenance. We take care of that.

### Reflexis Shifts connector for Microsoft Teams

The Reflexis Shifts connector for Microsoft Teams is hosted and managed by Zebra. With this connector, you can integrate Shifts with the Reflexis WFM system to manage your schedules and keep them up to date.

Frontline workers have access to their schedule in Shifts in Teams, and their requests are synchronized from Shifts to Reflexis Workforce Scheduler (RWS). The status of requests and shifts created in RWS are synced to Shifts in Teams.

:::image type="content" source="../../media/shifts-connector-reflexis.png" alt-text="Screenshot showing list of shifts on a mobile device and a schedule in Reflexis." lightbox="../../media/shifts-connector-reflexis.png":::

Frontline managers can:

- Publish shifts and schedules in Reflexis and view them in Shifts.
- Edit shifts in both Reflexis and Shifts.
- Create, manage, and assign open shifts in both Reflexis and Shifts.
- View and approve schedule requests from workers in both Reflexis and Shifts.

Frontline workers can:

- See their own and their team's shifts and schedules in Shifts.
- Request time off, open shifts, and swap and offer shifts in Shifts.

To learn more, go to https://connect.zebra.com/microsoft-connectors.

## Related articles

- [Manage the Shifts app](manage-the-shifts-app-for-your-organization-in-teams.md)
