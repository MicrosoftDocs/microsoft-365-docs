---
title: Overview of Loop workspaces storage and permissions
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: conceptual
ms.service: loop
ms.reviewer: michalbr
ms.date: 08/21/2023
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
  - M365-collaboration
  - essentials-compliance
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

Where the loop content was originally created determines its storage location. See the [Loop Storage](/microsoft-365/loop/loop-compliance-summary#loop-storage) section in [Summary of governance, lifecycle and compliance capabilities](/microsoft-365/loop/loop-compliance-summary) for Loop for a diagram and more information.

## Loop app's usage of organization's storage quota

Loop app workspaces are stored inside your tenant. Loop workspaces and pages count against your tenant's storage quota, starting November 2023. (Note that during the Loop app's Public Preview in 2023, Loop app content did **not** use your existing storage quota.)

## Content permissions mechanism

Each Loop app workspace uses storage for the workspace in [SharePoint Embedded](https://techcommunity.microsoft.com/t5/sharepoint-premium-blog/announcing-sharepoint-embedded-public-preview-at-espc23/ba-p/3993428). Additionally, the Loop app creates a roster for that workspace to govern access to the full workspace. When pages are shared from the workspace, we create a sharing link using your company's default sharing link type as configured for OneDrive and SharePoint.

Sharing the workspace in Loop adds the user to the workspace roster. All workspace roster members have access and "*editing*" permissions to all the Loop pages in that workspace.

:::image type="content" source="media/share-workspace-in-loop.png" alt-text="Share Workspace in Loop":::

There's a distinction between sharing a specific Loop page with a user versus inviting them to a Workspace.

When you invite a user to a workspace, that user has access to all the pages in that workspace. Loop only supports inviting users to a workspace via this Workspace roster management flow, which enables access and sends an email invite to the invited users.

When you share only a Loop page, you're giving users access to that specific page exclusively (not the whole workspace). The user can choose to use a company share link or people-specific share link; unless their tenant admin has disabled some of the share link types. When sharing a page, you can choose to grant the user "*edit*" or "*read only*" access.

## Loop workspace membership, Microsoft 365 groups, Security Groups

There is currently one type of Loop workspace. The roster/membership of the workspace is visible within the Loop app and can be updated by the owner of the workspace.

Owners cannot yet assign new members to become owners of Loop workspaces. If the owner of a workspace leaves the company, the Loop workspace will become ownerless. There is not yet a way for an administrator to assign a new owner to an ownerless group.

Ownerless workspaces can be found by querying Loop workspace containers in SharePoint Embedded. For more information on querying SharePoint Embedded containers, see [Consuming Tenant Admin](/sharepoint/dev/embedded/concepts/admin-exp/cta), and [Get-SPO Container](/powershell/module/sharepoint-online/get-spocontainer). The Loop Application ID is listed in [Summary of governance, lifecycle and compliance capabilities](/microsoft-365/loop/loop-compliance-summary).

There are other types of groups and membership lists in the Microsoft ecosystem such as Microsoft 365 groups and Security groups. Loop workspace membership cannot currently be managed by or associated with these groups or lists.

## eDiscovery support for Loop content stored in Loop workspaces

Loop content (pages and components) created in the Loop app are discoverable and have eDiscovery workflow support using the Microsoft Purview tool. As mentioned above, these files are stored in SharePoint Embedded and are available for search and collection for both eDiscovery (Standard) and eDiscovery (Premium). Render in review and the HTML offline export format is supported on eDiscovery (Premium). You can also download and re-upload the files to any OneDrive to view them in their native format.

A graph export API that can access Loop content stored in [SharePoint Embedded](https://techcommunity.microsoft.com/t5/sharepoint-premium-blog/announcing-sharepoint-embedded-public-preview-at-espc23/ba-p/3993428) is not yet available.

## Storage management after user departure

### In the Loop app

The Loop app is designed for shared workspaces and personal workspaces.

Shared workspaces are backed by a roster and continue to exist even if someone leaves the company. However, if the creator of the workspace is the person who left the company, then others can't delete the workspace. 

Personal workspaces are also backed by a roster, but there's only one person in them by design. When a user leaves a company, their personal workspaces become ownerless.

### In Loop components created in Microsoft 365 outside of the Loop app

Loop components created outside of the Loop are stored in the OneDrive of the person who created the component. Therefore, if that user leaves the organization, the standard OneDrive IT policy is applied.

## Management of Loop app's storage

See [Admin Management of Loop workspaces](/microsoft-365/loop/loop-compliance-summary#admin-management-of-loop-workspaces) section of the [Summary of governance, lifecycle and compliance capabilities](/microsoft-365/loop/loop-compliance-summary) for more information.

## Pricing and licensing model for Loop app

Refer to [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/92915461-4b14-49a4-9cd4-d1c259292afa).

## Related topics

[Summary of governance, lifecycle and compliance capabilities](/microsoft-365/loop/loop-compliance-summary)
