---
ms.date: 07/02/2025
title: "Manage SharePoint Embedded containers in Purview for Copilot Notebooks, Copilot Pages, or Loop workspaces"
ms.reviewer: dancost, tonchan, abisuresh
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
description: "Learn about Purview integration of SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces."
---

# Purview integration of SharePoint Embedded containers for Copilot Notebooks, Copilot Pages, or Loop workspaces

All SharePoint Embedded containers are targeted using the "All SharePoint Sites" scope in Microsoft Purview. For example, if configuring Retention Policies, the configuration you specify that targets All SharePoint Sites applies to every Copilot Pages and Copilot Notebooks container in SharePoint Embedded, and every Loop workspace in SharePoint Embedded. All SharePoint Sites includes all SharePoint Embedded container ownership types: user, group, and tenant-owned.

## Retrieving the Container URL for Purview

If you need to specify an the Copilot Pages and Copilot Notebooks container, or a specific Loop workspace container for a retention policy or another compliance feature, specify the workspace as you would a SharePoint site, by its URL. To locate this URL:

1. Sign in to the SharePoint admin center with the [SharePoint Embedded administrator role](/sharepoint/dev/embedded/concepts/admin-exp/adminrole)
1. Navigate to **Containers** > **Active containers** or **Deleted containers** where you can view the details of a selected Loop workspace or Copilot Pages and Copilot Notebooks container
1. From the flyout pane, **General** tab
1. Copy the container URL

## Searching the Audit Logs

These are the Loop application IDs:

- Loop Web Application ID: `a187e399-0c36-4b98-8f04-1edc167a0996`
- Loop Mobile Application ID: `0922ef46-e1b9-4f7e-9134-9ad00547eb41`
- Copilot Pages and Copilot Notebooks containers are created using the Loop Application IDs.

### Search and Export

To search and export Microsoft 365 service events for all file related activity:

1. In the [Purview audit logs search](https://purview.microsoft.com/auditlogsearch), search audit logs for "page" or "loop" or "loot" or "fluid" or for the Loop Application IDs in the **Keyword Search** filter
1. Further filter exported results by "SourceFileExtension":"page" or "SourceFileExtension":"loop" or "SourceFileExtension":"loot" (templates) or "SourceFileExtension":"fluid" (deprecated)

Loop workspaces create and update .pod files to manage content in the workspace.

### Specific Loop workspace or Copilot Notebook

To search for audit events related to a specific Loop workspace or a Copilot Pages and Copilot Notebooks container, follow these steps:

1. [Retrieve the container URL](#retrieving-the-container-url-for-purview) for the Loop workspace or Copilot Notebook you want to audit.
2. In the [Purview audit logs search](https://purview.microsoft.com/auditlogsearch), use the following filters:
    - **File, folder, or site**: Enter the full container URL and append `/*` to include all file and container audit events.  
      - Example: `https://<your-tenant>.sharepoint.com/contentstorage/CSP_c33f9fa3-9cbe-4fac-ba1f-b8eeb9c30e23/*`
    - **Keyword Search**: To find all audit events related to the container, extract the GUID from the container URL and enter it in the Keyword Search filter.  
      - In the example above, the GUID is `c33f9fa3-9cbe-4fac-ba1f-b8eeb9c30e23`.

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

- [Summary of Compliance, Lifecycle, Governance](cpcn-compliance-summary.md)
- [Configuration Requirements](cpcn-loop-requirements.md)
- [Copilot Pages and Notebooks Storage](cpcn-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Copilot Pages and Notebooks Admin toggles](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Loop Storage](cpcn-storage.md)
- [Loop Admin toggles](loop-admin-configuration.md)
- [UX examples for admin toggle states](loop-ux-examples.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
