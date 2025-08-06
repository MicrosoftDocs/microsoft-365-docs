---
title: Overview of Copilot Pages and Copilot Notebooks storage
ms.author: jenz
author: jenzamora
manager: jtremper
audience: Admin
ms.topic: article
ms.service: loop
ms.reviewer: michalbr, dancost
ms.date: 07/02/2025
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
- M365-collaboration
- essentials-compliance
- magic-ai-copilot
description: Learn about Copilot Pages and Copilot Notebooks storage in the Microsoft 365 ecosystem.
f1.keywords:
- CSH
ms.custom: 
- NewAdminCenter_Update
- chat-teams-channels-revamp
appliesto: 
- Microsoft Teams
---

# Overview of Copilot Pages and Copilot Notebooks storage

## Storage

Copilot Pages and Copilot Notebooks are stored within your organization in SharePoint Embedded. Copilot Pages, Copilot Notebooks and the Loop My workspace all use the same container. The container is lifetime managed with the user account and can be [managed using SharePoint Embedded admin tools](cpcn-loop-spe-management.md).

## Container name

The Copilot Pages, Copilot Notebooks and Loop My workspace all use the same container. This user-owned container is named 'Pages' if the person visits the Microsoft 365 Copilot app first. It is named 'My workspace' if the person visits the Loop app first. Refer to [listing all user-owned containers](cpcn-loop-spe-management.md#listing-all-the-user-owned-containers) to get a list, regardless of the container name.

## Storage quota

All Copilot Pages and Copilot Notebooks count against your organization's SharePoint storage quota.

SharePoint Embedded also offers a platform for developers to build their own applications. This alternate usage pattern which bills per use is different from Loop and Copilot Pages storage quota management.

## Storage limits

Copilot Pages + Copilot Notebooks container has a maximum size of 25 TB. This limit can't be increased or decreased. Learn more about [SharePoint Embedded container limits](/sharepoint/dev/embedded/concepts/app-concepts/limits-calling).

## Storage management after user departure

- [Copilot Pages](#copilot-pages) and [Copilot Notebooks](#copilot-notebooks) store content within the same user-owned SharePoint Embedded container.
- This personal content is private by default, allowing users to work without forced sharing or coauthoring, similar to OneDrive.

### Copilot Pages

- Copilot Pages are stored in a user-owned SharePoint Embedded container, created by Copilot. The container is lifecycle managed with the user account, deleted when the user account is deleted from the organization.
- Copilot Pages can't be permanently reassigned to a new owner. It follows the same cleanup schedule as OneDrive: 30 days active, then soft deleted, and permanently purged 93 days after soft deletion.
- Admins can recover content during the soft delete period using the SharePoint Admin Center or PowerShell.

> [!NOTE]
> When a user selects the Copilot Pages module in the Microsoft 365 Copilot app, a SharePoint Embedded container is currently created automatically—even if the user doesn't go on to create a Copilot Page. If no files are added to the container, the system will later delete it automatically. *This behavior is temporary.* An update is in progress to ensure that a Copilot Pages container is only created when a user actually creates a Copilot Page. Until that update is deployed, IT administrators and compliance officers can safely disregard these system-initiated deletions. These containers don't contain any user-generated content when they're removed.

> [!IMPORTANT]
> A feature for IT admins to assign temporary custodians during the cleanup period of user-owned workspaces isn't yet available. This capability for Copilot Pages and Copilot Notebooks is planned (Microsoft Roadmap ID 421612).

### Copilot Notebooks

- Copilot Notebooks are stored in a user-owned SharePoint Embedded container, created by Copilot. The container is lifecycle managed with the user account, deleted when the user account is deleted from the organization.
- Copilot Notebooks can't be permanently reassigned to a new owner. It follows the same cleanup schedule as OneDrive: 30 days active, then soft deleted, and permanently purged 93 days after soft deletion.
- Admins can recover the entire container with all Copilot Notebooks and Copilot Pages during the soft delete period using the SharePoint Admin Center or PowerShell.

> [!IMPORTANT]
> A feature for IT admins to assign temporary custodians during the cleanup period of user-owned workspaces isn't yet available. This capability for Copilot Pages and Copilot Notebooks is planned (Microsoft Roadmap ID 421612).

> [!IMPORTANT]
> There is no end user recycle bin for Copilot Notebooks. Neither Administrators nor end users can recover individually deleted Copilot Notebooks.

## Related topics

- [Summary of Compliance, Lifecycle, Governance](cpcn-compliance-summary.md)
- [Requirements](cpcn-loop-requirements.md)
- [Permissions](cpcn-loop-permission.md)
- [Admin toggles](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview and SharePoint Embedded containers](cpcn-loop-purview-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)