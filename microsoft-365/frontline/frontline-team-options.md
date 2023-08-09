---
title: How to find the best frontline team solution for your organization
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: aaglick
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn whether dynamic teams or static teams are the best option for your organization's frontline teams. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 07/12/2023
---

# How to find the best frontline team solution for your organization

## Overview

Frontline teams are a collection of people, content, and tools within an organization for different frontline worker locations. When deploying your frontline teams you have different options for how you can manage team membership. You can choose between dynamic team membership, static team membership, or a combination of both.

>[!IMPORTANT]
>The ability to deploy frontline dynamic teams at scale will begin rolling out for public preview in July 2023.

### Licensing

For dynamic groups, users need one of the following licenses: Microsoft 365 F1, F3, E1, E3, or E5. If a user doesn't have one of these licenses, they'll need an Azure Active Directory P1 add-on license to leverage dynamic teams. [Learn more about frontline licensing](flw-licensing-options.md).

### Key considerations

- You can choose a mix of dynamic frontline teams and static frontline teams for your organization.
- You can convert static frontline teams to dynamic frontline teams in your [Azure AD portal](/azure/active-directory/enterprise-users/groups-change-type) by converting the group membership type to Dynamic and setting your dynamic team membership rules. Teams you convert with this method aren't currently possible to view in the Dynamic team management view in your Teams admin center, but this functionality is planned for future releases.

## When should I choose dynamic teams?

Dynamic teams will ensure your team membership is always up to date based on attributes you define in Azure Active Directory (AAD). As frontline employees onboard, offboard, or change locations, team membership will reflect the updates from AAD.  

You should use dynamic frontline teams if:

- You want your workers' team membership to be managed automatically.
- You have AAD attributes that can define who is a frontline worker and what locations they work in.
- You want to simplify the process of creating a team for each frontline location, including support for creating new teams when a new location opens.

[Learn more about deploying dynamic frontline teams from your Teams admin center](deploy-dynamic-teams-at-scale.md).

> [!NOTE]
> You can't manually add members to dynamic teams. If you need to manually add or remove members, it's recommended that you use a [static team](#when-should-i-choose-static-teams).

## When should I choose static teams?

Static teams let you choose which users to put in which team at the time of team creation. Team owners can manually add and remove members. Admins can also rerun the Deploy static teams at scale PowerShell script to keep membership up to date.

You should use static teams if:

- You want to manage team members and owners manually or delegate management to the team owner(s).
- You can't identify your frontline workforce with an AAD attribute or you can't define your frontline locations with an AAD attribute.
- Your users don't have the [required license](#licensing) for dynamic teams.

[Learn more about deploying static frontline teams with PowerShell](deploy-teams-at-scale.md).
