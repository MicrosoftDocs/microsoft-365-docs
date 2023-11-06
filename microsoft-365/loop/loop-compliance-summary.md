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

Where Loop content is stored impacts the admin management, governance, data lifecycle, and compliance capabilities avaialable. Microsoft Loop is built on top of SharePoint, OneDrive, and [Microsoft Syntex repository services](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/), which means that most of these capabilities work just like existing files in your ecosystem. Because Loop pages and components are files, they can be managed in a familiar way, within your existing workflows. To help you understand how Loop content is stored in the Microsoft ecosystem, here's a high-level diagram:

:::image type="content" source="media/loop-files-sharepoint.png" alt-text="Diagram showing that the place a Loop file is stored depends on where it was originally created.":::

Where the loop content was originally created determines its storage location:
- Created in the Loop app ➡️️ Microsoft Syntex
- Created outside the Loop app in places that have dedicated shared storage (e.g. Teams channels) ➡️️ SharePoint
- Created outside the Loop app in all other places that don't have tightly associated collaborative storage (e.g. Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ OneDrive

Breaking that up into diagrams that correspond to the table columns below...

### OneDrive and SharePoint, Summary table middle column
The middle column applies to Loop content:
:::image type="content" source="media/loop-files-onedrive.png" alt-text="Diagram showing that files created outside the Loop app are stored in OneDrive or SharePoint.":::

Where the loop content was originally created determines its storage location:
- Created in all other places that don't have tightly associated collaborative storage (e.g. Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ in the creator's OneDrive
- Created in places that have dedicated shared storage (e.g. Teams channels) ➡️️ SharePoint

### Microsoft Syntex repository service, Summary table right column
The right column applies to Loop content:
:::image type="content" source="media/loop-files-syntex.png" alt-text="Diagram showing that files created inside the Loop app are stored in Microsoft Syntex.":::

Where the loop content was originally created determines its storage location:
- Created inside the Loop app: Workspaces, Ideas ➡️ in Microsoft Syntex repository services, one container per Loop workspace



## Summary table of admin management, governance, lifecycle and compliance capabilities based on where Loop content is stored
|Category|OneDrive or SharePoint|Microsoft Syntex repository services|
|-----|-----|-----|
|  |This column applies to Loop content:  <ul><li>Created in all other places that don't have tightly associated collaborative storage (e.g. Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ in the creator's OneDrive  <li>Created in places that have dedicated shared storage (e.g. Teams channels) ➡️️ SharePoint  </ul>|This column applies to Loop content:  <ul><li>Created inside the Loop app: Workspaces, Ideas ➡️ in Microsoft Syntex repository services, one container per Loop workspace  </ul>|
|Foundations: Admin toggles  |**[Admin Toggles](/microsoft-365/loop/loop-components-configuration#available-policy-settings)** to turn on/off creation of and live rendering of Loop components in the Microsoft 365 ecosystem. If you enable Loop components in the Microsoft 365 ecosystem (the primary toggle), there are also a separate toggles to turn on/off Loop components specifically in Outlook or Teams chats and channels, and a toggle to turn on/off Loop components for collaborative meeting notes.  <br><br>Organizations with eCommunication regulations may choose to leave Loop components on across the Microsoft 365 ecosystem, but use the independent toggles for communication tools while evaluating the data lifecycle, governance, and compliance capabilities listed in this table.|**[Admin Toggle](/microsoft-365/loop/loop-workspaces-configuration)** to turn on/off creation of content stored in Microsoft Syntex repository services. This includes creating Loop Ideas, creating new workspaces, or creating new pages or components within a workspace.|
|Foundations: GDPR  |**GDPR** data subject requests as part of the [Security and Compliance admin center](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|**GDPR** data subject requests as part of the [Security and Compliance admin center](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|
|Foundations: EDUB  |**EUDB** compliance - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|**EUDB** compliance - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|
|Admin Management: Intune  |Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) for Loop app on iOS and Android.|Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) for Loop app on iOS and Android.|
|Admin Management: Conditional Access  |**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** supported. See [manual initialization](#manually-initializing-microsoft-loop-app-for-conditional-access-management-in-microsoft-entra) for Microsoft Entra support.|**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** supported. See [manual initialization](#manually-initializing-microsoft-loop-app-for-conditional-access-management-in-microsoft-entra) for Microsoft Entra support.|
|Admin Management: Programmatic APIs for Loop content  |Yes, they are files in OneDrive or SharePoint and all current functionality applies.| **Not Yet Available**:  <br>API access to Loop workspace containers: this impacts third party export and eDiscovery tools, migration tools, tools used to communicate in bulk to end-users about their content such as compliance requirements, and developer APIs.|
|Admin Management: Multi-Geo  |**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities, including creation of .loop files in a user's OneDrive in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices) and ability to move the user's OneDrive when their preferred data location changes.|**Not Yet Available**:  <br>**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities, including creation of .loop files in a user's Loop workspaces in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices).  <br>**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** rehome of Loop workspaces and contained .loop files as needed.|
|Admin Management: User leaves organization  |When a user leaves an organization, [OneDrive retention policies](/sharepoint/retention-and-deletion) apply to the .loop files just as they do to other content created by the user.|Manage the lifetime of shared Loop workspaces like you would other collaboration artifacts, like SharePoint sites or Teams channels.|
|Admin Management: Loop workspaces  |n/a|See [Admin Management of Loop workspaces](#admin-management-of-loop-workspaces) for a list of capabilities that are available and also not yet available.|
|Admin Management: Recycle bin  |**Not Yet Available**:  <br>End user Recycle bin for deleted content.|**Not Yet Available**:  <br>End user Recycle bin for deleted content.  <br>End user Recycle bin for deleted Loop workspaces.|
|Audit: Version history  |**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format).|**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export).  <br><br>**Not Yet Available**:  <br>API access to Loop workspace containers - this impacts third party export and eDiscovery tools.|
|Audit: logs and events  |**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)<li>search audit logs for "loop" or "fluid"<li>further filter exported results by "SourceFileExtension":"loop" or "SourceFileExtension":"fluid"|**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)<li>search audit logs for Loop ApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`|
|Audit: log access  |**Audit** logs are retained, can be exported, and can be streamed to third party tools|**Audit** logs are retained, can be exported, and can be streamed to third party tools|
|Legal Hold and eDiscovery: Purview  |Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** review (premium only) and export (also as HTML, premium only).|Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** review (premium only) and export (also as HTML, premium only).|
|Legal Hold and eDiscovery: Export  |Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export support.|**Not Yet Available**:  <br>API access to Loop workspace containers - this impacts third party export and eDiscovery tools.|
|Legal Hold and eDiscovery: Legal Hold  |**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|
|Data Lifecycle Management: Retention policies  |**[Retention policies](/microsoft-365/compliance/retention-policies-sharepoint)** are enforced.|**[Retention policies](/microsoft-365/compliance/retention-policies-sharepoint)** configured for *all SharePoint sites* are enforced on all Loop workspaces.  <br><br>**Not Yet Available**:  <br>Retention policies that can be overridden or set individually at the Loop workspace level.|
|Data Lifecycle Management: Retention labels  |**[Retention label](/purview/retention#retention-labels)** support is available through OneDrive or SharePoint.|**Not Yet Available**:  <br>**[Retention label](/purview/retention#retention-labels)** support.|
|Data Loss Prevention, Information Protection  |**[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) rules are enforced on content.  <br><br>**Not Yet Available**:  <br>**Data Loss Prevention** (DLP) end-user policy tip support.|**[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) rules are enforced on content.  <br><br>**Not Yet Available**:  <br>**Data Loss Prevention** (DLP) end-user policy tip support.|
|Data Loss Prevention, Information Protection  |**Not Yet Available**:  <br>**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP).|**Not Yet Available**:  <br>**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP).|
|Information Barriers  |**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|
|Customer Key  |**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|



## Summary of governance, data lifecycle and compliance capabilities not yet available

This section repeats capabilities which are not yet available from the table above to make it easier to evaluate the smaller list of capabilities your organization may require before using Microsoft Loop. As denoted in the summary table, the majority of the content in this section applies to Loop workspaces only, unless **noted.

### Admin Management
- **Programmatic APIs for Loop workspace content**: API access to Loop workspace containers is not yet available. These APIs are required in order to use third party tools for export and eDiscovery, migration, communicate in bulk to end-users about their content such as compliance requirements, and developer APIs.
- **Multi-Geo** rehome of Loop workspaces and all contained .loop files is not yet available.
- When users delete an entire Loop workspace, or when they delete pages or components stored in a Loop workspace, these are not yet available in an **end-user visible Recycle bin**.
- See [Admin Management of Loop workspaces](#admin-management-of-loop-workspaces) for a more detailed list of specific admin capabilities using PowerShell and the SharePoint Admin Center.

### Data Lifecycle Management
- While Retention policies are enforced if configured at the *all SharePoint site* level, **setting or overriding the *all SharePoint sites* Retention policy on an individual Loop workspace** is not yet available.
- Retention labels are not yet available for Loop workspace content.

### Data Loss Prevention, Information Protection
- Data Loss Prevention (DLP) rules are enforced on all Loop content, but **DLP policy tips** are not yet displayed for **ANY Loop experiences.
- **Sensitivity Labeling (MIP/CLP)** is not yet supported for **ANY Loop content.

**This applies to ALL Loop content, both content stored in OneDrive or SharePoint AND content stored in Microsoft Syntex repository services.


## Admin Management of Loop workspaces

This section provides expanded information on the subset of admin management capabilities dedicated to Loop workspaces stored in Microsoft Syntex. The Loop ApplicationID which can be used to identify Loop workspace containers is: `a187e399-0c36-4b98-8f04-1edc167a0996`

### Admin Management Capabilities Available

Admins can perform the following tasks for Loop workspaces, which are containers in Microsoft Syntex repository service.
- PowerShell ability to
  - enumeration of list of Loop workspaces created
  - get container details including labels, storage, owners etc.
  - delete, recover and purge deleted Loop workspaces
  - set sharing settings at a tenant level

See more about how to use PowerShell to perform these tasks in the [Microsoft Syntex admin management documentation](/microsoft-365/syntex/powershell-syntex-intro).

### Capabilities that are Not Yet Available

- PowerShell ability to
  - list all Loop workspaces
  - add storage to enumeration list of Loop workspace
  - control external sharing of a Loop workspace
  - **Multi-Geo capabilities**, including creation of .loop files in a user's Loop workspaces in the geo that matches the user's preferred data location, and **Multi-Geo rehome** of Loop workspaces and .loop files as needed
  - delete and restore Loop workspaces
  - get and set sensitivity labels, conditional access policy, block download policy
- SharePoint Admin Center
  - Loop workspaces page for active and deleted workspaces, restore, permanently delete, sort, filter, storage information
  - search in active and deleted
  - external sharing page integration
  - bulk export
  - edit sensitivity labels
  - above quota management of Loop workspaces
  - Syntex Repository admin role integration
- End user Recycle Bin for deleted content



## Manually Initializing Microsoft Loop app for Conditional Access management in Microsoft Entra

In order to select Microsoft Loop app from the cloud app target UX in Entra Admin Center | Protection | Conditional Access | Select what this policy applies to | select apps | Microsoft Loop, manual provisioning is required.
1. [Connect to Microsoft 365 with PowerShell - Microsoft 365 Enterprise | Microsoft Learn](/microsoft-365/enterprise/connect-to-microsoft-365-powershell)
1. Copy/Paste this and hit Enter on this command:
```PowerShell
New-AzureADServicePrincipal -AccountEnabled $true -AppId a187e399-0c36-4b98-8f04-1edc167a0996 -AppRoleAssignmentRequired $true -DisplayName "Microsoft Loop app" -Tags {WindowsAzureActiveDirectoryIntegratedApp}
```



## Managing Loop in your organization

By reviewing the above information, you can make an informed decision on whether Microsoft Loop is ready for use as a software solution in your organization. As always, we will continue to update this and other documentation to provide the compliance status of Microsoft Loop to help you make the best decisions for your organization.



## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
- [Manage Loop workspace experiences in Microsoft Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration)
