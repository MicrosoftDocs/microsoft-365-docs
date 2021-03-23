---
title: "Detailed properties in the audit log"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MOE150
- BCS160
- MET150
ms.assetid: ce004100-9e7f-443e-942b-9b04098fcfc3
description: This article provides descriptions of additional properties included when you export results for an Office 365 audit log record.
ms.custom: seo-marvel-apr2020
---

# Detailed properties in the audit log

When you export the results of an audit log search from the Security & Compliance Center, you have the option to download all the results that meet your search criteria. You do this by selecting **Export results** \> **Download all results** on the **Audit log search** page. For more information, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).
  
 When your export all results for an audit log search, the raw data from the unified audit log is copied to a comma-separated value (CSV) file that is downloaded to your local computer. This file contains additional information from each audit record in a column named **AuditData**. This column contains a multi-value property for multiple properties from the audit log record. Each of the **property: value** pairs in this multi-value property are separated by a comma. 
  
The following table describes the properties that are included (depending on the service in which an event occurs) in the multi-property **AuditData** column. The **Office 365 service that has this property** column indicates the service and type of activity (user or admin) that includes the property. For more detailed information about these properties or about properties that may not be listed in this topic, see [Management Activity API Schema](/office/office-365-management-api/office-365-management-activity-api-schema).
  
> [!TIP]
> You can use the JSON transform feature in Power Query in Excel to split the **AuditData** column into multiple columns so that each property has its own column. This lets you sort and filter on one or more of these properties. To learn how to do this, see [Export, configure, and view audit log records](export-view-audit-log-records.md). 
  
|**Property**|**Description**|**Microsoft 365 service that has this property**|
|:-----|:-----|:-----|
|Actor|The user or service account that performed the action.|Azure Active Directory|
|AddOnName|The name of an add-on that was added, removed, or updated in a team. The type of add-ons in Microsoft Teams is a bot, a connector, or a tab.|Microsoft Teams|
|AddOnType|The type of an add-on that was added, removed, or updated in a team. The following values indicate the type of add-on.  <br/> **1** - Indicates a bot.<br/> **2** - Indicates a connector.<br/> **3** - Indicates a tab.|Microsoft Teams|
|AzureActiveDirectoryEventType|The type of Azure Active Directory event. The following values indicate the type of event.  <br/> **0** - Indicates an account login event.<br/> **1** - Indicates an Azure application security event.|Azure Active Directory|
|ChannelGuid|The ID of a Microsoft Teams channel. The team that the channel is located in is identified by the **TeamName** and **TeamGuid** properties.|Microsoft Teams|
|ChannelName|The name of a Microsoft Teams channel. The team that the channel is located in is identified by the **TeamName** and **TeamGuid** properties.|Microsoft Teams|
|Client|The client device, the device OS, and the device browser used for the login event (for example, Nokia Lumia 920; Windows Phone 8; IE Mobile 11).|Azure Active Directory|
|ClientInfoString|Information about the email client that was used to perform the operation, such as a browser version, Outlook version, and mobile device information|Exchange (mailbox activity)|
|ClientIP|The IP address of the device that was used when the activity was logged. The IP address is displayed in either an IPv4 or IPv6 address format.<br/><br/> For some services, the value displayed in this property might be the IP address for a trusted application (for example, Office on the web apps) calling into the service on behalf of a user and not the IP address of the device used by person who performed the activity. <br/><br/>Also, for admin activity (or activity performed by a system account) for Azure Active Directory-related events, the IP address isn't logged and the value for the ClientIP property is `null`. |Azure Active Directory, Exchange, SharePoint|
|CreationTime|The date and time in Coordinated Universal Time (UTC) when the user performed the activity.|All|
|DestinationFileExtension|The file extension of a file that is copied or moved. This property is displayed only for the FileCopied and FileMoved user activities.|SharePoint|
|DestinationFileName|The name of the file is copied or moved. This property is displayed only for the FileCopied and FileMoved actions.|SharePoint|
|DestinationRelativeUrl|The URL of the destination folder where a file is copied or moved. The combination of the values for the **SiteURL**, the **DestinationRelativeURL**, and the **DestinationFileName** property is the same as the value for the **ObjectID** property, which is the full path name for the file that was copied. This property is displayed only for the FileCopied and FileMoved user activities.|SharePoint|
|EventSource|Identifies that an event occurred in SharePoint. Possible values are **SharePoint** and **ObjectModel**.|SharePoint|
|ExternalAccess|For Exchange admin activity, specifies whether the cmdlet was run by a user in your organization, by Microsoft datacenter personnel or a datacenter service account, or by a delegated administrator. The value **False** indicates that the cmdlet was run by someone in your organization. The value **True** indicates that the cmdlet was run by datacenter personnel, a datacenter service account, or a delegated administrator.  <br/> For Exchange mailbox activity, specifies whether a mailbox was accessed by a user outside your organization.|Exchange|
|ExtendedProperties|The extended properties for an Azure Active Directory event.|Azure Active Directory|
|ID|The ID of the report entry. The ID uniquely identifies the report entry.|All|
|InternalLogonType|Reserved for internal use.|Exchange (mailbox activity)|
|ItemType|The type of object that was accessed or modified. Possible values include **File**, **Folder**, **Web**, **Site**, **Tenant**, and **DocumentLibrary**.|SharePoint|
|LoginStatus|Identifies login failures that might have occurred.|Azure Active Directory|
|LogonType|The type of mailbox access. The following values indicate the type of user who accessed the mailbox.  <br/><br/> **0** - Indicates a mailbox owner.<br/> **1** - Indicates an administrator.<br/> **2** - Indicates a delegate. <br/>**3** - Indicates the transport service in the Microsoft datacenter.<br/> **4** - Indicates a   service account in the Microsoft datacenter. <br/>**6** - Indicates a delegated administrator.|Exchange (mailbox activity)|
|MailboxGuid|The Exchange GUID of the mailbox that was accessed.|Exchange (mailbox activity)|
|MailboxOwnerUPN|The email address of the person who owns the mailbox that was accessed.|Exchange (mailbox activity)|
|Members|Lists the users that have been added or removed from a team. The following values indicate the Role type assigned to the user.  <br/><br/> **1** - Indicates  the Owner role.<br/> **2** - Indicates the Member role.<br/> **3** - Indicates the Guest role. <br/><br/>The Members property also includes the name of your organization, and the member's email address.|Microsoft Teams|
|ModifiedProperties (Name, NewValue, OldValue)|The property is included for admin events, such as adding a user as a member of a site or a site collection admin group. The property includes the name of the property that was modified (for example, the Site Admin group) the new value of the modified property (such the user who was added as a site admin, and the previous value of the modified object.|All (admin activity)|
|ObjectId|For Exchange admin audit logging, the name of the object that was modified by the cmdlet.  <br/> For SharePoint activity, the full URL path name of the file or folder accessed by a user.  <br/> For Azure AD activity, the name of the user account that was modified.|All|
|Operation|The name of the user or admin activity. The value of this property corresponds to the value that was selected in the **Activities** drop down list. If **Show results for all activities** was selected, the report will included entries for all user and admin activities for all services. For a description of the operations/activities that are logged in the audit log, see the **Audited activities** tab in [Search the audit log in the Office 365](search-the-audit-log-in-security-and-compliance.md).  <br/> For Exchange admin activity, this property identifies the name of the cmdlet that was run.|All|
|OrganizationId|The GUID for your organization.|All|
|Path|The name of the mailbox folder where the message that was accessed is located. This property also identifies the folder a where a message is created in or copied/moved to.|Exchange (mailbox activity)|
|Parameters|For Exchange admin activity, the name and value for all parameters that were used with the cmdlet that is identified in the Operation property.|Exchange (admin activity)|
|RecordType|The type of operation indicated by the record. This property indicates the service or feature that the operation was triggered in. For a list of record types and their corresponding ENUM value (which is the value displayed in the **RecordType** property in an audit record), see [Audit log record type](/office/office-365-management-api/office-365-management-activity-api-schema#auditlogrecordtype).| 
|ResultStatus|Indicates whether the action (specified in the **Operation** property) was successful or not.  <br/> For Exchange admin activity, the value is either **True** (successful) or **False** (failed).|All  <br/>|
|SecurityComplianceCenterEventType|Indicates that the activity was a Security & Compliance Center event. All Security & Compliance Center activities will have a value of **0** for this property.|Security & Compliance Center|
|SharingType|The type of sharing permissions that was assigned to the user that the resource was shared with. This user is identified in the **UserSharedWith** property.|SharePoint|
|Site|The GUID of the site where the file or folder accessed by the user is located.|SharePoint|
|SiteUrl|The URL of the site where the file or folder accessed by the user is located.|SharePoint|
|SourceFileExtension|The file extension of the file that was accessed by the user. This property is blank if the object that was accessed is a folder.|SharePoint|
|SourceFileName|The name of the file or folder accessed by the user.|SharePoint|
|SourceRelativeUrl|The URL of the folder that contains the file accessed by the user. The combination of the values for the **SiteURL**, the **SourceRelativeURL**, and the **SourceFileName** property is the same as the value for the **ObjectID** property, which is the full path name for the file accessed by the user.|SharePoint|
|Subject|The subject line of the message that was accessed.|Exchange (mailbox activity)|
|TabType| The type of tab added, removed, or updated in a team. The possible values for this property are:  <br/><br/> **Excel pin** - An Excel tab.  <br/> **Extension** - All first-party and third-party apps; such as Class Schedule, VSTS, and Forms.  <br/> **Notes** - OneNote tab.  <br/> **Pdfpin** - A PDF tab.  <br/> **Powerbi** - A Power BI tab.  <br/> **Powerpointpin** - A PowerPoint tab.  <br/> **Sharepointfiles** - A SharePoint tab.  <br/> **Webpage** - A pinned website tab.  <br/> **Wiki-tab** - A wiki tab.  <br/> **Wordpin** - A Word tab.|Microsoft Teams|
|Target|The user that the action (identified in the **Operation** property) was performed on. For example, if a guest user is added to SharePoint or a Microsoft Team, that user would be listed in this property.|Azure Active Directory|
|TeamGuid|The ID of a team in Microsoft Teams.|Microsoft Teams|
|TeamName|The name of a team in Microsoft Teams.|Microsoft Teams|
|UserAgent|Information about the user's browser. This information is provided by the browser.|SharePoint|
|UserDomain|Identity information about the tenant organization of the user (actor) who performed the action.|Azure Active Directory|
|UserId|The user who performed the action (specified in the **Operation** property) that resulted in the record being logged. Audit records for activity performed by system accounts (such as SHAREPOINT\system or NT AUTHORITY\SYSTEM) are also included in the audit log. Another common value for the UserId property is app@sharepoint. This indicates that the "user" who performed the activity was an application that has the necessary permissions in SharePoint to perform organization-wide actions (such as search a SharePoint site or OneDrive account) on behalf of a user, admin, or service. For more information, see [The app\@sharepoint user in audit records](search-the-audit-log-in-security-and-compliance.md#the-appsharepoint-user-in-audit-records). |All|
|UserKey|An alternative ID for the user identified in the **UserID** property. For example, this property is populated with the passport unique ID (PUID) for events performed by users in SharePoint. This property also might specify the same value as the **UserID** property for events occurring in other services and events performed by system accounts.|All|
|UserSharedWith|The user that a resource was shared with. This property is included if the value for the **Operation** property is **SharingSet**. This user is also listed in the **Shared with** column in the report.|SharePoint|
|UserType|The type of user that performed the operation. The following values indicate the user type. <br/> <br/> **0** - A regular user. <br/>**2** - An administrator in your Microsoft 365 organization.<sup>1</sup> <br/>**3** - A Microsoft datacenter administrator or datacenter system account. <br/>**4** - A system account. <br/>**5** - An application. <br/>**6** - A service principal.<br/>**7** - A custom policy.<br/>**8** - A system policy.|All|
|Version|Indicates the version number of the activity (identified by the **Operation** property) that's logged.|All|
|Workload|The Microsoft 365 service where the activity occurred.|All|
||||

> [!NOTE]
><sup>1</sup> For Azure Active Directory-related events, the value for an administrator isn't used in an audit record. Audit records for activities performed by administrators will indicate that a regular user (for example, **UserType: 0**) performed the activity. The **UserID** property will identify the person (regular user or administrator) who performed the activity.<br/>

The properties described above are also displayed when you click **More information** when viewing the details of a specific event.
  
![Click More information to view the detailed properties of the audit log event record](../media/6df582ae-d339-4735-b1a6-80914fb77a08.png)