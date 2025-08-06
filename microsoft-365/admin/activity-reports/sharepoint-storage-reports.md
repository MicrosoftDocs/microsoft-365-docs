---
title: "Microsoft 365 Reports in the admin center – SharePoint storage"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 05/12/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn how to access and interpret the SharePoint storage report."
---

# Microsoft 365 Reports in the admin center – SharePoint storage

The SharePoint storage report provides an overview of your tenant’s storage usage. It also offers suggestions for storage optimization and future proofing your organization’s file growth capacity.

> [!NOTE]
> This report is available to non-Education tenants. Education tenants should refer to their pooled storage report. For more information about viewing the pooled storage report, see [Pooled storage management](/microsoft-365/education/deploy/pooled-storage-management).

## View SharePoint storage report

To view the SharePoint storage report, perform the following steps:

1. In the Microsoft 365 admin center, go to **Reports > Usage**. The **Usage** page appears.

   :::image type="content" source="../../media/usage-page.png" alt-text="Screenshot that shows the Usage page." lightbox="../../media/usage-page.png":::

1. From the left navigation pane, select **SharePoint**.
1. Select the **Storage** tab.

> [!NOTE]
> This report refreshes every 48-72 hours. Banner notifications appear when SharePoint usage exceeds 80% of quota.

The SharePoint storage report contains the following sections:

- [Optimize your organization’s SharePoint storage](#optimize-your-organizations-sharepoint-storage)
- [Total usage](#total-usage)
- [Usage trend](#usage-trend)
- [Featured resources](#featured-resources)

### Optimize your organization’s SharePoint storage

Explore ways to manage your storage through setting file history limits, archiving inactive sites<sup>1</sup>, and creating site lifecycle management policies<sup>1</sup>. To increase SharePoint storage capacity, buy more storage in one-gigabyte increments. For more information about planning for SharePoint storage, see [SharePoint storage planning](/sharepoint/sharepoint-storage-planning).

<sup>1</sup> Additional licensing charges might apply.

### Total usage

Review the total storage used by your tenant, total storage quota, and available storage quota. For more information about SharePoint limits, see [SharePoint limits - Service Descriptions](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits).

### Usage trend

Understand your tenant’s storage growth trend and use the estimated future storage usage based on past usage to make informed decisions on when to buy more storage or whether to clean up usage.

> [!NOTE]
> The historical trend represents usage across all sites and may slightly differ from the storage bar, which indicates tenant-level quota consumption.

### Featured resources

For more information about options for managing storage, see [site storage limits](/sharepoint/manage-site-collection-storage-limits) and [version history limits](/sharepoint/document-library-version-history-limits). Consider using [Microsoft Graph Data connect](https://techcommunity.microsoft.com/blog/microsoft_graph_data_connect_for_sharepo/links-about-microsoft-graph-data-connect-for-sharepoint/4069045) for more in-depth SharePoint storage insights.
