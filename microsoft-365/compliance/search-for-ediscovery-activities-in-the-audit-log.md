---
title: "Search for eDiscovery activities in the audit log"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 67cc7f42-a53d-4751-b929-6005c80798f7
description: Learn what events are logged when users assigned eDiscovery permissions perform Content Search and Core eDiscovery tasks in the Security & Compliance Center.
ms.custom: seo-marvel-apr2020
---

# Search for eDiscovery activities in the audit log

Content Search and eDiscovery-related activities (for Core eDiscovery and Advanced eDiscovery) that are performed in Security & Compliance Center or by running the corresponding PowerShell cmdlets are logged in the audit log. Events are logged when administrators or eDiscovery managers (or any user assigned eDiscovery permissions) perform the following Content Search and Core eDiscovery tasks in the Security & Compliance Center:
  
- Creating and managing Core and Advanced eDiscovery cases

- Creating, starting, and editing Content Searches

- Performing Content Search actions, such as previewing, exporting, and deleting search results

- Managing custodians and review sets in Advanced eDiscovery

- Configuring permissions filtering for Content Search

- Managing the eDiscovery Administrator role

> [!IMPORTANT]
> The activities described in this article are only the result of eDiscovery tasks performed by using the Security & Compliance Center. eDiscovery tasks that were performed by using the In-Place eDiscovery tool in Exchange Online or the eDiscovery Center in SharePoint Online aren't included. 
  
For more information about searching the audit log, the permissions that are required, and exporting search results, see [Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md).
  
## How to search for and view eDiscovery activities

Currently, you have to do a few specific things to view eDiscovery activities in the audit log. Here's how.
  
1. Go to [https://protection.office.com](https://protection.office.com).

2. Sign in using your work or school account.

3. In the left pane, click **Search**, and then click **Audit log search**.

4. In the **Activities** drop-down list, under **eDiscovery activities** or **Advanced eDiscovery activities**, click one or more activities to search for.

    > [!NOTE]
    > The **Activities** drop-down list also includes a group of activities named **eDiscovery cmdlet activities** that will return records from the cmdlet audit log.
  
5. Select a date and time range to display eDiscovery events that occurred within that period. 

6. In the **Users** box, select one or more users to display search results for. Leave this box blank to return entries for all users.

7. Click **Search** to run the search using your search criteria.

8. After the search results are displayed, you can click **Filter results** to filter or sort the resulting activity records. Unfortunately, you can't use filtering to explicitly exclude certain activities. 

9. To view details about an activity, click the activity record in the list of search results. 

    A **Details** fly out page is displayed that contains the detailed properties from the event record. To display additional details, click **More information**. For a description of these properties, see the [Detailed properties for eDiscovery activities](#detailed-properties-for-ediscovery-activities) section.

10. If desired, you can export the audit log search results to a CSV file, and then use the Excel Power Query feature to format and filter these records. For more information, see [Export, configure, and view audit log records](export-view-audit-log-records.md).

## eDiscovery activities

The following table describes the Content Search and Core eDiscovery activities that are logged when an administrator or eDiscovery manager performs an eDiscovery-related activity using the Security & Compliance Center or running the corresponding cmdlet in Security & Compliance Center PowerShell. Note also that some activities performed in Advanced will be returned when you search for activities in this list.
  
> [!NOTE]
> The eDiscovery activities described in this section provide similar information to the eDiscovery cmdlet activities described in the next section. We recommend that you use the eDiscovery activities described in this section because they will appear in the audit log search results within 30 minutes. It takes up to 24 hours for the eDiscovery cmdlet activities to appear in audit log search results. 
  
|**Friendly name**|**Operation**|**Corresponding cmdlet**|**Description**|
|:-----|:-----|:-----|:-----|
|Added member to eDiscovery case  <br/> |CaseMemberAdded  <br/> |Add-ComplianceCaseMember  <br/> |A user was added as a member of an eDiscovery case. As a member of a case, a user can perform various case-related tasks depending on whether they have been assigned the necessary permissions.  <br/> |
|Changed content search  <br/> |SearchUpdated  <br/> |Set-ComplianceSearch  <br/> |An existing content search was changed. Changes can include adding or removing content locations or editing the search query.  <br/> |
|Changed eDiscovery administrator membership  <br/> |CaseAdminUpdated  <br/> |Update-eDiscoveryCaseAdmin  <br/> |The list of eDiscovery Administrators in your organization was changed. This activity is logged when the list of eDiscovery Administrators is replaced with a group of new users. If a single user is added or removed, the CaseAdminAdded operation is logged.  <br/> |
|Changed eDiscovery case  <br/> |CaseUpdated  <br/> |Set-ComplianceCase  <br/> |An eDiscovery case was changed. Changes include closing an open case or reopening a closed case.  <br/> |
|Changed eDiscovery case membership  <br/> |CaseMemberUpdated  <br/> |Update-ComplianceCaseMember  <br/> |The membership list of an eDiscovery case was changed. This activity is logged when all members are replaced with a group of new users. If a single member is added or removed, CaseMemberAdded or CaseMemberRemoved operation is logged.  <br/> |
|Changed search permissions filter  <br/> |SearchPermissionUpdated  <br/> |Set-ComplianceSecurityFilter  <br/> |A search permissions filter was changed.  <br/> |
|Changed search query for eDiscovery case hold  <br/> |HoldUpdated  <br/> |Set-CaseHoldRule  <br/> |A query-based hold associated with an eDiscovery case was changed. Possible changes include editing the query or date range for a query-based hold.  <br/> |
|Content search preview item downloaded  <br/> |PreviewItemDownloaded  <br/> |N/A  <br/> |A user downloaded an item to their local computer (by clicking the **Download original item** link) when previewing search results.  <br/> |
|Content search preview item listed  <br/> |PreviewItemListed  <br/> |N/A  <br/> |A user clicked **Preview search results** to display the preview search results page, which lists up to 1000 items from the results of a Content Search.  <br/> |
|Content search preview item viewed  <br/> |PreviewItemRendered  <br/> |N/A  <br/> |An eDiscovery manager viewed an item by clicking it when previewing search results.  <br/> |
|Created content search  <br/> |SearchCreated  <br/> |New-ComplianceSearch  <br/> |A new content search was created.  <br/> |
|Created eDiscovery administrator  <br/> |CaseAdminAdded  <br/> |Add-eDiscoveryCaseAdmin  <br/> |A user was added as an eDiscovery Administrator in the organization.  <br/> |
|Created eDiscovery case  <br/> |CaseAdded  <br/> |New-ComplianceCase  <br/> |An eDiscovery case was created. When a case is created, you only have to give it a name. Other case-related tasks such as adding members, creating holds, and creating content searches associated with the case result in additional events being logged.  <br/> |
|Created search permissions filter  <br/> |SearchPermissionCreated  <br/> |New-ComplianceSecurityFilter  <br/> |A search permissions filter was created.  <br/> |
|Created search query for eDiscovery case hold  <br/> |HoldCreated  <br/> |New-CaseHoldRule  <br/> |A query-based hold associated with an eDiscovery case was created.  <br/> |
|Deleted content search  <br/> |SearchRemoved  <br/> |Remove-ComplianceSearch  <br/> |An existing content search was deleted.  <br/> |
|Deleted eDiscovery administrator  <br/> |CaseAdminRemoved  <br/> |Remove-eDiscoveryCaseAdmin  <br/> |An eDiscovery Administrator was deleted from your organization.  <br/> |
|Deleted eDiscovery case  <br/> |CaseRemoved  <br/> |Remove-ComplianceCase  <br/> |An eDiscovery case was deleted. Any hold associated with the case has to be removed before the case can be deleted.  <br/> |
|Deleted search permissions filter  <br/> |SearchPermissionRemoved  <br/> |Remove-ComplianceSecurityFilter  <br/> |A search permissions filter was deleted.  <br/> |
|Deleted search query for eDiscovery case hold  <br/> |HoldRemoved  <br/> |Remove-CaseHoldRule  <br/> |A query-based hold associated with an eDiscovery case was deleted. Removing the query from the hold is often the result of deleting a hold. When a hold or a hold query is deleted, the content locations that were on hold are released.  <br/> |
|Downloaded export of content search  <br/> |SearchExportDownloaded  <br/> |N/A  <br/> |A user downloaded the results of a content search to their local computer. A **Started export of content search** activity has to be initiated before search results can be downloaded.  <br/> |
|Previewed results of content search  <br/> |SearchPreviewed  <br/> |N/A  <br/> |A user previewed the results of a content search.  <br/> |
|Purged results of content search  <br/> |SearchResultsPurged  <br/> |New-ComplianceSearchAction  <br/> |A user purged the results of a Content Search by running the **New-ComplianceSearchAction -Purge** command.  <br/> |
|Removed analysis of content search  <br/> |RemovedSearchResultsSentToZoom  <br/> |Remove-ComplianceSearchAction  <br/> |A content search prepare action (to prepare search results for Advanced eDiscovery) was deleted. If the preparation action was less than two weeks old, the search results that were prepared for Advanced eDiscovery were deleted from the Microsoft Azure storage area. If the preparation action was older than 2 weeks, then this event indicates that only the corresponding preparation action was deleted.  <br/> |
|Removed export of content search  <br/> |RemovedSearchExported  <br/> |Remove-ComplianceSearchAction  <br/> |A content search export action was deleted. If the export action was less than two weeks old, the search results that were uploaded to the Microsoft Azure storage area were deleted. If the export action was older than 2 weeks, then this event indicates that only the corresponding export action was deleted.  <br/> |
|Removed member from eDiscovery case  <br/> |CaseMemberRemoved  <br/> |Remove-ComplianceCaseMember  <br/> |A user was removed as a member of an eDiscovery case.  <br/> |
|Removed preview results of content search  <br/> |RemovedSearchPreviewed  <br/> |Remove-ComplianceSearchAction  <br/> |A content search preview action was deleted.  <br/> |
|Removed purge action performed on content search  <br/> |RemovedSearchResultsPurged  <br/> |Remove-ComplianceSearchAction  <br/> |A content search purge action was deleted.  <br/> |
|Removed search report  <br/> |SearchReportRemoved  <br/> |Remove-ComplianceSearchAction  <br/> |A content search export report action was deleted.  <br/> |
|Started analysis of content search  <br/> |SearchResultsSentToZoom  <br/> |New-ComplianceSearchAction  <br/> |The results of a content search were prepared for analysis in Advanced eDiscovery.  <br/> |
|Started content search  <br/> |SearchStarted  <br/> |Start-ComplianceSearch  <br/> |A content search was started. When you create or change a content search by using the Security & Compliance Center GUI, the search is automatically started. If you create or change a search by using the **New-ComplianceSearch** or **Set-ComplianceSearch** cmdlet, you have to run the **Start-ComplianceSearch** cmdlet to start the search.  <br/> |
|Started export of content search  <br/> |SearchExported  <br/> |New-ComplianceSearchAction  <br/> |A user exported the results of a content search.  <br/> |
|Started export report  <br/> |SearchReport  <br/> |New-ComplianceSearchAction  <br/> |A user exported a content search report.  <br/> |
|Stopped content search  <br/> |SearchStopped  <br/> |Stop-ComplianceSearch  <br/> |A user stopped a content search.  <br/> |
|(none)|CaseViewed|Get-ComplianceCase|A user viewed the list of cases on the **eDiscovery** page in the security and compliance center or by running the cmdlet.|
|(none)|SearchViewed|Get-ComplianceSearch|A user viewed the list on content searches (listed on the **Searches** tab) in the security and compliance center or by running the cmdlet. This activity is also logged when a user views the list of content searches associated with an eDiscovery case (by clicking the **Searches** tab in a case) or by running the **Get-ComplianceSearch -Case** command.|
|(none)|ViewedSearchExported|Get-ComplianceSearchAction -Export|A user viewed the list of content search export jobs (listed on the **Exports** tab) in the security and compliance center or by running the cmdlet. This activity is also logged when a user views the list of export jobs in an eDiscovery case (listed on the **Exports** tab in a case) or by running the **Get-ComplianceSearchAction -Case -Export** command.|
|(none)|ViewedSearchPreviewed|Get-ComplianceSearchAction -Preview|A user previews the results of a content search in the security and compliance center or by running the cmdlet.|
|||||
  
## Advanced eDiscovery activities

The following table describes the Advanced eDiscovery activities logged in the audit log. These activities (in addition to relevant eDiscovery activities can be used to help you track the progression of activity in an Advanced eDiscovery case.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added data to another review set|AddWorkingSetQueryToWorkingSet|User added documents from one review set to a different review set.|
|Added data to review set|AddQueryToWorkingSet|User added the search results from a content search associated with an Advanced eDiscovery case to a review set.|
|Added non-Microsoft 365 data to review set|AddNonOffice365DataToWorkingSet|User added non-Microsoft 365 data to a review set.|
|Added remediated documents to review set|AddRemediatedData|User uploads documents that had indexing errors that were fixed to a review set.|
|Analyzed data in review set|RunAlgo|User ran  analytics on the  documents in a review set.|
|Annotated document in review set|AnnotateDocument|User annotated a document in a review set. Annotation includes redacting content in a document.|
|Compared load sets|LoadComparisonJob|User compared two different load sets in a review set. A load set is when data from a content search that associated with the case is added to a review set.|
|Converted redacted documents to PDF|BurnJob|User converted all the redacted documents in a review set to PDF files.|
|Created review set|CreateWorkingSet|User created a review set.|
|Created review set search|CreateWorkingSetSearch|User created a search query that searches the documents in a review set.|
|Created tag|CreateTag|User created a tag group in a review set. A tag group can contain one or more child tags. These tags are then used to tag documents in the review set.|
|Deleted review set search|DeleteWorkingSetSearch|User deleted a search query in a review set.|
|Deleted tag|DeleteTag|User deleted a tag or a tag group in a review set.|
|Downloaded document|DownloadDocument|User downloaded a document from a review set.|
|Edited tag|UpdateTag|User changed a tag in a review set.|
|Exported documents from review set|ExportJob|User exported documents from a review set.|
|Modified case setting|UpdateCaseSettings|User modified the settings for a case. Case settings include case information, access permissions, and settings that control search and analytics behavior.|
|Modified review set search|UpdateWorkingSetSearch|User edited a search query in a review set.|
|Previewed review set search|PreviewWorkingSetSearch|User previewed the results of a search query in a review set.|
|Remediated error documents|ErrorRemediationJob|User fixes files that contained indexing errors.|
|Tagged document|TagFiles|User tags a document in a review set.|
|Tagged results of a query|TagJob|User tags all of the documents that match the criteria of search query in a review set.|
|Viewed document in review set|ViewDocument|User viewed a document in a review set.|
|||

## eDiscovery cmdlet activities

The following table lists the cmdlet audit log records that are logged when an administrator or user performs an eDiscovery-related activity by using the Security & Compliance Center or by running the corresponding cmdlet in remote PowerShell that's connected to your organization's Security & Compliance Center. The detailed information in the audit log record is different for the cmdlet activities listed in this table and the eDiscovery activities described in the previous section.
  
As previously stated, it takes up to 24 hours for eDiscovery cmdlet activities to appear in the audit log search results.
  
> [!TIP]
> The cmdlets in the **Operation** column in the following table are linked to the corresponding cmdlet help topic on TechNet. Go to the cmdlet help topic for a description of the available parameters for each cmdlet. The parameter and the parameter value that were used with a cmdlet are included in the audit log entry for each eDiscovery cmdlet activity that's logged. 
  
|**Friendly name**|**Operation (cmdlet)**|**Description**|
|:-----|:-----|:-----|
|Created hold in eDiscovery case  <br/> |[New-CaseHoldPolicy](https://go.microsoft.com/fwlink/p/?LinkId=823813) <br/> |A hold was created for an eDiscovery case. A hold can be created with or without specifying a content source. If content sources are specified, they'll be identified in the audit log entry.  <br/> |
|Deleted hold from eDiscovery case  <br/> |[Remove-CaseHoldPolicy](https://go.microsoft.com/fwlink/p/?LinkId=823814) <br/> |A hold that is associated with an eDiscovery case was deleted. Deleting a hold releases all of the content locations from the hold. Deleting the hold also results in deleting the case hold rules associated with the hold (see **Remove-CaseHoldRule** below).  <br/> |
|Changed hold in eDiscovery case  <br/> |[Set-CaseHoldPolicy](https://go.microsoft.com/fwlink/p/?LinkId=823815) <br/> |A hold that is associated with an eDiscovery was changed. Possible changes include adding or removing content locations or turning off (disabling) the hold.  <br/> |
|Created search query for eDiscovery case hold  <br/> |[New-CaseHoldRule](https://go.microsoft.com/fwlink/p/?LinkId=823816) <br/> |A query-based hold associated with an eDiscovery case was created.  <br/> |
|Deleted search query for eDiscovery case hold  <br/> |[Remove-CaseHoldRule](https://go.microsoft.com/fwlink/p/?LinkId=823820) <br/> |A query-based hold associated with an eDiscovery case was deleted. Removing the query from the hold is often the result of deleting a hold. When a hold or a hold query is deleted, the content locations that were on hold are released.  <br/> |
|Changed search query for eDiscovery case hold  <br/> |[Set-CaseHoldRule](https://go.microsoft.com/fwlink/p/?LinkId=823819) <br/> |A query-based hold associated with an eDiscovery case was changed. Possible changes include editing the query or date range for a query-based hold.  <br/> |
|Created eDiscovery case  <br/> |[New-ComplianceCase](https://go.microsoft.com/fwlink/p/?LinkId=823842) <br/> |An eDiscovery case was created. When a case is created, you only have to give it a name. Other case-related tasks such as adding members, creating holds, and creating content searches associated with the case result in additional events being logged.  <br/> |
|Deleted eDiscovery case  <br/> |[Remove-ComplianceCase](https://go.microsoft.com/fwlink/p/?LinkId=823844) <br/> |An eDiscovery case was deleted. Any hold associated with the case has to be removed before the case can be deleted.  <br/> |
|Changed eDiscovery case  <br/> |[Set-ComplianceCase](https://go.microsoft.com/fwlink/p/?LinkId=823846) <br/> |An eDiscovery case was changed. Changes include closing an open case or reopening a closed case.  <br/> |
|Added member to eDiscovery case  <br/> |[Add-ComplianceCaseMember](https://go.microsoft.com/fwlink/p/?LinkId=823848) <br/> |A user was added as a member of an eDiscovery case. As a member of a case, a user can perform various case-related tasks depending on whether they have been assigned the necessary permissions.  <br/> |
|Removed member from eDiscovery case  <br/> |[Remove-ComplianceCaseMember](https://go.microsoft.com/fwlink/p/?LinkId=823849) <br/> |A user was removed as a member of an eDiscovery case.  <br/> |
|Changed eDiscovery case membership  <br/> |[Update-ComplianceCaseMember](https://go.microsoft.com/fwlink/p/?LinkId=823850) <br/> |The membership list of an eDiscovery case was changed. This activity is logged when all members are replaced with a group of new users. If a single member is added or removed, the **Add-ComplianceCaseMember** or **Remove-ComplianceCaseMember** operation is logged.  <br/> |
|Created content search  <br/> |[New-ComplianceSearch](https://go.microsoft.com/fwlink/p/?LinkId=517935) <br/> |A new content search was created.  <br/> |
|Deleted content search  <br/> |[Remove-ComplianceSearch](https://go.microsoft.com/fwlink/p/?LinkId=517936) <br/> |An existing content search was deleted.  <br/> |
|Changed content search  <br/> |[Set-ComplianceSearch](https://go.microsoft.com/fwlink/p/?LinkId=517937) <br/> |An existing content search was changed. Changes can include adding or removing content locations that are searched and editing the search query.  <br/> |
|Started content search  <br/> |[Start-ComplianceSearch](https://go.microsoft.com/fwlink/p/?LinkId=517938) <br/> |A content search was started. When you create or change a content search by using the Security & Compliance Center GUI, the search is automatically started. If you create or change a search by using the **New-ComplianceSearch** or **Set-ComplianceSearch** cmdlet, you have to run the **Start-ComplianceSearch** cmdlet to start the search.  <br/> |
|Stopped content search  <br/> |[Stop-ComplianceSearch](https://go.microsoft.com/fwlink/p/?LinkId=517939) <br/> |A content search that was running was stopped.  <br/> |
|Created content search action  <br/> |[New-ComplianceSearchAction](https://go.microsoft.com/fwlink/p/?LinkId=527971) <br/> |A content search action was created. Content search actions include previewing search results, exporting search results, preparing search results for analysis in Advanced eDiscovery, and permanently deleting items that match the search criteria of a content search.  <br/> |
|Deleted content search action  <br/> |[Remove-ComplianceSearchAction](https://go.microsoft.com/fwlink/p/?LinkId=824027) <br/> |A content search action was deleted.  <br/> |
|Created search permissions filter  <br/> |[New-ComplianceSecurityFilter](https://go.microsoft.com/fwlink/p/?LinkId=617542) <br/> |A search permissions filter was created.  <br/> |
|Deleted search permissions filter  <br/> |[Remove-ComplianceSecurityFilter](https://go.microsoft.com/fwlink/p/?LinkId=617543) <br/> |A search permissions filter was deleted.  <br/> |
|Changed search permissions filter  <br/> |[Set-ComplianceSecurityFilter](https://go.microsoft.com/fwlink/p/?LinkId=617544) <br/> |A search permissions filter was changed.  <br/> |
|Created eDiscovery administrator  <br/> |[Add-eDiscoveryCaseAdmin](https://go.microsoft.com/fwlink/p/?LinkId=798217) <br/> |A user was added as an eDiscovery Administrator in your organization.  <br/> |
|Deleted eDiscovery administrator  <br/> |[Remove-eDiscoveryCaseAdmin](https://go.microsoft.com/fwlink/p/?LinkId=823945) <br/> |An eDiscovery Administrator was deleted from your organization.  <br/> |
|Changed eDiscovery administrator membership  <br/> |[Update-eDiscoveryCaseAdmin](https://go.microsoft.com/fwlink/p/?LinkId=823946) <br/> |The list of eDiscovery Administrators in your organization was changed. This activity is logged when the list of eDiscovery Administrators is replaced with a group of new users. If a single user is added or removed, the **Add-eDiscoveryCaseAdmin** or **Remove-eDiscoveryCaseAdmin** operation is logged.  <br/> |
   
## Detailed properties for eDiscovery activities

The following table describes the properties that are included when you click **More information** on the **Details** page for an eDiscovery activity listed in the search results. These properties are also included in the CSV file when you export the audit log search results. An audit log record for an eDiscovery activity won't include every detailed property listed below. 
  
> [!TIP]
> When you export the search results, the CSV file contains a column named **Detail**, which contains the detailed properties described in the following table in a multi-value property. You can use the Power Query feature in Excel to split this column into multiple columns so that each property will have its own column. This will let you sort and filter on one or more of these properties. For more information, see the "Export the search results to a file" section in [Search the audit log](search-the-audit-log-in-security-and-compliance.md#step-4-export-the-search-results-to-a-file). 
  
|**Property**|**Description**|
|:-----|:-----|
|Case  <br/> |The identity (GUID) of the eDiscovery case that was created, changed, or deleted.  <br/> |
|ClientApplication  <br/> |eDiscovery cmdlet activities have a value of **EMC** for this property. This indicates the activity was performed by using the Security & Compliance Center GUI or running the cmdlet in PowerShell.  <br/> |
|ClientIP  <br/> |The IP address of the device that was used when the activity was logged. The IP address is displayed in either an IPv4 or IPv6 address format.  <br/> |
|ClientRequestId  <br/> | For eDiscovery activities, this property is typically blank.  <br/> |
|CmdletVersion  <br/> |The build number for the version of the Security & Compliance Center running in your organization.  <br/> |
|CreationTime  <br/> |The date and time in Coordinated Universal Time (UTC) when the eDiscovery activity was completed.  <br/> |
|EffectiveOrganization  <br/> |The name of the Microsoft  365 organization.  <br/> |
|ExchangeLocations  <br/> |The Exchange Online mailboxes that are included in a content search or placed on hold in an eDiscovery case.  <br/> |
|Exclusions  <br/> |Mailbox or site locations that are excluded from a content search or a hold in an eDiscovery case.  <br/> |
|ExtendedProperties  <br/> |Additional properties from a content search, a content search action, or hold in an eDiscovery case, such as the object GUID and the corresponding cmdlet and cmdlet parameters that were used when the activity was performed.  <br/> |
|Id  <br/> |The ID of the report entry. The ID uniquely identifies the audit log entry.  <br/> |
|NonPIIParameters  <br/> |A list of the parameters (without any values) that were used with the cmdlet identified in the Operation property. The parameters listed in this property are the same as those listed in the Parameters property.  <br/> |
|ObjectId  <br/> |The GUID or name of the object (for example, a Content Search or an eDiscovery case) that was created, changed, or deleted by the activity listed in the Operation property. This object is also identified in the Item column in the audit log search results.  <br/> |
|ObjectType  <br/> |The type of eDiscovery object that the user created, deleted, or modified; for example, a content search action (preview, export, or purge), an eDiscovery case, or a content search.  <br/> |
|Operation  <br/> |The name of the operation that corresponds to the eDiscovery activity that was performed.  <br/> |
|OrganizationId  <br/> |The GUID for your Microsoft 365 organization.  <br/> |
|Parameters  <br/> |The name and value for the parameters that were used with the corresponding cmdlet.  <br/> |
|PublicFolderLocations  <br/> |The public folder locations in Exchange Online that are included in a content search or placed on hold in an eDiscovery case.  <br/> |
|Query  <br/> |The search query associated with the activity, such as a content search or a query-based hold.  <br/> |
|RecordType  <br/> |The type of operation indicated by the record. The value of **18** indicates an event related to an activity listed in the [eDiscovery cmdlet activities](#ediscovery-cmdlet-activities) section. A value of **24** indicates an event related to an activity listed in the [How to search for and view eDiscovery activities](#how-to-search-for-and-view-ediscovery-activities) section.  <br/> |
|ResultStatus  <br/> |Indicates whether the action (specified in the Operation property) was successful or not.  <br/> |
|SecurityComplianceCenterEventType  <br/> |Indicates that the activity was a Security & Compliance Center event. All eDiscovery activities will have a value of **0** for this property.  <br/> |
|SharepointLocations  <br/> |The SharePoint Online sites that are included in a content search or placed on hold in an eDiscovery case.  <br/> |
|StartTime  <br/> |The date and time in Coordinated Universal Time (UTC) when the eDiscovery activity was started.  <br/> |
|UserId  <br/> |The user who performed the activity (specified in the Operation property) that resulted in the record being logged. Records for eDiscovery activity performed by system accounts (such as NT AUTHORITY\SYSTEM) are also included in the audit log.  <br/> |
|UserKey  <br/> |An alternative ID for the user identified in the UserId property. For eDiscovery activities, the value for this property is typically the same as the UserId property.  <br/> |
|UserServicePlan  <br/> |The  subscription used by your organization. For eDiscovery activities, this property is typically blank.  <br/> |
|UserType  <br/> |The type of user that performed the operation. The following values indicate the user type.  <br/> 0   A regular user. 2   An administrator in your organization. 3   A Microsoft datacenter administrator or datacenter system account. 4   A system account. 5   An application. 6   A service principal. |
|Version  <br/> |Indicates the version number of the activity (identified by the Operation property) that's logged.  <br/> |
|Workload  <br/> |Theservice where the activity occurred. For eDiscovery activities, the value is **SecurityComplianceCenter**.  <br/> |