---
ms.date: 06/14/2024
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
search.appverid:
- SPO160
- MET150
description: "Learn about the governance, data lifecycle management, and compliance capabilities for Loop experiences."
---

# Summary of governance, lifecycle, and compliance capabilities for Loop

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop).

## Loop Storage

Where Loop content is stored impacts the admin management, governance, data lifecycle, and compliance capabilities available. Microsoft Loop is built on top of SharePoint, OneDrive, and [SharePoint Embedded](https://techcommunity.microsoft.com/t5/sharepoint-premium-blog/announcing-sharepoint-embedded-public-preview-at-espc23/ba-p/3993428), which means that most of these capabilities work just like existing files in your ecosystem. Because Loop pages and components are files, they can be managed in a familiar way, within your existing workflows. The table should help clarify how Loop content is stored in the Microsoft ecosystem.

Where the Loop content was originally created determines its storage location:

|Loop content originally created in|️️️Loop content stored in SharePoint Embedded|Loop content stored in SharePoint Site|Loop content stored in User's OneDrive|
|-----|-----|-----|-----|
|Loop app|✔️in Loop workspace|||
|Teams channel meeting||✔️in Channel folder||
|Teams channel||✔️in Channel folder||
|Teams private chat|||✔️in Microsoft Teams Chat files folder|
|Teams private meeting|||✔️in Meetings folder|
|Outlook email message|||✔️in Attachments folder|
|OneNote for Windows or for the web|||✔️in OneNote Loop files folder|
|Whiteboard|||✔️in Whiteboard\Components folder|


## Summary table of admin management, governance, lifecycle, and compliance capabilities based on where Loop content is stored
|Category|OneDrive or SharePoint|SharePoint Embedded|
|-----|-----|-----|
|  |This column applies to Loop content:  <ul><li>Created in all other places without tightly associated collaborative storage (for example, Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ in the creator's OneDrive  <li>Created in places with dedicated shared storage (for example, Teams channels) ➡️️ SharePoint  </ul>|This column applies to Loop content:  <ul><li>Created inside the Loop app: Workspaces, Ideas ➡️ in SharePoint Embedded, one container per Loop workspace  </ul>|
|***Foundations***|---|---|
|Admin toggles  |**[Admin Toggles](/microsoft-365/loop/loop-components-configuration#available-policy-settings)** exist to turn on or off creation of and live rendering of Loop components in the Microsoft 365 ecosystem. If you enable Loop components in the Microsoft 365 ecosystem via the primary toggle, there are additional toggles to turn on or off Loop components in Outlook or Teams chats and channels. There's also an additional toggle to turn on or off Loop components for collaborative meeting notes.  <br><br>Organizations with eCommunication regulations can configure Loop components ON across the Microsoft 365 ecosystem, while turning OFF Loop components in communication tools during evaluation of Loop's data lifecycle, governance, and compliance capabilities.|**[Admin Toggle](/microsoft-365/loop/loop-workspaces-configuration)** exists to turn on or off creation of content stored in SharePoint Embedded, including Loop Ideas and new workspaces.|
|GDPR  |**GDPR** data subject requests can be serviced as part of the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|**GDPR** data subject requests can be serviced as part of the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|
|EUDB  |**EUDB** compliant - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|**EUDB** compliant - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|
|***Data Security, Devices***|---|---|
|Intune  |Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Loop app on iOS and Android.|Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Loop app on iOS and Android.|
|Conditional Access  |**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** is supported.|**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** supported.|
|Information Barriers  |**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|
|Customer Key  |**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|
|Programmatic APIs for Loop content  |Yes, they're files in OneDrive or SharePoint and all current functionality applies.| **Not Yet Available**:  <br>API access to Loop workspace containers isn't yet available. This impacts third party export and eDiscovery tools, migration tools, tools used to communicate in bulk to end-users about their content such as compliance requirements, and developer APIs.|
|***Data Lifecycle***|---|---|
|Multi-Geo  |**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities are supported, including creation of .loop files in a user's OneDrive in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices) and ability to move the user's OneDrive when their preferred data location changes.|**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities for Loop workspaces are supported using the [same mechanism as SharePoint sites](/microsoft-365/enterprise/m365-dr-workload-spo#move-a-sharepoint-site-or-sharepoint-embedded-container-site), including rehome. Manage the location of shared Loop workspaces like you would other collaboration artifacts, like SharePoint sites.  <br><br>**Not Yet Available**:  <br>Loop doesn't create user-owned workspaces. All workspaces are created as tenant-owned, in the tenant default geo.|
|User leaves organization  |When a user leaves an organization, [OneDrive retention policies](/sharepoint/retention-and-deletion) apply to the .loop files in their OneDrive just as they do to other content created by the user. See [Loop storage](#loop-storage) for more information.|Manage the lifetime of shared Loop workspaces like you would other collaboration artifacts, like SharePoint sites.  <br><br>**Not Yet Available**:  <br>Loop doesn't create user-owned workspaces. All workspaces are created as tenant-owned.|
|Loop workspaces  |n/a|See [Available](#available-admin-capabilities) and [Admin Management not yet available](#admin-management-not-yet-available).|
|Recycle bin  |End user Recycle bin for deleted content is available.|End user Recycle bin for deleted content is available in each Loop workspace.  <br><br>**Not Yet Available**:  <br>End user Recycle bin for deleted Loop workspaces.|
|Version history  |**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available.|**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) is available.  <br><br>**Not Yet Available**:  <br>[Programmatic API access to Loop workspace containers](#programmatic-apis-not-yet-available) isn't yet available.|
|Audit logs and events  |**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)<li>search audit logs for "loop" or "loot" or "fluid"<li>further filter exported results by "SourceFileExtension":"loop" or "SourceFileExtension":"loot" (templates) or "SourceFileExtension":"fluid" (deprecated)|**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>use the [compliance admin center](https://compliance.microsoft.com/auditlogsearch)<li>search audit logs for Loop ApplicationID `a187e399-0c36-4b98-8f04-1edc167a0996`</ol>Note: Loop workspaces create and update .pod files to manage content in the workspace.|
|Audit log access  |**Audit** logs are retained, can be exported, and can be streamed to third party tools|**Audit** logs are retained, can be exported, and can be streamed to third party tools|
|***eDiscovery***|---|---|
|Search, Collection, Review, Export (Purview)  |Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** supports search and collection, review (premium only), and export (premium only) as HTML or original. You can also download and reupload the files to any OneDrive to view them in their native format.<br><br>**Not Yet Available**:  <br>Full text search of content within .loop files in Purview review sets.|Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** supports search and collection, review (premium only), and export (premium only) as HTML or original. You can also download and reupload the files to any OneDrive to view them in their native format.<br><br>**Not Yet Available**:  <br>Full text search of content within .loop files in Purview review sets.|
|Export (Third Party Tools)  |Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export support.|**Not Yet Available**:  <br>[Programmatic API access to Loop workspace containers](#programmatic-apis-not-yet-available) isn't yet available.|
|Legal Hold  |**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|
|***Records Management***|---|---|
|Retention policies  |**[Retention policies](/microsoft-365/compliance/retention-policies-sharepoint)** are enforced.|**[Retention policies](/microsoft-365/compliance/retention-policies-sharepoint)** configured for *all SharePoint sites* are enforced and can be individually overridden per Loop workspace.|
|Retention labels  |**[Retention label](/purview/retention#retention-labels)** support is available through OneDrive or SharePoint.|**Not Yet Available**:  <br>**[Retention label](/purview/retention#retention-labels)** is supported, but an end-user configurable experience to view or update the retention label for on each page or component isn't yet available.|
|***Data Classification***|---|---|
|Information Protection  |**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** is available for all Loop pages and components.|**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** is available for all Loop pages and components, and admin configurable for each Loop workspace via PowerShell.  <br><br>**Not Yet Available**:  <br>**[Sensitivity Labeling](/microsoft-365/compliance/information-protection)** is configurable per Loop workspace by administrators, but not yet configurable in the Loop app by end users on each Loop workspace.|
|Data Loss Prevention  |**[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.|**[Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.|



## Summary of governance, data lifecycle, and compliance capabilities **not yet available**

### Available admin capabilities

For detailed information on existing capabilities in SharePoint Admin Center and PowerShell:
  - Available: [Manage SharePoint Embedded containers in SharePoint Admin Center](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctaux)
  - Available: [SharePoint Embedded container management in PowerShell](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctapowershell)

### Not yet available

The following sections detail capabilities that are **not yet available** for Microsoft Loop to make it easier to evaluate the smaller list of capabilities your organization might require before using Microsoft Loop. As denoted in the summary table, the content applies to Loop workspaces only.

### Programmatic APIs not yet available
- **Programmatic APIs for Loop workspace content**: API access to Loop workspace containers isn't yet available. These APIs are required in order to use third party tools for export and eDiscovery, migration, communicating in bulk to end-users about their content such as compliance requirements, and developer APIs.

### Admin Management not yet available

- When users delete an entire Loop workspace, that Loop workspace isn't available in an **end-user visible Recycle bin**. Furthermore, restoring the Loop workspace using admin tooling doesn't update in the Loop app user experience. The user would need to visit a saved page link for a restored workspace in order to see it again.
- When an **admin deletes** a Loop workspace, it **will not be removed from the user's view** of Loop workspaces. When users click on the deleted Loop workspace, it displays an error.
- When an **admin modifies the list of owners or members** of a Loop workspace through the SharePoint Admin Center or via PowerShell, the **changes won't be visible to the users within that Loop workspace**. Changes to the workspace membership are only updated in the user's view of the Loop app if they're made directly within the Loop app itself.
- All Loop workspaces are created as tenant-owned, in the tenant default geo. Loop doesn't create **user-owned workspace types**, so when an employee leaves the organization, their non-shared Loop workspaces such as Ideas become ownerless, remain in the tenant, and aren't automatically deleted.
- **Individual controls for guest or external sharing** of a specific Loop workspace isn't available.

### eDiscovery Purview capabilities not yet available
- Full text search of content within .loop files in Purview review sets.

### Records Management not yet available
- Retention labels aren't yet available for Loop workspace content.

### Data Classification not yet available
- While sensitivity labels can be configured on each Loop page or component, **Sensitivity Labels** can't be configured at the Loop workspace level. An admin can set the Loop workspace sensitivity label using PowerShell and the workspace sensitivity label is viewable in the SharePoint Embedded admin center.


## Managing Loop in your organization

By reviewing this information, you can make an informed decision on whether Microsoft Loop is ready for use as a software solution in your organization. As always, we continue to update this and other documentation to provide the compliance status of Microsoft Loop to help you make the best decisions for your organization.



## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
- [Manage Loop workspace experiences in SharePoint Embedded](/microsoft-365/loop/loop-workspaces-configuration)
