---
title: Overview of Loop workspaces storage and permissions
ms.author: jenz
author: jenzamora
manager: jtremper
audience: Admin
ms.topic: conceptual
ms.service: loop
ms.reviewer: michalbr, dancost
ms.date: 01/08/2025
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
- M365-collaboration
- essentials-compliance
- magic-ai-copilot
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

## Loop Storage

Where Loop content is stored impacts the admin management, governance, data lifecycle, and compliance capabilities available. Microsoft Loop is built on top of SharePoint, OneDrive, and [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta), which means that most of these capabilities work just like existing files in your ecosystem. Because Loop pages and components are files, they can be managed in a familiar way, within your existing workflows. The table should help clarify how Loop content is stored in the Microsoft ecosystem.

Where the Loop content was originally created determines its storage location:

|Loop content originally created in|️️️Loop content stored in SharePoint Embedded|Loop content stored in SharePoint Site|Loop content stored in User's OneDrive|
|-----|-----|-----|-----|
|Loop app|✔️in Loop workspace|||
|Copilot Pages|✔️in Loop workspace|||
|Teams channel meeting||✔️in 📁`Meetings`||
|Teams channel||✔️in Channel folder||
|Teams private chat|||✔️in 📁`Microsoft Teams Chat files`|
|Teams private meeting|||✔️in 📁`Meetings`|
|Outlook email message|||✔️in 📁`Attachments`|
|OneNote for Windows or for the web|||✔️in 📁`OneNote Loop files`|
|Whiteboard|||✔️in 📁`Whiteboard\Components`|

## Loop app's usage of organization's storage quota

Loop app workspaces are stored inside your tenant, within SharePoint Embedded. All Loop workspaces and pages, including Shared workspaces, Personal workspaces, Ideas, and Copilot Pages, count against your tenant's storage quota, starting November 2023.

## Loop workspace storage limits

Loop workspaces have a maximum size of 25TB per workspace. This limit can't be increased or decreased. Workspace content counts towards a user's storage quota, and since this per-user storage quota is always less than 25TB, the 25TB limit should never be reached, in practice. Loop workspaces are implemented as SharePoint Embedded containers. Learn more about [SharePoint Embedded container limits](/sharepoint/dev/embedded/concepts/app-concepts/limits-calling).

## Content permissions mechanism

Each Loop app workspace uses storage for the workspace in [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta). Additionally, the Loop app creates a roster for that workspace to govern access to the full workspace. When pages are shared from the workspace, we create a sharing link using your company's default sharing link type as configured for OneDrive and SharePoint.

Sharing the workspace in Loop adds the user to the workspace roster. All workspace roster members have access and "*editing*" permissions to all the Loop pages in that workspace.

:::image type="content" source="media/share-workspace-in-loop.png" alt-text="Share Workspace in Loop":::

There's a distinction between sharing a specific Loop page with a user versus inviting them to a Workspace.

When you invite a user to a workspace, that user has access to all the pages in that workspace. Loop only supports inviting users to a workspace via this Workspace roster management flow, which enables access and sends an email invite to the invited users.

When you share only a Loop page, you're giving users access to that specific page exclusively (not the whole workspace). The user can choose to use a company share link or people-specific share link; unless their tenant admin disabled some of the share link types. When sharing a page, you can choose to grant the user *edit*, or *read only* access.

## Guest/External sharing

You can share Loop workspaces, pages, and components with users external to your company (guests) so they can collaborate with you. There are a few requirements that must be met for guest sharing to be possible:

- Your organization must allow sharing files with guests. Learn how to [manage this policy](/sharepoint/turn-external-sharing-on-or-off#change-the-organization-level-external-sharing-setting).
- The user you're sharing with must have a guest account in your tenant or [Business-to-Business Invitation Manager is enabled](/entra/external-id/what-is-b2b).
- Your organization doesn't have sensitivity labels configured. Loop external sharing doesn't work for companies with sensitivity labels configured. Once sensitivity labels for Loop workspaces, pages, and components are generally available, then external sharing for companies with sensitivity labels configured doesn't function. Microsoft Roadmap ID 421614 addresses this.

Workspaces can only be shared with users that have an existing guest account in your tenant. If Business-to-business Invitation Manager is enabled, users can share a page or component with a guest, which enables the flow to create a guest account for the user.

If the above conditions are met, then you can share with guest by:

1. Navigate to the Loop workspace or page you want to share (or, navigate to the Loop file within OneDrive).
1. Open the share menu in the top right of the screen within Loop (or, open the share menu next to the file while viewing it within OneDrive).
1. Choose if you want to share the workspace or page (only applies within Loop).
1. Enter the user's email address you wish to share with.
1. Select **Send** or **Invite**.

Sharing with external participants is done through "Share with specific people" links. Company-wide share links don't work with external participants. You must designate the guest explicitly in the share dialog.

When a guest accesses the Loop workspace, page, or component from the link from your organization, they sign in and access the shared content using their guest account. They'll need to utilize the share link again to access the Loop workspace, page, or component in the future, as the content from your organization isn't accessible via their standard account.

If you would like to disable guest sharing of Loop workspaces independently of your organization-level OneDrive and SharePoint sharing setting, see [application external sharing override](/sharepoint/dev/embedded/concepts/app-concepts/sharing-and-perm#application-external-sharing-override) and the OwningApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`.

Unlike SharePoint sites, there's no admin setting to configure guest sharing of specific Loop workspaces. Direct users toward [sensitivity labeling](/purview/sensitivity-labels-loop) for per-workspace external sharing configuration. Admin's can also [configure sensitivity labels](/sharepoint/dev/embedded/concepts/security-and-compliance#security-features) on containers.

## Loop workspace membership and Microsoft 365 groups

Loop workspaces currently have one type, with membership visible and manageable within the Loop app by the workspace owner. However, there's no integration with Microsoft 365 groups or Security groups. Microsoft Roadmap ID 422728 addresses this for Microsoft 365 groups.

Currently, owners can't assign new members as owners. If the owner leaves the company, the workspace becomes ownerless, remain in the tenant, and isn't automatically deleted. Administrators can't assign new owners to ownerless workspaces. Microsoft Roadmap ID 362124 and 421613 address this.

PowerShell support for number of owners on a SharePoint Embedded container isn't yet available. Once it is, to find ownerless workspaces, query Loop workspace containers in SharePoint Embedded. For more information, see [Consuming Tenant Admin](/sharepoint/dev/embedded/concepts/admin-exp/cta), and [Get-SPO Container](/powershell/module/sharepoint-online/get-spocontainer). The Loop Application ID is listed in [Summary of governance, lifecycle, and compliance capabilities](/microsoft-365/loop/loop-compliance-summary).

There are other types of groups and membership lists in the Microsoft ecosystem, such as Microsoft 365 groups and Security groups. Currently, Loop workspace membership doesn't use these groups or lists. Microsoft Roadmap ID 422728 addresses this for Microsoft 365 groups.

## Storage management after user departure

### In the Loop app

The Loop app is designed for both shared and personal workspaces.

#### Shared Workspaces

- Shared workspaces are permissioned with a roster. If the owner leaves the company, the workspace becomes ownerless, remains in the tenant, and isn't automatically deleted.
- If the creator of the workspace is the person who left the company, others can't delete the workspace.

#### Personal Workspaces

- There are currently two types of personal workspaces: Ideas and Copilot Pages.
- Personal content is private by default, allowing users to work without forced sharing or coauthoring, similar to OneDrive.

##### Ideas

- Ideas is a tenant-owned personal workspace, permissioned with a roster but designed for single-person use.
- When a user leaves the company, like a shared workspace, their Ideas workspace becomes ownerless, remains in the tenant, and isn't automatically deleted.

##### Copilot Pages

- Copilot Pages is a user-owned workspace, created only by Copilot, and is lifecycle managed with the user account.
- Copilot Pages is deleted when the user account is deleted from the organization.
- User-owned workspaces can't be permanently reassigned to a new owner. These workspaces follow the same cleanup schedule as OneDrive: 30 days active, then soft deleted, and permanently purged 93 days after soft deletion.
- Admins can recover content during the soft delete period using the SharePoint Admin Center or PowerShell.

> [!NOTE]
> A feature for IT admins to assign additional temporary custodians during the cleanup period of user-owned workspaces to make copies of content isn't yet available. Microsoft Roadmap ID 421612 addresses this.

### In Loop components created in Microsoft 365 outside of the Loop app

Loop components created outside of Loop are stored in the OneDrive of the person who created the component, or if created in a place with shared storage like a Teams channel, they're stored in the SharePoint folder for that channel. When stored in OneDrive, if that user leaves the organization, the standard OneDrive IT policy is applied. When stored in SharePoint, the standard SharePoint IT policy is applied.

## Management of Loop content

For more information, see [available admin capabilities](/microsoft-365/loop/loop-compliance-summary#available-admin-capabilities) section of the [Summary of governance, lifecycle, and compliance capabilities](/microsoft-365/loop/loop-compliance-summary).

## Pricing and licensing model for Loop app

Refer to [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/92915461-4b14-49a4-9cd4-d1c259292afa).

## Related topics

[Summary of governance, lifecycle, and compliance capabilities](/microsoft-365/loop/loop-compliance-summary)
