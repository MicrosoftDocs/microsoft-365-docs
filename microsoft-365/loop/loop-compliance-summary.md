---
ms.date: 08/21/2023
title: "Summary of governance, lifecycle and compliance capabilities for Loop experiences"
ms.reviewer: dancost, tonchan
ms.author: jtremper
author: jacktremper
manager: pamgreen
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
- essentials-compliance
search.appverid:
- SPO160
- MET150
description: "Learn about the governance, data lifecycle management and compliance capabilities for Loop experiences."
---

# Summary of governance, lifecycle and compliance capabilities for Loop - NEW

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop).

## Loop Storage

Where Loop content is stored impacts the admin management, governance, data lifecycle, and compliance capabilities available. Microsoft Loop is built on top of SharePoint, OneDrive, and [SharePoint Embedded](https://techcommunity.microsoft.com/t5/sharepoint-premium-blog/announcing-sharepoint-embedded-public-preview-at-espc23/ba-p/3993428), which means that most of these capabilities work just like existing files in your ecosystem. Because Loop pages and components are files, they can be managed in a familiar way, within your existing workflows. To help you understand how Loop content is stored in the Microsoft ecosystem, here's a high-level diagram:

:::image type="content" source="media/loop-files-sharepoint.png" alt-text="Diagram showing that the place a Loop file is stored depends on where it was originally created.":::

Where the loop content was originally created determines its storage location:
- Created in the Loop app ➡️️ SharePoint Embedded
- Created outside the Loop app in places that have dedicated shared storage (e.g. Teams channels) ➡️️ SharePoint
- Created outside the Loop app in all other places that don't have tightly associated collaborative storage (e.g. Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ OneDrive



## Summary table of admin management, governance, lifecycle and compliance capabilities based on where Loop content is stored
|Category|OneDrive or SharePoint|SharePoint Embedded|
|-----|-----|-----|
|  |This column applies to Loop content:  <ul><li>Created in all other places that don't have tightly associated collaborative storage (e.g. Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ in the creator's OneDrive  <li>Created in places that have dedicated shared storage (e.g. Teams channels) ➡️️ SharePoint  </ul>|This column applies to Loop content:  <ul><li>Created inside the Loop app: Workspaces, Ideas ➡️ in SharePoint Embedded, one container per Loop workspace  </ul>|
|***Foundations***|---|---|
|Admin toggles  |**[Admin Toggles](/microsoft-365/loop/loop-components-configuration#available-policy-settings)** exist to turn on/off creation of and live rendering of Loop components in the Microsoft 365 ecosystem. If you enable Loop components in the Microsoft 365 ecosystem (the primary toggle), there are also a separate toggles to turn on/off Loop components specifically in Outlook or Teams chats and channels, and a toggle to turn on/off Loop components for collaborative meeting notes.  <br><br>Organizations with eCommunication regulations can choose to leave Loop components on across the Microsoft 365 ecosystem, but use the independent toggles for communication tools while evaluating the data lifecycle, governance, and compliance capabilities listed in this table.|**[Admin Toggle](/microsoft-365/loop/loop-workspaces-configuration)** exists to turn on/off creation of content stored in SharePoint Embedded. This includes controlling creation of Loop Ideas and creation of new workspaces.|
|GDPR  |**GDPR** data subject requests can be serviced as part of the [Security and Compliance admin center](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|**GDPR** data subject requests can be serviced as part of the [Security and Compliance admin center](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|
|EUDB  |**EUDB** compliant - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|**EUDB** compliant - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|
|***Data Security, Devices***|---|---|
|Intune  |Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Loop app on iOS and Android.|Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Loop app on iOS and Android.|
|Conditional Access  |**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** is supported. See [manual initialization](#manually-initializing-microsoft-loop-app-for-conditional-access-management-in-microsoft-entra) for Microsoft Entra support.|**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** supported. See [manual initialization](#manually-initializing-microsoft-loop-app-for-conditional-access-management-in-microsoft-entra) for Microsoft Entra support.|
|Information Barriers  |**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|
|Customer Key  |**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|
|Programmatic APIs for Loop content  |Yes, they're files in OneDrive or SharePoint and all current functionality applies.| **Not Yet Available**:  <br>API access to Loop workspace containers is not yet available. This impacts third party export and eDiscovery tools, migration tools, tools used to communicate in bulk to end-users about their content such as compliance requirements, and developer APIs.|
|***Data Lifecycle***|---|---|
|Multi-Geo  |**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities are supported, including creation of .loop files in a user's OneDrive in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices) and ability to move the user's OneDrive when their preferred data location changes.|**Not Yet Available**:  <br>**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities, including creation of .loop files in a user's Loop workspaces in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices), are not yet supported.  <br>**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** rehome of Loop workspaces and contained .loop files as needed is not yet supported.|
|User leaves organization  |When a user leaves an organization, [OneDrive retention policies](/sharepoint/retention-and-deletion) apply to the .loop files in their OneDrive just as they do to other content created by the user. See [Loop storage](#loop-storage) for more information.|Manage the lifetime of shared Loop workspaces like you would other collaboration artifacts, like SharePoint sites or Teams channels.|
|Loop workspaces  |n/a|See [Available](#available-admin-capabilities) and [Admin Management not yet available](#admin-management-not-yet-available).|
|Recycle bin  |End user Recycle bin for deleted content is available.|End user Recycle bin for deleted content is available in each Loop workspace.  <br><br>**Not Yet Available**:  <br>End user Recycle bin for deleted Loop workspaces.|
|Version history  |**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available.|**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) is available.  <br><br>**Not Yet Available**:  <br>[Programmatic API access to Loop workspace containers](#programmatic-apis-not-yet-available) is not yet available.|
|Audit logs and events  |**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)<li>search audit logs for "loop" or "loot" or "fluid"<li>further filter exported results by "SourceFileExtension":"loop" or "SourceFileExtension":"loot" (templates) or "SourceFileExtension":"fluid" (deprecated)|**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)<li>search audit logs for Loop ApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`</ol>Note: Loop workspaces create and update .pod files to manage content in the workspace.|
|Audit log access  |**Audit** logs are retained, can be exported, and can be streamed to third party tools|**Audit** logs are retained, can be exported, and can be streamed to third party tools|
|***eDiscovery***|---|---|
|Search and Collection  |Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** supports search and collection, review (premium only), and export (premium only) as HTML or original. You can also download and re-upload the files to any OneDrive to view them in their native format.|Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** supports search and collection, review (premium only), and export (premium only) as HTML or original. You can also download and re-upload the files to any OneDrive to view them in their native format.|
|Export  |Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export support.|**Not Yet Available**:  <br>[Programmatic API access to Loop workspace containers](#programmatic-apis-not-yet-available) is not yet available.|
|Legal Hold  |**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|
|***Records Management***|---|---|
|Retention policies  |**[Retention policies](/microsoft-365/compliance/retention-policies-sharepoint)** are enforced.|**[Retention policies](/microsoft-365/compliance/retention-policies-sharepoint)** configured for *all SharePoint sites* are enforced on all Loop workspaces.  <br><br>**Not Yet Available**:  <br>Retention policies that can be overridden or set individually at the Loop workspace level are not yet available.|
|Retention labels  |**[Retention label](/purview/retention#retention-labels)** support is available through OneDrive or SharePoint.|**Not Yet Available**:  <br>**[Retention label](/purview/retention#retention-labels)** is supported, but an end-user configurable experience to view or update the retention label for on each page or component is not yet available.|
|***Data Classification***|---|---|
|Information Protection  |**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP) is available for all Loop pages and components.|**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP) is available for all Loop pages and components, and admin configurable for each Loop workspace via PowerShell.  <br><br>**Not Yet Available**:  <br>**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** (MIP) is configurable per Loop workspace by administrators, but not yet configurable in the Loop app by end users on each Loop workspace.|
|Data Loss Prevention  |**[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.|**[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.|



## Summary of governance, data lifecycle and compliance capabilities **not yet available**

### Available admin capabilities

For detailed information on existing capabilities in SharePoint Admin Center and PowerShell:
  - Available: [Manage SharePoint Embedded containers in SharePoint Admin Center](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctaux)
  - Available: [SharePoint Embedded container management in PowerShell](sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctapowershell)

### Not Yet Available

The following sections detail capabilities which are **not yet available** for Microsoft Loop to make it easier to evaluate the smaller list of capabilities your organization might require before using Microsoft Loop. As denoted in the summary table, the content applies to Loop workspaces only.

### Programmatic APIs not yet available
- **Programmatic APIs for Loop workspace content**: API access to Loop workspace containers isn't yet available. These APIs are required in order to use third party tools for export and eDiscovery, migration, communicating in bulk to end-users about their content such as compliance requirements, and developer APIs.

### Admin Management not yet available
- **Multi-Geo** rehome of Loop workspaces and all contained .loop files isn't available. All Loop workspaces are created in the tenant default geo.
- When users delete an entire Loop workspace, these aren't available in an **end-user visible Recycle bin** and restoring the workspace using admin tooling will not update in the Loop app user experience. The user would need to visit a saved page link for a workspace that's restored in order to see it again.
- When an **admin deletes** a Loop workspace, it **will not be removed from the user's view** of Loop workspaces. When users click on the deleted Loop workspace, it will display an error.
- **Individual controls for guest or external sharing** of a specific Loop workspace isn't available.
- Get and set **conditional access policy** and **block download policy** tenant defaults are available. Individual controls per Loop workspace for these capabilities are not available.

### Records Management not yet available
- While Retention policies are enforced if configured at the *all SharePoint site* level, **setting or overriding the *all SharePoint sites* Retention policy on an individual Loop workspace** isn't yet available.
- Retention labels aren't yet available for Loop workspace content.

### Data Classification not yet available
- **Sensitivity Labeling (MIP/CLP)** cannot be configured at the Loop workspace level by end users within the Loop app. It can be set using PowerShell per Loop workspace and viewed in the SharePoint Embedded admin center.


## Manually Initializing Microsoft Loop app for Conditional Access management in Microsoft Entra

In order to select Microsoft Loop app from the cloud app target UX in the Microsoft Entra admin center | Protection | Conditional Access | Select what this policy applies to | select apps | Microsoft Loop, manual provisioning is required.

1. [Connect to Microsoft 365 with PowerShell - Microsoft 365 Enterprise | Microsoft Learn](/microsoft-365/enterprise/connect-to-microsoft-365-powershell)
1. Copy/Paste this and hit Enter on this command:

   ```PowerShell
   New-AzureADServicePrincipal -AccountEnabled $true -AppId a187e399-0c36-4b98-8f04-1edc167a0996 -AppRoleAssignmentRequired $false -DisplayName "Microsoft Loop app" -Tags {WindowsAzureActiveDirectoryIntegratedApp}
   ```


## Managing Loop in your organization

By reviewing the above information, you can make an informed decision on whether Microsoft Loop is ready for use as a software solution in your organization. As always, we will continue to update this and other documentation to provide the compliance status of Microsoft Loop to help you make the best decisions for your organization.



## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
- [Manage Loop workspace experiences in SharePoint Embedded](/microsoft-365/loop/loop-workspaces-configuration)
