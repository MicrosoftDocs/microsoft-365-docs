---
ms.date: 10/16/2024
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

As a Compliance Manager or IT administrator, it's crucial to stay up-to-date on the latest governance, data lifecycle, and compliance posture for the software solutions being used in your organization. This article details the capabilities available and not available yet for [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop).

## Summary table of admin management, governance, lifecycle, and compliance capabilities based on where Loop content is stored

|Category|OneDrive or SharePoint|SharePoint Embedded|
|-----|-----|-----|
|  |This column applies to Loop content:  <ul><li>Created in all other places without tightly associated collaborative storage (for example, Teams chat, Outlook email, Word for the web, Whiteboard) ➡️️ in the creator's OneDrive  <li>Created in places with dedicated shared storage (for example, Teams channels) ➡️️ SharePoint  </ul>|This column applies to Loop content:  <ul><li>Created inside the Loop app: Workspaces, Ideas ➡️ in SharePoint Embedded, one container per Loop workspace  </ul>|
|***Foundations***|---|---|
|Admin toggles  |**[Admin Toggles](/microsoft-365/loop/loop-components-configuration#available-policy-settings)** exist to turn on or off creation of and live rendering of Loop components in the Microsoft 365 ecosystem. If you enable Loop components in the Microsoft 365 ecosystem via the primary toggle, there are additional toggles to turn on or off Loop components in Outlook or Teams chats and channels. There's also an additional toggle to turn on or off Loop components for collaborative meeting notes.|**[Admin Toggle](/microsoft-365/loop/loop-workspaces-configuration)** exists to turn on or off creation of content stored in SharePoint Embedded, including Loop Ideas and new workspaces.|
|GDPR  |**GDPR** data subject requests can be serviced as part of the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|**GDPR** data subject requests can be serviced as part of the [Microsoft Purview portal](/compliance/regulatory/gdpr-data-subject-requests#data-subject-request-admin-tools) and [Purview eDiscovery workflows](/purview/ediscovery)|
|EUDB  |**EUDB** compliant - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|**EUDB** compliant - [What is the EU Data Boundary?](/privacy/eudb/eu-data-boundary-learn)|
|***Data Security, Devices***|---|---|
|Intune  |Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Loop app on iOS and Android.|Basic **Intune** [Device Management Support](/mem/intune/remote-actions/device-management) exists for Loop app on iOS and Android.|
|Conditional Access  |**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** is supported.|**[Conditional Access](/sharepoint/control-access-from-unmanaged-devices)** supported.|
|Information Barriers  |**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|**[Information Barriers](/purview/information-barriers-sharepoint)** are enforced.|
|Customer Key  |**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|**[Customer Lockbox](/purview/customer-lockbox-requests)** is supported.|
|Programmatic APIs for Loop content  |Yes, they're files in OneDrive or SharePoint and all current functionality applies.|Guest app access to Loop workspace containers is available. This enables third party export and eDiscovery tools, migration tools, tools used to communicate in bulk to end-users about their content such as compliance requirements, and developer APIs. Use PowerShell to [Get](/powershell/module/sharepoint-online/get-spoapplication) and [Set](/powershell/module/sharepoint-online/set-spoapplicationpermission) guest app permissions.|
|***Data Lifecycle***|---|---|
|Multi-Geo  |**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities are supported, including creation of .loop files in a user's OneDrive in the geo that matches the user's [preferred data location](/microsoft-365/enterprise/plan-for-multi-geo#best-practices) and ability to move the user's OneDrive when their preferred data location changes.|**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities for Loop workspaces are supported using the [same mechanism as SharePoint sites](/microsoft-365/enterprise/m365-dr-workload-spo#move-a-sharepoint-site-or-sharepoint-embedded-container-site), including rehome and creation in the tenant's default geo. Manage the location of shared Loop workspaces like you would other collaboration artifacts, like SharePoint Communication sites.  <br><br>**[Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)** capabilities for Copilot Pages are supported. Copilot Pages is a user-owned workspace, and is created in the geo that matches the user's preferred data location.  <br><br>**Not Yet Available**:  <br>Shared workspaces aren't yet created in the user's preferred data location, they're instead created in the tenant's default geo, like SharePoint Communication sites are.|
|User leaves organization  |When a user leaves an organization, [OneDrive retention policies](/sharepoint/retention-and-deletion) apply to the .loop files in their OneDrive just as they do to other content created by the user. See [Loop storage](/microsoft-365/loop/loop-workspaces-storage-permission#storage-management-after-user-departure) for more information.|Manage the lifetime of shared Loop workspaces like you would other collaboration artifacts, like SharePoint sites.</br></br>Manage the lifetime of user-owned personal Loop workspaces like Copilot Pages, like you would manage the user's OneDrive. See [Loop storage](/microsoft-365/loop/loop-workspaces-storage-permission#storage-management-after-user-departure) for more information.|
|Loop workspaces  |n/a|See [Available](#available-admin-capabilities) and [Admin Management not yet available](#admin-management-not-yet-available).|
|Recycle bin  |End user Recycle bin for deleted content is available.|End user Recycle bin for deleted content is available in each Loop workspace.  <br><br>**Not Yet Available**:  <br>End user Recycle bin for deleted Loop workspaces.|
|Version history  |**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available. Loop files in OneDrive or SharePoint follow the same file versioning settings as other files.|**Version History** [export in Purview](/purview/ediscovery-export-search-results#step-1-prepare-search-results-for-export) or via [Graph API](/graph/api/driveitem-get-content-format) is available. Loop files in SharePoint Embedded are configured at 50 versions and no admin setting is available to change this.|
|Quota  |Loop files in their OneDrive and SharePoint locations follow the quotas of those storage containers.  |One Loop workspace corresponds to one SharePoint Embedded container. Loop SharePoint Embedded containers have no default storage limit, they accrue to the overall storage limits for SharePoint storage quota in the tenant. See [storage quota](/microsoft-365/loop/loop-workspaces-storage-permission#loop-apps-usage-of-organizations-storage-quota) for more information. There's no admin setting available to set storage quotas per SharePoint Embedded container.|
|Audit logs and events  |**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations  <ol><li>Use the [Microsoft Purview portal](https://purview.microsoft.com/auditlogsearch)<li>Search audit logs for "loop" or "loot" or "fluid"<li>Further filter exported results by "SourceFileExtension":"loop" or "SourceFileExtension":"loot" (templates) or "SourceFileExtension":"fluid" (deprecated)|**Audit** logs for all events: search and export Microsoft 365 service events for security and compliance investigations <ol><li>Use the [Microsoft Purview portal](https://purview.microsoft.com/auditlogsearch)<li>Search audit logs for Loop Web Application ID `a187e399-0c36-4b98-8f04-1edc167a0996` and Loop Mobile Application ID `0922ef46-e1b9-4f7e-9134-9ad00547eb41`</ol>Note: Loop workspaces create and update .pod files to manage content in the workspace.|
|Audit log access  |**Audit** logs are retained, can be exported, and can be streamed to third party tools|**Audit** logs are retained, can be exported, and can be streamed to third party tools|
|***eDiscovery***|---|---|
|Search, Collection, Review, Export (Purview)  |Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** supports search and collection, review (premium license required for admin), and export (premium license required for admin) as HTML or original. You can also download and reupload the files to any OneDrive to view them in their native format.<br><br>**Not Yet Available**:  <br>Full text search of content within .loop files in Purview review sets.|Microsoft **[Purview eDiscovery](/microsoft-365/loop/loop-components-teams#do-loop-and-fluid-files-support-ediscovery)** supports search and collection, review (premium license required for admin), and export (premium license required for admin) as HTML or original. You can also download and reupload the files to any OneDrive to view them in their native format.<br><br>**Not Yet Available**:  <br>Full text search of content within .loop files in Purview review sets.|
|Export (Third Party Tools)  |Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export support.|Microsoft **[Graph API](/graph/api/driveitem-get-content-format)** export support.  <br><br>Use [Get-SPOApplication](/powershell/module/sharepoint-online/get-spoapplication) to view guest application permissions.  <br>Use [Set-SPOApplication](/powershell/module/sharepoint-online/set-spoapplicationpermission) to manage guest application permissions.|
|Legal Hold  |**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|**Legal Hold** support to ensure content isn't deleted (as related to litigation and security investigations) and stored in the [Preservation Hold Library](/sharepoint/governance/ediscovery-and-in-place-holds-in-sharepoint-server).|
|***Microsoft 365 retention and deletion***|---|---|
|Retention policies  |**[Retention policies](/purview/create-retention-policies?tabs=other-retention)** from Microsoft Purview Data Lifecycle Management are enforced for all .loop files.|**[Retention policies](/purview/create-retention-policies?tabs=other-retention)** from Microsoft Purview Data Lifecycle Management configured for all SharePoint sites are enforced for all .loop files or alternatively can be configured per Loop workspace *.|
|Retention labels  |**[Retention labels](/purview/retention#retention-labels)** from Microsoft Purview Data Lifecycle Management and Microsoft Purview Records Management are supported for .loop files by [applying published labels](/purview/create-apply-retention-labels?tabs=spo-onedrive) in OneDrive or SharePoint, or [automatically applying](/purview/apply-retention-labels-automatically) the labels.| **[Retention labels](/purview/retention#retention-labels)** from Microsoft Purview Data Lifecycle Management and Microsoft Purview Records Management are supported for .loop files by [applying published labels](/purview/create-apply-retention-labels?tabs=spo-onedrive) in SharePoint, or [automatically applying](/purview/apply-retention-labels-automatically) the labels. <br><br> **Not Yet Available**: <br> Records management isn't yet available to view or apply on a Loop component or page.|
|***Information Protection***|---|---|
|Sensitivity labels  |**[Sensitivity labeling](/purview/sensitivity-labels-loop)** is available for Loop pages and components.|**[Sensitivity labeling](/purview/sensitivity-labels-loop)** is available for Loop pages and components, and admin configurable for individual Loop workspaces via PowerShell and rolling out in the Loop app for end users.|
|Data Loss Prevention  |**[Data Loss Prevention](/purview/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.|**[Data Loss Prevention](/purview/dlp-learn-about-dlp)** (DLP) rules are enforced on content with end-user policy tip support.|

<a name="loop-workspace-url"></a>
<sup>\*</sup> If you need to specify an individual Loop workspace for a retention policy or another compliance feature, specify the workspace as you would a SharePoint site, by its URL. To locate this URL, sign in to the SharePoint admin center with the [SharePoint Embedded administrator role](/sharepoint/dev/embedded/concepts/admin-exp/adminrole). Then navigate to **Containers** > **Active containers** or **Deleted containers** where you can view the details of a selected Loop workspace. From the flyout pane, **General** tab, copy the container URL.

## Summary of governance, data lifecycle, and compliance capabilities **not yet available**

### Available admin capabilities

For detailed information on existing capabilities in SharePoint Admin Center and PowerShell:
  - Available: [Manage SharePoint Embedded containers in SharePoint Admin Center](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctaux)
  - Available: [SharePoint Embedded container management in PowerShell](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/ctapowershell)

### Not yet available

The following sections detail capabilities that are **not yet available** for Microsoft Loop to make it easier to evaluate the smaller list of capabilities your organization might require before using Microsoft Loop. As denoted in the summary table, the content applies to Loop workspaces only.

### Admin Management not yet available

- When users delete an entire Loop workspace, that Loop workspace isn't available in an **end-user visible Recycle bin**. Furthermore, restoring the Loop workspace using admin tooling doesn't update in the Loop app user experience. The user would need to visit a saved page link for a restored workspace in order to see it again. Microsoft Roadmap ID 421615 addresses this.
- When an **admin deletes** a Loop workspace, it **will not be removed from the user's view** of Loop workspaces. When users click on the deleted Loop workspace, it displays an error. Microsoft Roadmap ID 421613 addresses this.
- When an **admin modifies the list of owners or members** of a Loop workspace through the SharePoint Admin Center or via PowerShell, the **changes won't be visible to the users within that Loop workspace**. Changes to the workspace membership are only updated in the user's view of the Loop app if they're made directly within the Loop app itself. Microsoft Roadmap ID 421613 addresses this.
- All shared Loop workspaces, including Ideas, are created as tenant-owned, in the tenant default geo like SharePoint Communication sites, not in the creator's preferred data location. Copilot Pages is created as user-owned, in the geo that matches the user's preferred data location. See [storage management after user departure](/microsoft-365/loop/loop-workspaces-storage-permission#storage-management-after-user-departure) for more information on managing workspaces. Microsoft Roadmap ID 422729 addresses Ideas functioning as a shared Loop workspace.
- **Individual controls for guest or external sharing** of a specific Loop workspace isn't available. Microsoft Roadmap ID 421614 addresses this.

### eDiscovery capabilities not yet available

- Full text search of content within .loop files in review sets.

### Microsoft 365 retention and deletion capabilities not available

- Retention labels can be applied to Loop components and pages by opening them in a browser tab on loop.cloud.microsoft. However, using records management (such as a record or regulatory record) isn't yet available to view or apply on a component or page.
- For clarification only, not a limitation: retention labels have never been applied to containers like SharePoint sites or Loop workspaces; instead, use retention policies for these containers. See [retention](/purview/retention) to learn more.

## Managing Loop in your organization

By reviewing this information, you can make an informed decision on whether Microsoft Loop is ready for use as a software solution in your organization. As always, we continue to update this and other documentation to provide the compliance status of Microsoft Loop to help you make the best decisions for your organization.

## Related articles

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
- [Loop admin policies for Loop components and Loop workspaces](/microsoft-365/loop/loop-components-configuration)
