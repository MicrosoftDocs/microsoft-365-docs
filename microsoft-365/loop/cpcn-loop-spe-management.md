---
ms.date: 01/26/2026
ms.update-cycle: 180-days
title: "Manage SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces"
ms.reviewer: dancost, tonchan
ms.author: odocspr
author: officedocspr5
manager: jtremper
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: concept-article
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
- essentials-compliance
- magic-ai-copilot
search.appverid:
- SPO160
- MET150
description: "Learn about managing SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces."
---

# Manage SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces

## At a glance

| Task | Tool | Command/Location |
| --- | --- | --- |
| **View containers** | SharePoint admin center | **Containers** > **Active containers** |
| **List user-owned containers** | PowerShell | `Get-SPOContainer -OwningApplicationId '<AppID>' \| WHERE OwnershipType -EQ 'UserOwned'` |
| **Find ownerless workspaces** | PowerShell | `Get-SPOContainer -OwningApplicationId '<AppID>' \| WHERE {$_.Owners.Count -eq 0}` |
| **Manage workspace membership** | SharePoint admin center | Owners and Editors (shown as Managers in admin center, managing membership only works for post-April 2025 workspaces) |

IT admins can manage SharePoint Embedded containers like they manage SharePoint sites using either [SharePoint Admin Center](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctaux) or [PowerShell](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctapowershell), with the appropriate [SharePoint Embedded administrator role](/sharepoint/dev/embedded/concepts/admin-exp/adminrole). Install the [latest version of SharePoint PowerShell module](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online). Storage and quota are combined with SharePoint in your organization. Use the Loop application IDs to filter to Loop containers in PowerShell:

- Loop Web Application ID: `a187e399-0c36-4b98-8f04-1edc167a0996`
- Loop Mobile Application ID: `0922ef46-e1b9-4f7e-9134-9ad00547eb41`
- Copilot Pages and Copilot Notebooks containers are created using the Loop Application IDs.

## Ownerless workspaces

IT admins can use SharePoint Admin Center and PowerShell to find ownerless tenant-owned Loop workspaces. For more information, see [Consuming Tenant Admin](/sharepoint/dev/embedded/concepts/admin-exp/cta), and [Get-SPO Container](/powershell/module/microsoft.online.sharepoint.powershell/get-spocontainer).

To find ownerless Loop containers, update the following sample PowerShell to your needs:

```PowerShell
Get-SPOContainer -OwningApplicationId 'a187e399-0c36-4b98-8f04-1edc167a0996' | WHERE {$_.Owners.Count -eq 0} | FT
```

## Administering roles and membership for tenant-owned workspaces

Tenant-owned Loop workspaces created on or after April 2025: Manage Owners and Editors (shown as Managers in the SharePoint admin center). Writer and Reader roles aren't used.

Tenant-owned Loop workspaces created before April 2025: A legacy roster still controls membership. The legacy roster is being deprecated. Until fully retired:

- Owners and Editors can manage membership in the Loop application.
- SharePoint admin center changes apply only to newer (post–April 2025) workspaces.

## Listing all the user-owned containers

To get a list of all of user-owned containers in your organization, regardless of the container name, update the following sample PowerShell to your needs:

```PowerShell
Get-SPOContainer -OwningApplicationId 'a187e399-0c36-4b98-8f04-1edc167a0996' | WHERE OwnershipType -EQ 'UserOwned' | FT
```

## Migrations

Currently, there's no supported method to transfer an existing SharePoint Embedded container between Microsoft 365 tenants—for example, in scenarios involving mergers or acquisitions.

## Related articles

### Copilot Pages and Copilot Notebooks

- [Summary of compliance, lifecycle, governance](cpcn-compliance-summary.md)
- [Requirements](cpcn-requirements.md)
- [Storage](cpcn-storage.md)
- [Permissions](cpcn-permission.md)
- [Admin policies](cpcn-admin-configuration.md)
- [Purview management](cpcn-loop-purview-management.md)

### Loop

- [Summary of compliance, lifecycle, governance](loop-compliance-summary.md)
- [Requirements](loop-requirements.md)
- [Storage](loop-storage.md)
- [Permissions](loop-permission.md)
- [Admin policies](loop-admin-configuration.md)
- [UX examples for admin policy states](loop-ux-examples.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
