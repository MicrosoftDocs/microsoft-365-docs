---
title: Overview of Loop workspaces storage and permissions
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: conceptual
ms.service: loop
ms.reviewer: michalbr
ms.date: 06/20/2023
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
  - M365-collaboration
description: Learn about Loop workspaces storage and permissions in the Microsoft 365 ecosystem.
f1.keywords:
- CSH
ms.custom: 
  - NewAdminCenter_Update
  - chat-teams-channels-revamp
appliesto: 
  - Microsoft Teams
---

# Overview of Loop workspaces storage and permissions

Microsoft [Syntex repository services](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/) powered by SharePoint platform stores all Loop app content. All Loop workspaces, pages, and components created in the Loop app are stored in a container in the Syntex repository service, which is designated for that specific workspace.

> [!NOTE]
> There are limited security and compliance capabilities available specifically for the Loop app.

Separately, Loop components created outside of the Loop app in other Microsoft 365 apps (such as [Teams](https://support.microsoft.com/office/first-things-to-know-about-loop-components-in-microsoft-teams-ee2a584b-5785-4dd6-8a2d-956131a29c81), [Outlook](https://support.microsoft.com/office/use-loop-components-in-outlook-9b47c279-011d-4042-bd7f-8bbfca0cb136), [Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347), [Word for the web](https://support.microsoft.com/office/use-loop-components-in-word-for-the-web-645cc20d-5c98-4bdb-b559-380c5a27c5e5)) are stored in the creator's OneDrive. For example, if User A creates a Loop component within a Teams chat with User B, that Loop component is stored in User A's OneDrive and is shared with User B.

## Loop app's usage of organization's storage quota

Loop app workspaces are stored inside your tenant. During Public Preview, Loop app's content will **not** use your existing storage quota.

## Content permissions mechanism

Each Loop app workspace uses storage for the workspace in [Syntex repository services](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/). Additionally, the Loop app creates a roster for that workspace to govern access to the full workspace. When pages are shared from the workspace, we create a sharing link using your company's default sharing link type as configured for OneDrive and SharePoint.

Sharing the workspace in Loop adds the user to the workspace roster. All workspace roster members have access and "*editing*" permissions to all the Loop pages in that workspace.

:::image type="content" source="media/share-workspace-in-loop.png" alt-text="Share Workspace in Loop":::

There's a distinction between sharing a specific Loop page with a user versus inviting them to a Workspace.

When you invite a user to a workspace, that user has access to all the pages in that workspace. Loop only supports inviting users to a workspace via this Workspace roster management flow, which enables access and sends an email invite to the invited users.

When you share only a Loop page, you're giving users access to that specific page exclusively (not the whole workspace). The user can choose to use a company share link or people-specific share link; unless their tenant admin has disabled some of the share link types. When sharing a page, you can choose to grant the user "*edit*" or "*read only*" access.

## Loop workspaces and Microsoft 365 groups

Loop workspaces don't use Microsoft 365 groups for access management, instead they create a roster for access management.

## Storage management after user departure

### In the Loop app

The Loop app is designed for shared workspaces and personal workspaces.</br>
Shared workspaces are backed by a roster and continue to exist even if someone leaves the company. However, if the creator of the workspace is the person who left the company, then others can't delete the workspace. 

Personal workspaces are also backed by a roster, but there's only one person in them by design. When a user leaves a company, their personal workspaces become "ownerless".

### In Loop components created in Microsoft 365 outside of the Loop app

Loop components created outside of the Loop are stored in the OneDrive of the person who created the component. Therefore, if that user leaves the organization, the standard OneDrive IT policy is applied.

## Management of Loop app's storage

Admin management capabilities are not yet available to enumerate, manage, delete and recover Loop content in Syntex repository storage. Therefore, an admin cannot yet query for ownerless workspaces, directly manage the rosters for workspaces, or restore workspaces deleted by end-users.

## Pricing and licensing model for Loop app

Loop app is free during public preview. Post-preview pricing and licensing requirements for the Loop app are yet to be determined.
