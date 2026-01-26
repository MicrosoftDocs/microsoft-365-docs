---
ms.date: 01/26/2026
ms.update-cycle: 180-days
title: "Summary of governance, lifecycle, and compliance capabilities for Loop experiences"
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
description: "Learn about the governance, data lifecycle management, and compliance capabilities for Loop experiences."
---

# Summary of governance, lifecycle, and compliance capabilities for Loop

> [!NOTE]
> The Copilot Pages and Copilot Notebooks content can now be found in a [dedicated article](cpcn-compliance-summary.md).

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for [Microsoft Loop](https://www.microsoft.com/microsoft-loop).

## At a glance

| Capability | Status |
| --- | --- |
| **Admin policies** | ✅ Available - [Cloud Policy + SharePoint PowerShell](loop-admin-configuration.md) |
| **GDPR / EUDB** | ✅ Supported |
| **Conditional Access** | ✅ Supported |
| **Information Barriers** | ◐ OneDrive/SharePoint only (not SharePoint Embedded) |
| **Customer Lockbox** | ✅ Supported |
| **eDiscovery** | ✅ Supported (full-text search in review sets not available) |
| **Legal Hold** | ◐ SharePoint Embedded content is Manual - My workspace container must be added per user |
| **Retention policies** | ✅ Supported |
| **Retention labels** | ◐ Limited manual application |
| **Sensitivity labels** | ✅ Pages, components, and workspaces |
| **DLP** | ✅ Supported with policy tips |
| **Recycle bin** | ✅ Components and pages; ❌ Workspaces |

## SharePoint Embedded

Loop content storage varies based on creation method. For detailed information about storage locations, see [storage](loop-storage.md). Content stored in SharePoint Embedded containers follows the [SharePoint Embedded security and compliance documentation](/sharepoint/dev/embedded/compliance/security-and-compliance).

The sections below outline governance, lifecycle, and compliance capabilities applicable to all Loop storage types. Where capabilities vary by storage location—OneDrive, SharePoint sites, or SharePoint Embedded containers—specific details are provided.

## Foundations

- **Admin policies**: Use [Cloud Policy and SharePoint PowerShell](loop-admin-configuration.md) to control creation of Loop components, pages, and workspaces. When creation is disabled, existing content renders as hyperlinks instead of interactive components.
  - Primary policy controls most apps (excluding Teams); secondary policies control Outlook, Teams, and collaborative meeting notes separately.
- **GDPR**: Data subject requests can be serviced through the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery).
- **EUDB**: Compliance is supported. See [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)

## Data Security, Devices

- **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Microsoft 365 app, Teams app, and Loop app, on iOS and Android.

- **[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** is supported.

- **[Information Barriers](/purview/information-barriers-sharepoint)** are enforced for content stored in SharePoint sites or OneDrive.

> [!IMPORTANT]
> Information Barriers are **not supported** for content stored in SharePoint Embedded containers (Loop workspaces and My workspace). If your organization requires Information Barriers, consider using [admin policies](loop-admin-configuration.md) to restrict Loop workspace creation.

- **Customer Lockbox**: [Supported](/purview/customer-lockbox-requests).
- **Guest app access**: Available for Loop workspace containers. Enables third-party export/eDiscovery tools, migration tools, and developer APIs. Use PowerShell to [Get](/powershell/module/microsoft.online.sharepoint.powershell/get-spoapplication) and [Set](/powershell/module/microsoft.online.sharepoint.powershell/set-spoapplicationpermission) guest app permissions.

## Data Lifecycle

- Loop's My workspace, Copilot Pages, and Copilot Notebooks are stored together in a single, user-owned SharePoint Embedded container, identified and owned by Loop. Shared Loop workspaces create one SharePoint Embedded container per workspace. These containers don't have individual storage limits; instead, their storage usage counts toward your organization's overall SharePoint storage quota. Currently, there's no admin control to set storage limits for individual SharePoint Embedded containers. Loop files in their OneDrive and SharePoint locations follow the quotas of these storage locations.

- See [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md) for information and workflows within SharePoint Admin center or PowerShell.

  > [!IMPORTANT]
  > Unlike OneDrive, for the Loop My workspace, there's no user workflow for content stored in the user-owned SharePoint Embedded container after user departure. The container is deleted on the same schedule as the default OneDrive settings. See [Storage management after user departure](loop-storage.md) for detailed information.

- **[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities for My workspace are supported.
  - My workspace is a user-owned SharePoint Embedded container and is created in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices).
  - Loop content created in OneDrive and SharePoint follow the multi-geo capabilities of OneDrive and SharePoint.
  - Multi-Geo support for shared Loop workspaces use the [same mechanism as SharePoint Communication sites](/microsoft-365/enterprise/m365-dr-workload-spo#move-a-sharepoint-site-or-sharepoint-embedded-container-site), including rehome and creation in the tenant's default geo. Manage shared Loop workspace locations like other collaborative artifacts such as SharePoint Communication sites.

  > [!IMPORTANT]
  > Certain operations in Loop workspaces may not function correctly after moving containers across geos, such as sharing or creating new pages. Microsoft is aware of the issue and is working on a fix.

- End-user **Recycle bin** for deleted Loop components and pages is available within the Loop workspace, OneDrive, or SharePoint site.

  > [!IMPORTANT]
  > There's no end user recycle bin for Loop workspaces. Furthermore, restoring the Loop workspace using admin tooling doesn't update in the Loop app user experience. The user would need to visit a saved page link for a restored workspace in order to see it again. Microsoft Roadmap ID 421615 addresses this.

- **Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available. Loop workspace content stored in SharePoint Embedded (See [storage](loop-storage.md) for more information), version history is configured to save 50 versions and no admin setting is available to change this configuration. Loop files in OneDrive or SharePoint follow the same file versioning settings as other files.

- **Audit** logs exist for all events. They're retained, can be exported, and can be streamed to third party tools. For more information, see [Purview](cpcn-loop-purview-management.md#searching-the-audit-logs).

## eDiscovery

- **Purview eDiscovery**: [Supported](/purview/ediscovery-premium-get-started) for search/collection, review (Premium license required), and export as HTML (Premium license required) or original format. Download and reupload files to OneDrive to view in native format.
  - **Limitation**: Full-text search within `.loop` files in Purview review sets isn't available.
- **Graph API export**: [Supported](/graph/api/driveitem-get-content-format) for third-party tools. Use PowerShell to [Get](/powershell/module/microsoft.online.sharepoint.powershell/get-spoapplication) and [Set](/powershell/module/microsoft.online.sharepoint.powershell/set-spoapplicationpermission) guest application permissions.
- **Legal Hold**: Supported. Content is stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).
  - **Known Issue**: Unlike OneDrive, Loop's My workspace isn't automatically included when a user is placed on Litigation Hold. You must manually add the My workspace container for each user when placing the user on Litigation Hold.

## Microsoft 365 retention and deletion

- **[Retention policies](/purview/create-retention-policies?tabs=other-retention)** from Microsoft Purview Data Lifecycle Management configured for all SharePoint sites are enforced for all .loop files or alternatively can be [configured per Loop workspace](cpcn-loop-purview-management.md#retrieving-the-container-url-for-purview).
  - For more information on how to configure specific Copilot Notebooks, see [Purview and SharePoint Embedded](cpcn-loop-purview-management.md)

- **[Retention labels](/purview/retention#retention-labels)** from Microsoft Purview Data Lifecycle Management and Microsoft Purview Records Management are supported for Loop components by [applying published labels](/purview/create-apply-retention-labels?tabs=spo-onedrive) in OneDrive or SharePoint, or [automatically applying](/purview/apply-retention-labels-automatically) the labels. There's limited support for manually applying retention labels.
  - Retention labels can't be viewed or applied directly from a Loop component. Instead, the user must [navigate to the Loop file within the Loop app](/purview/create-apply-retention-labels?tabs=loop%2Cdefault-label-for-sharepoint#manually-apply-retention-labels) to view or apply a retention label on a Loop component.
  - Retention labels that mark the content as a record or regulatory record can't be manually applied in either the Loop component or when the content is opened in the Loop app. If content is automatically labeled as a record, locking and unlocking this record isn't yet available.
  - For clarification only, not a limitation: retention labels don't apply to containers like SharePoint sites or Loop workspaces; instead, use retention policies for these containers. To learn more, see [retention](/purview/retention).

## Information Protection

- **Sensitivity labels**: [Available](/purview/sensitivity-labels-loop) for Loop pages and components. Workspace sensitivity labels are configurable per workspace (at container level) via SharePoint Admin Center and PowerShell. See [configuring sensitivity labels](/sharepoint/dev/embedded/concepts/security-and-compliance#security-features).
  - **Note**: There's no admin setting to configure guest sharing of specific Loop workspaces. Use container sensitivity labeling for per-workspace external sharing configuration.
- **Data Loss Prevention (DLP)**: [Rules enforced](/purview/dlp-learn-about-dlp) with end-user policy tip support.

## Related articles

- [Requirements](loop-requirements.md)
- [Storage](loop-storage.md)
- [Permissions](loop-permission.md)
- [Admin policies](loop-admin-configuration.md)
- [UX examples for admin policy states](loop-ux-examples.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview management](cpcn-loop-purview-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
