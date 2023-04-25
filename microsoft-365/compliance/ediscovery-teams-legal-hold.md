---
title: Place a Microsoft Teams user or team on legal hold
description: "Learn to place a Microsoft Teams user or team on legal hold using the Microsoft Purview compliance portal and learn what needs a legal hold based on data requirements."
author: robmazz
ms.author: robmazz
manager: laurawi
ms.topic: article
ms.service: msteams
audience: admin
ms.collection:
- tier1
- purview-compliance
- M365-collaboration
- ediscovery
ms.reviewer: anwara
ms.date: 03/7/2023
search.appverid: MET150
f1.keywords:
- NOCSH
appliesto: 
  - Microsoft Teams
---

# Place a Microsoft Teams user or team on legal hold

When a reasonable expectation of litigation exists, organizations are required to preserve electronically stored information (ESI), including Teams chat messages that are relevant to the case. Organizations may need to preserve all messages related to a specific investigation or for a specific person. This article will discuss using a legal hold to preserve content in Microsoft Teams. To preserve content in other services in Microsoft 365, see [Create an eDiscovery hold](ediscovery-create-holds.md).

> [!NOTE]
> Private channel chats are stored in user mailboxes, while standard channel chats are stored in the mailbox associated with the parent team. If there is already a legal hold in place for a user mailbox, the hold policy will now automatically apply to private channel messages stored in that mailbox. There is no further action needed for an admin to turn this on. Legal hold of files shared in private channels is also supported.

Within Microsoft Teams, an entire team or select users can be put on legal hold. Doing that will make sure that all messages that were exchanged in those teams (including private and shared channels) or messages exchanged by those individuals are discoverable by the organization's compliance managers or Teams Admins.

> [!NOTE]
> Placing a user on hold does not automatically place a group on hold or vice-versa.
> Notifications sent in activity feeds can't be placed on hold.

To put a user or a team on legal hold, use the following guidance:

- [Create a hold in eDiscovery (Standard)](/microsoft-365/compliance/ediscovery-create-holds#how-to-create-an-ediscovery-hold)
- [Create and manage a hold in eDiscover (Premium)](/microsoft-365/compliance/ediscovery-managing-holds)

> [!IMPORTANT]
> When a user or group is placed on hold, all compliance copies of messages are preserved. For example, if a user posts a message in a channel and then modifies the message, both copies of the message are preserved. Without the hold, only the latest message is preserved.

## Content locations to place on hold to preserve Teams content

As a helpful guide, use the following table to understand what content locations (such as a mailbox or a site) to place on hold to preserve different types of Teams content.

|**Scenario**|**Content location**|
|:-----------|:-------------------|
|Chat messages for a user (for example, 1:1 chats, 1:N group chats, and private channel conversations) | User mailbox|
|Chat messages in standard and shared channels|Mailbox associated with the parent team|
|Files in standard channels (for example, Wiki content and files)|SharePoint site associated with the parent team |
|Files in private and shared channels|Dedicated SharePoint site associated with the channel|
|User's private content|The user's OneDrive for Business account|
|Card content in chats|User mailbox for 1:1 chats, 1:N group chats, and private channel conversations; the parent team mailbox for card content in standard and shared channel messages. For more information, see the "Preserve card content" section in [Create an eDiscovery hold](ediscovery-create-holds.md#preserve-card-content).|
|||

> [!NOTE]
> To retain message content in private channels, you need to put the user mailboxes (of the members of a private channel) on hold. and when using eDiscovery tool to search private channel messages, you have to search the user's mailbox. As was stated earlier, private channel chats are stored in user mailboxes, not in the group mailbox associated with the parent team.
