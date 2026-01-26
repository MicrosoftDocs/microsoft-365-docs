---
ms.date: 01/26/2026
ms.update-cycle: 180-days
title: "Purview management for SharePoint Embedded containers"
ms.reviewer: dancost, tonchan, abisuresh
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
description: "Learn about Purview integration of SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces."
---

# Purview management for SharePoint Embedded containers

This article covers Purview integration for SharePoint Embedded containers used by Copilot Pages, Copilot Notebooks, and Loop workspaces. The concepts apply to all these products because they share the same underlying SharePoint Embedded infrastructure.

## At a glance

| Task | How to do it |
| --- | --- |
| **Apply retention to all containers** | Use "All SharePoint Sites" scope in Purview |
| **Apply retention to specific container** | Get container URL from SharePoint admin center, add to Purview policy |
| **Search audit logs** | Search for "page", "loop", or the Loop Application IDs |
| **Filter audit exports** | Use `"SourceFileExtension":"page"` or `"SourceFileExtension":"loop"` |

All SharePoint Embedded containers are targeted using the "All SharePoint Sites" scope in Microsoft Purview. For example, if configuring Retention Policies, the configuration you specify that targets All SharePoint Sites applies to every Copilot Pages and Copilot Notebooks container in SharePoint Embedded, and every Loop workspace in SharePoint Embedded. All SharePoint Sites includes all SharePoint Embedded container ownership types: user, group, and tenant-owned.

## Retrieving the container URL for Purview

Purview enables configuration of retention policies and other compliance features based on the content URL location. To locate the container URL for Copilot Pages, Notebooks, or Loop workspaces:

1. Sign in to the SharePoint admin center with the [SharePoint Embedded administrator role](/sharepoint/dev/embedded/concepts/admin-exp/adminrole)
1. Navigate to **Containers** > **Active containers** or **Deleted containers** where you can view the details of a selected Loop workspace or Copilot Pages and Copilot Notebooks container
1. From the flyout pane, **General** tab
1. Copy the container URL

> [!NOTE]
> The container URL doesn't provide access to the container and doesn't function as a shareable link. Use the container URL only within Purview to target that container for various Purview features. A separate Application Redirect URL is the clickable link for end users with access to open the container in the Loop app. The Application Redirect URL isn't yet available, it's part of the launch of [Roadmap ID 421612](https://www.microsoft.com/en-us/microsoft-365/roadmap?id=421612).

## Searching the Audit Logs

Loop application IDs:

- Loop Web Application ID: `a187e399-0c36-4b98-8f04-1edc167a0996`
- Loop Mobile Application ID: `0922ef46-e1b9-4f7e-9134-9ad00547eb41`
- Copilot Pages and Copilot Notebooks containers are created using the Loop Application IDs.

### Search and Export

To search and export Microsoft 365 service events for all file related activity:

1. In the [Purview audit logs search](https://purview.microsoft.com/auditlogsearch), search audit logs for "page" or "loop" or "loot" or "fluid" or for the Loop Application IDs in the **Keyword Search** filter
1. Further filter exported results by "SourceFileExtension":"page" or "SourceFileExtension":"loop" or "SourceFileExtension":"loot" (templates) or "SourceFileExtension":"fluid" (deprecated)

Loop workspaces create and update `.pod` files to manage content in the workspace.

### Specific Loop workspace or Copilot Notebook

To search for audit events related to a specific Loop workspace or a Copilot Pages and Copilot Notebooks container, follow these steps:

1. [Retrieve the container URL](#retrieving-the-container-url-for-purview) for the Loop workspace or Copilot Notebook you want to audit.
2. In the [Purview audit logs search](https://purview.microsoft.com/auditlogsearch), use the following filters:
    - **File, folder, or site**: Enter the full container URL and append `/*` to include all file and container audit events.  
      - Example: `https://<your-tenant>.sharepoint.com/contentstorage/CSP_c33f9fa3-9cbe-4fac-ba1f-b8eeb9c30e23/*`
    - **Keyword Search**: To find all audit events related to the container, extract the GUID from the container URL and enter it in the Keyword Search filter.  
      - In the preceding example, the GUID is `c33f9fa3-9cbe-4fac-ba1f-b8eeb9c30e23`.

This approach ensures you capture all relevant audit events for the selected Loop workspace or the Copilot Pages and Copilot Notebooks container.

<!--
potential future examples
- find all accessed or downloaded documents
- find all edited items within a specific timeframe
- find all keyword-based search queries
-->

<!--
## eDiscovery export
-->

## Related articles

- [Summary of compliance, lifecycle, governance - Copilot Pages and Copilot Notebooks](cpcn-compliance-summary.md)
- [Summary of compliance, lifecycle, governance - Loop](loop-compliance-summary.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Copilot Pages and Notebooks storage](cpcn-storage.md)
- [Loop storage](loop-storage.md)
