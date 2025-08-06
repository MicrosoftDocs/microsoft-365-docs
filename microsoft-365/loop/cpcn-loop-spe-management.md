---
ms.date: 07/02/2025
title: "Manage SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces"
ms.reviewer: dancost, tonchan
ms.author: jenz
author: jenzamora
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

IT admins can manage SharePoint Embedded containers like they manage SharePoint sites using either [SharePoint Admin Center](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctaux) or [PowerShell](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctapowershell), with the appropriate [SharePoint Embedded administrator role](/sharepoint/dev/embedded/concepts/admin-exp/adminrole). Install the [latest version of SharePoint PowerShell module](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online). Storage and quota are combined with SharePoint in your organization. Use the Loop application IDs to filter to Loop containers in PowerShell:

- Loop Web Application ID: `a187e399-0c36-4b98-8f04-1edc167a0996`
- Loop Mobile Application ID: `0922ef46-e1b9-4f7e-9134-9ad00547eb41`
- Copilot Pages and Copilot Notebooks containers are created using the Loop Application IDs.

## Ownerless workspaces

IT admins can use SharePoint Admin Center and PowerShell to find ownerless tenant-owned Loop workspaces. For more information, see [Consuming Tenant Admin](/sharepoint/dev/embedded/concepts/admin-exp/cta), and [Get-SPO Container](/powershell/module/sharepoint-online/get-spocontainer). The Loop Application IDs are listed [in this article](#manage-sharepoint-embedded-containers-for-copilot-notebooks-copilot-pages-or-loop-workspaces).

## Listing all the user-owned containers

To get a list of all of user-owned containers in your organization, regardless of the container name, update the following sample PowerShell to your needs:

```PowerShell
Get-SPOContainer -OwningApplicationId 'a187e399-0c36-4b98-8f04-1edc167a0996' | WHERE OwnershipType -EQ 'UserOwned' | FT
```

## Related articles

- [Summary of Compliance, Lifecycle, Governance](cpcn-compliance-summary.md)
- [Configuration Requirements](cpcn-loop-requirements.md)
- [Copilot Pages and Notebooks Storage](cpcn-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Copilot Pages and Notebooks Admin toggles](cpcn-admin-configuration.md)
- [Purview and SharePoint Embedded containers](cpcn-loop-purview-management.md)
- [Loop Storage](cpcn-storage.md)
- [Loop Admin toggles](loop-admin-configuration.md)
- [UX examples for admin toggle states](loop-ux-examples.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
