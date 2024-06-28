---
title: Set up open shifts across locations in Shifts for your frontline
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: nvandanapu
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up open shifts across locations in Shifts for your frontline. With this feature, frontline managers can offer open shifts across multiple locations for frontline workers to request.  
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 

---

# Set up open shifts across locations in Shifts for your frontline

> [!IMPORTANT]
> This feature is currently in public preview.

## Overview

With the open shifts across locations feature in Shifts, your frontline managers can offer open shifts across multiple locations (teams) within an area for frontline workers to request. Workers can see and request open shifts that are available at other locations.

With this feature, you can:

- Optimize your workforce by balancing the supply and demand of shifts across locations within an area.
- Empower your frontline workers by giving them the flexibility to request open shifts at locations convenient to them.
- Enhance customer satisfaction with the ability to schedule anyone within an area to help ensure your locations are fully staffed.

> [!NOTE]
> Currently, this feature is available if your organization uses Shifts as a standalone app. This feature isn’t yet supported if you integrated Shifts with your workforce management (WFM) system through a [Shifts connector](shifts-connectors.md).

## Prerequisites

To enable this feature, you must complete the following tasks:

- Define a [frontline operational hierarchy](deploy-frontline-operational-hierarchy.md) in the Teams admin center to map your organization's structure of frontline teams and locations to a hierarchy.
- Assign a code to at least one schedule group in a team that matches the code of the schedule group in other teams. Schedule groups in Shifts are used to group employees based on common characteristics within a team. For example, schedule groups can be departments or job types.

The code for a particular schedule group in a team must match the code of the corresponding schedule group on other teams within the same level of your hierarchy for open shifts to be available on those other teams.

In this way, open shifts shared by a frontline manager in one location are available to all workers that belong to the same schedule group in other locations within the same area.

### Create and assign schedule group codes

Use the [schedulingGroup](/graph/api/resources/schedulinggroup?view=graph-rest-beta) Graph API to create and assign schedule group codes. You can create a new schedule group with a code or replace an existing schedule group code.

Keep the following things in mind:

- Assign codes to schedule groups in teams that are within the same level of your hierarchy. This means that the teams must share the same parent node in your hierarchy.
- The code for a particular schedule group must be the same across all the teams for which you want open shifts to be available.
- A code can be up to 100 alphanumeric characters long.
- By default, the schedule group code is the same as the to schedule group name unless you change it.

## Example

Here’s an example to help you understand how to assign schedule group codes to enable open shifts across locations.

### Scenario

Contoso has hundreds of stores. Each store is grouped into an area and is managed by a different manager. To simplify this scenario, we focus on three stores in the West area.

In this example:

- Contoso set up an operational hierarchy in the Teams admin center to map their frontline team structure.
- Bellevue, Redmond, and Seattle are "sister" locations that are on the same level of the hierarchy. They share the parent node, West.  
- The schedule groups in Shifts at these locations are based on job types: Pickers, Runners, Stockers, Inventory specialists.

Contoso wants to enable open shifts across locations for Pickers in the Bellevue and Redmond stores but not in the Seattle store. To do this, the Contoso admin completes the following steps:

1. Use the [List schedulingGroup](/graph/api/schedule-list-schedulinggroups?view=graph-rest-beta) Graph API to get a list of schedule groups in the Bellevue team and the Redmond team.
1. Use the [Replace schedulingGroup](/graph/api/schedulinggroup-put?view=graph-rest-beta) Graph API to create and assign the same code to the Pickers schedule group in the Bellevue and Redmond teams.

In this scenario, the Pickers schedule group in the Seattle team doesn’t need a matching code because Contoso decided that open shifts at the Seattle location shouldn’t be available to workers at other locations.

## User experience

Here’s an overview of the user experience. To learn more, see [Use open shifts across locations in Shifts]().

Frontline managers can select **Check eligibility** in Shifts settings to check whether this feature is set up for their team. This check verifies requirements are met, including whether schedule groups in their area have matching schedule group codes.  

To enable open shifts they create in the schedule groups on their team to be available to other locations and to allow workers on their team to request open shifts at other locations, frontline managers on *each* team must do the following:

1. Turn on the **Allow managers to create shifts that aren’t assigned to anyone. Employees will be able to see and request them.** toggle, if it’s not already on.
1. Turn on the **Open shifts across locations** toggle. (By default, the toggle is off.)

After a frontline manager turns on the capability in Shifts settings, they can enable it for each open shift they create in the schedule group by using the **Open shifts across locations** toggle.

Frontline workers who are part of the same schedule group in other locations can see and request the open shifts. The manager at the location where the open shift is available must approve (or decline) the request. 

### Scenario

Using our earlier example, at Contoso:

- Babbak is the manager of the Bellevue location.
- Kayo is the manager of the Redmond location.
- Isaac is a worker at the Redmond location.

Babbak and Kayo turn on the feature in Shifts settings. Babbak creates an open shift in the Pickers schedule group and turns on the **Open shifts across location** toggle. Babbak shares the open shift, and workers that belong to the Pickers schedule group at both the Bellevue and Redmond locations can see and request it.

Isaac, who wants to earn extra hours, requests the open shift that’s available at the Bellevue location. Babbak is notified and approves the request.

## Related articles

- [Shifts for your frontline organization](shifts-for-teams-landing-page.md)
- [Deploy your frontline operational hierarchy](deploy-frontline-operational-hierarchy.md)
- [Create schedulingGroup](/graph/api/schedule-post-schedulinggroups?view=graph-rest-beta)