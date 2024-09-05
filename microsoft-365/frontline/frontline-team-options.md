---
title: How to find the best frontline team solution for your organization
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: arnavgupta
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn whether dynamic teams or static teams are the best option for your organization's frontline teams. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 08/23/2024
---

# How to find the best frontline team solution for your organization

## Overview

Frontline teams are a collection of people, content, and tools within an organization for different frontline worker locations. When deploying your frontline teams, you have different options for how you can manage team membership. You can choose between dynamic team membership, static team membership, or a combination of both.

### Licensing

For dynamic groups, users need one of the following licenses: Microsoft 365 F1, F3, E3, or E5. If a user doesn't have one of these licenses, they'll need a Microsoft Entra ID P1 add-on license to use dynamic teams. [Learn more about frontline licensing](flw-licensing-options.md).

### Key considerations

- You can choose a mix of dynamic frontline teams and static frontline teams for your organization.
- You can convert static frontline teams to dynamic frontline teams in the Microsoft Entra admin center by [converting the group membership type to Dynamic and setting your dynamic team membership rules](/entra/identity/users/groups-change-type). Teams you convert with this method aren't currently possible to view in the Dynamic team management view in the Teams admin center, but this functionality is planned for future releases.

## When should I choose dynamic teams?

Dynamic teams ensure your team membership is always up to date based on attributes you define in Microsoft Entra ID. As frontline employees onboard, offboard, or change locations, team membership reflects the updates from Microsoft Entra ID.  

You should use dynamic frontline teams if:

- You want your workers' team membership to be managed automatically.
- You have Microsoft Entra attributes that can define who is a frontline worker and what locations they work in.
- You want to simplify the process of creating a team for each frontline location, including support for creating new teams when a new location opens.

[Learn more about deploying dynamic frontline teams from the Teams admin center](deploy-dynamic-teams-at-scale.md).

> [!NOTE]
> You can't manually add members to dynamic teams. If you need to manually add or remove members, it's recommended that you use a [static team](#when-should-i-choose-static-teams).

## When should I choose static teams?

Static teams let you choose which users to put in which team at the time of team creation. Team owners can manually add and remove members. Admins can also rerun the [Deploy static teams at scale PowerShell script](deploy-teams-at-scale.md) to keep membership up to date.

You should use static teams if:

- You want to manage team members and owners manually or delegate management to the team owners.
- You can't identify your frontline workforce with a Microsoft Entra attribute or you can't define your frontline locations with a Microsoft Entra attribute.
- Your users don't have the [required license](#licensing) for dynamic teams.

[Learn more about deploying static frontline teams with PowerShell](deploy-teams-at-scale.md).

## Frontline team deployment best practices

When evaluating the right solution for your organization, we recommend you do the following:

  1. Plan your frontline deployment.
  1. Test the deploy tools&mdash;[dynamic team creation in the Teams admin center](deploy-dynamic-teams-at-scale.md) or [static team creation using the PowerShell solution](deploy-teams-at-scale.md). Keep in mind that static teams aren't managed automatically.
  1. Deploy to a pilot location.
  1. Deploy to a broader set of locations using a phased approach.
