---
title: Overview of Loop components and Loop workspaces permissions
ms.author: odocspr
author: officedocspr5
manager: jtremper
audience: Admin
ms.topic: concept-article
ms.service: loop
ms.reviewer: michalbr, brmeersm, derekliddell, dancost
ms.date: 01/26/2026
ms.update-cycle: 180-days
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
- M365-collaboration
- essentials-compliance
- magic-ai-copilot
description: Learn about Loop components and Loop workspaces permissions in the Microsoft 365 ecosystem.
f1.keywords:
- CSH
ms.custom: 
- NewAdminCenter_Update
- chat-teams-channels-revamp
appliesto: 
- Microsoft Teams
---

# Overview of Loop workspaces and Loop components permissions

## Content permissions mechanism

Loop workspaces are stored in [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta) containers. For more information, see [Loop Storage](loop-storage.md).

### Sharing Mechanism

- **Page and Component Sharing**: Grants access to a specific page (not the whole workspace) with options for edit or read-only access. The user can choose to use a company share link or people-specific share link, based on your organizational sharing settings.
- **Workspace Sharing**: Invites users to the entire workspace by adding owners and members to the SharePoint Embedded container, and sends an email invite. All members have access and *editing* permissions to all the Loop pages in that workspace.

  :::image type="content" source="media/share-workspace-in-loop.png" alt-text="Screenshot showing the Share workspace option in Loop":::

## Guest/External sharing

You can share individual Copilot Pages, entire Loop workspaces, or individual Loop pages and Loop components with external users (guests) if your organization allows it. You can't share the entire My workspace in Loop.

### Guest sharing requirements

- Organization-level external sharing enabled. Learn how to [manage this policy](/sharepoint/turn-external-sharing-on-or-off#change-the-organization-level-external-sharing-setting).
- Guest account in your tenant or [Business-to-Business Invitation Manager is enabled](/entra/external-id/what-is-b2b).
- Sensitivity labels and conditional access settings not restricting sharing.

Shared Loop workspaces can only be shared with users that have an existing guest account in your tenant. If Business-to-business Invitation Manager is enabled, users can share a page or component with a guest, which enables the flow to create a guest account for the user.

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

To disable guest sharing of Loop workspaces independently of your organization-level OneDrive and SharePoint sharing settings, see [application external sharing override](/sharepoint/dev/embedded/concepts/app-concepts/sharing-and-perm#application-external-sharing-override) and use the Loop OwningApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`. This setting controls external sharing for all SharePoint Embedded containers of type = Loop.

Unlike SharePoint sites, there's no admin setting to configure guest sharing of specific Loop workspaces. Direct users to [sensitivity labeling](/purview/sensitivity-labels-loop) for per-workspace external sharing configuration. Admins can also [configure sensitivity labels](/sharepoint/dev/embedded/concepts/security-and-compliance#security-features) on containers.

## Workspace membership and Microsoft 365 Groups

This section applies to shared workspaces. It doesn't apply to Copilot Pages, Copilot Notebooks, or My workspace, which are personal, have only one member, and aren't shared.

### Tenant-owned workspaces

Shared Loop workspaces, which are created within the Loop application, are managed within the Loop application by the workspace owners.

Owners can assign more members as owners. If all the owners leave the company, the workspace becomes ownerless, remains in the tenant, and isn't automatically deleted. Administrators can assign new owners to ownerless workspaces.

### Microsoft 365 group-owned workspaces

Microsoft 365 group-owned Loop workspaces, which are [created within a Teams channel](https://techcommunity.microsoft.com/blog/microsoft365insiderblog/collaborate-in-real-time-with-workspaces-in-teams/4414334), are access controlled by the Microsoft 365 group.

## Related articles

- [Copilot Pages and Copilot Notebooks permissions](cpcn-permission.md)
- [Summary of compliance, lifecycle, governance](loop-compliance-summary.md)
- [Requirements](loop-requirements.md)
- [Storage](loop-storage.md)
- [Admin policies](loop-admin-configuration.md)
- [UX examples for admin policy states](loop-ux-examples.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview management](cpcn-loop-purview-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
