---
title: Overview of Loop components in Teams
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: conceptual
ms.service: msteams
ms.reviewer: michalbr
ms.date: 07/16/2021
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
  - M365-collaboration
description: Learn how to manage Loop components in Teams.
f1.keywords:
- CSH
ms.custom: 
  - NewAdminCenter_Update
  - chat-teams-channels-revamp
appliesto: 
  - Microsoft Teams
---

# Overview of Loop components in Teams

Loop components in Teams chat offer a new way to ideate, create, and make decisions together. Send a component - like a table, task list, or paragraph — where everyone in your chat can edit inline and see changes as they're made. 

> [!Note]
> Loop components is the first feature of the [Microsoft Loop app](https://www.microsoft.com/en-us/microsoft-loop) to become available in Teams. 

**Get tasks done faster together.** Crowd-source an agenda, track a group's action items, or take notes collectively. These are just a few scenarios made easier with Loop components.

**Share components.** In this release, you can share Loop components into different Teams chats. Recipients can edit from wherever they are and see updates instantly no matter where the changes were made.

**Start in chat, build from there.** Every component you create from Teams chat is automatically saved to a file in OneDrive. So, you might begin collaborating in chat then later move to the file on Office.com, where you have a larger visual space for editing and can add as many components as you like.

For information on admin settings for Loop components in Teams, see [Manage Loop components in SharePoint](loop-components-sharepoint.md).

## Clients and platforms

Available on Teams apps on Windows, Mac, iOS, and Android.

## Loop components and .fluid files

Loop components created in Teams are backed by a .fluid (will be changed to .loop in the near future) file stored in the creator's OneDrive. Being a file in OneDrive means that users can create, discover, and manage Loop components (.fluid files) as easily as any Office document. 

## How are .fluid files stored?

.fluid files appear on Office.com and OneDrive, such as in the Recent and Recommended areas. Users can search for content in .fluid files from Office.com and OneDrive. .fluid files can be restored to previous versions from OneDrive. To create Loop components chat participants must have a OneDrive account. Without a valid OneDrive account, chat participants might still be able to collaborate on a component created by other users who have a valid OneDrive account, but can't create their own. 

Moving a .fluid file from OneDrive to a SharePoint site will result in the live component failing to load in Teams chat.

## What happens if the owner of the file leaves the company?

OneDrive retention policies apply to .fluid files just as they do to other content created by the user.

## How are .fluid files shared?

Loop components can be inserted in Teams chat or copied from one chat to another. (Loop components aren't yet supported in channels.) They default to the organization's existing permissions, but users can change permissions before sending to ensure everyone has access.

Opening components from Teams chat in Office.com offers share functionality at the top of the window, similar to the sharing options offered for other Office documents.

## What if a .fluid file becomes corrupted or damaged?

Version History allows you to review, restore, or copy from previous versions of the file.

## What apps can open and edit .fluid files?

.fluid files can only be opened as links in your browser, such as Office.com, and as Loop components in Teams chat. If downloaded, they can't be opened again without first uploading them back to OneDrive or SharePoint.

## Does .fluid files support eDiscovery?

Currently, .fluid files are stored in the creator's OneDrive and are available for search and collection in eDiscovery (Standard) and available for search, collection, review, and export in eDiscovery (Premium). More information about eDiscovery support is outlined in the [Settings management](loop-components-sharepoint.md#settings-management) section.

## If Loop is disabled from the admin switch, what will the user experience be?

If you disable these experiences as outlined in the [Settings management](loop-components-sharepoint.md#settings-management) section, the following experience changes will apply:

- The create/insert entry point within Teams messaging will be hidden. Users won't be able to create new .fluid files.
- Existing messages that would have formerly rendered as an interactive Loop component will instead render as a hyperlink "Loop component." No interactive content will be displayed within Teams.
- When an end-user clicks on the "Loop component" hyperlink or browses to a .fluid file in OneDrive for Business and clicks to open, it will open the file in a separate browser tab. End-users will still be able to edit the file.

## Known issues

- With tenant default file permissions set to *Specific people* (only the people the user specifies), copying the link to the Loop component and pasting it in another chat requires the sender to use the permissions dialog and add the recipients in the Specific people option to grant access properly.
- With tenant default file permissions set to *Specific people* (only the people the user specifies), creating a live component in group chat with more than 20 members will require the sender to manually select the permission options for the component.
- Searching for Loop components in Teams search will return a link to the component in office.com, not the chat message itself.
- Loop components are disabled in federated chats.
- Guests won't be able to view or collaborate on a Loop component.
- Loop components aren't supported in Teams channels.
- Loop components in chat won't load only if file was moved to different library. If file is moved to different folder then it will continue to load in chat.
