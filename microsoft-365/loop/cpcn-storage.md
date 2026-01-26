---
title: Overview of Copilot Pages and Copilot Notebooks storage
ms.author: odocspr
author: officedocspr5
manager: jtremper
audience: Admin
ms.topic: article
ms.service: loop
ms.reviewer: michalbr, dancost
ms.date: 01/26/2026
ms.update-cycle: 180-days
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

## At a glance

| Key fact | Details |
| --- | --- |
| **Storage location** | SharePoint Embedded (user-owned container) |
| **Container name** | "Pages" or "My workspace" (depends on which app creates it first) |
| **Quota** | Counts against your organization's SharePoint storage quota |
| **Container limit** | 25 TB maximum |
| **User departure** | Follows OneDrive cleanup schedule (30 days active → soft delete → 93 days to permanent deletion) |
| **Recycle bin** | No end-user recycle bin for Copilot Notebooks |

## Storage

Copilot Pages and Copilot Notebooks are stored within your organization in SharePoint Embedded. Each user has a single user-owned container that stores their Copilot Pages and Copilot Notebooks. The container is lifetime managed with the user account and can be [managed using SharePoint Embedded admin tools](cpcn-loop-spe-management.md).

## Container name

The Copilot Pages, Copilot Notebooks and Loop My workspace all use the same container. This user-owned container is named 'Pages' if the person visits the Microsoft 365 Copilot app first. It is named 'My workspace' (localized into the language of the user's Loop experience during creation) if the person visits the Loop app first. Refer to [listing all user-owned containers](cpcn-loop-spe-management.md#listing-all-the-user-owned-containers) to get a list, regardless of the container name.

## Storage quota

All Copilot Pages and Copilot Notebooks count against your organization's SharePoint storage quota.

SharePoint Embedded also offers a platform for developers to build their own applications. This alternate usage pattern which bills per use is different from Loop and Copilot Pages storage quota management.

## Storage limits

Copilot Pages + Copilot Notebooks container has a maximum size of 25 TB. This limit can't be increased or decreased. Learn more about [SharePoint Embedded container limits](/sharepoint/dev/embedded/concepts/app-concepts/limits-calling).

## Storage management after user departure

Copilot Pages and Copilot Notebooks are stored together in the same user-owned SharePoint Embedded container. This personal content is private by default, allowing users to work without forced sharing or coauthoring, similar to OneDrive.

### Container lifecycle

- The container is lifecycle managed with the user account and is deleted when the user account is deleted from the organization.
- You can't permanently reassign content to a new owner.
- The container follows the same cleanup schedule as OneDrive: 30 days active, then soft deleted, and permanently purged 93 days after soft deletion.
- Admins can recover the entire container (including all Copilot Pages and Copilot Notebooks) during the soft delete period using the SharePoint Admin Center or PowerShell.

> [!NOTE]
> When a user selects the Copilot Pages module in the Microsoft 365 Copilot app, a SharePoint Embedded container is currently created automatically—even if the user doesn't create a Copilot Page. If no files are added, the system deletes it automatically. *This behavior is temporary.* An update is in progress to ensure containers are only created when users actually create content. Until then, IT administrators can safely disregard these system-initiated deletions.

> [!IMPORTANT]
> A workflow for IT admins to assign temporary custodians during the cleanup period isn't yet available. This capability is planned (Microsoft Roadmap ID 421612).

> [!IMPORTANT]
> There's no end-user recycle bin for Copilot Notebooks. Neither administrators nor end users can recover individually deleted Copilot Notebooks.

## Related articles

- [Summary of compliance, lifecycle, governance](cpcn-compliance-summary.md)
- [Requirements](cpcn-requirements.md)
- [Permissions](cpcn-permission.md)
- [Admin policies](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview management](cpcn-loop-purview-management.md)
