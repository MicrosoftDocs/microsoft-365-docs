---
title: Overview of Copilot Pages and Loop workspaces storage and permissions
ms.author: jenz
author: jenzamora
manager: jtremper
audience: Admin
ms.topic: article
ms.service: loop
ms.reviewer: michalbr, dancost
ms.date: 04/17/2025
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
- M365-collaboration
- essentials-compliance
- magic-ai-copilot
description: Learn about Copilot Pages and Loop workspaces storage and permissions in the Microsoft 365 ecosystem.
f1.keywords:
- CSH
ms.custom: 
- NewAdminCenter_Update
- chat-teams-channels-revamp
appliesto: 
- Microsoft Teams
---

# Overview of Copilot Pages and Loop workspaces storage and permissions

## Storage

Loop content is stored in SharePoint, OneDrive, and [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta), allowing familiar management within existing file management workflows. Where the content was originally created determines its storage location:

|Content content originally created in|Content stored in SharePoint Embedded|Content stored in SharePoint Site|Content stored in User's OneDrive|
|-----|-----|-----|-----|
|Copilot Pages|✔️in user-owned container|||
|Loop app, My workspace|✔️in user-owned container|||
|Loop app, shared workspace|✔️in shared container|||
|Teams channel meeting||✔️in 📁`Meetings`||
|Teams channel||✔️in Channel folder||
|Teams private chat|||✔️in 📁`Microsoft Teams Chat files`|
|Teams private meeting|||✔️in 📁`Meetings`|
|Outlook email message|||✔️in 📁`Attachments`|
|OneNote for Windows or for the web|||✔️in 📁`OneNote Loop files`|
|Whiteboard|||✔️in 📁`Whiteboard\Components`|

## Storage quota

Loop workspaces are stored within your tenant in SharePoint Embedded, with one shared workspace per container. The personal My workspace and the Copilot Pages container are both stored within the same user-owned SharePoint Embedded container named 'Pages' or 'My workspace' depending on which location the person visits first, Loop or Copilot Pages.

All Loop workspaces and Copilot Pages count against your tenant's SharePoint storage quota.

SharePoint Embedded also offers a platform for developers to build their own applications. This alternate usage pattern which bills per use is different from Loop and Copilot Pages storage quota management.

## Storage limits

Loop workspaces and Copilot Pages have a maximum size of 25 TB. This limit can't be increased or decreased. Learn more about [SharePoint Embedded container limits](/sharepoint/dev/embedded/concepts/app-concepts/limits-calling).

## Content permissions mechanism

Loop workspace and Copilot Pages are stored in [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta) containers. 

### Sharing Mechanism

- **Page Sharing**: Grants access to a specific page (not the whole workspace) with options for edit or read-only access. The user can choose to use a company share link or people-specific share link, based on your organizational sharing settings.
- **Workspace Sharing**: Invites users to the entire workspace by adding owners and members to the SharePoint Embedded container, and sends an email invite. All members have access and *editing* permissions to all the Loop pages in that workspace.

:::image type="content" source="media/share-workspace-in-loop.png" alt-text="Screenshot showing the Share workspace option in Loop":::

## Guest/External sharing

You can share Loop workspaces, pages, and components with external users (guests) if your organization allows it. 

### Guest sharing requirements

- Organization-level external sharing enabled. Learn how to [manage this policy](/sharepoint/turn-external-sharing-on-or-off#change-the-organization-level-external-sharing-setting).
- Guest account in your tenant or [Business-to-Business Invitation Manager is enabled](/entra/external-id/what-is-b2b).
- Sensitivity labels and conditional access settings not restricting sharing.

Workspaces can only be shared with users that have an existing guest account in your tenant. If Business-to-business Invitation Manager is enabled, users can share a page or component with a guest, which enables the flow to create a guest account for the user.

### Sharing steps

Once conditions are met, share with guests by:

1. Navigate to the Loop workspace or page.
1. Open the share menu.
1. Choose if you want to share the page or workspace (only applies within Loop).
1. Enter the guest's email address.
1. Select **Send** or **Invite**.

Sharing with external participants is done through "Share with specific people" links. You must designate the guest explicitly in the share dialog. External participants can't be added to Company-wide share links.

When a guest accesses the Loop workspace, page, or component from the link from your organization, they sign in and access the shared content using their guest account. They'll need to utilize the share link again to access the Loop workspace, page, or component in the future, as the content from your organization isn't accessible via their standard account.

### More sharing controls

If you would like to disable guest sharing of Loop workspaces independently of your organization-level OneDrive and SharePoint sharing setting, see [application external sharing override](/sharepoint/dev/embedded/concepts/app-concepts/sharing-and-perm#application-external-sharing-override) and the OwningApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`.

Unlike SharePoint sites, there's no admin setting to configure guest sharing of specific Loop workspaces. Direct users toward [sensitivity labeling](/purview/sensitivity-labels-loop) for per-workspace external sharing configuration. Admin's can also [configure sensitivity labels](/sharepoint/dev/embedded/concepts/security-and-compliance#security-features) on containers.

## Workspace membership and Microsoft 365 groups

This section doesn't apply to My workspace or Copilot Pages, which are personal, have only one member, and aren't shared.

Loop workspaces are managed within the Loop app by the workspace owners. Integration with Microsoft 365 groups is planned (Microsoft Roadmap ID 422728).

Owners can assign more members as owners. If all the owners leave the company, the workspace becomes ownerless, remains in the tenant, and isn't automatically deleted. Administrators can assign new owners to ownerless workspaces.

IT admins can use SharePoint Admin Center and PowerShell to find ownerless workspaces. For more information, see [Consuming Tenant Admin](/sharepoint/dev/embedded/concepts/admin-exp/cta), and [Get-SPO Container](/powershell/module/sharepoint-online/get-spocontainer). The Loop Application ID is listed in [Summary of governance, lifecycle, and compliance capabilities](/microsoft-365/loop/loop-compliance-summary).

## Storage management after user departure

### Shared Workspaces

- Shared workspaces are permissioned with a roster. If all the owners leave the company, the workspace becomes ownerless, remains in the tenant, and isn't automatically deleted.
- You must be an owner to delete a workspace. If all the owners left the company, members can't delete the workspace until an IT administrator adds new owners.

### Personal Workspaces

- [My workspace](#my-workspace) and [Copilot Pages](#copilot-pages) both store content within the same user-owned SharePoint Embedded container named 'Pages' or 'My workspace' depending on which experience the person visits first (Loop or Copilot Pages).
- Personal content is private by default, allowing users to work without forced sharing or coauthoring, similar to OneDrive.

#### Copilot Pages

- Copilot Pages are stored in a user-owned SharePoint Embedded container, created by Copilot. The container is lifecycle managed with the user account, deleted when the user account is deleted from the organization.
- Copilot Pages can't be permanently reassigned to a new owner. It follows the same cleanup schedule as OneDrive: 30 days active, then soft deleted, and permanently purged 93 days after soft deletion.
- Admins can recover content during the soft delete period using the SharePoint Admin Center or PowerShell.

> [!NOTE]
> A feature for IT admins to assign temporary custodians during the cleanup period of user-owned workspaces isn't yet available. This capability is planned (Microsoft Roadmap ID 421612).

#### My workspace

- My workspace is stored in a user-owned SharePoint Embedded container, created by Loop. The container is lifecycle managed with the user account, deleted when the user account is deleted from the organization.
- My workspace can't be permanently reassigned to a new owner. It follows the same cleanup schedule as OneDrive: 30 days active, then soft deleted, and permanently purged 93 days after soft deletion.
- Admins can recover content during the soft delete period using the SharePoint Admin Center or PowerShell.

#### Ideas

- The Ideas workspace is deprecated, no longer created by default, and replaced with the My workspace personal workspace.
- Ideas was the first default workspace, was tenant-owned, permissioned with a single-person roster.
- The Ideas workspace isn't deleted by the Loop app, a user or an admin must delete it if desired.
- When a user leaves the company, if they haven't added multiple owners to their Ideas workspace, the Ideas workspaces becomes ownerless, remains in the tenant, and isn't automatically deleted.

### Loop components created in Microsoft 365 outside of the Loop app or Copilot Pages

See [Storage](#storage). When content is stored in OneDrive, if that user leaves the organization, the standard OneDrive IT policy is applied. When content is stored in SharePoint, the standard SharePoint IT policy is applied.

## Management of Loop and Copilot Pages content

Refer to the [available admin capabilities](/microsoft-365/loop/loop-compliance-summary#available-admin-capabilities) section of the [Summary of governance, lifecycle, and compliance capabilities](/microsoft-365/loop/loop-compliance-summary).

## Pricing and licensing model for Loop app

Refer to [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/92915461-4b14-49a4-9cd4-d1c259292afa).

## Related topics

[Summary of governance, lifecycle, and compliance capabilities](/microsoft-365/loop/loop-compliance-summary)
