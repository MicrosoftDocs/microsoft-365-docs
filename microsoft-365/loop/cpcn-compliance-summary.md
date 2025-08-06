---
ms.date: 07/02/2025
title: "Summary of governance, lifecycle, and compliance capabilities for Copilot Pages and Copilot Notebooks"
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
description: "Learn about the governance, data lifecycle management, and compliance capabilities for Copilot Pages and Copilot Notebooks."
---

# Summary of governance, lifecycle, and compliance capabilities for Copilot Pages and Copilot Notebooks

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for Copilot Pages and Copilot Notebooks.

## Foundations

- An **[Admin Toggle](cpcn-admin-configuration.md)** exists to turn on or off creation of both Copilot Pages and Copilot Notebooks. If Loop components are enabled, Copilot Pages can be shared and used like a Loop component in all the applications that support Loop components.

- **GDPR** data subject requests can be serviced as part of the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery).

- **EUDB** compliance is supported. [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)

## Data Security, Devices

- **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Microsoft 365 app, Teams app, and Loop app, on iOS and Android.

- **[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** is supported.

    > [!IMPORTANT]
    > **[Information Barriers](/purview/information-barriers-sharepoint)** are not supported. See [admin settings](cpcn-admin-configuration.md) to configure these integrations.

- **[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.

- **Guest app access** to Copilot Pages and Copilot Notebooks containers is available. Guest app access enables third party export and eDiscovery tools, migration tools, tools used to evaluate compliance requirements, and developer APIs. Use PowerShell to [Get](/powershell/module/sharepoint-online/get-spoapplication) and [Set](/powershell/module/sharepoint-online/set-spoapplicationpermission) guest app permissions.

## Data Lifecycle

- Copilot Pages and Copilot Notebooks are stored together in a single, user-owned SharePoint Embedded container, identified and owned by Loop. These containers do not have individual storage limits; instead, their storage usage counts toward your organization's overall SharePoint storage quota. Currently, there is no admin control to set storage limits for individual SharePoint Embedded containers.

- See [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md) for information and workflows within SharePoint Admin center or PowerShell.

    > [!IMPORTANT]
    > Unlike OneDrive, for Copilot Pages and Copilot Notebooks, there is no user workflow for content stored in the user-owned SharePoint Embedded container after user departure. The container is deleted on the same schedule as the default OneDrive settings. See [Storage management after user departure](cpcn-storage.md#storage-management-after-user-departure) for detailed information.

- **[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities for Copilot Pages and Copilot Notebooks are supported. Copilot Pages and Copilot Notebooks are both stored in the same user-owned SharePoint Embedded container. This container is created in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices). Like OneDrive, admins have the ability to manually move the user's Copilot Pages and Copilot Notebooks container to a new geo when their preferred data location changes.

    > [!IMPORTANT]
    > There is no end user recycle bin for Copilot Pages or Copilot Notebooks. Neither Administrators nor end users can recover individually deleted Copilot Notebooks.

- **Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available. Copilot Pages and Copilot Notebooks version history is configured to save 50 versions per file and no admin setting is available to change this configuration.

- **Audit** logs exist for all events. They are retained, can be exported, and can be streamed to third party tools. To search and export Microsoft 365 service events for security and compliance investigations:

    1. Use the [Microsoft Purview portal](https://purview.microsoft.com/auditlogsearch)
    1. Search audit logs for "loop"
    1. Further filter exported results by "SourceFileExtension":"loop"

- Copilot Notebooks create and update .pod files to manage content in the notebook.

## eDiscovery

- Microsoft **[Purview eDiscovery](/purview/ediscovery-premium-get-started)** supports search and collection, review (premium license required for admin), and export as HTML (premium license required for admin) or original. You can also download and reupload the files to any OneDrive to view them in their native format.

    > [!IMPORTANT]
    > Full text search of content within .loop files in Purview review sets isn't available. All other Purview search and collection capabilities are supported.

- Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export for third party tools is supported. Use PowerShell to [Get](/powershell/module/sharepoint-online/get-spoapplication) and [Set](/powershell/module/sharepoint-online/set-spoapplicationpermission) guest application permissions.

- **Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).

    > [!IMPORTANT]
    > Unlike OneDrive, Copilot Pages and Copilot Notebooks are not automatically included when a user is placed on Litigation Hold, the Copilot Pages and Copilot Notebooks container must be manually added for that user.

## Microsoft 365 retention and deletion

- **[Retention policies](/purview/create-retention-policies?tabs=other-retention)** from Microsoft Purview Data Lifecycle Management configured for all SharePoint sites are enforced for all Copilot Pages and Copilot Notebooks.
  - For more information on how to configure specific Copilot Notebooks, see [Purview and SharePoint Embedded](cpcn-loop-purview-management.md)

- **[Retention labels](/purview/retention#retention-labels)** from Microsoft Purview Data Lifecycle Management and Microsoft Purview Records Management are supported for Copilot Pages (.loop files) and Copilot Pages in Copilot Notebooks by [applying published labels](/purview/create-apply-retention-labels?tabs=spo-onedrive) in OneDrive or SharePoint, or [automatically applying](/purview/apply-retention-labels-automatically) the labels. There's limited support for manually applying retention labels.
  - Retention labels cannot be viewed or applied directly from a Copilot Page. Instead, the user must [navigate to the Copilot Page within the Loop app](/purview/create-apply-retention-labels?tabs=loop%2Cdefault-label-for-sharepoint#manually-apply-retention-labels) to view or apply a retention label on a Copilot Page.
  - Retention labels that mark the content as a record or regulatory record can't be manually applied in either the Copilot Page or when the content is opened in the Loop app. If content is automatically labeled as a record, locking and unlocking this record is not yet available.

## Information Protection

- **[Sensitivity labeling](/purview/sensitivity-labels-loop)** is available for Copilot Pages.

- Because Copilot Notebooks are stored in the same container as all Copilot Pages, not one Copilot Notebook per unique container, Copilot Notebooks do not have container sensitivity labels.

- **[Data Loss Prevention](/purview/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.

## Related articles

- [Requirements](cpcn-loop-requirements.md)
- [Storage](cpcn-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Admin toggles](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview and SharePoint Embedded containers](cpcn-loop-purview-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
