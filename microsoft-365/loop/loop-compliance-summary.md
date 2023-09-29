---
ms.date: 08/21/2023
title: "Summary of governance, lifecycle and compliance capabilities for Loop experiences"
ms.reviewer: dancost, tonchan
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: article
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
search.appverid:
- SPO160
- MET150
description: "Learn about the governance, data lifecycle management and compliance capabilities for Loop experiences."
---

# Summary of governance, lifecycle and compliance capabilities for Loop

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop).

## Loop Storage

Microsoft Loop is built on top of SharePoint, OneDrive, and [Microsoft Syntex repository services](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/), which means that most compliance capabilities work just like existing files in your ecosystem. Being a file makes Loop content familiar and it to be managed within your existing workflows. To help you understand how Loop content is stored in the Microsoft ecosystem, here's a high-level diagram:

Where the loop content was originally created determines its storage location:
- Created in the Loop app ➡️️ Microsoft Syntex 
- Created in all other places (e.g. Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ OneDrive 


## Loop components stored in OneDrive
The following section applies to Loop components stored in OneDrive (created outside the Loop app e.g. in Teams chat)


### Governance, Lifecycle and Compliance Capabilities

#### Foundations
- **[Admin Toggles](/microsoft-365/loop/loop-components-configuration#available-policy-settings)** to turn on/off all Loop components in the Microsoft 365 ecosystem, if enabled in the Microsoft 365 ecosystem there's a toggle to turn on/off Loop components specifically in Outlook or Teams, and an independent toggle to turn off Loop components for collaborative meeting notes
- **GDPR** data subject requests as part of the [Security and Compliance admin center](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)
- **EUDB** compliance - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)

#### Admin Management
- **[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities, including creation of .loop files in a user's OneDrive in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices) and ability to move the user's OneDrive when their preferred data location changes. 
- When a user leaves an organization, [OneDrive retention policies](/sharepoint/retention-and-deletion) apply to the .loop files just as they do to other content created by the user

#### Audit
- **Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format)
- **Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations
  - use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)
  - search audit logs for "loop" or "fluid"
  - further filter exported results by "SourceFileExtension":"loop" or "SourceFileExtension":"fluid"
- **Audit** logs are retained, can be exported, and can be streamed to third party tools

#### Legal Hold and eDiscovery
- Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** review (premium only) and export (also as HTML, premium only) ✻
- Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export ✻
- **Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server) ✻

#### Data Lifecycle Management
- **[Retention Policies](/microsoft-365/compliance/retention-policies-sharepoint)** are enforced

#### Information Barriers
- **[Information Barriers](/purview/information-barriers-sharepoint)** ✻✻

#### Customer Key
- **[Customer Lockbox](/purview/customer-lockbox-requests)**


### Capabilities that are Not Yet Available

#### Admin Management
- Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) for Loop app on iOS and Android
- Basic **[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** support

#### Data Loss Prevention, Information Protection
- **[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) policy tips ✻
- **[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP) ✻

✻ requires E3 or E5 license&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;✻✻ requires E5 license


## Loop workspace content stored in Microsoft Syntex
The following sections apply to Loop workspace content stored in Microsoft Syntex (created inside the Loop app e.g. new workspaces, new pages or new components) 


### Governance, Lifecycle and Compliance Capabilities

#### Foundations 
- **[Admin Toggle](/microsoft-365/loop/loop-workspaces-configuration)** to turn on/off creation of content in Loop workspaces
- **GDPR** data subject requests as part of the [Security and Compliance admin center](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)
- **EUDB** compliance - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)

#### Audit
- **Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export)
- **Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations
  - use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)
  - search audit logs for Loop ApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`
- **Audit** logs are retained, can be exported, and can be streamed to third party tools

#### Legal Hold and eDiscovery
- Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** review (premium only) and export (also as HTML, premium only) ✻
- **Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server) ✻

#### Data Lifecycle Management
- **[Retention Policies](/microsoft-365/compliance/retention-policies-sharepoint)** configured for 'all SharePoint sites' are enforced on all Loop workspaces

#### Information Barriers
- **[Information Barriers](/purview/information-barriers-sharepoint)** ✻✻

#### Customer Key
- **[Customer Lockbox](/purview/customer-lockbox-requests)**


### Capabilities that are Not Yet Available

#### Admin Management
- PowerShell ability to
  - list all Loop workspaces
  - view comprehensive details of a specific workspace such as storage and membership
  - delete and restore Loop workspaces
  - get and set sensitivity labels
  - get and set conditional access policy
  - get and set block download policy
- End user Recycle Bin for deleted content
- Loop workspace management: multiple owners for lifecycle management
- Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) for Loop app on iOS and Android
- Basic **[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** support
- Multi-Geo capabilities, including creation of Loop workspaces in the geo that matches the user's preferred data location and moving their Loop workspaces to a different geo when the user's preferred data location changes. Loop workspaces are moved in the same manner as the user's OneDrive, when the user's preferred data location is updated. 

We plan to expand our administrative workspace management capabilities via PowerShell. Furthermore, we plan to make these administrative functions accessible in SharePoint Admin Center.

#### Legal Hold and eDiscovery
- Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export ✻

#### Data Lifecycle Management
- **[Retention Policies](/microsoft-365/compliance/retention-policies-sharepoint)** that can be overridden or set at the Loop workspace level

#### Data Loss Prevention, Information Protection
- **[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) policy tips ✻
- **[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP) ✻

✻ requires E3 or E5 license&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;✻✻ requires E5 license


## Managing Loop in your organization

By reviewing the above information, you can make an informed decision on whether Microsoft Loop is ready for use as a software solution in your organization. It's important to note that while some compliance items have been completed, there are still items that are in progress and will be available soon. As always, we will continue to update this and other documentation to provide the compliance status of Microsoft Loop to help you make the best decisions for your organization.


## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
- [Manage Loop workspace experiences in Microsoft Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration)
