---
title: Set up open shifts across locations in Shifts for your frontline
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up open shifts across locations for your frontline in Shifts. With this feature, frontline managers can offer open shifts across multiple locations for frontline workers to request, and workers can see and request open shifts at other locations.
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/01/2024

---

# Set up open shifts across locations in Shifts for your frontline

> [!IMPORTANT]
> This article describes a Microsoft Teams feature that hasn't yet been released. It's been announced, and it's coming soon. To stay on top of upcoming Teams features, check out the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=Microsoft%20Teams).

## Overview

With the open shifts across locations feature in Shifts, your frontline managers can offer open shifts across multiple locations (teams) within the regions or areas defined in your operational hierarchy. This allows frontline workers to see and request open shifts available at other specified locations.

With this feature, you can:

- Optimize your workforce by balancing the supply and demand of shifts across locations within an area.
- Empower your frontline workers by giving them the flexibility to request open shifts at locations convenient to them.
- Enhance customer satisfaction with the ability to schedule anyone within an area to help ensure your locations are fully staffed.

> [!NOTE]
> This feature isn't yet supported if you integrated Shifts with your workforce management (WFM) system through a [Shifts connector](shifts-connectors.md).

## Setup

To enable open shifts across locations for your organization, define a [frontline operational hierarchy](deploy-frontline-operational-hierarchy.md) in the Teams admin center to map your organization's structure of frontline teams and locations to a hierarchy.

## How it works

After you define your hierarchy, frontline managers (team owners or schedule owners) must turn on the feature for their team's schedule on the **Settings** tab in Shifts.

:::image type="content" source="media/shifts-cross-location-setting.png" alt-text="Screenshot of the Open shifts section in Shifts settings, showing the Open shifts and Open shifts across locations settings and the Check eligibility button." lightbox="media/shifts-cross-location-setting.png":::

> [!NOTE]
> Managers can select **Check eligibility** to check whether this feature is set up for their team. If you defined an operational hierarchy and the team is included within the hierarchy, managers don't need to perform this step.

After a manager turns on the capability in Shifts settings, they can choose to enable it for each open shift they create in a schedule group by using the **Open shifts across locations** toggle.

:::image type="content" source="media/shifts-cross-location-toggle.png" alt-text="Screenshot of the Open shifts across locations toggle for an open shift.":::

Frontline workers who are part of the same schedule group in other locations can see and request the open shifts. The manager at the location where the open shift is available can approve (or decline) the request.

To learn more about the user experience, see [Use open shifts across locations in Shifts]().

### Example scenario

Contoso has hundreds of stores. Each store is grouped into an area and is managed by a different manager. To simplify this scenario, we focus on two stores in the West area.

:::image type="content" source="media/shifts-cross-location-chart.png" alt-text="A chart showing the structure for the Contoso example scenario." lightbox="media/shifts-cross-location-chart.png":::

In this example:

- The IT admin at Contoso set up an operational hierarchy in the Teams admin center to map their frontline team structure.
- Bellevue and Redmond are store locations that are on the same level of the hierarchy. They share the parent node, West. 
- The schedule groups in Shifts at these locations are based on job types: Pickers, Runners, Stockers, Inventory specialists.
- Roles:
  - Babbak is the manager of the Bellevue location.
  - Kayo is the manager of the Redmond location
  - Isaac is a worker at the Redmond location in the Pickers schedule group.

Babbak and Kayo turn on the feature in Shifts settings for their team schedules. Babbak creates an open shift in the Pickers schedule group and turns on the **Open shifts across location** toggle. Babbak shares the open shift, and workers that belong to the Pickers schedule group at both the Bellevue and Redmond locations can see and request it.

Isaac, who wants to earn extra hours, requests the open shift that's available at the Bellevue location. Babbak is notified and approves the request.

## Related articles

- [Shifts for your frontline organization](shifts-for-teams-landing-page.md)
- [Deploy your frontline operational hierarchy](deploy-frontline-operational-hierarchy.md)
- [Use roles to define your frontline managers and workers in Shifts](shifts-frontline-manager-worker-roles.md)
- [schedulingGroup](/graph/api/resources/schedulinggroup?view=graph-rest-beta)
- [Create schedulingGroup](/graph/api/schedule-post-schedulinggroups?view=graph-rest-beta)