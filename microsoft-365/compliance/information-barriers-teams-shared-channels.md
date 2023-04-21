---
title: Information barriers and shared channels
description: This article explains how information barriers support in Microsoft Teams with Shared Channels.
author: robmazz
ms.author: robmazz
manager: laurawi
ms.reviewer: smahadevan
ms.date: 03/31/2023
ms.topic: article
ms.service: msteams
audience: admin
ms.collection: 
- tier2
- purview-compliance
- M365-collaboration
search.appverid: MET150
f1.keywords:
- NOCSH
appliesto: 
  - Microsoft Teams
ms.custom: information-barriers
---

# Information barriers and shared channels

[Shared channels](information-barriers-teams-shared-channels.md) in Microsoft Teams create collaboration spaces where you can invite people who aren't in the team. [Microsoft Purview Information Barriers](information-barriers.md) are policies implemented to restrict and prevent users and groups from communicating with each other within and outside of your organization.

Shared channels are enabled by default in Teams. You can choose if people can create shared channels, if they can share them with people outside your organization, and if they can participate in external shared channels by creating a channel policy. When you create information barriers policies in your organization, checks are performed when configuring shared channels to verify that none of the existing channel members and any new users added to the shared channel violate information barriers policy conditions.

Use the following table to understand how information barriers policies may affect communications and result in specific behaviors when configuring shared channels:

|**Scenario**|**Information barriers behavior**|
|:-----------|:--------------------------------|
| **Share a channel with a user in your organization** | If the user isn't allowed to communicate with shared channel members per an information barriers policy, the user isn't displayed in the user search and channel isn't shared with the team. <br><br> If the user can't be added per an information barriers policy, you'll see the following message: *We didn't find any matches. Talk to your IT admin about expanding the scope of your search.* |
| **Share a channel in your organization with another team that you own** | The channel isn't shared with the team if the other team has any users who aren't allowed to communicate with shared channel members per an information barriers policy. <br><br> If communications aren't allowed per an information barriers policy, you'll see the following message: *The channel can't be shared with this team. Pick another team or contact your admin for more info.* |
| **Share a channel in your organization with another team that you don't own** | If the team owner or any users of the other team aren't allowed to communicate with shared channel members per an information barriers policy, the channel can't be shared with the team. <br><br> If communications aren't allowed per an information barriers policy, you'll see the following message: *The channel can't be shared with this team. Pick another team or contact your admin for more info.* |
| **Add a new user to the team when the team has shared channels with other teams** | If the new user isn't allowed to communicate with members of the shared channel team per an information barriers policy, the user can't be added to the team. When you're adding a user to a team with six or more shared channels, the user is immediately added to the channel and sharing is supported. Sharing for the team and the previously shared channels may be stopped if the new user is found to be non-compliant with an information barriers policy.<br><br> If the user can't be added per an information barriers policy, you'll see the following message: *Unable to add user due to an information barriers policy.* |
| **Share a channel with an external team** | Information barriers policies on internal and external organizations don't restrict communications between users from the different organizations. Shared channels are available to be shared with external guests. |
