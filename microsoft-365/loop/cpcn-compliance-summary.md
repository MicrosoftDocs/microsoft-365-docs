---
ms.date: 01/26/2026
ms.update-cycle: 180-days
title: "Summary of governance, lifecycle, and compliance capabilities for Copilot Pages and Copilot Notebooks"
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
description: "Learn about the governance, data lifecycle management, and compliance capabilities for Copilot Pages and Copilot Notebooks."
---

# Summary of governance, lifecycle, and compliance capabilities for Copilot Pages and Copilot Notebooks

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for Copilot Pages and Copilot Notebooks.

## At a glance

| Capability | Status |
| --- | --- |
| **Admin policy** | ✅ Available - [Cloud Policy](cpcn-admin-configuration.md) |
| **GDPR / EUDB** | ✅ Supported |
| **Conditional Access** | ◐ App-level only (entire Microsoft 365 Copilot app) |
| **Information Barriers** | ❌ Not supported |
| **Customer Lockbox** | ✅ Supported |
| **eDiscovery** | ✅ Supported (full-text search in review sets not available) |
| **Legal Hold** | ◐ Manual - container must be added per user |
| **Retention policies** | ✅ Supported via "All SharePoint Sites" |
| **Retention labels** | ◐ Limited manual application |
| **Sensitivity labels** | ✅ Copilot Pages only |
| **DLP** | ✅ Supported with policy tips |
| **Recycle bin** | ❌ No end-user recycle bin for Copilot Notebooks |

## SharePoint Embedded

Copilot Pages and Copilot Notebooks content are stored in SharePoint Embedded. Content stored in SharePoint Embedded containers follows the [SharePoint Embedded security and compliance documentation](/sharepoint/dev/embedded/compliance/security-and-compliance). The sections below outline governance, lifecycle, and compliance capabilities applicable to all Copilot Pages and Copilot Notebooks storage types.

## Foundations

- **Admin policy**: Use [Cloud Policy](cpcn-admin-configuration.md) to turn on or off creation of Copilot Pages and Copilot Notebooks. Copilot Pages can also be shared as Loop components in supporting apps. See [relationship to Loop components](cpcn-admin-configuration.md#relationship-to-loop-components).
- **GDPR**: Data subject requests can be serviced through the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery).
- **EUDB**: Compliance is supported. See [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)

## Data Security, Devices

- **Intune**: [Device Management Support](/mem/intune/remote-actions/device-management) is available for the Microsoft 365 app and Teams app on iOS and Android.
- **Conditional Access**: Only applies at the app level. Because Copilot Pages and Copilot Notebooks are features of the Microsoft 365 Copilot app, [Conditional Access](/sharepoint/control-access-from-unmanaged-devices) applies to the entire app at m365.cloud.microsoft. Use [admin policies](cpcn-admin-configuration.md) to block creation of new content.
- **Information Barriers**: [Not supported](/purview/information-barriers-sharepoint). See [admin policies](cpcn-admin-configuration.md) for available controls.

> [!IMPORTANT]
> Information Barriers are **not supported** for content stored in SharePoint Embedded containers. Copilot Pages and Copilot Notebooks use SharePoint Embedded for storage. If your organization requires Information Barriers, consider using [admin policies](cpcn-admin-configuration.md) to disable Copilot Pages and Copilot Notebooks.

- **Customer Lockbox**: [Supported](/purview/customer-lockbox-requests).
- **Guest app access**: Available for Copilot Pages and Copilot Notebooks containers. Enables third-party export/eDiscovery tools, migration tools, and developer APIs. Use PowerShell to [Get](/powershell/module/microsoft.online.sharepoint.powershell/get-spoapplication) and [Set](/powershell/module/microsoft.online.sharepoint.powershell/set-spoapplicationpermission) guest app permissions.

## Data Lifecycle

> [!TIP]
> **Scenario: User leaves the organization**
>
> - Copilot Pages and Copilot Notebooks container follows OneDrive cleanup schedule (30 days active → 93 days to permanent deletion)
> - Unlike OneDrive, there's no manager workflow to retain content
> - To preserve content before departure, export using Purview or Graph API or add the container to a retention policy

- **Storage**: Copilot Pages and Copilot Notebooks are stored together in a single, user-owned SharePoint Embedded container (Application Name: Loop). Storage counts against your organization's SharePoint quota. See [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md).
  - **Limitation**: There's no admin control to set limits on individual containers.
  - **Limitation**: Unlike OneDrive, there's no user workflow for content after departure. The container is deleted on the same schedule as OneDrive defaults. See [Storage management after user departure](cpcn-storage.md#storage-management-after-user-departure).
- **Multi-Geo**: [Supported](/microsoft-365/enterprise/microsoft-365-multi-geo). The container is created in the geo matching the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices).
  - **Known issue**: Some operations may not work correctly after moving containers across geos. Microsoft is working on a fix.
- **Recycle bin**: No end-user recycle bin exists.
  - **Limitation**: Neither administrators nor end users can recover individually deleted Copilot Notebooks.
- **Version History**: [Export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format). 50 versions per file (not configurable).
- **Audit logs**: Available for all events. Retained, exportable, and streamable to third-party tools. Search in [Purview](https://purview.microsoft.com/auditlogsearch) for "page" and filter by `"SourceFileExtension":"page"`. Copilot Notebooks create and update `.pod` files to manage content.

## eDiscovery

- **Purview eDiscovery**: [Supported](/purview/ediscovery-premium-get-started) for search/collection, review (Premium license required), and export as HTML (Premium license required) or original format. Download and reupload files to OneDrive to view in native format.
  - **Limitation**: Full-text search within `.page` files in Purview review sets isn't available.
- **Graph API export**: [Supported](/graph/api/driveitem-get-content-format) for third-party tools. Use PowerShell to [Get](/powershell/module/microsoft.online.sharepoint.powershell/get-spoapplication) and [Set](/powershell/module/microsoft.online.sharepoint.powershell/set-spoapplicationpermission) guest application permissions.
- **Legal Hold**: Supported. Content is stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).
  - **Limitation**: Unlike OneDrive, Copilot Pages and Copilot Notebooks aren't automatically included when a user is placed on Litigation Hold. You must manually add the container for each user.

## Microsoft 365 retention and deletion

- **[Retention policies](/purview/create-retention-policies?tabs=other-retention)** from Microsoft Purview Data Lifecycle Management configured for all SharePoint sites are enforced for all Copilot Pages and Copilot Notebooks.
  - For more information on how to configure specific Copilot Notebooks, see [Purview and SharePoint Embedded](cpcn-loop-purview-management.md)

- **[Retention labels](/purview/retention#retention-labels)** from Microsoft Purview Data Lifecycle Management and Microsoft Purview Records Management are supported for Copilot Pages (.page files) and Copilot Pages in Copilot Notebooks by [applying published labels](/purview/create-apply-retention-labels?tabs=spo-onedrive) in OneDrive or SharePoint, or [automatically applying](/purview/apply-retention-labels-automatically) the labels. There's limited support for manually applying retention labels.
  - Retention labels cannot be viewed or applied directly from a Copilot Page. Instead, the user must [navigate to the Copilot Page within the Loop app](/purview/create-apply-retention-labels?tabs=loop%2Cdefault-label-for-sharepoint#manually-apply-retention-labels) to view or apply a retention label on a Copilot Page.
  - Retention labels that mark the content as a record or regulatory record can't be manually applied in either the Copilot Page or when the content is opened in the Loop app. If content is automatically labeled as a record, locking and unlocking this record is not yet available.

## Information Protection

- **Sensitivity labels**: [Available](/purview/sensitivity-labels-loop) for Copilot Pages. Copilot Notebooks don't have container sensitivity labels because they share a container with all Copilot Pages.
- **Data Loss Prevention (DLP)**: [Rules enforced](/purview/dlp-learn-about-dlp) with end-user policy tip support.

## Related articles

- [Requirements](cpcn-requirements.md)
- [Storage](cpcn-storage.md)
- [Permissions](cpcn-permission.md)
- [Admin policies](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview management](cpcn-loop-purview-management.md)
