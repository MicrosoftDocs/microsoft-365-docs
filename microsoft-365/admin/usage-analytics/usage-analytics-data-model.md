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
- operations-pod
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 08c5307c-4a6b-4761-8410-a6c96725760f
description: "Learn how usage analytics connects to an API and provides monthly trend of usage of various Microsoft 365 services."
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
|Tenant Product Usage  |Contains monthly totals of enabled, active users, month-over-month retained users, first-time users, and the cumulative active users. |Contains monthly aggregated data for a rolling 12-month period including the current partial month. |
|Tenant Product Activity   |Contains monthly totals of activities and active user count for various activities within the products.  <br/><br/> See [active user definition](active-user-in-usage-reports.md) for information about the activities within a product that are returned in this data table.   |Contains monthly aggregated data for a rolling 12-month period including the current partial month.   |
|Tenant Office Licenses   |Contains data about number of Microsoft Office subscriptions assigned to users   |Contains end-of-month state data for a rolling 12-month period including the current partial month.   |
|Tenant Mailbox Usage   |Contains data about the user's mailbox, for total mailbox count and how storage is used.   |Contains end-of-month state data for a rolling 12-month period including the current partial month.   |
|Tenant Client Usage   |Contains data about the number of users actively using specific client/devices to connect to Exchange Online, Skype for Business and Viva Engage.   |Contains monthly aggregated data for a rolling 12-month period including the current partial month.   |
|Tenant SharePoint Usage   |Contains data about the SharePoint sites, covering Team or Groups sites such as total number of sites, number of documents on site, file count by activity type and storage used.   |Contains end-of-month state data for a rolling 12-month period including the current partial month.   |
|Tenant OneDrive Usage   |Contains data about the OneDrive accounts such as number of accounts, number of documents across OneDrives, storage used, file count by activity type.   |Contains end-of-month state data for a rolling 12-month period including the current partial month.   |
|Tenant Microsoft 365 Groups Usage   |Contains data about Microsoft 365 Groups usage including Mailbox, SharePoint, and Viva Engage.   |Contains end-of-month state data for a rolling 12-month period including the current partial month.   |
|Tenant Office Activation   |Contains data about number of Office subscription activations, count of activation per device (Android/iOS/Mac/PC), activations by service plan, for example, Microsoft 365 Apps for enterprise, Visio, Project.   |Contains end-of-month state data for a rolling 12-month period including the current partial month.   |
|User State   |Contains metadata about users, including user display name, products assigned, location, department, title, company. This data is about users who were assigned a license during the last complete month. Every user has a unique user ID.   |This data is about users that had a license assigned during the last complete month.   |
|User Activity   |Contains per-user level information about activity performed by licensed users. <br/><br/>  See [active user definition](active-user-in-usage-reports.md) for information about the activities within a product that are returned in this data table.   |This data is about users that performed an activity in any of the services during the last complete month.   |
   
Expand the following sections to see the detailed information for each data table.
  
### Data table - User State

This table provides user level details for all users that have a license assigned to them during the last complete month. It brings in data from the Microsoft Entra ID.
  
|**Column name**|**Column description**|
|:-----|:-----|
|UserId   |Unique user ID that represents a user and enables joining with other data tables within the data set.   |
|Timeframe   |Month value for which this table has data for.   |
|UPN   |User principal name (UPN) uniquely identifies the user to be able to join with other external data sources.   |
|DisplayName   |User's display name.   |
|IDType   |ID type is set to 1 if the user is a Viva Engage user who connects by using their Viva Engage ID or 0 if they connect to Viva Engage by using their Microsoft 365 ID.  <br/><br/> Value is 1 to represent that this user connects to Viva Engage with their Viva Engage ID and not their Microsoft 365 ID   |
|HasLicenseEXO   |Set to true if user is assigned a license and enabled to use Exchange on the last day of the month.   |
|HasLicenseODB   |Set to true if user is assigned a license and enabled to use OneDrive on the last day of the month.   |
|HasLicenseSPO   |Set to true if user is assigned a license and enabled to use SharePoint on the last day of the month.   |
|HasLicenseYAM   |Set to true if user is assigned a license and enabled to use Viva Engage on the last day of the month.   |
|HasLicenseSFB   |Set to true if user is assigned a license and enabled to use Skype For Business on the last day of the month.   |
|HasLicenseTeams   |Set to true if user is assigned a license and enabled to use Microsoft Teams on the last day of the month.   |
|Company   |Company data represented in Microsoft Entra ID for this user.   |
|Department   |Department data represented in Microsoft Entra ID for this user.   |
|LocationCity   |City data represented in Microsoft Entra ID for this user.   |
|LocationCountry   |Country/region data represented in Microsoft Entra ID for this user.   |
|LocationState   |State data represented in Microsoft Entra ID for this user.   |
|LocationOffice   |User's office.   |
|Title   |Title data represented in Microsoft Entra ID for this user.   |
|Deleted   |True if the user was deleted from Microsoft 365 in that last complete month.   |
|DeletedDate   |Date when the user was deleted from Microsoft 365.   |
|YAM_State   |States of the user in the Viva Engage system, can be active, deleted, or suspended.   |
|YAM_ActivationDate   |Date the user entered the state of being active in Viva Engage.   |
|YAM_DeletionDate   |Date the user entered the state of being deleted in Viva Engage.   |
|YAM_SuspensionDate   |Date the user entered the state of being suspended in Viva Engage.   |

### Data table - User Activity

This table contains data about each user who had an activity in any of the services in the previous month.
  
|**Column name**|**Column description**|
|:-----|:-----|
|UserID   |Unique user ID that represents a user and enables joining with other data tables within the data set.   |
|IDType   |ID type is set to 1 if the user is a Viva Engage user who connects by using their Viva Engage ID or 0 if they connect to Viva Engage by using their Microsoft 365 ID. <br/><br/>  Value is 1 to represent that this user connects to Viva Engage with their Viva Engage ID and not their Microsoft 365 ID   |
|Timeframe   |Month value for which this table represents data for.   |
|EXO_EmailSent   |Number of emails sent.   |
|EXO_EmailReceived   |Number of emails received.   |
|EXO_EmailRead   |Number of emails read activity the user performed, it could be multiple times reading an already read email, or an email received previously.   |
|EXO_AppointmentCreated   |Number of appointments created.   |
|EXO_MeetingAccepted   |Number of meetings accepted.   |
|EXO_MeetingCancelled   |Number of meetings canceled.   |
|EXO_MeetingDeclined   |Number of meetings declined.   |
|EXO_MeetingSent   |Number of meetings sent.   |
|ODB_FileViewedModified   |Number of files this user interacted with on any OneDrive (for example, created, updated, deleted, viewed, or downloaded).   |
|ODB_FileSynched   |Number of files this user synchronized on any OneDrive.   |
|ODB_FileSharedInternally   |Number of files this user shared internally from any OneDrive, or with users within groups (that might include external users).   |
|ODB_FileSharedExternally   |Number of files this user shared externally from any OneDrive.   |
|ODB_AccessedByOwner   |Number of sites the user interacted with that reside on their own OneDrive.   |
|ODB_AccessedByOthers   |Number of sites this user interacted with which reside on another user's OneDrive.   |
|SPO_GroupFileViewedModified   |Number of files this user interacted with on any group site.   |
|SPO_GroupFileSynched   |Number of files this user synchronized on any group site.   |
|SPO_GroupFileSharedInternally   |The count of files that are shared with users within the organization, or with users within groups (that might include external users).   |
|SPO_GroupFileSharedExternally   |Number of files this user shared externally from any group site.   |
|SPO_GroupAccessedByOwner   |Number of sites the user interacted with that reside on a group site that they own.   |
|SPO_GroupAccessedByOthers   |Number of sites the user interacted with that reside on a group site that another user owns.   |
|SPO_OtherFileViewedModified   |Number of files with which this user interacted on any other site.   |
|SPO_OtherFileSynched   |Number of files this user synchronized from any other site.   |
|SPO_OtherFileSharedInternally   |Number of files this user shared internally from any other site, or with users within groups (that might include external users).  |
|SPO_OtherFileSharedExternally   |Number of files this user shared externally from any other site.   |
|SPO_OtherAccessedByOwner   |Number of sites the user interacted with that reside on other site that they own.   |
|SPO_OtherAccessedByOthers   |Number of sites the user interacted with that reside on other site that another user owns.   |
|SPO_TeamFileViewedModified   |Number of files with which this user interacted on any team site.   |
|SPO_TeamFileSynched   |Number of files this user synchronized from any team site.   |
|SPO_TeamFileSharedInternally   |Number of files this user shared internally from any team site, or with users within groups (that might include external users).   |
|SPO_TeamFileSharedExternally   |Number of files this user shared externally from any team site.   |
|SPO_TeamAccessedByOwner   |Number of sites the user interacted with that reside on a team site that they own.   |
|SPO_TeamAccessedByOthers   |Number of sites the user interacted with that reside on a team site that another user owns.   |
|Teams_ChatMessages   |Number of chat messages sent.   |
|Teams_ChannelMessage   |Number of messages posted to channels.   |
|Teams_CallParticipate   |Number of calls the user participated in.   |
|Teams_MeetingParticipate   |Number of meetings the user joined.   |
|Teams_HasOtherAction   |Boolean value if the user performed other actions in Microsoft Teams.   |
|YAM_MessagePost   |Number of Viva Engage messages this user posted.   |
|YAM_MessageLiked   |Number of Viva Engage messages this user liked.   |
|YAM_MessageRead   |Number of Viva Engage messages this user read.   |
|SFB_P2PSummary   |Number of peer-to-peer sessions this user took part in.   |
|SFB_ConfOrgSummary   |Number of conference sessions this user organized.   |
|SFB_ConfPartSummary   |Number of conference sessions this user participated in.   |

> [!NOTE]
> Teams_HasOtherAction means user is considered active but has a zero value for the Chat Messages, 1:1 calls, Channel Messages, Total Meetings, and Meetings organized.

### Data table - Tenant Product Usage

This table provides month-over-month adoption data in terms of enable, active, returning, and first-time users for each product within Microsoft 365. The Microsoft 365 values represent active usage in either of the products.
  
|**Column name**|**Column description**|
|:-----|:-----|
|Product   |Name of products for which the usage information is summarized. Microsoft 365 value in the product column represents activity across any of the products   |
|Timeframe   |Month value. There's one row per product per month for the last 12 months including the current partial month.   |
|EnabledUsers   |Number of users enabled to use the product for the time-frame value, if a user was enabled for portion of the month, they're still counted.   |
|ActiveUsers   |Number of users who performed an intentional activity in the product for the time-frame value. <br/><br/>  A user is counted as active for a product in a particular month, if they performed one of the key activities in the product. The key activities are available in the **Tenant Product Activity** table.   |
|CumulativeActiveUsers   |Number of users who are enabled to use a product and used the product up to the timeframe month at least once since data collection started in the new usage system.   |
|MoMReturningUsers   |Number of users who are active in the timeframe month and also were active in the previous month.   |
|FirstTimeUsers   |Number of users who became active in the timeframe for the first time since data collection in the new usage system. <br/><br/>  A user is counted as a first-time user in a particular month, if we detect their activity for the first time since the beginning of data collection in this new reporting system. Once counted as a first-time user, even if this user has a large gap in their activity they're never  counted again as a first-time user   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |

### Data table - Tenant Product Activity

This table provides monthly totals of activity and active user count for various activities within the products.
  
|**Column name**|**Column description**|
|:-----|:-----|
|Timeframe   |Month value. There is one row per product per month for the last 12 months including the current partial month.   |
|Product   |Name of the product within Microsoft 365 for which usage data is available.   |
|Activity   |Name of the activity in a product that is used to showcase active use of product.   |
|ActivityCount   |This is the total number of actions counted for each activity performed within the product across all active users.  <br/><br/> **Note:** For SharePoint and OneDrive activities, this value represents the number of distinct documents with which users interacted with.   |
|ActiveUserCount   |Number of users who performed the activity within the product.   |
|TotalDurationInMinute   |Amount of duration in minutes across all active users who used audio or video session in an applicable Skype for Business activity.   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |

### Data table - Tenant Mailbox Usage

This table consists of summary data across all licensed Exchange Online users who have a user mailbox. It contains end of month state across all user mailboxes. The data in this table isn't additive across multiple months. Latest month's data in this table represents the most recent state.
  
|**Column name**|**Column description**|
|:-----|:-----|
|TotalMailboxes   |Number of user mailboxes for Microsoft 365 subscription.   |
|IssueWarningQuota   |Total quota for issuing warning across all users' mailboxes.   |
|ProhibitSendQuota   |Total quota for prohibit send across all user mailboxes.   |
|ProhibitSendReceiveQuota   |Total quota for prohibit send receive quota across all user mailboxes.   |
|TotalItemBytes   |Amount of storage used across all user mailboxes in bytes.   |
|MailboxesNoWarning   |Number of user mailboxes that were under the storage warning limit.   |
|MailboxesIssueWarning   |Number of user mailboxes that were issued a warning for storage quota.   |
|MailboxesExceedSendQuota   |Number of user mailboxes that exceeded the send quota.   |
|MailboxesExceedSendReceiveQuota   |Number of user mailboxes that exceeded the send/receive quota.   |
|DeletedMailboxes   |Number of users mailboxes deleted in the timeframe.   |
|Timeframe   |Month value.   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |

### Data table - Tenant Client Usage

This table provides month-over-month summary data about the clients that the users are using to connect to Exchange Online, Skype for Business and Viva Engage. This table doesn't yet have client use data for SharePoint and OneDrive.
  
|**Column name**|**Column description**|
|:-----|:-----|
|Product   |Name of the product within Microsoft 365 for which client usage data is available.   |
|ClientId   |Name of each device used to connect to product.   |
|UserCount   |Number of users that used each of the clients for each product.   |
|Timeframe   |Month value   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |
   
### Data table - Tenant SharePoint Usage

This table consists of month over month summary data about the usage or activity of SharePoint sites. This only covers Team Sites and Group sites. The end of month state of SharePoint sites is represented in this column, for example, if a user created a five documents and used 10 MB for total storage, and then deleted some files, and added more files so that at the end of month state for files is seven total that use five MB of storage, the value of represented in this table is end of month state. This table is hidden to avoid duplicate count of aggregations and is used as a source to create two reference tables.
  
|**Column name**|**Column description**|
|:-----|:-----|
|SiteType   |Site type value (any/team/group) (any represents either of these two sites types).   |
|TotalSites   |Number of sites that existed at the end of the timeframe.   |
|DocumentCount   |Total number of documents that existed on the site at the end of the timeframe.   |
|Diplansed   |Total storage used summed across all sites at the end of the timeframe.   |
|ActivityType   |Number of sites that recorded the various types of file activity (any/active files/ files shared EXT/INT/files synched).   Represents any file activity that was performed.   |
|SitesWithOwnerActivities   |Number of active sites, where the site owner performed a particular file activity on their own sites. You can get the site owner from the PowerShell command **get-sposite**. This is the person who is responsible for the site.    |
|SitesWithNonOwnerActivities   |Number of active sites summed up for the month, where the users other than the site owner performed a particular file activity on sites. You can get the site owner from the PowerShell command **get-sposite**. This is the person who is responsible for the site.  |
|ActivityTotalSites   |Number of sites that recorded any activity during the timeframe. If a site that had activity earlier in the timeframe, and was deleted by the end of the timeframe, it would still be counted in the active site total for that timeframe.   |
|Timeframe   |This column has the date value. Used as Many to one relationship for Calendar table.   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |

### Data table - Tenant OneDrive Usage

This table provides data about the OneDrive accounts such as number of accounts, number of documents across OneDrive accounts, storage used, file count by activity type. The end of month state of OneDrive accounts is represented in this table. For example, if a user created a Five documents that used 10 MB of storage, and then deleted a few and added more files so that at the end of month they have seven files that use Five MB of storage, then the end of the month value is represented in this table at the end of the month.
  
|**Column name**|**Column description**|
|:-----|:-----|
|SiteType   |Value is "OneDrive".   |
|TotalSites   |Number of OneDrive accounts that existed at the end of the timeframe.   |
|DocumentCount   |Total number of documents that existed across all OneDrive accounts at the end of the timeframe   |
|Deplanted   |Total storage used summed across all OneDrive account at the end of the timeframe.   |
|ActivityType   |Number of accounts that recorded the various types of file activity (any/active files/ files shared EXT/INT/files synched).  <br/><br/> Any represents any of the file activity was performed   |
|SitesWithOwnerActivities   |Number of active OneDrive accounts, where the account owner performed a particular file activity on their own account.   |
|SitesWithNonOwnerActivities   |Count of OneDrive accounts where file activity is performed by users other than the owner of the account.   |
|ActivityTotalSites   |Number of OneDrive accounts that recorded any activity during the timeframe. If a OneDrive account had activity earlier in the timeframe, and was deleted by the end of the timeframe, it would still be counted in the active OneDrive account for that timeframe.   |
|Timeframe   |This column has the date value. Used as Many to one relationship for Calendar table.   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |
   
### Data table - Tenant Microsoft 365 Groups Usage

This table provides data about how Microsoft 365 Groups is used across the organization.
  
****

|**Column name**|**Column Description**|
|:-----|:-----|
|TimeFrame   |Month value. There is one row per product per month for the last 12 months including the current partial month.   |
|GroupType   |Type of group (private/public/any).   |
|TotalGroups   |Number of groups in each group type.   |
|ActiveGroups   |Number of active groups.   |
|MBX_TotalGroups   |Number of mailbox groups.   |
|MBX_ActiveGroups   |Number of active mailbox groups.   |
|MBX_TotalActivities   |Number of mailbox activities.   |
|MBX_TotalItems   |Number of mailbox items.   |
|MBX_StorageUsed   |Quantity of mailbox storage used.   |
|SPO_TotalGroups   |Number of SharePoint groups.   |
|SPO_ActiveGroups   |Number of active SharePoint groups.   |
|SPO_FileAccessedActiveGroups   |Number of SharePoint groups that have file accessed activities.   |
|SPO_FileSyncedActiveGroups   |Number of SharePoint groups that have file synchronized activities.   |
|SPO_FileSharedInternallyActiveGroups   |Number of SharePoint groups that shared activities internally, or with groups (that might include external users).   |
|SPO_FileSharedExternallyActiveGroups   |Number of SharePoint groups which shared externally activities.   |
|SPO_TotalActivities   |Number of SharePoint activities.   |
|SPO_FileAccessedActivities   |Number of SharePoint file accessed activities.   |
|SPO_FileSyncedActivities   |Number of SharePoint file synchronized activities.   |
|SPO_FileSharedInternallyActivities   |Number of SharePoint file shared activities internally, or with groups (that might include external members).   |
|SPO_FileSharedExternallyActivities   |Number of SharePoint file shared externally activities.   |
|SPO_TotalFiles   |Number of SharePoint files.   |
|SPO_ActiveFiles   |Number of active SharePoint files.   |
|SPO_StorageUsed   |Quantity of SharePoint storage used.   |
|YAM_TotalGroups   |Number of Viva Engage groups.   |
|YAM_ActiveGroups   |Number of active Viva Engage groups.   |
|YAM_LikedActiveGroups   |Number of Viva Engage groups which have like activities.   |
|YAM_PostedActiveGroups   |Number of Viva Engage groups which have post activities.   |
|YAM_ReadActiveGroups   |Number of Viva Engage groups which have read activities.   |
|YAM_TotalActivities   |Number of Viva Engage activities.   |
|YAM_LikedActivities   |Number of Viva Engage like activities.   |
|YAM_PostedActivties   |Number of Viva Engage post activities.   |
|YAM_ReadActivites   |Number of Viva Engage read activities.   |

### Data table - Tenant Office Licenses

This table provides month-over-month summary data about the license assignment for users. 
  
|**Column name**|**Column description**|
|:-----|:-----|
|LicenseName   |Name of the license.   |
|AssignedCount   |Number of assigned licenses.   |
|Timeframe   |Month value.   |

### Data table - Tenant Office Activation

The table provides data about the number of Office subscription activations across the service plans, for example, Microsoft 365 Apps for enterprises, Visio, Project. It also provides data about number of activations per device (Android/iOS/Mac/PC).
  
|**Column name**|**Column description**|
|:-----|:-----|
|ServicePlanName   |List of the service plan name values and counts of activations by devices, as depicted by below columns.   |
|TotalEnabled   |Number of users enabled per service plan name by the end of the timeframe.   |
|TotalActivatedUsers   |Number of users that have activated each service plan by the end of the timeframe.   |
|AndroidCount   |Number of activations per service plan for Android device by the end of the timeframe.   |
|iOSCount   |Number of activations per service plan for iOS device by the end of the timeframe.   |
|MacCount   |Number of activations per service plan for MAC device by the end of the timeframe.   |
|PcCount   |Number of activations per service plan for PC device by the end of the timeframe.   |
|WinRtCount   |Number of activations per service plan for Windows Mobile device by the end of the timeframe.   |
|Timeframe   |This column has the date value. Used as Many to one relationship for Calendar table.   |
|Content Date   |If timeframe shows current month, this value represents the latest date of the current month for which data is available.  <br/><br/> If Timeframe shows previous month, this value represents the last date of the timeframe month.   |
