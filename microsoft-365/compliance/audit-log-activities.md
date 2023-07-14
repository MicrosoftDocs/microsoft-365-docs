---
title: "Audit log activities"
description: "Use the unified audit log to view user and administrator activity in your Microsoft 365 organization."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 06/12/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- audit
search.appverid:
- MOE150
- MET150
---

# Audit log activities

The tables in this article describe the activities that are audited in Microsoft 365. You can search for these events by searching the audit log in the compliance portal.

These tables group related activities or the activities from a specific service. The tables include the friendly name that's displayed in the **Activities** drop-down list (or that are available in PowerShell) and the name of the corresponding operation that appears in the detailed information of an audit record and in the CSV file when you export the search results. For descriptions of the detailed information, see [Audit log detailed properties](audit-log-detailed-properties.md).

> [!TIP]
> Select one of the links in the **In this article** list at the top of this article to go directly to a specific product table.

## Application administration activities

The following table lists application admin activities that are logged when an admin adds or changes an application that's registered in Azure AD. Any application that relies on Azure AD for authentication must be registered in the directory.

> [!NOTE]
> The operation names listed in the **Operation** column in the following table contain a period ( `.` ). You must include the period in the operation name if you specify the operation in a PowerShell command when searching the audit log, creating audit retention policies, creating alert policies, or creating activity alerts. Also be sure to use double quotation marks (`" "`) to contain the operation name.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Added delegation entry|Add delegation entry.|An authentication permission was created/granted to an application in Azure AD.|
|Added service principal|Add service principal.|An application was registered in Azure AD. An application is represented by a service principal in the directory.|
|Added credentials to a service principal|Add service principal credentials.|Credentials were added to a service principal in Azure AD. A service principle represents an application in the directory.|
|Removed delegation entry|Remove delegation entry.|An authentication permission was removed from an application in Azure AD.|
|Removed a service principal from the directory|Remove service principal.|An application was deleted/unregistered from Azure AD. An application is represented by a service principal in the directory.|
|Removed credentials from a service principal|Remove service principal credentials.|Credentials were removed from a service principal in Azure AD. A service principle represents an application in the directory.|
|Set delegation entry|Set delegation entry.|An authentication permission was updated for an application in Azure AD.|

## Azure AD group administration activities

The following table lists group administration activities that are logged when an admin or a user creates or changes a Microsoft 365 group or when an admin creates a security group by using the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339) or the Azure management portal. For more information about groups in Microsoft 365, see [View, create, and delete Groups in the Microsoft 365 admin center](../admin/create-groups/create-groups.md).

> [!NOTE]
> The operation names listed in the **Operation** column in the following table contain a period ( `.` ). You must include the period in the operation name if you specify the operation in a PowerShell command when searching the audit log, creating audit retention policies, creating alert policies, or creating activity alerts. Also be sure to use double quotation marks (`" "`) to contain the operation name.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Added group|Add group.|A group was created.|
|Added member to group|Add member to group.|A member was added to a group.|
|Deleted group|Delete group.|A group was deleted.|
|Removed member from group|Remove member from group.|A member was removed from a group.|
|Updated group|Update group.|A property of a group was changed.|

## Briefing email activities

The following table lists the activities in Briefing email that are logged in the Microsoft 365 audit log. For more information about Briefing email, see:

- [Overview of Briefing email](/Briefing/be-overview)
- [Configure Briefing email](/Briefing/be-admin)

|Friendly name|Operation|Description|
|:----|:-----|:-----|
|Updated organization privacy settings|UpdatedOrganizationBriefingSettings|Admin updates the organization privacy settings for Briefing email. |
|Updated user privacy settings|UpdatedUserBriefingSettings|Admin updates the user privacy settings for Briefing email.

## Communication compliance activities

The following table lists communication compliance activities that are logged in the Microsoft 365 audit log. For more information, see [Learn about Microsoft Purview Communication Compliance](communication-compliance.md).

> [!NOTE]
> These activities are available when using the [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog) PowerShell cmdlet. These activities aren't available in the **Activities** drop-down list.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Policy update|SupervisionPolicyCreated, SupervisionPolicyUpdated, SupervisionPolicyDeleted|A communication compliance administrator has performed a policy update.|
|Policy match|SupervisionRuleMatch|A user has sent a message that matches a policy's condition.|
|Tag applied to message(s)|SupervisoryReviewTag|Tags are applied to messages or messages are resolved.|

## Content explorer activities

The following table lists the activities in content explorer that are logged in the audit log. Content explorer, which is accessed on the Data classifications tool in the compliance portal. For more information, see [Using data classification content explorer](data-classification-content-explorer.md).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Accessed item|LabelContentExplorerAccessedItem|An admin (or a user who's a member of the Content Explorer Content Viewer role group) uses content explorer to view an email message or SharePoint/OneDrive document.|

## Directory administration activities

The following table lists Azure AD directory and domain-related activities that are logged when an administrator manages their organization in the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339) or in the Azure management portal.

> [!NOTE]
> The operation names listed in the **Operation** column in the following table contain a period ( `.` ). You must include the period in the operation name if you specify the operation in a PowerShell command when searching the audit log, creating audit retention policies, creating alert policies, or creating activity alerts. Also be sure to use double quotation marks (`" "`) to contain the operation name.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Added domain to company|Add domain to company.|Added a domain to your organization.|
|Added a partner to the directory|Add partner to company.|Added a partner (delegated administrator) to your organization.|
|Removed domain from company|Remove domain from company.|Removed a domain from your organization.|
|Removed a partner from the directory|Remove partner from company.|Removed a partner (delegated administrator) from your organization.|
|Set company information|Set company information.|Updated the company information for your organization. Includes email addresses for subscription-related email sent by Microsoft 365, and technical notifications about Microsoft 365 services.|
|Set domain authentication|Set domain authentication.|Changed the domain authentication setting for your organization.|
|Updated the federation settings for a domain|Set federation settings on domain.|Changed the federation (external sharing) settings for your organization.|
|Set password policy|Set password policy.|Changed the length and character constraints for user passwords in your organization.|
|Turned on Azure AD sync|Set DirSyncEnabled flag.|Set the property that enables a directory for Azure AD Sync.|
|Updated domain|Update domain.|Updated the settings of a domain in your organization.|
|Verified domain|Verify domain.|Verified that your organization is the owner of a domain.|
|Verified email verified domain|Verify email verified domain.|Used email verification to verify that your organization is the owner of a domain.|

## Disposition review activities

The following table lists the [activities a disposition reviewer took](disposition.md#viewing-and-disposing-of-content) when an item reached the end of its configured retention period, or an item was automatically moved to the next disposition stage or permanently deleted as a result of [auto-approval](disposition.md#auto-approval-for-disposition).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Approved disposal|ApproveDisposal|For manual approval: A disposition reviewer approved the disposition of the item to move it to the next disposition stage. If the item was in the only or final stage of disposition review, the disposition approval marked the item as eligible for permanent deletion. <br/><br/> For auto-approval: No manual action was taken within the configured auto-approval time period so the item automatically moved to the next disposition stage. If the item was in the only or final stage of disposition review, the item automatically became eligible for permanent deletion.|
|Extended retention period|ExtendRetention|A disposition reviewer extended the retention period of the item.|
|Relabeled item|RelabelItem|A disposition reviewer relabeled the retention label.|
|Added reviewers|AddReviewer|A disposition reviewer added one or more other users to the current disposition review stage.|

## eDiscovery activities

Content Search and eDiscovery-related activities that are performed in the security and compliance portal or by running the corresponding PowerShell cmdlets are logged in the audit log. Includes the following activities:

- Creating and managing eDiscovery cases
- Creating, starting, and editing Content Searches
- Performing Content Search actions, such as previewing, exporting, and deleting search results
- Configuring permissions filtering for Content Search
- Managing the eDiscovery Administrator role

For a list and detailed description of the eDiscovery activities that are logged, see [Search for eDiscovery activities in the audit log](ediscovery-search-for-activities-in-the-audit-log.md).

> [!NOTE]
> It takes up to 30 minutes for events that result from the activities listed under **eDiscovery activities** and **eDiscovery (Premium) activities** in the **Activities** drop-down list to be displayed in the search results. Conversely, it takes up to 24 hours for the corresponding events from eDiscovery cmdlet activities to appear in the search results.

## eDiscovery (Premium) activities

You can also search the audit log for activities in Microsoft Purview eDiscovery (Premium). For a description of these activities, see the "eDiscovery (Premium) activities" section in [Search for eDiscovery activities in the audit log](ediscovery-search-for-activities-in-the-audit-log.md#ediscovery-premium-activities).

## Encrypted message portal activities

Access logs are available for encrypted messages through the encrypted message portal that lets your organization determine when messages are read, and forwarded by your external recipients. For more information on enabling and using encrypted message portal activity logs, see [Encrypted message portal activity log](audit-log-encrypted-messages.md).

Each audit entry for a tracked message contains the following fields:

- **MessageID**: Contains the ID of the message being tracked. The key identifier used to follow a message through the system.
- **Recipient**: List of all recipient email addresses.
- **Sender**: The originating email address.
- **AuthenticationMethod**: Describes the authenticating method for accessing the message, for example OTP, Yahoo, Gmail, or Microsoft.
- **AuthenticationStatus**: Contains a value indicating that the authentication succeeded or failed.
- **OperationStatus**: Indicates whether the indicated operation succeeded or failed.
- **AttachmentName**: Name of the attachment.
- **OperationProperties**: A list of optional properties. For example, the number of OTP passcodes sent, or the email subject.

## Exchange admin activities

Exchange administrator audit logging (which is enabled by default in Microsoft 365) logs an event in the audit log when an administrator (or a user who has been assigned administrative permissions) makes a change in your Exchange Online organization. Changes made by using the Exchange admin center or by running a cmdlet in Exchange Online PowerShell are logged in the Exchange admin audit log. Cmdlets that begin with the verbs **Get-**, **Search-**, or **Test-** aren't logged in the audit log. For more detailed information about admin audit logging in Exchange, see [Administrator audit logging](/exchange/administrator-audit-logging-exchange-2013-help).

> [!IMPORTANT]
> Some Exchange Online cmdlets that aren't logged in the Exchange admin audit log (or in the audit log). Many of these cmdlets are related to maintaining the Exchange Online service and are run by Microsoft datacenter personnel or service accounts. These cmdlets aren't logged because they would result in a large number of "noisy" auditing events. If there's an Exchange Online cmdlet that isn't being audited, please submit a design change request (DCR) to Microsoft Support.

Here are some tips for searching for Exchange admin activities when searching the audit log:

- To return entries from the Exchange admin audit log, you have to select **Show results for all activities** in the **Activities** list. Use the date range boxes and the **Users** list to narrow the search results for cmdlets run by a specific Exchange administrator within a specific date range.
- To display events from the Exchange admin audit log, select the **Activity** column to sort the cmdlet names in alphabetical order.
- To get information about what cmdlet was run, which parameters and parameter values were used, and what objects were affected, you can export the search results by selecting the **Download all results** option. For more information, see [Export, configure, and view audit log records](audit-log-export-records.md).
- You can also use the `Search-UnifiedAuditLog -RecordType ExchangeAdmin` command in Exchange Online PowerShell to return only audit records from the Exchange admin audit log. It may take up to 30 minutes after an Exchange cmdlet is run for the corresponding audit log entry to be returned in the search results. For more information, see [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog). For information about exporting the search results returned by the **Search-UnifiedAuditLog** cmdlet to a CSV file, see the "Tips for exporting and viewing the audit log" section in [Export, configure, and view audit log records](audit-log-export-records.md#tips-for-exporting-and-viewing-the-audit-log).
- You can also view events in the Exchange admin audit log by using the Exchange admin center or running the **Search-AdminAuditLog** in Exchange Online PowerShell. The audit log is a good way to specifically search for activity performed by Exchange Online administrators. For instructions, see:

  - [View the administrator audit log](/exchange/security-and-compliance/exchange-auditing-reports/view-administrator-audit-log)
  - [Search-AdminAuditLog](/powershell/module/exchange/search-adminauditlog)

   Keep in mind that the same Exchange admin activities are logged in both the Exchange admin audit log and audit log.

## Exchange mailbox activities

The following table lists the activities that can be logged by mailbox audit logging. Mailbox activities performed by the mailbox owner, a delegated user, or an administrator are automatically logged in the audit log for up to 90 days. It's possible for an admin to turn off mailbox audit logging for all users in your organization. In this case, no mailbox actions for any user are logged. For more information, see [Manage mailbox auditing](audit-mailboxes.md).

 You can also search for mailbox activities by using the [Search-MailboxAuditLog](/powershell/module/exchange/search-mailboxauditlog) cmdlet in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Accessed mailbox items|MailItemsAccessed|Messages were read or accessed in mailbox. Audit records for this activity are triggered in one of two ways: when a mail client (such as Outlook) performs a bind operation on messages or when mail protocols (such as Exchange ActiveSync or IMAP) sync items in a mail folder. This activity is only logged for users with an Office 365 or Microsoft 365 E5 license. Analyzing audit records for this activity is useful when investigating compromised email account. For more information, see the "Audit (Premium) events" section in [Audit (Premium)](audit-premium.md#audit-premium-events). |
|Added delegate mailbox permissions|Add-MailboxPermission|An administrator assigned the FullAccess mailbox permission to a user (known as a delegate) to another person's mailbox. The FullAccess permission allows the delegate to open the other person's mailbox, and read and manage the contents of the mailbox. The audit record for this activity is also generated when a system account in the Microsoft 365 service periodically performs maintenance tasks in behalf of your organization. A common task performed by a system account is updating the permissions for system mailboxes. For more information, see [System accounts in Exchange mailbox audit records](#system-accounts-in-exchange-mailbox-audit-records).|
|Added or removed user with delegate access to calendar folder|UpdateCalendarDelegation|A user was added or removed as a delegate to the calendar of another user's mailbox. Calendar delegation gives someone else in the same organization permissions to manage the mailbox owner's calendar.|
|Added permissions to folder|AddFolderPermissions|A folder permission was added. Folder permissions control which users in your organization can access folders in a mailbox and the messages located in those folders.|
|Copied messages to another folder|Copy|A message was copied to another folder.|
|Created mailbox item|Create|An item is created in the Calendar, Contacts, Notes, or Tasks folder in the mailbox. For example, a new meeting request is created. Creating, sending, or receiving a message isn't audited. Also, creating a mailbox folder isn't audited.|
|Created new inbox rule in Outlook web app|New-InboxRule|A mailbox owner or other user with access to the mailbox created an inbox rule in the Outlook web app.|
|Deleted messages from Deleted Items folder|SoftDelete|A message was permanently deleted or deleted from the Deleted Items folder. These items are moved to the Recoverable Items folder. Messages are also moved to the Recoverable Items folder when a user selects it and presses **Shift+Delete**.|
|Labeled message as a record|ApplyRecordLabel|A message was classified as a record. Occurs when a retention label that classifies content as a record is manually or automatically applied to a message.|
|Moved messages to another folder|Move|A message was moved to another folder.|
|Moved messages to Deleted Items folder|MoveToDeletedItems|A message was deleted and moved to the Deleted Items folder.|
|Modified folder permission|UpdateFolderPermissions|A folder permission was changed. Folder permissions control which users in your organization can access mailbox folders and the messages in the folder.|
|Modified inbox rule from Outlook web app|Set-InboxRule|A mailbox owner or other user with access to the mailbox modified an inbox rule using the Outlook web app.|
|Purged messages from the mailbox|HardDelete|A message was purged from the Recoverable Items folder (permanently deleted from the mailbox).|
|Removed delegate mailbox permissions|Remove-MailboxPermission|An administrator removed the FullAccess permission (that was assigned to a delegate) from a person's mailbox. After the FullAccess permission is removed, the delegate can't open the other person's mailbox or access any content in it.|
|Removed permissions from folder|RemoveFolderPermissions|A folder permission was removed. Folder permissions control which users in your organization can access folders in a mailbox and the messages located in those folders.|
|Sent message|Send|A message was sent, replied to or forwarded. This activity is only logged for users with an Office 365 or Microsoft 365 E5 license. For more information, see the "Audit (Premium) events" section in [Audit (Premium)](audit-premium.md#audit-premium-events).|
|Sent message using Send As permissions|SendAs|A message was sent using the SendAs permission. This means that another user sent the message as though it came from the mailbox owner.|
|Sent message using Send On Behalf permissions|SendOnBehalf|A message was sent using the SendOnBehalf permission. This means that another user sent the message on behalf of the mailbox owner. The message indicates to the recipient whom the message was sent on behalf of and who actually sent the message.|
|Updated inbox rules from Outlook client|UpdateInboxRules|A mailbox owner or other user with access to the mailbox created, modified, or removed an inbox rule by using the Outlook client.|
|Updated message|Update|A message or its properties was changed.|
|User signed in to mailbox|MailboxLogin|The user signed in to their mailbox.|
|Label message as a record||A user applied a retention label to an email message and that label is configured to mark the item as a record. |

### System accounts in Exchange mailbox audit records

In audit records for some mailbox activities (especially **Add-MailboxPermissions**), you may notice the user who performed the activity (and is identified in the User and UserId fields) is NT AUTHORITY\SYSTEM or NT AUTHORITY\SYSTEM(Microsoft.Exchange.Servicehost). This indicates that the "user" who performed the activity was a system account in Exchange service in the Microsoft cloud. This system account often performs scheduled maintenance tasks on behalf of your organization. For example, a common audited activity performed by the NT AUTHORITY\SYSTEM(Microsoft.Exchange.ServiceHost) account is to update the permissions on the DiscoverySearchMailbox, which is a system mailbox. The purpose of this update is to verify that the FullAccess permission (which is the default) is assigned to the Discovery Management role group for the DiscoverySearchMailbox. Ensures that eDiscovery administrators can perform necessary tasks in their organization.

Another system user account that may be identified in an audit record for **Add-MailboxPermission** is Administrator@apcprd03.prod.outlook.com. This service account is also included in mailbox audit records related to verifying and updating the FullAccess permission is assigned to the Discovery Management role group for the DiscoverySearchMailbox system mailbox. Specifically, audit records that identify the Administrator@apcprd03.prod.outlook.com account are typically triggered when Microsoft support personnel run a role-based access control diagnostic tool on behalf of your organization.

## File and page activities

The following table describes the file and page activities in SharePoint Online and OneDrive for Business.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Accessed file|FileAccessed|User or system account accesses a file. Once a user accesses a file, the FileAccessed event isn't logged again for the same user for same file for the next five minutes.|
|(none)|FileAccessedExtended|This is related to the "Accessed file" (FileAccessed) activity. A FileAccessedExtended event is logged when the same person continually accesses a file for an extended period (up to 3 hours). <br/><br/> The purpose of logging FileAccessedExtended events is to reduce the number of FileAccessed events that are logged when a file is continually accessed. This helps reduce the noise of multiple FileAccessed records for what is essentially the same user activity, and lets you focus on the initial (and more important) FileAccessed event.|
|Changed retention label for a file|ComplianceSettingChanged|A retention label was applied to or removed from a document. This event is triggered when a retention label is manually or automatically applied to a message.|
|Changed record status to locked|LockRecord|The record status of a retention label that classifies a document as a record was locked. This means the document can't be modified or deleted. Only users assigned at least the contributor permission for a site can change the record status of a document.|
|Changed record status to unlocked|UnlockRecord|The record status of a retention label that classifies a document as a record was unlocked. This means that the document can be modified or deleted. Only users assigned at least the contributor permission for a site can change the record status of a document.|
|Checked in file|FileCheckedIn|User checks in a document that they checked out from a document library.|
|Checked out file|FileCheckedOut|User checks out a document located in a document library. Users can check out and make changes to documents that have been shared with them.|
|Copied file|FileCopied|User copies a document from a site. The copied file can be saved to another folder on the site.|
|Deleted file|FileDeleted|User deletes a document from a site.|
|Deleted file from recycle bin|FileDeletedFirstStageRecycleBin|User deletes a file from the recycle bin of a site.|
|Deleted file from second-stage recycle bin|FileDeletedSecondStageRecycleBin|User deletes a file from the second-stage recycle bin of a site.|
|Deleted file marked as a record|RecordDelete|A document or email that was marked as a record was deleted. An item is considered a record when a retention label that marks items as a record is applied to content.|
|Detected document sensitivity mismatch|DocumentSensitivityMismatchDetected|User uploads a document to a site that's protected with a sensitivity label and the document has a higher priority sensitivity label than the sensitivity label applied to the site. For example, a document labeled Confidential is uploaded to a site labeled General. <br/><br/> This event isn't triggered if the document has a lower priority sensitivity label than the sensitivity label applied to the site. For example, a document labeled General is uploaded to a site labeled Confidential. For more information about sensitivity label priority, see [Label priority (order matters)](sensitivity-labels.md#label-priority-order-matters).|
|Detected malware in file|FileMalwareDetected|SharePoint anti-virus engine detects malware in a file.|
|Discarded file checkout|FileCheckOutDiscarded|User discards (or undoes) a checked out file. That means any changes they made to the file when it was checked out are discarded, and not saved to the version of the document in the document library.|
|Downloaded file|FileDownloaded|User downloads a document from a site.|
|Modified file|FileModified|User or system account modifies the content or the properties of a document on a site. The system waits five minutes before it logs another FileModified event when the same user modifies the content or properties of the same document.|
|(none)|FileModifiedExtended|This is related to the "Modified file" (FileModified) activity. A FileModifiedExtended event is logged when the same person continually modifies a file for an extended period (up to 3 hours). <br/><br/> The purpose of logging FileModifiedExtended events is to reduce the number of FileModified events that are logged when a file is continually modified. This helps reduce the noise of multiple FileModified records for what is essentially the same user activity, and lets you focus on the initial (and more important) FileModified event.|
|Moved file|FileMoved|User moves a document from its current location on a site to a new location.|
|(none)|FilePreviewed|User previews files on a SharePoint or OneDrive for Business site. These events typically occur in high volumes based on a single activity, such as viewing an image gallery.|
|Performed search query|SearchQueryPerformed|User or system account performs a search in SharePoint or OneDrive for Business. Some common scenarios where a service account performs a search query include applying an eDiscovery holds and retention policy to sites and OneDrive accounts, and auto-applying retention or sensitivity labels to site content.|
|Recycled a file | FileRecycled | User moves a file into the SharePoint Recycle Bin. |
|Recycled a folder | FolderRecycled | User moves a folder into the SharePoint Recycle Bin. |
|Recycled all minor versions of file|FileVersionsAllMinorsRecycled|User deletes all minor versions from the version history of a file. The deleted versions are moved to the site's recycle bin.|
|Recycled all versions of file|FileVersionsAllRecycled|User deletes all versions from the version history of a file. The deleted versions are moved to the site's recycle bin.|
|Recycled version of file|FileVersionRecycled|User deletes a version from the version history of a file. The deleted version is moved to the site's recycle bin.|
|Renamed file|FileRenamed|User renames a document.|
|Restored file|FileRestored|User restores a document from the recycle bin of a site.|
|Uploaded file|FileUploaded|User uploads a document to a folder on a site.|
|Viewed page|PageViewed|User views a page on a site. This doesn't include using a Web browser to view files located in a document library. Once a user views a page, the PageViewed event isn't logged again for the same user for same page for the next five minutes.|
|(none)|PageViewedExtended|This is related to the "Viewed page" (PageViewed) activity. A PageViewedExtended event is logged when the same person continually views a web page for an extended period (up to 3 hours). <br/><br/> The purpose of logging PageViewedExtended events is to reduce the number of PageViewed events that are logged when a page is continually viewed. This helps reduce the noise of multiple PageViewed records for what is essentially the same user activity, and lets you focus on the initial (and more important) PageViewed event.|
|View signaled by client|ClientViewSignaled|A user's client (such as website or mobile app) has signaled that the indicated page has been viewed by the user. This activity is often logged following a PagePrefetched event for a page. <br/><br/>**NOTE**: Because ClientViewSignaled events are signaled by the client, rather than the server, it's possible the event may not be logged by the server and therefore may not appear in the audit log. It's also possible that information in the audit record may not be trustworthy. However, because the user's identity is validated by the token used to create the signal, the user's identity listed in the corresponding audit record is accurate. The system waits five minutes before it logs the same event when the same user's client signals that the page has been viewed again by the user.|
|(none)|PagePrefetched|A user's client (such as website or mobile app) has requested the indicated page to help improve performance if the user browses to it. This event is logged to indicate that the page content has been served to the user's client. This event isn't a definitive indication that the user navigated to the page. <br/><br/> When the page content is rendered by the client (as per the user's request) a ClientViewSignaled event should be generated. Not all clients support indicating a pre-fetch, and therefore some pre-fetched activities might instead be logged as PageViewed events.|

### Frequently asked questions about FileAccessed and FilePreviewed events

**Could any non-user activities trigger FilePreviewed audit records that contain a user agent like "OneDriveMpc-Transform_Thumbnail"?**

We aren't aware of scenarios where non-user actions generate events like these. User actions like opening a user profile card (by selecting their name or email address in a message in Outlook on the web) would generate similar events.

**Are calls to the OneDriveMpc-Transform_Thumbnail always intentionally being triggered by the user?**

No. But similar events can be logged as a result of browser pre-fetch.

**If we see a FilePreviewed event coming from a Microsoft-registered IP address, does that mean that the preview was displayed on the screen of the user's device?**

No. The event might have been logged as a result of browser pre-fetch.

**Are there scenarios where a user previewing a document generates FileAccessed events?**

Both the FilePreviewed and FileAccessed events indicate that a user's call led to a read of the file (or a read of a thumbnail rendering of the file). While these events are intended to align with preview vs. access intention, the event distinction isn't a guarantee of the user's intent.

### The app\@sharepoint user in audit records

In audit records for some file activities (and other SharePoint-related activities), you may notice the user who performed the activity (identified in the User and UserId fields) is app@sharepoint. This indicates that the "user" who performed the activity was an application. In this case, the application was granted permissions in SharePoint to perform organization-wide actions (such as search a SharePoint site or OneDrive account) on behalf of a user, admin, or service. This process of giving permissions to an application is called *SharePoint App-Only* access. This indicates that the authentication presented to SharePoint to perform an action was made by an application, instead of a user. This is why the app@sharepoint user is identified in certain audit records. For more information, see [Grant access using SharePoint App-Only](/sharepoint/dev/solution-guidance/security-apponly-azureacs).

For example, app@sharepoint is often identified as the user for "Performed search query" and "Accessed file" events. That's because an application with SharePoint App-Only access in your organization performs search queries and accesses files when applying retention policies to sites and OneDrive accounts.

Here are a few other scenarios where app@sharepoint may be identified in an audit record as the user who performed an activity:

- **Microsoft 365 Groups**. When a user or admin creates a new group, audit records are generated for creating a site collection, updating lists, and adding members to a SharePoint group. These tasks are performed an application on behalf of the user who created the group.
- **Microsoft Teams**. Similar to Microsoft 365 Groups, audit records are generated for creating a site collection, updating lists, and adding members to a SharePoint group when a team is created.
- **Compliance features**. When an admin implements compliance features, such as retention policies, eDiscovery holds, and auto-applying sensitivity labels.

In these and other scenarios, you'll also notice that multiple audit records with app@sharepoint as the specified user were created within a short time frame, often within a few seconds of each other. This also indicates they were probably triggered by the same user-initiated task. Also, the ApplicationDisplayName and EventData fields in the audit record may help you identify the scenario or application that triggered the event.

## Folder activities

The following table describes the folder activities in SharePoint Online and OneDrive for Business. As previously explained, audit records for some SharePoint activities will indicate the app@sharepoint user performed the activity of behalf of the user or admin who initiated the action. For more information, see [The app\@sharepoint user in audit records](#the-appsharepoint-user-in-audit-records).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Copied folder|FolderCopied|User copies a folder from a site to another location in SharePoint or OneDrive for Business.|
|Created folder|FolderCreated|User creates a folder on a site.|
|Deleted folder|FolderDeleted|User deletes a folder from a site.|
|Deleted folder from recycle bin|FolderDeletedFirstStageRecycleBin|User deletes a folder from the recycle bin on a site.|
|Deleted folder from second-stage recycle bin|FolderDeletedSecondStageRecycleBin|User deletes a folder from the second-stage recycle bin on a site.|
|Modified folder|FolderModified|User modifies a folder on a site. This includes changing the folder metadata, such as changing tags and properties.|
|Moved folder|FolderMoved|User moves a folder to a different location on a site.|
|Renamed folder|FolderRenamed|User renames a folder on a site.|
|Restored folder|FolderRestored|User restores a deleted folder from the recycle bin on a site.|

## Information barriers activities

The following table lists the activities in information barriers that are logged in the Microsoft 365 audit log. For more information about information barriers, see [Learn about information barriers in Microsoft 365](information-barriers.md).

|Friendly name|Operation|Description|
|:------------|:--------|:----------|
|Applied information barrier mode to site|SiteIBModeSet|A SharePoint or global administrator has applied a mode to the site.|
|Applied segments to site|SiteIBSegmentsSet|A SharePoint, global administrator, or site owner added one or more information barriers segments to a site.|
|Changed information barrier mode of site|SiteIBModeChanged|A SharePoint or global administrator has updated the mode of the site.|
|Changed segments of site|SiteIBSegmentsChanged|A SharePoint or global administrator changed one or more information barriers segments for a site.|
|Disabled information barriers for SharePoint and OneDrive|SPOIBIsDisabled|A SharePoint or global administrator has disabled information barriers for SharePoint and OneDrive in the organization.|
|Enabled information barriers for SharePoint and OneDrive|SPOIBIsEnabled|A SharePoint or global administrator has disabled information barriers for SharePoint and OneDrive in the organization.|
|Information barriers insights report completed|InformationBarriersInsightsReportCompleted| System completes build of the information barriers insights report.|
|Information barriers insights report OneDrive section queried|InformationBarriersInsightsReportOneDriveSectionQueried |An administrator queries the information barriers insights report for OneDrive accounts.|
|Information barriers insights report scheduled|InformationBarriersInsightsReportSchedule|An administrator schedules the information barriers insights report.|
|Information barriers insights report SharePoint section queried|InformationBarriersInsightsReportSharePointSectionQueried|An administrator queries the information barriers insights report for Sharepoint sites.|
|Removed segment from site|SiteIBSegmentsRemoved|A SharePoint or global administrator removed one or more information barriers segments from a site.|

## Microsoft Defender Experts activities

The following table lists the activities in Microsoft Defender Experts that are logged into the Microsoft 365 audit log. For more information about Microsoft Defender Experts, see [Learn about Microsoft Defender Experts for XDR](/microsoft-365/security/defender/dex-xdr-overview) and [Learn about Microsoft Defender Experts for Hunting](/microsoft-365/security/defender/defender-experts-for-hunting)

|Friendly name|Operation|Description|
|:------------|:--------|:----------|
| Defender Experts analyst permission created | DefenderExpertsAnalystPermissionCreated | An administrator granted one or more role permissions to Defender Experts analysts to investigate incidents or remediate threats.|
| Defender Experts analyst permission modified | DefenderExpertsAnalystPermissionModified | An administrator modified role permissions for Defender Experts analysts to investigate incidents or remediate threats.|

## Microsoft Forms activities

The tables in this section the user and admin activities in Microsoft Forms that are logged in the audit log. Microsoft Forms is a forms/quiz/survey tool used to collect data for analysis. Where noted below in the descriptions, some operations contain additional activity parameters.

If a Forms activity is performed by a coauthor or an anonymous responder, it will be logged slightly differently. For more information, see the [Forms activities performed by coauthors and anonymous responders](#forms-activities-performed-by-coauthors-and-anonymous-responders) section.

> [!NOTE]
> Some Forms audit activities are only available in Audit (Premium). That means users must be assigned the appropriate license before these activities are logged in the audit log. For more information about activities only available in Audit (Premium), see [Audit (Premium) in Microsoft 365](advanced-audit.md#audit-premium-events). For Audit (Premium) licensing requirements, see [Auditing solutions in Microsoft 365](audit-solutions-overview.md#licensing-requirements). <br/><br/>In the following table, Audit (Premium) activities are highlighted with an asterisk (*).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Created comment|CreateComment|Form owner adds comment or score to a quiz.|
|Created form|CreateForm|Form owner creates a new form. <br><br>Property DataMode:string indicates the current form is set to sync with a new or existing Excel workbook if the property value equals DataSync. Property ExcelWorkbookLink:string indicates the associated Excel workbook ID of the current form.|
|Edited form|EditForm|Form owner edits a form such as creating, removing, or editing a question. The property *EditOperation:string* indicates the edit operation name. The possible operations are:<br/>- CreateQuestion<br/>- CreateQuestionChoice <br/>- DeleteQuestion <br/>- DeleteQuestionChoice <br/>- DeleteFormImage <br/>- DeleteQuestionImage <br/>- UpdateQuestion <br/>- UpdateQuestionChoice <br/>- UploadFormImage/Bing/Onedrive <br/>- UploadQuestionImage <br/>- ChangeTheme <br><br>FormImage includes any place within Forms that user can upload an image, such as in a query or as a background theme.|
|Moved form|MoveForm|Form owner moves a form. <br><br>Property DestinationUserId:string indicates the user ID of the person who moved the form. Property NewFormId:string is the new ID for the newly copied form. Property IsDelegateAccess:boolean indicates the current form move action is performed through the admin delegate page.|
|Deleted form|DeleteForm|Form owner deletes a form. This includes SoftDelete (delete option used and form moved to recycle bin) and HardDelete (Recycle bin is emptied).|
|Viewed form (design time)|ViewForm|Form owner opens an existing form for editing. <br><br>Property AccessDenied:boolean indicates access of current form is denied due to permission check. Property FromSummaryLink:boolean indicates current request comes from the summary link page.|
|Previewed form|PreviewForm|Form owner previews a form using the Preview function.|
|Exported form|ExportForm|Form owner exports results to Excel. <br><br>Property ExportFormat:string indicates if the Excel file is Download or Online.|
|Allowed share form for copy|AllowShareFormForCopy|Form owner creates a template link to share the form with other users. This event is logged when the form owner selects to generate template URL.|
|Disallowed share form for copy|DisallowShareFormForCopy|Form owner deletes template link.|
|Added form coauthor|AddFormCoauthor|A user uses a collaboration link to help design for/view responses. This event is logged when a user uses a collab URL (not when collab URL is first generated).|
|Removed form coauthor|RemoveFormCoauthor|Form owner deletes a collaboration link.|
|Viewed response page|ViewRuntimeForm|User has opened a response page to view. This event is logged regardless of whether the user submits a response or not.|
|Created response|CreateResponse|Similar to receiving a new response.  A user has submitted a response to a form. <br><br>Property ResponseId:string and Property ResponderId:string indicates which result is being viewed. <br><br>For an anonymous responder, the ResponderId property will be null.|
|Updated response|UpdateResponse|Form owner has updated a comment or score on a quiz. <br><br>Property ResponseId:string and Property ResponderId:string indicates which result is being viewed. <br><br>For an anonymous responder, the ResponderId property is null.|
|Deleted all responses|DeleteAllResponses|Form owner deletes all response data.|
|Deleted Response|DeleteResponse|Form owner deletes one response. <br><br>Property ResponseId:string indicates the response being deleted.|
|Viewed responses|ViewResponses|Form owner views the aggregated list of responses. <br><br>Property ViewType:string indicates whether form owner is viewing Detail or Aggregate|
|Viewed response|ViewResponse|Form owner views a particular response. <br><br>Property ResponseId:string and Property ResponderId:string indicates which result is being viewed. <br><br>For an anonymous responder, the ResponderId property is null.|
|Created summary link|GetSummaryLink|Form owner creates summary results link to share results.|
|Deleted summary link|DeleteSummaryLink|Form owner deletes summary results link.|
|Updated form phishing status|UpdatePhishingStatus|This event is logged whenever the detailed value for the internal security status was changed, regardless of whether this changed the final security state (for example, form is now Closed or Opened). This means you may see duplicate events without a final security state change. The possible status values for this event are:<br/>- Take Down <br/>- Take Down by Admin <br/>- Admin Unblocked <br/>- Auto Blocked <br/>- Auto Unblocked <br/>- Customer Reported <br/>- Reset Customer Reported|
|Updated user phishing status|UpdateUserPhishingStatus|This event is logged whenever the value for the user security status was changed. The value of the user status in the audit record is **Confirmed as Phisher** when the user created a phishing form that was taken down by the Microsoft Online safety team. If an admin unblocks the user, the value of the user's status is set to **Reset as Normal User**.|
|Sent Forms Pro invitation|ProInvitation|User selects to activate a Pro trial.|
|Updated form setting<sup>*</sup> |UpdateFormSetting|Form owner updates one or multiple form settings. <br><br>Property FormSettingName:string indicates updated sensitive settings' name. Property NewFormSettings:string indicates updated settings' name and new value. Property thankYouMessageContainsLink:boolean indicates updated thank-you message contains a URL link.|
|Updated user setting|UpdateUserSetting|Form owner updates a user setting. <br><br>Property UserSettingName:string indicates the setting's name and new value|
|Listed forms<sup>*</sup>|ListForms|Form owner is viewing a list of forms. <br><br>Property ViewType:string indicates which view the form owner is looking at: All Forms, Shared with Me, or Group Forms|
|Submitted response|SubmitResponse|A user submits a response to a form. <br><br>Property IsInternalForm:boolean indicates if the responder is within the same organization as the form owner.|
|Enabled anyone can respond setting<sup>*</sup>|AllowAnonymousResponse|Form owner turns on the setting allowing any one to respond to the form.|
|Disabled anyone can respond setting<sup>*</sup>|DisallowAnonymousResponse|Form owner turns off the setting allowing any one to respond to the form.|
|Enabled specific people can respond setting<sup>*</sup>|EnableSpecificResponse|Form owner turns on the setting allowing only specific people or specific groups in the current organization to respond to the form.|
|Disabled specific people can respond setting<sup>*</sup>|DisableSpecificResponse|Form owner turns off the setting allowing only specific people or specific groups in the current organization to respond to the form.|
|Added specific responder<sup>*</sup>|AddSpecificResponder|Form owner adds a new user or group to the specific responders list.|
|Removed specific responder<sup>*</sup>|RemoveSpecificResponder|Form owner removes a user or group from the specific responders list.|
|Disabled collaboration<sup>*</sup>|DisableCollaboration|Form owner turns off the setting of collaboration on the form.|
|Enabled Office 365 work or school account collaboration<sup>*</sup>|EnableWorkOrSchoolCollaboration|Form owner turns on the setting allowing users with a Microsoft 365 work or school account to view and edit the form.|
|Enabled people in my organization collaboration<sup>*</sup>|EnableSameOrgCollaboration|Form owner turns on the setting allowing users in the current organization to view and edit the form.|
|Enabled specific people collaboration<sup>*</sup>|EnableSpecificCollaboaration|Form owner turns on the setting allowing only specific people or specific groups in the current organization to view and edit the form.|
|Connected to Excel workbook<sup>*</sup>|ConnectToExcelWorkbook|Connected the form to an Excel workbook. <br><br>Property ExcelWorkbookLink:string indicates the associated Excel workbook ID of the current form.|
|Created a collection|CollectionCreated|Form owner created a collection.|
|Updated a collection|CollectionUpdated|Form owner updated a collection property.|
|Deleted collection from the Recycle Bin|CollectionHardDeleted|Form owner hard-deleted a collection from the Recycle Bin.|
|Moved collection to the Recycle Bin|CollectionSoftDeleted|Form owner moved a collection to the Recycle Bin.|
|Renamed a collection|CollectionRenamed|Form owner changed the name of a collection.|
|Moved a form into collection|MovedFormIntoCollection|Form owner moved a form into a collection.|
|Moved a form out of collection|MovedFormOutofCollection|Form owner moved a form out of a collection.|

### Forms activities performed by coauthors and anonymous responders

Forms supports collaboration when forms are designed and when analyzing responses. A form collaborator is known as a *coauthor*. Coauthors can do everything a form owner can do, except delete or move a form. Forms also allows you to create a form that can be responded to anonymously. This means the responder doesn't have to be signed into your organization to respond to a form.

The following table describes the auditing activities and information in the audit record for activities performed by coauthors and anonymous responders.

|Activity type|Internal or external user|User ID that's logged|Organization logged in to|Forms user type|
|:-----|:-----|:-----|:-----|:-----|
|Coauthoring activities|Internal|UPN|Form owner's org|Coauthor|
|Coauthoring activities|External|UPN<br>|Coauthor's org<br>|Coauthor|
|Coauthoring activities|External|`urn:forms:coauthor#a0b1c2d3@forms.office.com`<br>(The second part of the ID is a hash, which will differ for different users)|Form owner's org<br>|Coauthor|
|Response activities|External|UPN<br>|Responder's org<br>|Responder|
|Response activities|External|`urn:forms:external#a0b1c2d3@forms.office.com`<br>(The second part of the User ID is a hash, which will differ for different users)|Form owner's org|Responder|
|Response activities|Anonymous|`urn:forms:anonymous#a0b1c2d3@forms.office.com`<br>(The second part of the User ID is a hash, which will differ for different users)|Form owner's org|Responder|

## Microsoft Planner activities

The following table lists the user and admin activities in Microsoft Planner that are logged for auditing. The table includes the friendly name that's displayed in the **Activities** column and the name of the corresponding operation that appears in the detailed information of an audit record and in the CSV file when you export the search results.

> [!NOTE]
> Auditing events for Microsoft Planner activities requires a paid Project Plan 1 license (or higher) in addition to the relevant Microsoft 365 license that includes entitlements to Audit (Premium).

| Friendly name | Operation | Description |
|:--------------|:----------|:------------|
| Read a plan | PlanRead | A plan is read by a user or an app. If the read operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, ContainerType indicates ContainerType.Invalid and ContainerId indicates null. |
| Created a plan | PlanCreated | A plan is created by a user or an app. If the create operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, ObjectId indicates null, ContainerType indicates ContainerType.Invalid and ContainerId indicates null. |
| Modified a plan | PlanModified | A plan is modified by a user or an app. |
| Deleted a plan | PlanDeleted | A plan is deleted by a user or an app. |
| Copied a plan | PlanCopied | A plan is copied by a user or an app. If the copy operation is a ResultStatus.Failure or ResultStatus.Failure, newPlanId indicates null, newContainerType indicates ContainerType.Invalid, and newContainerId indicates null. |
| Read a task | TaskRead | A task is read by a user or an app. If the read operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, PlanId indicates null. |
| Created a task | TaskCreated | A task is created by a user or an app. If the create operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, ObjectId indicates null and PlanId indicates null. |
| Modified a task | TaskModified | A task is modified by a user or an app. |
| Deleted a task | TaskDeleted | A task is deleted by a user or an app. |
| Assigned a task | TaskAssigned | A task's assignee is modified by a user or an app. This can be an unassigned task getting assigned or an assigned task has a new assignee. |
| Completed a task | TaskCompleted | A task is marked completed by a user or an app. |
| Created a roster | RosterCreated | A roster is created by a user or an app. If the create operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, ObjectId indicates null, MemberIds indicates an empty string. |
| Deleted a roster | RosterDeleted | A roster is deleted by a user or an app. |
| Added a member(s) to a roster | RosterMemberAdded | A member(s) is added to a roster. If the add operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, MemberIds indicates the list of member IDs attempted. |
| Removed a member(s) to a roster | RosterMemberDeleted | A member(s) is removed from a roster. If the remove operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, MemberIds indicates the list of member IDs attempted. |
| Read a list of plans | PlanListRead | A list of plans is queried by a user or an app. If the query operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, PlanList indicates an empty string. |
| Read a list of tasks | TaskListRead | A list of tasks is queried by a user or an app. If the query operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, TaskList indicates an empty string. |
| Updated tenant settings | TenantSettingsUpdated | Tenant settings are updated by a tenant admin. If the update operation is a ResultStatus.Failure or ResultStatus.AuthorizationFailure, ObjectId indicates the original settings, and TenantSettings indicates the tenant settings attempted. |
| Updated a roster's sensitivity label | RosterSensitivityLabelUpdated | A user or an app updates a roster's sensitivity label. |

## Microsoft Power Apps activities

You can search the audit log for app-related activities in Power Apps. These activities include creating, launching, and publishing an app. Assigning permissions to apps is also audited. For a description of all Power Apps activities, see [Activity logging for Power Apps](/power-platform/admin/logging-powerapps#what-events-are-audited).

## Microsoft Power Automate activities

You can search the audit log for activities in Power Automate (formerly called Microsoft Flow). These activities include creating, editing, and deleting flows, and changing flow permissions. For information about auditing for Power Automate activities, see the blog  [Power Automate audit events now available in compliance portal](https://flow.microsoft.com/blog/security-and-compliance-center).

## Microsoft Project for the web activities

You can search the audit log for activities in Microsoft Project for the web. Microsoft Project for the web is built on the [Microsoft Dataverse](https://powerplatform.microsoft.com/dataverse/) and has an associated Project Power App. To enable auditing for scenarios where the user is using the Microsoft Dataverse or the Project Power App, see the [System Settings Auditing tab](/power-platform/admin/system-settings-dialog-box-auditing-tab) guidance. For a list of entities related to Project for the web, see the [Export user data from Project for the web](/project-for-the-web/export-user-data-from-project-for-the-web#find-user-data-in-dataverse-with-the-advanced-find-search-feature) guidance.

For information about Microsoft Project for the web, see [Microsoft Project for the web](https://support.microsoft.com/office/get-started-with-project-for-the-web-50bf3e29-0f0d-4b7a-9d2c-7c78389b67ad).

>[!NOTE]
>Auditing events for Microsoft Project for the web activities requires a paid Project Plan 1 license (or higher) in addition to the relevant Microsoft 365 license that includes entitlements to Audit (Premium).

|Friendly name|Operation|Description|
|:------------|:--------|:----------|
|Created project|ProjectCreated|A project is created by a user or app.|
|Created roadmap|RoadmapCreated|A roadmap is created by a user or app.|
|Created roadmap item|RoadmapItemCreated|A roadmap item is created by a user or app.|
|Created task|TaskCreated|A task is created by a user or app.|
|Deleted project|ProjectDeleted|A project is deleted by a user or app.|
|Deleted roadmap|RoadmapDeleted|A roadmap is deleted by a user or app.|
|Deleted roadmap item|RoadmapItemDeleted|A roadmap item is deleted by a user or app.|
|Deleted task|TaskDeleted|A task is deleted by a user or app.|
|Project accessed|ProjectAccessed|A project is read or app.|
|Project home accessed|ProjectListAccessed|A list of projects and/or roadmaps is queried by a user.|
|Roadmap accessed|RoadmapAccessed|A roadmap is read by a user or app.|
|Roadmap item accessed|RoadmapItemAccessed|A roadmap item is read by a user or app.|
|Task accessed|TaskAccessed|A task is read by a user or app.|
|Updated project settings|ProjectForTheWebProjectSettings|Project settings is updated by an admin.|
|Updated roadmap|RoadmapUpdated|A roadmap is modified by a user or app.|
|Updated roadmap item|RoadmapItemUpdated|A roadmap item is modified by a user or app.|
|Updated roadmap settings|ProjectForTheWebRoadmaptSettings|Roadmap settings is updated by an admin.|
|Updated task|TaskUpdated|A task is modified by a user or app.|
|Updated project|ProjectUpdated|A project is modified by a user or app.|

## Microsoft Stream activities

You can search the audit log for activities in Microsoft Stream. These activities include video activities performed by users, group channel activities, and admin activities such as managing users, managing organization settings, and exporting reports. For a description of these activities, see the "Actions logged in Stream" section in [Audit Logs in Microsoft Stream](/stream/audit-logs#actions-logged-in-stream).

## Microsoft Teams activities

You can search the audit log for user and admin activities in Microsoft Teams. Teams is a chat-centered workspace in Microsoft 365. It brings a team's conversations, meetings, files, and notes together into a single place. For descriptions of the Teams activities that are audited, see [Search the audit log for events in Microsoft Teams](/microsoftteams/audit-log-events#teams-activities).

## Microsoft Teams Healthcare activities

If your organization is using the [Patients application](/MicrosoftTeams/expand-teams-across-your-org/healthcare/patients-app-overview) in Microsoft Teams, you can search the audit log for activities related to the using the Patients app. If your environment is configured to support Patients app, an additional activity group for these activities is available in the **Activities** picker list.

![Microsoft Teams Healthcare activities in Activities picker list.](../media/TeamsHealthcareAuditActivities.png)

For a description of the Patients app activities, see [Audit logs for Patients app](/MicrosoftTeams/expand-teams-across-your-org/healthcare/patients-audit).

## Microsoft Teams Shifts activities

If your organization is using the Shifts app in Microsoft Teams, you can search the audit log for activities related to the using the Shifts app. If your environment is configured to support Shifts apps, an additional activity group for these activities is available in the **Activities** picker list.

For a description of Shifts app activities, see [Search the audit log for events in Microsoft Teams](/microsoftteams/audit-log-events#shifts-in-teams-activities).

## Microsoft To Do activities

The following table lists the activities in Microsoft To Do that are logged in the Microsoft 365 audit log. For more information about Microsoft To Do, see [Support for Microsoft To Do](https://support.microsoft.com/todo).

> [!NOTE]
> Auditing events for Microsoft To Do activities requires a paid Project Plan 1 license (or higher) in addition to the relevant Microsoft 365 license that includes entitlements to Audit (Premium).

|Friendly name|Operation|Description|
|:------------|:--------|:----------|
|Accepted sharing link on folder|AcceptedSharingLinkOnFolder|Accepted sharing link for a folder.|
|Attachment created|AttachmentCreated|An attachment was created for a task.|
|Attachment updated|AttachmentUpdated|An attachment was updated.|
|Attachment deleted |AttachmentDeleted|An attachment was deleted.|
|Folder sharing link shared|FolderSharingLinkShared|Created a sharing link for a folder.|
|Linked entity deleted|LinkedEntityDeleted|A linked entity was deleted.|
|Linked entity updated|LinkedEntityUpdated|A linked entity was updated.|
|Linked entity created|LinkedEntityCreated|A linked entity of task was created.|
|SubTask created|SubTaskCreated|A subtask was created.|
|SubTask deleted|SubTaskDeleted|A subtask was deleted.|
|SubTask updated|SubTaskUpdated|A subtask was updated.|
|Task created|TaskCreated|A task was created.|
|Task deleted|TaskDeleted|A task was deleted.|
|Task read|TaskRead|A task was read.|
|Task updated|TaskUpdated|A task was updated.|
|TaskList created|TaskListCreated|A task list was created.|
|TaskList read|TaskListRead|A task list was read.|
|TaskList updated|TaskListUpdated |A task list was updated.|
|User invited|UserInvited|Invited user to a folder.|

## Microsoft Viva Insights activities

Viva Insights provides insight into how groups collaborate across your organization. The following table lists activities performed by users that are assigned the Administrator role or the Analyst roles in Viva Insights. Users assigned the Analyst role have full access to all service features and use the product to do analysis. Users assigned the Administrator role can configure privacy settings and system defaults, and can prepare, upload, and verify organizational data in Viva Insights. For more information, see [Introducing Microsoft Viva Insights](/viva/insights/introduction).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Accessed OData link|AccessedOdataLink|Analyst accessed the OData link for a query.|
|Canceled query|CanceledQuery|Analyst canceled a running query.|
|Created meeting exclusion|MeetingExclusionCreated|Analyst created a meeting exclusion rule.|
|Deleted result|DeletedResult|Analyst deleted a query result.|
|Downloaded report|DownloadedReport|Analyst downloaded a query result file.|
|Executed query|ExecutedQuery|Analyst ran a query.|
|Updated data access setting|UpdatedDataAccessSetting|Admin updated data access settings.|
|Updated privacy setting|UpdatedPrivacySetting|Admin updated privacy settings; for example,  minimum group size.|
|Uploaded organization data|UploadedOrgData|Admin uploaded organizational data file.|
|User logged in<sup>*</sup>| UserLoggedIn |A user signed in to their Microsoft 365 user account.|
|User logged off<sup>*</sup>| UserLoggedOff |A user signed out of their Microsoft 365 user account.
|Viewed Explore|ViewedExplore|Analyst viewed visualizations in one or more Explore page tabs.|

> [!NOTE]
> <sup>*</sup>An Azure Active Directory sign in and sign off activity event is created when a user signs in. This activity is logged even if you don't have Viva Insights turned on in your organization. For more information about user sign in activities, see [Sign-in logs in Azure Active Directory](/azure/active-directory/reports-monitoring/concept-sign-ins).

## Personal insights activities

The following table lists the activities in personal insights that are logged in the Microsoft 365 audit log. For more information about personal insights, see [Admin guide for personal insights](/viva/insights/personal/Overview/mya-for-admins).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Updated organization MyAnalytics settings|UpdatedOrganizationMyAnalyticsSettings|Admin updates organization-level settings for personal insights. |
|Updated user MyAnalytics settings|UpdatedUserMyAnalyticsSettings|Admin updates user settings for personal insights.|

## Power BI activities

You can search the audit log for activities in Power BI. For information about Power BI activities, see the "Activities audited by Power BI" section in [Using auditing within your organization](/power-bi/service-admin-auditing#activities-audited-by-power-bi).

Audit logging for Power BI isn't enabled by default. To search for Power BI activities in the audit log, you have to enable auditing in the Power BI admin portal. For instructions, see the "Audit logs" section in [Power BI admin portal](/power-bi/service-admin-portal#audit-logs).

## Quarantine activities

The following table lists the quarantine activities that you can search for in the audit log. For more information about quarantine, see [Quarantine email messages](../security/office-365-security/quarantine-about.md).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Deleted quarantine message|QuarantineDelete|An Admin or user deleted an email message that was deemed to be harmful.|
|Exported quarantine message|QuarantineExport|An Admin or  user exported an email message that was deemed to be harmful.|
|Previewed quarantine message|QuarantinePreview|An Admin or user previewed an email message that was deemed to be harmful.|
|Released quarantine message|QuarantineRelease|An Admin or  user released an email message from quarantine that was deemed to be harmful.|
|Viewed quarantine message's header|QuarantineViewHeader|An Admin or user viewed the header an email message that was deemed to be harmful.|
|Release request quarantine message|QuarantineReleaseRequest|A user requested the release of an email message that was deemed to be harmful.|

## Report activities

The following table lists the activities for usage reports that are logged in the Microsoft 365 audit log.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Updated usage report privacy settings|UpdateUsageReportsPrivacySetting|Admin updated privacy settings for usage reports. |

## Retention policy and retention label activities

The following table describes the configuration activities for [retention policies and retention labels](retention.md) when they were created, reconfigured, or deleted.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
| Changed adaptive scope membership |ApplicableAdaptiveScopeChange |Users, sites, or groups were added to or removed from the adaptive scope. These changes are the results of running the scope's query. Because the changes are system-initiated, the reported user displays as a GUID rather than a user account.|
| Configured settings for a retention policy |NewRetentionComplianceRule |Administrator configured the retention settings for a new retention policy. Retention settings include how long items are retained, and what happens to items when the retention period expires (such as deleting items, retaining items, or retaining and then deleting them). This activity also corresponds to running the [New-RetentionComplianceRule](/powershell/module/exchange/new-retentioncompliancerule) cmdlet.|
| Created adaptive scope |NewAdaptiveScope |Administrator created an adaptive scope.|
| Created retention label |NewComplianceTag |Administrator created a new retention label.|
| Created retention policy |NewRetentionCompliancePolicy|Administrator created a new retention policy.|
| Deleted adaptive scope | RemoveAdaptiveScope| Administrator deleted an adaptive scope.|
| Deleted settings from a retention policy| RemoveRetentionComplianceRule<br/>| Administrator deleted the configuration settings of a retention policy. Most likely, this activity is logged when an administrator deletes a retention policy or runs the [Remove-RetentionComplianceRule](/powershell/module/exchange/Remove-RetentionComplianceRule) cmdlet.|
| Deleted retention label |RemoveComplianceTag | Administrator deleted a retention label.|
| Deleted retention policy |RemoveRetentionCompliancePolicy<br/> |Administrator deleted a retention policy. |
| Enabled regulatory record option for retention labels<br/> |SetRestrictiveRetentionUI |Administrator ran the [Set-RegulatoryComplianceUI](/powershell/module/exchange/set-regulatorycomplianceui) cmdlet so that an administrator can then select the UI configuration option for a retention label to mark content as a regulatory record.|
| Updated adaptive scope | SetAdaptiveScope | Administrator changed the description or query for an existing adaptive scope. |
| Updated settings for a retention policy | SetRetentionComplianceRule | Administrator changed the retention settings for an existing retention policy. Retention settings include how long items are retained, and what happens to items when the retention period expires (such as deleting items, retaining items, or retaining and then deleting them). This activity also corresponds to running the [Set-RetentionComplianceRule](/powershell/module/exchange/set-retentioncompliancerule) cmdlet. |
| Updated retention label |SetComplianceTag  | Administrator updated an existing retention label.|
| Updated retention policy |SetRetentionCompliancePolicy |Administrator updated an existing a retention policy. Updates that trigger this event include adding or excluding content locations that the retention policy is applied to.|

## Role administration activities

The following table lists Azure AD role administration activities that are logged when an admin manages admin roles in the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339) or in the Azure management portal.

> [!NOTE]
> The operation names listed in the **Operation** column in the following table contain a period ( `.` ). You must include the period in the operation name if you specify the operation in a PowerShell command when searching the audit log, creating audit retention policies, creating alert policies, or creating activity alerts. Also be sure to use double quotation marks (`" "`) to contain the operation name.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Add member to Role|Add member to role.|Added a user to an admin role in Microsoft 365.|
|Removed a user from a directory role|Remove member from role.|Removed a user to from an admin role in Microsoft 365.|
|Set company contact information|Set company contact information.|Updated the company-level contact preferences for your organization. This includes email addresses for subscription-related email sent by Microsoft 365, and technical notifications about services.|

## Sensitive information types activities

The following table describes the audit events for activities involving creation and updating of [sensitive information types](/microsoft-365/compliance/create-a-custom-sensitive-information-type).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Created new sensitive information type| CreateRulePackage /  EditRulePackage* | A new sensitive information type was [created](/microsoft-365/compliance/create-a-custom-sensitive-information-type). This includes SIT created by copying an [out of the box SIT](/microsoft-365/compliance/create-a-custom-sensitive-information-type). </br><p>**Note**: This activity surfaces under the audit activities 'Created rule package' or 'Edited rule package'. </p>|
|Edited a sensitive information type|EditRulePackage| An existing sensitive information type was edited. This can include operations like adding/removing a pattern and editing the regex/keyword associated with the sensitive information type. </br><p>**Note:** This activity will surface under the audit activity "Edited rule package."</p> |
| Deleted a sensitive information type|EditRulePackage / RemoveRulePackage | An existing sensitive information type was deleted. </br><p>**Note:** This activity will surface under the audit activity “Edited rule package” or “Removed rule package.”</p> |

## Sensitivity label activities

The following table lists events that result from using [sensitivity labels](sensitivity-labels.md) with sites and items that are managed by Microsoft Purview. Items include documents, emails, and calendar events. For auto-labeling policies, items also include files and schematized data assets in Microsoft Purview Data Map.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Applied sensitivity label to site|SiteSensitivityLabelApplied|A sensitivity label was applied to a SharePoint site or Teams site that isn't group-connected.|
|Removed sensitivity label from site|SiteSensitivityLabelRemoved|A sensitivity label was removed from a SharePoint site or Teams site that isn't group-connected.|
|Applied sensitivity label to file|FileSensitivityLabelApplied <br /><br> SensitivityLabelApplied|A sensitivity label was applied to an item by using Microsoft 365 apps, Office on the web, or an auto-labeling policy. <br /><br>The operations for this activity are different depending on how the label was applied:<br /> - Office on the web or an auto-labeling policy (FileSensitivityLabelApplied) <br /> - Microsoft 365 apps (SensitivityLabelApplied)|
|Changed sensitivity label applied to file|FileSensitivityLabelChanged<br /><br>SensitivityLabelUpdated|A different sensitivity label was applied to an item. <br /><br>The operations for this activity are different depending on how the label was changed:<br /> - Office on the web or an auto-labeling policy (FileSensitivityLabelChanged) <br /> - Microsoft 365 apps (SensitivityLabelUpdated)|
|Changed sensitivity label on a site|SiteSensitivityLabelChanged|A different sensitivity label was applied to a SharePoint site or Teams site that isn't group-connected.|
|Removed sensitivity label from file|FileSensitivityLabelRemoved <br /><br> SensitivityLabelRemoved|A sensitivity label was removed from an item by using Microsoft 365 apps, Office on the web, an auto-labeling policy, or the [Unlock-SPOSensitivityLabelEncryptedFile](/powershell/module/sharepoint-online/unlock-sposensitivitylabelencryptedFile) cmdlet. <br /><br>The operations for this activity are different depending on how the label was removed:<br /> - Office on the web or an auto-labeling policy (FileSensitivityLabelRemoved) <br /> - Microsoft 365 apps (SensitivityLabelRemoved)|

Additional auditing information for sensitivity labels:

- When you use sensitivity labels for Microsoft 365 Groups, and therefore Teams sites that are group-connected, the labels are audited with group management in Azure Active Directory. For more information, see [Audit logs in Azure Active Directory](/azure/active-directory/reports-monitoring/concept-audit-logs).
- When you use sensitivity labels for Teams meeting invites, and Teams meeting options and chat, see [Search the audit log for events in Microsoft Teams](/microsoftteams/audit-log-events).
- When you use sensitivity labels with Power BI, see [Audit schema for sensitivity labels in Power BI](/power-bi/enterprise/service-security-sensitivity-label-audit-schema).
- When you use sensitivity labels with Microsoft Defender for cloud apps, see [Governing connected apps](/defender-cloud-apps/governance-actions) and the labeling information for file governance actions.
- When you apply sensitivity labels by using the Azure Information Protection client or scanner, or the Microsoft Purview Information Protection (MIP) SDK, see [Azure Information Protection audit log reference](/azure/information-protection/audit-logs).

## SharePoint list activities

The following table describes activities related to when users interact with lists and list items in SharePoint Online. Audit records for some SharePoint activities indicate the app@sharepoint user performed the activity of behalf of the user or admin who initiated the action. For more information, see [The app\@sharepoint user in audit records](#the-appsharepoint-user-in-audit-records).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Created list|ListCreated|A user created a SharePoint list.|
|Created list column|ListColumnCreated|A user created a SharePoint list column. A list column is a column that's attached to one or more SharePoint lists.|
|Created list content type|ListContentTypeCreated|A user created a list content type. A list content type is a content type that's attached to one or more SharePoint lists.|
|Created list item|ListItemCreated|A user created an item in an existing SharePoint list.|
|Created site column|SiteColumnCreated|A user created a SharePoint site column. A site column is a column that isn't attached to a list. A site column is also a metadata structure that can be used by any list in a given web.|
|Created site content type|Site ContentType Created|A user created a site content type. A site content type is a content type that's attached to the parent site.|
|Deleted list|ListDeleted|A user deleted a SharePoint list.|
|Deleted list column|List Column Deleted|A user deleted a SharePoint list column.|
|Deleted list content type|ListContentTypeDeleted|A user deleted a list content type.|
|Deleted list item|List Item Deleted|A user deleted a SharePoint list item.|
|Deleted site column|SiteColumnDeleted|A user deleted a SharePoint site column.|
|Deleted site content type|SiteContentTypeDeleted|A user deleted a site content type.|
|Recycled list item|ListItemRecycled|A user moved a SharePoint list item to the Recycle Bin.|
|Restored list|ListRestored|A user restored a SharePoint list from the Recycle Bin.|
|Restored list item|ListItemRestored|A user restored a SharePoint list item from the Recycle Bin.|
|Updated list|ListUpdated|A user updated a SharePoint list by modifying one or more properties.|
|Updated list column|ListColumnUpdated|A user updated a SharePoint list column by modifying one or more properties.|
|Updated list content type|ListContentTypeUpdated|A user updated a list content type by modifying one or more properties.|
|Updated list item|ListItemUpdated|A user updated a SharePoint list item by modifying one or more properties.|
|Updated site column|SiteColumnUpdated|A user updated a SharePoint site column by modifying one or more properties.|
|Updated site content type|SiteContentTypeUpdated|A user updated a site content type by modifying one or more properties.|

## Sharing and access request activities

The following table describes the user sharing and access request activities in SharePoint Online and OneDrive for Business. For sharing events, the **Detail** column under **Results** identifies the name of the user or group the item was shared with and whether that user or group is a member or guest in your organization. For more information, see [Use sharing auditing in the audit log](audit-log-sharing.md).

> [!NOTE]
> Users can be either  *members*  or  *guests*  based on the UserType property of the user object. A member is usually an employee, and a guest is usually a collaborator outside of your organization. When a user accepts a sharing invitation (and isn't already part of your organization), a guest account is created for them in your organization's directory. Once the guest user has an account in your directory, resources may be shared directly with them (without requiring an invitation).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Added permission level to site collection|PermissionLevelAdded|A permission level was added to a site collection.|
|Accepted access request|AccessRequestAccepted|An access request to a site, folder, or document was accepted and the requesting user has been granted access.|
|Accepted sharing invitation|SharingInvitationAccepted|User (member or guest) accepted a sharing invitation and was granted access to a resource. This event includes information about the user who was invited and the email address that was used to accept the invitation (they could be different). This activity is often accompanied by a second event that describes how the user was granted access to the resource, for example, adding the user to a group that has access to the resource.|
|Blocked sharing invitation|SharingInvitationBlocked|A sharing invitation sent by a user in your organization is blocked because of an external sharing policy that either allows or denies external sharing based on the domain of the target user. In this case, the sharing invitation was blocked because: <br/> The target user's domain isn't included in the list of allowed domains. <br/> Or <br/> The target user's domain is included in the list of blocked domains. <br/> For more information about allowing or blocking external sharing based on domains, see [Restricted domains sharing in SharePoint Online and OneDrive for Business](/sharepoint/restricted-domains-sharing).|
|Created access request|AccessRequestCreated|User requests access to a site, folder, or document they don't have permissions to access.|
|Created a company shareable link|CompanyLinkCreated|User created a company-wide link to a resource. company-wide links can only be used by members in your organization. They can't be used by guests.|
|Created an anonymous link|AnonymousLinkCreated|User created an anonymous link to a resource. Anyone with this link can access the resource without having to be authenticated.|
|Created secure link|SecureLinkCreated|A secure sharing link was created to this item.|
|Created sharing invitation|SharingInvitationCreated|User shared a resource in SharePoint Online or OneDrive for Business with a user who isn't in your organization's directory.|
|Deleted secure link|SecureLinkDeleted|A secure sharing link was deleted.|
|Denied access request|AccessRequestDenied|An access request to a site, folder, or document was denied.|
|Removed a company shareable link|CompanyLinkRemoved|User removed a company-wide link to a resource. The link can no longer be used to access the resource.|
|Removed an anonymous link|AnonymousLinkRemoved|User removed an anonymous link to a resource. The link can no longer be used to access the resource.|
|Shared file, folder, or site|SharingSet|User (member or guest) shared a file, folder, or site in SharePoint or OneDrive for Business with a user in your organization's directory. The value in the **Detail** column for this activity identifies the name of the user the resource was shared with and whether this user is a member or a guest. <br/><br/> This activity is often accompanied by a second event that describes how the user was granted access to the resource. For example, adding the user to a group that has access to the resource.|
|Updated access request|AccessRequestUpdated|An access request to an item was updated.|
|Updated an anonymous link|AnonymousLinkUpdated|User updated an anonymous link to a resource. The updated field is included in the EventData property when you export the search results.|
|Updated sharing invitation|SharingInvitationUpdated|An external sharing invitation was updated.|
|Used an anonymous link|AnonymousLinkUsed|An anonymous user accessed a resource by using an anonymous link. The user's identity might be unknown, but you can get other details such as the user's IP address.|
|Unshared file, folder, or site|SharingRevoked|User (member or guest) unshared a file, folder, or site that was previously shared with another user.|
|Used a company shareable link|CompanyLinkUsed|User accessed a resource by using a company-wide link.|
|Used secure link|SecureLinkUsed|A user used a secure link.|
|User added to secure link|AddedToSecureLink|A user was added to the list of entities who can use a secure sharing link.|
|User removed from secure link|RemovedFromSecureLink|A user was removed from the list of entities who can use a secure sharing link.|
|Withdrew sharing invitation|SharingInvitationRevoked|User withdrew a sharing invitation to a resource.|

## Site administration activities

The following table lists events that result from site administration tasks in SharePoint Online. As previously explained, audit records for some SharePoint activities will indicate the app@sharepoint user performed the activity of behalf of the user or admin who initiated the action. For more information, see [The app\@sharepoint user in audit records](#the-appsharepoint-user-in-audit-records).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Added allowed data location|AllowedDataLocationAdded|A SharePoint or global administrator added an allowed data location in a multi-geo environment.|
|Added exempt user agent|ExemptUserAgentSet|A SharePoint or global administrator added a user agent to the list of exempt user agents in the SharePoint admin center.|
|Added geo location admin|GeoAdminAdded|A SharePoint or global administrator added a user as a geo admin of a location.|
|Allowed user to create groups|AllowGroupCreationSet|Site administrator or owner adds a permission level to a site that allows a user assigned that permission to create a group for that site.|
|Canceled site geo move|SiteGeoMoveCancelled|A SharePoint or global administrator successfully cancels a SharePoint or OneDrive site geo move. The Multi-Geo capability lets an organization span multiple Microsoft datacenter geographies, which are called geos. For more information, see [Multi-Geo Capabilities in OneDrive and SharePoint Online](../enterprise/multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md).|
|Changed a sharing policy|SharingPolicyChanged|A SharePoint or global administrator changed a SharePoint sharing policy by using the Microsoft 365 admin center, SharePoint admin center, or SharePoint Online Management Shell. Any change to the settings in the sharing policy in your organization will be logged. The policy that was changed is identified in the **ModifiedProperties** field in the detailed properties of the event record.|
|Changed device access policy|DeviceAccessPolicyChanged|A SharePoint or global administrator changed the unmanaged devices policy for your organization. This policy controls access to SharePoint, OneDrive, and Microsoft 365 from devices that aren't joined to your organization. Configuring this policy requires an Enterprise Mobility + Security subscription. For more information, see [Control access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices).|
|Changed exempt user agents|CustomizeExemptUsers|A SharePoint or global administrator customized the list of exempt user agents in the SharePoint admin center. You can specify which user agents to exempt from receiving an entire web page to index. This means when a user agent you've specified as exempt encounters an InfoPath form, the form is returned as an XML file, instead of an entire web page. This makes indexing InfoPath forms faster.|
|Changed network access policy|NetworkAccessPolicyChanged|A SharePoint or global administrator changed the location-based access policy (also called a trusted network boundary) in the SharePoint admin center or by using SharePoint Online PowerShell. This type of policy controls who can access SharePoint and OneDrive resources in your organization based on authorized IP address ranges that you specify. For more information, see [Control access to SharePoint Online and OneDrive data based on network location](/sharepoint/control-access-based-on-network-location).|
|Completed site geo move|SiteGeoMoveCompleted|A site geo move that was scheduled by a global administrator in your organization was successfully completed. The Multi-Geo capability lets an organization span multiple Microsoft datacenter geographies, which are called geos. For more information, see [Multi-Geo Capabilities in OneDrive and SharePoint Online](../enterprise/multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md).|
|Created Sent To connection|SendToConnectionAdded|A SharePoint or global administrator creates a new Send To connection on the Records management page in the SharePoint admin center. A Send To connection specifies settings for a document repository or a records center. When you create a Send To connection, a Content Organizer can submit documents to the specified location.|
|Created site collection|SiteCollectionCreated|A SharePoint or global administrator creates a site collection in your SharePoint Online organization or a user provisions their OneDrive for Business site.|
|Deleted orphaned hub site|HubSiteOrphanHubDeleted|A SharePoint or global administrator deleted an orphan hub site, which is a hub site that doesn't have any sites associated with it. An orphaned hub is likely caused by the deletion of the original hub site.|
|Deleted Sent To connection|SendToConnectionRemoved|A SharePoint or global administrator deletes a Send To connection on the Records management page in the SharePoint admin center.|
|Deleted site|SiteDeleted|Site administrator deletes a site.|
|Enabled document preview|PreviewModeEnabledSet|Site administrator enables document preview for a site.|
|Enabled legacy workflow|LegacyWorkflowEnabledSet|Site administrator or owner adds the SharePoint 2013 Workflow Task content type to the site. Global administrators can also enable work flows for the entire organization in the SharePoint admin center.|
|Enabled Office on Demand|OfficeOnDemandSet|Site administrator enables Office on Demand, which lets users access the latest version of Office desktop applications. Office on Demand is enabled in the SharePoint admin center and requires a Microsoft 365 subscription that includes full, installed Office applications.|
|Enabled result source for People Searches|PeopleResultsScopeSet|Site administrator creates the result source for People Searches for a site.|
|Enabled RSS feeds|NewsFeedEnabledSet|Site administrator or owner enables RSS feeds for a site. Global administrators can enable RSS feeds for the entire organization in the SharePoint admin center.|
|Joined site to hub site|HubSiteJoined|A site owner associates their site with a hub site.|
|Modified site collection quota|SiteCollectionQuotaModified|Site administrator modifies the quota for a site collection.|
|Registered hub site|HubSiteRegistered|A SharePoint or global administrator creates a hub site. The results are that the site is registered to be a hub site.|
|Removed allowed data location|AllowedDataLocationDeleted|A SharePoint or global administrator removed an allowed data location in a multi-geo environment.|
|Removed geo location admin|GeoAdminDeleted|A SharePoint or global administrator removed a user as a geo admin of a location.|
|Renamed site|SiteRenamed|Site administrator or owner renames a site|
|Scheduled site geo move|SiteGeoMoveScheduled|A SharePoint or global administrator successfully schedules a SharePoint or OneDrive site geo move. The Multi-Geo capability lets an organization span multiple Microsoft datacenter geographies, which are called geos. For more information, see [Multi-Geo Capabilities in OneDrive and SharePoint Online](../enterprise/multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md).|
|Set host site|HostSiteSet|A SharePoint or global administrator changes the designated site to host personal or OneDrive for Business sites.|
|Set storage quota for geo location|GeoQuotaAllocated|A SharePoint or global administrator configured the storage quota for a geo location in a multi-geo environment.|
|Unjoined site from hub site|HubSiteUnjoined|A site owner disassociates their site from a hub site.|
|Unregistered hub site|HubSiteUnregistered|A SharePoint or global administrator unregisters a site as a hub site. When a hub site is unregistered, it no longer functions as a hub site.|

## Site permissions activities

The following table lists events related to assigning permissions in SharePoint and using groups to give (and revoke) access to sites. As previously explained, audit records for some SharePoint activities will indicate the app@sharepoint user performed the activity of behalf of the user or admin who initiated the action. For more information, see [The app\@sharepoint user in audit records](#the-appsharepoint-user-in-audit-records).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Added site collection admin|SiteCollectionAdminAdded|Site collection administrator or owner adds a person as a site collection administrator for a site. Site collection administrators have full control permissions for the site collection and all subsites. This activity is also logged when an admin gives themselves access to a user's OneDrive account (by editing the user profile in the SharePoint admin center or by [using the Microsoft 365 admin center](/office365/admin/add-users/get-access-to-and-back-up-a-former-user-s-data)).|
|Added user or group to SharePoint group|AddedToGroup|User added a member or guest to a SharePoint group. This might have been an intentional action or the result of another activity, such as a sharing event.|
|Broke permission level inheritance|PermissionLevelsInheritanceBroken|An item was changed so that it no longer inherits permission levels from its parent.|
|Broke sharing inheritance|SharingInheritanceBroken|An item was changed so that it no longer inherits sharing permissions from its parent.|
|Created group|GroupAdded|Site administrator or owner creates a group for a site, or performs a task that results in a group being created. For example, the first time a user creates a link to share a file, a system group is added to the user's OneDrive for Business site. This event can also be a result of a user creating a link with edit permissions to a shared file.|
|Deleted group|GroupRemoved|User deletes a group from a site.|
|Modified access request setting|WebRequestAccessModified|The access request settings were modified on a site.|
|Modified 'Members Can Share' setting|WebMembersCanShareModified|The **Members Can Share** setting was modified on a site.|
|Modified permission level on a site collection|PermissionLevelModified|A permission level was changed on a site collection.|
|Modified site permissions|SitePermissionsModified|Site administrator or owner (or system account) changes the permission level that is assigned to a group on a site. This activity is also logged if all permissions are removed from a group. <br/><br/> **NOTE**: This operation has been deprecated in SharePoint Online. To find related events, you can search for other permission-related activities such as **Added site collection admin**, **Added user or group to SharePoint group**, **Allowed user to create groups**, **Created group**, and **Deleted group.**|
|Removed permission level from site collection|PermissionLevelRemoved|A permission level was removed from a site collection.|
|Removed site collection admin|SiteCollectionAdminRemoved|Site collection administrator or owner removes a person as a site collection administrator for a site. This activity is also logged when an admin removes themselves from the list of site collection administrators for a user's OneDrive account (by editing the user profile in the SharePoint admin center).  To return this activity in the audit log search results, you have to search for all activities.|
|Removed user or group from SharePoint group|RemovedFromGroup|User removed a member or guest from a SharePoint group. This might have been an intentional action or the result of another activity, such as an unsharing event.|
|Requested site admin permissions|SiteAdminChangeRequest|User requests to be added as a site collection administrator for a site collection. Site collection administrators have full control permissions for the site collection and all subsites.|
|Restored sharing inheritance|SharingInheritanceReset|A change was made so that an item inherits sharing permissions from its parent.|
|Updated group|GroupUpdated|Site administrator or owner changes the settings of a group for a site. This can include changing the group's name, who can view or edit the group membership, and how membership requests are handled.|

## Synchronization activities

The following table lists file synchronization activities in SharePoint Online and OneDrive for Business.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Allowed computer to sync files|ManagedSyncClientAllowed|User successfully establishes a sync relationship with a site. The sync relationship is successful because the user's computer is a member of a domain that's been added to the list of domains (called the *safe recipients list*) that can access document libraries in your organization. <br/><br/> For more information about this feature, see [Use PowerShell cmdlets to enable OneDrive sync for domains that are on the safe recipients list](/powershell/module/sharepoint-online/).|
|Blocked computer from syncing files|UnmanagedSyncClientBlocked|User tries to establish a sync relationship with a site from a computer that isn't a member of your organization's domain or is a member of a domain that hasn't been added to the list of domains (called the  *safe recipients list)*  that can access document libraries in your organization. The sync relationship isn't allowed, and the user's computer is blocked from syncing, downloading, or uploading files on a document library. <br/><br/> For information about this feature, see [Use PowerShell cmdlets to enable OneDrive sync for domains that are on the safe recipients list](/powershell/module/sharepoint-online/).|
|Downloaded files to computer|FileSyncDownloadedFull|User downloads a file to their computer from a SharePoint document library or OneDrive for Business using OneDrive sync app (OneDrive.exe).|
|Downloaded file changes to computer|FileSyncDownloadedPartial|This event has been deprecated along with the old OneDrive for Business sync app (Groove.exe).|
|Uploaded files to document library|FileSyncUploadedFull|User uploads a new file or changes to a file in SharePoint document library or OneDrive for Business using OneDrive sync app (OneDrive.exe).|
|Uploaded file changes to document library|FileSyncUploadedPartial|This event has been deprecated along with the old OneDrive for Business sync app (Groove.exe).|

## SystemSync activities

The following table lists the activities for SystemSync that are logged in the Microsoft 365 audit log.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Data Share Created|DataShareCreated|When the data export is created by the user.|
|Data Share Deleted|DataShareDeleted|When the data export is deleted by the user.|
|Generate Copy Of Lake Data|GenerateCopyOfLakeData|When the copy of Lake Data is generated.|
|Download Copy Of Lake Data|DownloadCopyOfLakeData|When the copy of Lake Data is downloaded.|

## User administration activities

The following table lists user administration activities that are logged when an admin adds or changes a user account by using the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339) or the Azure management portal.

> [!NOTE]
> The operation names listed in the **Operation** column in the following table contain a period ( `.` ). You must include the period in the operation name if you specify the operation in a PowerShell command when searching the audit log, creating audit retention policies, creating alert policies, or creating activity alerts. Also be sure to use double quotation marks (`" "`) to contain the operation name.

|Activity|Operation|Description|
|:-----|:-----|:-----|
|Added user|Add user.|A user account was created.|
|Changed user license|Change user license.|The license assigned to a user what changed. To see what licenses were changes, see the corresponding **Updated user** activity.|
|Changed user password|Change user password.|A user changes their password. Self-service password reset has to be enabled (for all or selected users) in your organization to allow users to reset their password. You can also track self-service password reset activity in Azure Active Directory. For more information, see [Reporting options for Azure AD password management](/azure/active-directory/authentication/howto-sspr-reporting).
|Deleted user|Delete user.|A user account was deleted.|
|Reset user password|Reset user password.|Administrator resets the password for a user.|
|Set property that forces user to change password|Set force change user password.|Administrator set the property that forces a user to change their password the next time the user signs in to Microsoft 365.|
|Set license properties|Set license properties.|Administrator modifies the properties of a licensed assigned to a user.|
|Updated user|Update user.|Administrator changes one or more properties of a user account. For a list of the user properties that can be updated, see the "Update user attributes" section in [Azure Active Directory Audit Report Events](/azure/active-directory/reports-monitoring/concept-audit-logs).|

## Viva Goals activities

The following table lists the user and admin activities in Viva Goals that are logged for auditing. The table includes the friendly name that's displayed in the Activities column and the name of the corresponding operation that appears in the detailed information of an audit record and in the CSV file when you export the search results.

[Search the audit log in the Microsoft Purview compliance portal](audit-log-search.md) details how you can search for the audit logs from the compliance portal. The user needs to be a global admin or have audit read permissions to access audit logs. You can use the Activities filter to search for specific activities and to list all Viva Goals activities you can choose 'VivaGoals' in the Record type filter. You can also use the date range boxes and the Users list to narrow the search results further.

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Organization created  |Organization created  |Admin or the user has created a new organization on Viva Goals.  |
|User added |User added |A new user has been added to an organization on Viva Goals.  |
|User deactivated |User deactivated |A user has been deactivated in an organization. |
|User deleted |User deleted|A user has been deleted from an organization on Viva Goals. |
|User logged in |User logged in |User has logged into Viva Goals. |
|Team added |Team added |A new team has been created within an organization on Viva Goals. |
|Team updated |Team updated |A team within an organization on Viva Goals has been modified or updated.  |
|Team deleted |Team deleted |A team within an organization on Viva Goals has been deleted by the user.|
|Data exported |Data exported |A user has exported list of OKRs or list of users in an organization on Viva Goals.|
|Goals policy updated |Goals policy updated |The global admin has modified the policy or settings at the tenant level on Viva Goals. For example, the global admin has configured who can create organizations on Viva Goals.  |
|Organization settings updated |Organization settings updated |The user (typically Organization owners or admins) has updated organization specific settings on Viva Goals.  |
|Organization  integrations updated |Organization  integrations updated |The user (typically Organization owners or admins) has configured a third party integration or updated an existing third party integration for an organization on Viva Goals.  |
|OKR or Project created |OKR or Project created |User has created an OKR or Project on Viva Goals.  |
|OKR or Project updated |OKR or Project updated |An OKR/Project has been modified or a check-in has been made by the user or an integration on Viva Goals.  |
|OKR or Project deleted |OKR or Project deleted |User has deleted an OKR or Project.  |
|Dashboard created |Dashboard created |User has created a new dashboard on Viva Goals |
|Dashboard updated |Dashboard updated |User has updated a dashboard on Viva Goals |
|Dashboard deleted |Dashboard deleted |User has deleted a dashboard on Viva Goals.  |

## Viva Engage activities

The following table lists the user and admin activities in Viva Engage that are logged in the audit log. To return Viva Engage-related activities from the audit log, you have to select **Show results for all activities** in the **Activities** list. Use the date range boxes and the **Users** list to narrow the search results.

> [!NOTE]
> Some Viva Engage audit activities are only available in Audit (Premium). That means users must be assigned the appropriate license before these activities are logged in the audit log. For more information about activities only available in Audit (Premium), see [Audit (Premium) in Microsoft 365](audit-premium.md#audit-premium-events). For Audit (Premium) licensing requirements, see [Auditing solutions in Microsoft 365](audit-solutions-overview.md#licensing-requirements). <br/><br/>In the following table, Audit (Premium) activities are highlighted with an asterisk (*).

|Friendly name|Operation|Description|
|:-----|:-----|:-----|
|Changed data retention policy|SoftDeleteSettingsUpdated|Verified admin updates the setting for the network data retention policy to either Hard Delete or Soft Delete. Only verified admins can perform this operation.|
|Changed network configuration|NetworkConfigurationUpdated|Network or verified admin changes the Viva Engage network's configuration. This includes setting the interval for exporting data and enabling chat.|
|Changed network profile settings|ProcessProfileFields|Network or verified admin changes the information that appears on member profiles for network users network.|
|Changed private content mode|SupervisorAdminToggled|Verified admin turns  *Private Content Mode*  on or off. This mode lets an admin view the posts in private groups and view private messages between individual users (or groups of users). Only verified admins only can perform this operation.|
|Changed security configuration|NetworkSecurityConfigurationUpdated|Verified admin updates the Viva Engage network's security configuration. This includes setting password expiration policies and restrictions on IP addresses. Only verified admins can perform this operation.|
|Created file|FileCreated|User uploads a file.|
|Created group|GroupCreation|User creates a group.|
|Created message<sup>*</sup>|MessageCreated|User creates a message.|
|Deleted group|GroupDeletion|A group is deleted from Viva Engage.|
|Deleted message|MessageDeleted|User deletes a message.|
|Downloaded file|FileDownloaded|User downloads a file.|
|Exported data|DataExport|Verified admin exports Viva Engage network data. Only verified admins can perform this operation.|
|Failed to access community<sup>*</sup>|CommunityAccessFailure|User failed to access a community.|
|Failed to access file<sup>*</sup>|FileAccessFailure|User failed to access a file.|
|Failed to access message<sup>*</sup>|MessageAccessFailure|User failed to access a message.|
|Reacted to message|MarkedMessageChanged|User reacted to a message.|
|Shared file|FileShared|User shares a file with another user.|
|Suspended network user|NetworkUserSuspended|Network or verified admin suspends (deactivates) a user from Viva Engage.|
|Suspended user|UserSuspension|User account is suspended (deactivated).|
|Updated file description|FileUpdateDescription|User changes the description of a file.|
|Updated file name|FileUpdateName|User changes the name of a file.|
|Updated message<sup>*</sup>|MessageUpdated|User updates a message.|
|Viewed file|FileVisited|User views a file.|
|Viewed message<sup>*</sup>|MessageViewed|User views a message.|
