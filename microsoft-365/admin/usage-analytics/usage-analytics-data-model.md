---
title: "Microsoft 365 usage analytics data model"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 02/19/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 08c5307c-4a6b-4761-8410-a6c96725760f
description: "Learn how usage analytics connects to an API and provides monthly trend of usage of various Microsoft 365 services.  "
---

# Microsoft 365 usage analytics data model

## Data for the Microsoft 365 usage analytics tables

Microsoft 365 usage analytics connects to an API that exposes a multidimensional data model. The APIs that Microsoft 365 usage analytics uses to generate its data are from the various, generally available, Graph APIs. The function of the Microsoft 365 usage analytics API by itself isn't generally available.
  
> [!NOTE]
> For more information, see [Working with Microsoft 365 usage reports in Microsoft Graph](/graph/api/resources/report). 
  
This API provides information about the monthly trend of usage of the various Microsoft 365 services. For the exact data returned by the API refer to the table in the following section.
  
## Data tables returned by the Microsoft 365 Reporting API

|**Table name**|**Information in the table**|**Date range**|
|:-----|:-----|:-----|
|Tenant Product Usage  <br/> |Contains monthly totals of enabled, active users, month-over-month retained users, first-time users, and the cumulative active users.  <br/> |Contains monthly aggregated data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant Product Activity  <br/> |Contains monthly totals of activities and active user count for various activities within the products.  <br/> See [active user definition](active-user-in-usage-reports.md) for information about the activities within a product that are returned in this data table.  <br/> |Contains monthly aggregated data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant Office Licenses  <br/> |Contains data about number of Microsoft Office subscriptions assigned to users  <br/> |Contains end-of-month state data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant Mailbox Usage  <br/> |Contains data about the user's mailbox, for total mailbox count and how storage is used.  <br/> |Contains end-of-month state data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant Client Usage  <br/> |Contains data about the number of users actively using specific client/devices to connect to Exchange Online, Skype for Business and Viva Engage.  <br/> |Contains monthly aggregated data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant SharePoint Online Usage  <br/> |Contains data about the SharePoint sites, covering Team or Groups sites such as total number of sites, number of documents on site, file count by activity type and storage used.  <br/> |Contains end-of-month state data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant OneDrive for Business Usage  <br/> |Contains data about the OneDrive accounts such as number of accounts, number of documents across OneDrives, storage used, file count by activity type.  <br/> |Contains end-of-month state data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant Microsoft 365 Groups Usage  <br/> |Contains data about Microsoft 365 Groups usage including Mailbox, SharePoint, and Viva Engage.  <br/> |Contains end-of-month state data for a rolling 12-month period including the current partial month.  <br/> |
|Tenant Office Activation  <br/> |Contains data about number of Office subscription activations, count of activation per device (Android/iOS/Mac/PC), activations by service plan, for example, Microsoft 365 Apps for enterprise, Visio, Project.  <br/> |Contains end-of-month state data for a rolling 12-month period including the current partial month.  <br/> |
|User State  <br/> |Contains metadata about users, including user display name, products assigned, location, department, title, company. This data is about users who were assigned a license during the last complete month. Every user is uniquely represented by a user ID.  <br/> |This data is about users that had a license assigned during the last complete month.  <br/> |
|User Activity  <br/> |Contains per-user level information about activity performed by licensed users.  <br/> See [active user definition](active-user-in-usage-reports.md) for information about the activities within a product that are returned in this data table.  <br/> |This data is about users that performed an activity in any of the services during the last complete month.  <br/> |
   
Expand the following sections to see the detailed information for each data table.
  
### Data table - User State

This table provides user level details for all users that have a license assigned to them during the last complete month. It brings in data from the Azure Active Directory.
  
|**Column name**|**Column description**|
|:-----|:-----|
|UserId  <br/> |Unique user ID that represents a user and enables joining with other data tables within the data set.  <br/> |
|Timeframe  <br/> |Month value for which this table has data for.  <br/> |
|UPN  <br/> |User principal name, uniquely identifies the user to be able to join with other external data sources.  <br/> |
|DisplayName  <br/> |User's display name.  <br/> |
|IDType  <br/> |ID type is set to 1 if the user is a Viva Engage user who connects by using their Viva Engage ID or 0 if they connect to Viva Engage by using their Microsoft 365 ID.  <br/> Value is 1 to represent that this user connects to Viva Engage with their Viva Engage ID and not their Microsoft 365 ID  <br/> |
|HasLicenseEXO  <br/> |Set to true if user is assigned a license and enabled to use Exchange on the last day of the month.  <br/> |
|HasLicenseODB  <br/> |Set to true if user is assigned a license and enabled to use OneDrive for Business on the last day of the month.  <br/> |
|HasLicenseSPO  <br/> |Set to true if user is assigned a license and enabled to use SharePoint Online on the last day of the month.  <br/> |
|HasLicenseYAM  <br/> |Set to true if user is assigned a license and enabled to use Viva Engage on the last day of the month.  <br/> |
|HasLicenseSFB  <br/> |Set to true if user is assigned a license and enabled to use Skype For Business on the last day of the month.  <br/> |
|HasLicenseTeams  <br/> |Set to true if user is assigned a license and enable to use Microsoft Teams on the last day of the month.  <br/> |
|Company  <br/> |Company data represented in Azure Active Directory for this user.  <br/> |
|Department  <br/> |Department data represented in Azure Active Directory for this user.  <br/> |
|LocationCity  <br/> |City data represented in Azure Active Directory for this user.  <br/> |
|LocationCountry  <br/> |Country/region data represented in Azure Active Directory for this user.  <br/> |
|LocationState  <br/> |State data represented in Azure Active Directory for this user.  <br/> |
|LocationOffice  <br/> |User's office.  <br/> |
|Title  <br/> |Title data represented in Azure Active Directory for this user.  <br/> |
|Deleted  <br/> |True if the user has been deleted from Microsoft 365 in that last complete month.  <br/> |
|DeletedDate  <br/> |Date when the user was deleted from Microsoft 365.  <br/> |
|YAM_State  <br/> |States of the user in the Viva Engage system, can be active, deleted, or suspended.  <br/> |
|YAM_ActivationDate  <br/> |Date the user entered the state of being active in Viva Engage.  <br/> |
|YAM_DeletionDate  <br/> |Date the user entered the state of being deleted in Viva Engage.  <br/> |
|YAM_SuspensionDate  <br/> |Date the user entered the state of being suspended in Viva Engage.  <br/> |
   
### Data table - User Activity

This table contains data about each user who had an activity in any of the services in the previous month.
  
|**Column name**|**Column description**|
|:-----|:-----|
|UserID  <br/> |Unique user ID that represents a user and enables joining with other data tables within the data set.  <br/> |
|IDType  <br/> |ID type is set to 1 if the user is a Viva Engage user who connects by using their Viva Engage ID or 0 if they connect to Viva Engage by using their Microsoft 365 ID.  <br/> Value is 1 to represent that this user connects to Viva Engage with their Viva Engage ID and not their Microsoft 365 ID  <br/> |
|Timeframe  <br/> |Month value for which this table represents data for.  <br/> |
|EXO_EmailSent  <br/> |Number of emails sent.  <br/> |
|EXO_EmailReceived  <br/> |Number of emails received.  <br/> |
|EXO_EmailRead  <br/> |Number of emails read activity the user performed, it could be multiple times reading an already read email, or an email received previously.  <br/> |
|EXO_AppointmentCreated  <br/> |Number of appointments created.  <br/> |
|EXO_MeetingAccepted  <br/> |Number of meetings accepted.  <br/> |
|EXO_MeetingCancelled  <br/> |Number of meetings canceled.  <br/> |
|EXO_MeetingDeclined  <br/> |Number of meetings declined.  <br/> |
|EXO_MeetingSent  <br/> |Number of meetings sent.  <br/> |
|ODB_FileViewedModified  <br/> |Number of files this user interacted with on any OneDrive for Business (for example, created, updated, deleted, viewed, or downloaded).  <br/> |
|ODB_FileSynched  <br/> |Number of files this user synchronized on any OneDrive for Business.  <br/> |
|ODB_FileSharedInternally  <br/> |Number of files this user shared internally from any OneDrive for Business, or with users within groups (that might include external users).  <br/> |
|ODB_FileSharedExternally  <br/> |Number of files this user shared externally from any OneDrive for Business.  <br/> |
|ODB_AccessedByOwner  <br/> |Number of sites the user interacted with that reside on their own OneDrive for Business.  <br/> |
|ODB_AccessedByOthers  <br/> |Number of sites this user interacted with which reside on another user's OneDrive for Business.  <br/> |
|SPO_GroupFileViewedModified  <br/> |Number of files this user interacted with on any group site.  <br/> |
|SPO_GroupFileSynched  <br/> |Number of files this user synchronized on any group site.  <br/> |
|SPO_GroupFileSharedInternally  <br/> |The count of files that have been shared with users within the organization, or with users within groups (that might include external users).  <br/> |
|SPO_GroupFileSharedExternally  <br/> |Number of files this user shared externally from any group site.  <br/> |
|SPO_GroupAccessedByOwner  <br/> |Number of sites the user interacted with that reside on a group site that they own.  <br/> |
|SPO_GroupAccessedByOthers  <br/> |Number of sites the user interacted with that reside on a group site that another user owns.  <br/> |
|SPO_OtherFileViewedModified  <br/> |Number of files with which this user interacted on any other site.  <br/> |
|SPO_OtherFileSynched  <br/> |Number of files this user synchronized from any other site.  <br/> |
|SPO_OtherFileSharedInternally  <br/> |Number of files this user shared internally from any other site, or with users within groups (that might include external users). <br/> |
|SPO_OtherFileSharedExternally  <br/> |Number of files this user shared externally from any other site.  <br/> |
|SPO_OtherAccessedByOwner  <br/> |Number of sites the user interacted with that reside on other site that they own.  <br/> |
|SPO_OtherAccessedByOthers  <br/> |Number of sites the user interacted with that reside on other site that another user owns.  <br/> |
|SPO_TeamFileViewedModified  <br/> |Number of files with which this user interacted on any team site.  <br/> |
|SPO_TeamFileSynched  <br/> |Number of files this user synchronized from any team site.  <br/> |
|SPO_TeamFileSharedInternally  <br/> |Number of files this user shared internally from any team site, or with users within groups (that might include external users).  <br/> |
|SPO_TeamFileSharedExternally  <br/> |Number of files this user shared externally from any team site.  <br/> |
|SPO_TeamAccessedByOwner  <br/> |Number of sites the user interacted with that reside on a team site that they own.  <br/> |
|SPO_TeamAccessedByOthers  <br/> |Number of sites the user interacted with that reside on a team site that another user owns.  <br/> |
|Teams_ChatMessages  <br/> |Number of chat messages sent.  <br/> |
|Teams_ChannelMessage  <br/> |Number of messages posted to channels.  <br/> |
|Teams_CallParticipate  <br/> |Number of calls the user participated in.  <br/> |
|Teams_MeetingParticipate  <br/> |Number of meetings the user joined.  <br/> |
|Teams_HasOtherAction  <br/> |Boolean value if the user performed other actions in Microsoft Teams.  <br/> |
|YAM_MessagePost  <br/> |Number of Viva Engage messages this user posted.  <br/> |
|YAM_MessageLiked  <br/> |Number of Viva Engage messages this user liked.  <br/> |
|YAM_MessageRead  <br/> |Number of Viva Engage messages this user read.  <br/> |
|SFB_P2PSummary  <br/> |Number of peer-to-peer sessions this user took part in.  <br/> |
|SFB_ConfOrgSummary  <br/> |Number of conference sessions this user organized.  <br/> |
|SFB_ConfPartSummary  <br/> |Number of conference sessions this user participated in.  <br/> |

> [!NOTE]
> Teams_HasOtherAction means user is considered active but has a zero value for the Chat Messages, 1:1 calls, Channel Messages, Total Meetings, and Meetings organized.
   
### Data table - Tenant Product Usage

This table provides month-over-month adoption data in terms of enable, active, returning, and first-time users for each product within Microsoft 365. The Microsoft 365 values represent active usage in either of the products.
  
|**Column name**|**Column description**|
|:-----|:-----|
|Product  <br/> |Name of products for which the usage information is summarized. Microsoft 365 value in the product column represents activity across any of the products  <br/> |
|Timeframe  <br/> |Month value. There will be one row per product per month for the last 12 months including the current partial month.  <br/> |
|EnabledUsers  <br/> |Number of users enabled to use the product for the time-frame value, if a user was enabled for portion of the month, they are still counted.  <br/> |
|ActiveUsers  <br/> |Number of users who performed an intentional activity in the product for the time-frame value.  <br/> A user is counted as active for a product in a particular month, if they have performed one of the key activities in the product. The key activities are available in the **Tenant Product Activity** table.  <br/> |
|CumulativeActiveUsers  <br/> |Number of users who are enabled to use a product and have used the product up to the timeframe month at least once since data collection started in the new usage system.  <br/> |
|MoMReturningUsers  <br/> |Number of users who are active in the timeframe month and also were active in the previous month.  <br/> |
|FirstTimeUsers  <br/> |Number of users who became active in the timeframe for the first time since data collection in the new usage system.  <br/> A user is counted as a first-time user in a particular month, if we detect their activity for the first time since the beginning of data collection in this new reporting system. Once counted as a first-time user, even if this user has a large gap in their activity they'll never be counted again as a first-time user  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
   
### Data table - Tenant Product Activity

This table provides monthly totals of activity and active user count for various activities within the products.
  
|**Column name**|**Column description**|
|:-----|:-----|
|Timeframe  <br/> |Month value. There will be one row per product per month for the last 12 months including the current partial month.  <br/> |
|Product  <br/> |Name of the product within Microsoft 365 for which usage data is available.  <br/> |
|Activity  <br/> |Name of the activity in a product that is used to showcase active use of product.  <br/> |
|ActivityCount  <br/> |This is the total number of actions counted for each activity performed within the product across all active users.  <br/> **Note:** For SharePoint Online and OneDrive for Business activities, this value represents the number of distinct documents with which users interacted with.  <br/> |
|ActiveUserCount  <br/> |Number of users who performed the activity within the product.  <br/> |
|TotalDurationInMinute  <br/> |Amount of duration in minutes across all active users who used audio or video session in an applicable Skype for Business activity.  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
   
### Data table - Tenant Mailbox Usage

This table consists of summary data across all licensed Exchange Online users who have a user mailbox. It contains end of month state across all user mailboxes. The data in this table isn't additive across multiple months. Latest month's data in this table represents the most recent state.
  
|**Column name**|**Column description**|
|:-----|:-----|
|TotalMailboxes  <br/> |Number of user mailboxes for Microsoft 365 subscription.  <br/> |
|IssueWarningQuota  <br/> |Total quota for issuing warning across all users' mailboxes.  <br/> |
|ProhibitSendQuota  <br/> |Total quota for prohibit send across all user mailboxes.  <br/> |
|ProhibitSendReceiveQuota  <br/> |Total quota for prohibit send receive quota across all user mailboxes.  <br/> |
|TotalItemBytes  <br/> |Amount of storage used across all user mailboxes in bytes.  <br/> |
|MailboxesNoWarning  <br/> |Number of user mailboxes that were under the storage warning limit.  <br/> |
|MailboxesIssueWarning  <br/> |Number of user mailboxes that were issued a warning for storage quota.  <br/> |
|MailboxesExceedSendQuota  <br/> |Number of user mailboxes that have exceeded the send quota.  <br/> |
|MailboxesExceedSendReceiveQuota  <br/> |Number of user mailboxes that have exceeded the send/receive quota.  <br/> |
|DeletedMailboxes  <br/> |Number of users mailboxes deleted in the timeframe.  <br/> |
|Timeframe  <br/> |Month value.  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
   
### Data table - Tenant Client Usage

This table provides month-over-month summary data about the clients that the users are using to connect to Exchange Online, Skype for Business and Viva Engage. This table doesn't yet have client use data for SharePoint Online and OneDrive for Business.
  
|**Column name**|**Column description**|
|:-----|:-----|
|Product  <br/> |Name of the product within Microsoft 365 for which client usage data is available.  <br/> |
|ClientId  <br/> |Name of each device used to connect to product.  <br/> |
|UserCount  <br/> |Number of users that used each of the clients for each product.  <br/> |
|Timeframe  <br/> |Month value  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
   
### Data table - Tenant SharePoint Online Usage

This table consists of month over month summary data about the usage or activity of SharePoint Online sites. This only covers Team Sites and Group sites. The end of month state of SharePoint Online sites is represented in this column, for example, if a user created a five documents and used 10 MB for total storage, and then deleted some files, and added more files so that at the end of month state for files is seven total that use five MB of storage, the value of represented in this table is end of month state. This table is hidden to avoid duplicate count of aggregations and is used as a source to create two reference tables.
  
|**Column name**|**Column description**|
|:-----|:-----|
|SiteType  <br/> |Site type value (any/team/group) (any represents either of these 2 sites types).  <br/> |
|TotalSites  <br/> |Number of sites that existed at the end of the timeframe.  <br/> |
|DocumentCount  <br/> |Total number of documents that existed on the site at the end of the timeframe.  <br/> |
|Diplansed  <br/> |Total storage used summed across all sites at the end of the timeframe.  <br/> |
|ActivityType  <br/> |Number of sites that recorded the various types of file activity (any/active files/ files shared EXT/INT/files synched).  <br/> Represents any of the file activity that was performed.  <br/> |
|SitesWithOwnerActivities  <br/> |Number of active sites, where the site owner performed a particular file activity on their own sites. You can get the site owner from the PowerShell command **get-sposite**. This is the person who is responsible for the site.   <br/> |
|SitesWithNonOwnerActivities  <br/> |Number of active sites summed up for the month, where the users other than the site owner performed a particular file activity on sites. You can get the site owner from the PowerShell command **get-sposite**. This is the person who is responsible for the site. <br/> |
|ActivityTotalSites  <br/> |Number of sites that recorded any activity during the timeframe. If a site that had activity earlier in the timeframe, and was deleted by the end of the timeframe, it would still be counted in the active site total for that timeframe.  <br/> |
|Timeframe  <br/> |This column has the date value. Used as Many to one relationship for Calendar table.  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
   
### Data table - Tenant OneDrive Usage

This table provides data about the OneDrive accounts such as number of accounts, number of documents across OneDrive accounts, storage used, file count by activity type. The end of month state of OneDrive for Business accounts is represented in this table. For example, if a user created a Five documents that used 10 MB of storage, and then deleted a few and added more files so that at the end of month they have seven files that use Five MB of storage, then the end of the month value is represented in this table at the end of the month.
  
|**Column name**|**Column description**|
|:-----|:-----|
|SiteType  <br/> |Value is "OneDrive".  <br/> |
|TotalSites  <br/> |Number of OneDrive for Business accounts that existed at the end of the timeframe.  <br/> |
|DocumentCount  <br/> |Total number of documents that existed across all OneDrive for Business accounts at the end of the timeframe  <br/> |
|Diplansed  <br/> |Total storage used summed across all OneDrive account at the end of the timeframe.  <br/> |
|ActivityType  <br/> |Number of accounts that recorded the various types of file activity (any/active files/ files shared EXT/INT/files synched).  <br/> Any represents any of the file activity was performed  <br/> |
|SitesWithOwnerActivities  <br/> |Number of active OneDrive for Business accounts, where the account owner performed a particular file activity on their own account.  <br/> |
|SitesWithNonOwnerActivities  <br/> |Count of OneDrive for Business accounts where file activity was performed by users other than the owner of the account.  <br/> |
|ActivityTotalSites  <br/> |Number of OneDrive for Business accounts that recorded any activity during the timeframe. If a OneDrive for Business account had activity earlier in the timeframe, and was deleted by the end of the timeframe, it would still be counted in the active OneDrive for Business account for that timeframe.  <br/> |
|Timeframe  <br/> |This column has the date value. Used as Many to one relationship for Calendar table.  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
   
### Data table - Tenant Microsoft 365 Groups Usage

This table provides data about how Microsoft 365 Groups is used across the organization.
  
****

|**Column name**|**Column Description**|
|:-----|:-----|
|TimeFrame  <br/> |Month value. There will be one row per product per month for the last 12 months including the current partial month.  <br/> |
|GroupType  <br/> |Type of group (private/public/any).  <br/> |
|TotalGroups  <br/> |Number of groups in each group type.  <br/> |
|ActiveGroups  <br/> |Number of active groups.  <br/> |
|MBX_TotalGroups  <br/> |Number of mailbox groups.  <br/> |
|MBX_ActiveGroups  <br/> |Number of active mailbox groups.  <br/> |
|MBX_TotalActivities  <br/> |Number of mailbox activities.  <br/> |
|MBX_TotalItems  <br/> |Number of mailbox items.  <br/> |
|MBX_StorageUsed  <br/> |Quantity of mailbox storage used.  <br/> |
|SPO_TotalGroups  <br/> |Number of SharePoint groups.  <br/> |
|SPO_ActiveGroups  <br/> |Number of active SharePoint groups.  <br/> |
|SPO_FileAccessedActiveGroups  <br/> |Number of SharePoint groups that have file accessed activities.  <br/> |
|SPO_FileSyncedActiveGroups  <br/> |Number of SharePoint groups that have file synchronized activities.  <br/> |
|SPO_FileSharedInternallyActiveGroups  <br/> |Number of SharePoint groups that have shared activities internally, or with groups (that might include external users).  <br/> |
|SPO_FileSharedExternallyActiveGroups  <br/> |Number of SharePoint groups which have shared externally activities.  <br/> |
|SPO_TotalActivities  <br/> |Number of SharePoint activities.  <br/> |
|SPO_FileAccessedActivities  <br/> |Number of SharePoint file accessed activities.  <br/> |
|SPO_FileSyncedActivities  <br/> |Number of SharePoint file synchronized activities.  <br/> |
|SPO_FileSharedInternallyActivities  <br/> |Number of SharePoint file shared activities internally, or with groups (that might include external members).  <br/> |
|SPO_FileSharedExternallyActivities  <br/> |Number of SharePoint file shared externally activities.  <br/> |
|SPO_TotalFiles  <br/> |Number of SharePoint files.  <br/> |
|SPO_ActiveFiles  <br/> |Number of active SharePoint files.  <br/> |
|SPO_StorageUsed  <br/> |Quantity of SharePoint storage used.  <br/> |
|YAM_TotalGroups  <br/> |Number of Viva Engage groups.  <br/> |
|YAM_ActiveGroups  <br/> |Number of active Viva Engage groups.  <br/> |
|YAM_LikedActiveGroups  <br/> |Number of Viva Engage groups which have like activities.  <br/> |
|YAM_PostedActiveGroups  <br/> |Number of Viva Engage groups which have post activities.  <br/> |
|YAM_ReadActiveGroups  <br/> |Number of Viva Engage groups which have read activities.  <br/> |
|YAM_TotalActivities  <br/> |Number of Viva Engage activities.  <br/> |
|YAM_LikedActivities  <br/> |Number of Viva Engage like activities.  <br/> |
|YAM_PostedActivties  <br/> |Number of Viva Engage post activities.  <br/> |
|YAM_ReadActivites  <br/> |Number of Viva Engage read activities.  <br/> |

### Data table - Tenant Office Licenses

This table provides month-over-month summary data about the license assignment for users. 
  
|**Column name**|**Column description**|
|:-----|:-----|
|LicenseName  <br/> |Name of the license.  <br/> |
|AssignedCount  <br/> |Number of assigned licenses.  <br/> |
|Timeframe  <br/> |Month value.  <br/> |

### Data table - Tenant Office Activation

The table provides data about the number of Office subscription activations across the service plans, for example, Microsoft 365 Apps for enterprises, Visio, Project. It also provides data about number of activations per device (Android/iOS/Mac/PC).
  
|**Column name**|**Column description**|
|:-----|:-----|
|ServicePlanName  <br/> |List of the service plan name values and counts of activations by devices, as depicted by below columns.  <br/> |
|TotalEnabled  <br/> |Number of users enabled per service plan name by the end of the timeframe.  <br/> |
|TotalActivatedUsers  <br/> |Number of users that have activated each service plan t by the end of the timeframe.  <br/> |
|AndroidCount  <br/> |Number of activations per service plan for Android device by the end of the timeframe.  <br/> |
|iOSCount  <br/> |Number of activations per service plan for iOS device by the end of the timeframe.  <br/> |
|MacCount  <br/> |Number of activations per service plan for MAC device by the end of the timeframe.  <br/> |
|PcCount  <br/> |Number of activations per service plan for PC device by the end of the timeframe.  <br/> |
|WinRtCount  <br/> |Number of activations per service plan for Windows Mobile device by the end of the timeframe.  <br/> |
|Timeframe  <br/> |This column has the date value. Used as Many to one relationship for Calendar table.  <br/> |
|Content Date  <br/> |If timeframe shows current month, this value will represent the latest date of the current month for which data is available.  <br/> If Timeframe shows previous month, this value will represent the last date of the timeframe month.  <br/> |
