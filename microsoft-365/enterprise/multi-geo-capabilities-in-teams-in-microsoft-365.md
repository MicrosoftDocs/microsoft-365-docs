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

Multi-Geo capabilities in Teams enables data such as chat and meeting content to be stored at rest in a specified country or region.

Teams uses the Preferred Data Location (PDL) for users and groups to determine where to store data. If the PDL is not set or is invalid, data is stored in the central location.

## Channel messages

Each Microsoft 365 group has a Preferred Data Location (PDL) which denotes the geo location where related data is to be stored. Teams uses the PDL for the group associated with each team to determine where to store channel messaging data for that team.

For existing teams, if an administrator adds or modifies the PDL for the Microsoft 365 group that backs a team, that team's channel messaging data is added to a migration queue to be moved to the specified geo location.

## User chat

When a new user is created, Teams reads the user's PDL and stores all of their chat data in that geo location.  

For existing users, if an administrator adds or modifies the PDL for a user, that user's chat data is added to a migration queue to be moved to the specified geo location.

The storage location for a one-to-one or one-to-many chat is based on the PDL of the person who started the chat. If that user's PDL is changed, the chat will be migrated to the new geo location.

## Meetings content

For Teams regular meetings, meeting information and any Teams chat data associated with the meeting is stored in the PDL of the meeting organizer.

Teams Live Event Content is also stored in the PDL of the meeting organizer.

For Teams channel meetings, Teams chat data associated with the meeting is stored in the PDL of the team.


## See also

[Multi-Geo in SharePoint and Microsoft 365 Groups](https://techcommunity.microsoft.com/t5/Office-365-Blog/Now-available-Multi-Geo-in-SharePoint-and-Office-365-Groups/ba-p/263302)

[Administering a multi-geo environment](administering-a-multi-geo-environment.md)

[Administering Exchange Online mailboxes in a multi-geo environment](administering-exchange-online-multi-geo.md)
