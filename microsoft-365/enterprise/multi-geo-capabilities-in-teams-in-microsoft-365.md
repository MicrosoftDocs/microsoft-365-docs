---
title: "Multi-Geo Capabilities in Microsoft Teams"
ms.reviewer: daro
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.service: o365-solutions
f1.keywords:
- NOCSH
ms.custom: 
ms.collection: 
- Strat_SP_gtc
- SPO_Content
- m365solution-scenario
- m365solution-spintranet
localization_priority: Normal
description: "Learn about how Teams works with Microsoft 365 Multi-Geo."
---

# Multi-Geo capabilities in Microsoft Teams

Multi-Geo capabilities in Teams enables Teams chat data to be stored at rest in a specified geo location. Chat data consists of chat messages, including private messages, channel messages, and images used in chats.

Teams uses the Preferred Data Location (PDL) for users and groups to determine where to store data. If the PDL is not set or is invalid, data is stored in the tenant's central location.

## User chat

User chat includes one-to-one, one-to-many, and private meeting messages.

When a new user is created, Teams reads the user's PDL and stores all their chat data in that geo location.

For existing users, if an administrator adds or modifies the PDL for a user, that user's chat data is added to a migration queue to be moved to the specified geo location.

The storage location for a one-to-one or one-to-many chat is based on the PDL of the person who created the chat. If that user's PDL is changed, the chat will be migrated to the new geo location. The storage location for a meeting chat is based on the PDL of the meeting organizer.

To find the current location of a user's Teams data, [connect to Teams PowerShell](/powershell/module/teams/connect-microsoftteams) and run the following command:

```PowerShell
Get-MultiGeoRegion -EntityType User -EntityId <UPN>
```

## Channel messages

Each Microsoft 365 group has a Preferred Data Location (PDL) which denotes the geo location where related data is to be stored. Teams uses the PDL for the group associated with each team to determine where to store channel messaging data for that team. This includes chat that occurs within a channel meeting.

When a user creates a new team, that user's PDL determines what PDL is assigned to the Microsoft 365 group. The group PDL determines where that team's data is stored. If that user's PDL later changes, the group's PDL is not changed.

For existing teams, if an administrator adds or modifies the PDL for the Microsoft 365 group that backs a team, that team's channel messaging data is added to a migration queue to be moved to the specified geo location.

Changing the PDL of the Microsoft 365 group queues the Teams data to migrate to the chosen location. However, this does not migrate the SharePoint site or files associated with the Group automatically. You must move the site separately by following the procedures in [Move a SharePoint site to a different geo location](/microsoft-365/enterprise/move-sharepoint-between-geo-locations). Be sure to do both steps to avoid Teams data and SharePoint data for one group in different locations.

To find the current location of a team's data, [connect to Teams PowerShell](/powershell/module/teams/connect-microsoftteams) and run the following command:

```PowerShell
Get-MultiGeoRegion -EntityType Group -EntityId <GroupObjectId>
```

## User Experience

Teams Multi-Geo is seamless to the end user. Once you change the PDL of a user or a group, the respective data will queue for migration and the migration will occur automatically with no impact to the user or their Teams client even if they are active while the migration occurs.

## See also

[Administering a multi-geo environment](administering-a-multi-geo-environment.md)

[Administering Exchange Online mailboxes in a multi-geo environment](administering-exchange-online-multi-geo.md)
