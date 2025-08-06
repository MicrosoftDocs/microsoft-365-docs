---
ms.date: 07/02/2025
title: "Summary of governance, lifecycle, and compliance capabilities for Loop experiences"
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
description: "Learn about the governance, data lifecycle management, and compliance capabilities for Loop experiences."
---

# Summary of governance, lifecycle, and compliance capabilities for Loop

> [!NOTE]
> The Copilot Pages and Copilot Notebooks content has moved to a [dedicated article](cpcn-compliance-summary.md).

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop).

## Foundations

- **[Admin Toggle](loop-admin-configuration.md)** exist to turn on or off creation of Loop components, pages, and workspaces. When switching Loop component creation on or off in the Microsoft 365 ecosystem, it also controls rendering as a hyperlink vs. a live and interactive experience.
  - If you enable Loop components in the Microsoft 365 ecosystem via the primary toggle, there are secondary toggles to turn on or off Loop components in Outlook or Teams chats and channels. There's also a secondary toggle to turn on or off Loop components for collaborative meeting notes.

- **GDPR** data subject requests can be serviced as part of the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery).

- **EUDB** compliance is supported. [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)

## Data Security, Devices

- **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Microsoft 365 app, Teams app, and Loop app, on iOS and Android.

- **[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** is supported.

- **[Information Barriers](/purview/information-barriers-sharepoint)** are enforced for content stored in SharePoint sites or OneDrive.

  > [!IMPORTANT]
  > **[Information Barriers](/purview/information-barriers-sharepoint)** are not supported on content stored in SharePoint Embedded containers. See [storage](loop-storage.md#storage) for more information on what content this includes, and [admin settings](loop-admin-configuration.md#storage-based-view-of-the-admin-policy-settings) to configure these integrations.

- **[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.

- **Guest app access** to Loop workspace containers is available. Guest app access enables third party export and eDiscovery tools, migration tools, tools used to evaluate compliance requirements, and developer APIs. Use PowerShell to [Get](/powershell/module/sharepoint-online/get-spoapplication) and [Set](/powershell/module/sharepoint-online/set-spoapplicationpermission) guest app permissions.

## Data Lifecycle

- Loop's My workspace, Copilot Pages, and Copilot Notebooks are stored together in a single, user-owned SharePoint Embedded container, identified and owned by Loop. Shared Loop workspaces create one SharePoint Embedded container per workspace. These containers do not have individual storage limits; instead, their storage usage counts toward your organization's overall SharePoint storage quota. Currently, there is no admin control to set storage limits for individual SharePoint Embedded containers. Loop files in their OneDrive and SharePoint locations follow the quotas of these storage locations.

- See [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md) for information and workflows within SharePoint Admin center or PowerShell.

  > [!IMPORTANT]
  > Unlike OneDrive, for the Loop My workspace, there is no user workflow for content stored in the user-owned SharePoint Embedded container after user departure. The container is deleted on the same schedule as the default OneDrive settings. See [Storage management after user departure](loop-storage.md) for detailed information.

- **[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities for My workspace are supported.
  - My workspace is a user-owned SharePoint Embedded container and is created in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices).
  - Loop content created in OneDrive and SharePoint follow the multi-geo capabilities of OneDrive and SharePoint.
  - Multi-Geo capabilities for Loop workspaces are supported using the [same mechanism as SharePoint Communication sites](/microsoft-365/enterprise/m365-dr-workload-spo#move-a-sharepoint-site-or-sharepoint-embedded-container-site), including rehome and creation in the tenant's default geo. Manage the location of shared Loop workspaces like you would other collaboration artifacts, like SharePoint Communication sites.

  > [!IMPORTANT]
  > Shared workspaces aren't created in the user's preferred data location, they're instead created in the tenant's default geo, like SharePoint Communication sites.

- End-user **Recycle bin** for deleted Loop components and pages is available within the Loop workspace, OneDrive, or SharePoint site.

  > [!IMPORTANT]
  > There is no end user recycle bin for Loop workspaces. Furthermore, restoring the Loop workspace using admin tooling doesn't update in the Loop app user experience. The user would need to visit a saved page link for a restored workspace in order to see it again. Microsoft Roadmap ID 421615 addresses this.

- **Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available. Loop workspace content stored in SharePoint Embedded (See [storage](loop-storage.md) for more information), version history is configured to save 50 versions and no admin setting is available to change this configuration. Loop files in OneDrive or SharePoint follow the same file versioning settings as other files.

- **Audit** logs exist for all events. They are retained, can be exported, and can be streamed to third party tools. For more information, refer to [Purview](cpcn-loop-purview-management.md#searching-the-audit-logs)

## eDiscovery

- Microsoft **[Purview eDiscovery](/purview/ediscovery-premium-get-started)** supports search and collection, review (premium license required for admin), and export as HTML (premium license required for admin) or original. You can also download and reupload the files to any OneDrive to view them in their native format.

  > [!IMPORTANT]
  > Full text search of content within .loop files in Purview review sets isn't available. All other Purview search and collection capabilities are supported.

- Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export for third party tools is supported. Use PowerShell to [Get](/powershell/module/sharepoint-online/get-spoapplication) and [Set](/powershell/module/sharepoint-online/set-spoapplicationpermission) guest application permissions.

- **Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).

  > [!IMPORTANT]
  > Unlike OneDrive, Loop's My workspace is not automatically included when a user is placed on Litigation Hold, the My workspace container must be manually added for that user.

## Microsoft 365 retention and deletion

- **[Retention policies](/purview/create-retention-policies?tabs=other-retention)** from Microsoft Purview Data Lifecycle Management configured for all SharePoint sites are enforced for all .loop files or alternatively can be [configured per Loop workspace](cpcn-loop-purview-management.md#retrieving-the-container-url-for-purview).
  - For more information on how to configure specific Copilot Notebooks, see [Purview and SharePoint Embedded](cpcn-loop-purview-management.md)

- **[Retention labels](/purview/retention#retention-labels)** from Microsoft Purview Data Lifecycle Management and Microsoft Purview Records Management are supported for Loop components by [applying published labels](/purview/create-apply-retention-labels?tabs=spo-onedrive) in OneDrive or SharePoint, or [automatically applying](/purview/apply-retention-labels-automatically) the labels. There's limited support for manually applying retention labels.
  - Retention labels cannot be viewed or applied directly from a Loop component. Instead, the user must [navigate to the Loop file within the Loop app](/purview/create-apply-retention-labels?tabs=loop%2Cdefault-label-for-sharepoint#manually-apply-retention-labels) to view or apply a retention label on a Loop component.
  - Retention labels that mark the content as a record or regulatory record can't be manually applied in either the Loop component or when the content is opened in the Loop app. If content is automatically labeled as a record, locking and unlocking this record is not yet available.
  - For clarification only, not a limitation: retention labels do not apply to containers like SharePoint sites or Loop workspaces; instead, use retention policies for these containers. See [retention](/purview/retention) to learn more.

## Information Protection

- **[Sensitivity labeling](/purview/sensitivity-labels-loop)** is available for Loop pages and components. Workspace sensitivity labels are available for Loop workspaces. They are configurable per Loop workspaces (at the container level) via SharePoint Admin Center and PowerShell.
  - **Individual controls for guest or external sharing** of a specific Loop workspace isn't available. Use container Sensitivity labeling instead.

- **[Data Loss Prevention](/purview/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.

## Related articles

- [Requirements](cpcn-loop-requirements.md)
- [Storage](loop-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Admin toggles](loop-admin-configuration.md)
- [UX examples for admin toggle states](loop-ux-examples.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview and SharePoint Embedded containers](cpcn-loop-purview-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
