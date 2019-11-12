---
title: "Search the audit log in the Security & Compliance Center"
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MET150
ms.assetid: 0d4d0f35-390b-4518-800e-0c7ec95e946c
description: "Use the Security & Compliance Center to search the unified audit log to view user and administrator activity in your Office 365 organization. "
---

# Search the audit log in the Security & Compliance Center

## Introduction

Need to find if a user viewed a specific document or purged an item from their mailbox? If so, you can use the Office 365 Security & Compliance Center to search the unified audit log to view user and administrator activity in your Office 365 organization. Why a unified audit log? Because you can search for the following types of user and admin activity in Office 365:

- User activity in SharePoint Online and OneDrive for Business

- User activity in Exchange Online (Exchange mailbox audit logging)

- Admin activity in SharePoint Online

- Admin activity in Azure Active Directory (the directory service for Office 365)

- Admin activity in Exchange Online (Exchange admin audit logging)

- User and admin activity in Sway

- eDiscovery activities in the security and compliance center

- User and admin activity in Power BI

- User and admin activity in Microsoft Teams

- User and admin activity in Dynamics 365

- User and admin activity in Yammer

- User and admin activity in Microsoft Flow

- User and admin activity in Microsoft Stream

- Analyst and admin activity in Microsoft Workplace Analytics

- User and admin activity in Microsoft PowerApps

## Before you begin

Be sure to read the following items before you start searching the Office 365 audit log.

- You (or another admin) must first turn on audit logging before you can start searching the Office 365 audit log. To turn it on, click **Start recording user and admin activity** on the **Audit log search** page in the Security & Compliance Center. (If you don't see this link, auditing has already been turned on for your organization.) After you turn it on, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this once.

  > [!NOTE]
  > We're in the process of turning on auditing by default. Until then, you can turn it on as previously described.

- You have to be assigned the View-Only Audit Logs or Audit Logs role in Exchange Online to search the Office 365 audit log. By default, these roles are assigned to the Compliance Management and Organization Management role groups on the **Permissions** page in the Exchange admin center. Note Global administrators in Office 365 and Microsoft 365 are automatically added as members of the Organization Management role group in Exchange Online. To give a user the ability to search the Office 365 audit log with the minimum level of privileges, you can create a custom role group in Exchange Online, add the View-Only Audit Logs or Audit Logs role, and then add the user as a member of the new role group. For more information, see [Manage role groups in Exchange Online](https://go.microsoft.com/fwlink/p/?LinkID=730688).

  > [!IMPORTANT]
  > If you assign a user the View-Only Audit Logs or Audit Logs role on the **Permissions** page in the Security & Compliance Center, they won't be able to search the Office 365 audit log. You have to assign the permissions in Exchange Online. This is because the underlying cmdlet used to search the audit log is an Exchange Online cmdlet.

- When an audited activity is performed by a user or admin, an audit record is generated and stored in the Office 365 audit log for your organization. The length of time that an audit record is retained (and searchable in the audit log) depends on your Office 365 subscription, and specifically the type of the license that is assigned to a specific user.

  - **Office 365 E3:** Audit records are retained for 90 days. That means you can search the audit log for activities that were performed within the last 90 days.

    > [!NOTE]
    > Even when mailbox auditing on by default is turned on, you might notice that mailbox audit events for some users aren't found in audit log searches in the Security & Compliance Center or via the Office 365 Management Activity API. For more information, see [More information about mailbox audit logging](enable-mailbox-auditing.md#more-information).

  - **Office 365 E5:** Audit records are also retained for 90 days. Retaining audit records for one year may eventually be available for E5 users and users with an E3 license and an Office 365 Advanced Compliance add-on license.

    > [!NOTE]
    > The private preview program for the one-year retention period for audit records for E5 organizations (or for users in E3 organizations that have Advanced Compliance add-on licenses) is closed to new enrollment. This article will be updated when the one-year retention period is available in public preview or released for general availability.

- If you want to turn off audit log search in Office 365 for your organization, you can run the following command in remote PowerShell connected to your Exchange Online organization:

  ```
  Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $false
  ```

    To turn on audit search again, you can run the following command in Exchange Online PowerShell:

  ```
  Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true
  ```

  For more information, see [Turn off audit log search in Office 365](turn-audit-log-search-on-or-off.md).

- As previously stated, the underlying cmdlet used to search the audit log is an Exchange Online cmdlet, which is **Search-UnifiedAuditLog**. That means you can use this cmdlet to search the Office 365 audit log instead of using the **Audit log search** page in the Security & Compliance Center. You have to run this cmdlet in remote PowerShell connected to your Exchange Online organization. For more information, see [Search-UnifiedAuditLog](https://go.microsoft.com/fwlink/p/?linkid=834776).

  For information about exporting the search results returned by the **Search-UnifiedAuditLog** cmdlet to a CSV file, see the "Tips for exporting and viewing the audit log" section in [Export, configure, and view audit log records](export-view-audit-log-records.md#tips-for-exporting-and-viewing-the-audit-log).

- If you want to programmatically download data from the Office 365 audit log, we recommend that you use the Office 365 Management Activity API instead of using a PowerShell script. The Office 365 Management Activity API is a REST web service that you can use to develop operations, security, and compliance monitoring solutions for your organization. For more information, see [Office 365 Management Activity API reference](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference).

- It can take up to 30 minutes or up to 24 hours after an event occurs for the corresponding audit log entry to be displayed in the search results. The following table shows the time it takes for the different services in Office 365.

  |**Office 365 service**|**30 minutes**|**24 hours**|
  |:-----|:-----:|:-----:|
  |Advanced Threat Protection and Threat Intelligence|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Azure Active Directory (user login events)||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
  |Azure Active Directory (admin events)||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
  |Data Loss Prevention|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Dynamics 365 CRM|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |eDiscovery|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Exchange Online|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Microsoft Flow|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Microsoft Project|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Microsoft Stream|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Microsoft Teams|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Power BI|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Security & Compliance Center|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |SharePoint Online and OneDrive for Business|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Sway||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
  |Workplace Analytics|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
  |Yammer||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|

- Azure Active Directory (Azure AD) is the directory service for Office 365. The unified audit log contains user, group, application, domain, and directory activities performed in the Microsoft 365 admin center or in the Azure management portal. For a complete list of Azure AD events, see [Azure Active Directory Audit Report Events](https://go.microsoft.com/fwlink/p/?LinkID=616549).

- Audit logging for Power BI isn't enabled by default. To search for Power BI activities in the Office 365 audit log, you have to enable auditing in the Power BI admin portal. For instructions, see the "Audit logs" section in [Power BI admin portal](https://docs.microsoft.com/power-bi/service-admin-portal#audit-logs).

## Search the audit log

Here's the process for searching the audit log in Office 365.

[Step 1: Run an audit log search](#step-1-run-an-audit-log-search)

[Step 2: View the search results](#step-2-view-the-search-results)

[Step 3: Filter the search results](#step-3-filter-the-search-results)

[Step 4: Export the search results to a file](#step-4-export-the-search-results-to-a-file)

### Step 1: Run an audit log search

1. Go to [https://protection.office.com](https://protection.office.com).

    > [!TIP]
    > Use a private browsing session (not a regular session) to access the Security & Compliance Center because this will prevent the credential that you are currently logged on with from being used. To open an InPrivate Browsing session in Internet Explorer or Microsoft Edge, just press CTRL+SHIFT+P. To open a private browsing session in Google Chrome (called an incognito window), press CTRL+SHIFT+N.

2. Sign in to Office 365 using your work or school account.

3. In the left pane of the Security & Compliance Center, click **Search**, and then click **Audit log search**.

    The **Audit log search** page is displayed.

    ![Configure criteria and then click Search to run report](media/8639d09c-2843-44e4-8b4b-9f45974ff7f1.png)

    > [!NOTE]
    > You have to first turn on audit logging before you can run an audit log search. If the **Start recording user and admin activity** link is displayed, click it to turn on auditing. If you don't see this link, auditing has already been turned on for your organization.

4. Configure the following search criteria:

    a. **Activities**: Click the drop-down list to display the activities that you can search for. User and admin activities are organized in to groups of related activities. You can select specific activities or you can click the activity group name to select all activities in the group. You can also click a selected activity to clear the selection. After you run the search, only the audit log entries for the selected activities are displayed. Selecting **Show results for all activities** displays results for all activities performed by the selected user or group of users.

    Over 100 user and admin activities are logged in the Office 365 audit log. Click the **Audited activities** tab at the topic of this article to see the descriptions of every activity in each of the different Office 365 services.

    b. **Start date** and **End date**: The last seven days are selected by default. Select a date and time range to display the events that occurred within that period. The date and time are presented in Coordinated Universal Time (UTC) format. The maximum date range that you can specify is 90 days. An error is displayed if the selected date range is greater than 90 days.

    > [!TIP]
    > If you're using the maximum date range of 90 days, select the current time for the **Start date**. Otherwise, you'll receive an error saying that the start date is earlier than the end date. If you've turned on auditing within the last 90 days, the maximum date range can't start before the date that auditing was turned on.

    c. **Users**: Click in this box and then select one or more users to display search results for. The audit log entries for the selected activity performed by the users you select in this box are displayed in the list of results. Leave this box blank to return entries for all users (and service accounts) in your organization.

    d. **File, folder, or site**: Type some or all of a file or folder name to search for activity related to the file of folder that contains the specified keyword. You can also specify a URL of a file or folder. If you use a URL, be sure the type the full URL path or if you type a portion of the URL, don't include any special characters or spaces.

    Leave this box blank to return entries for all files and folders in your organization.

   **TIPS**

   - If you're looking for all activities related to a **site**, add the wildcard symbol (\*) after the URL to return all entries for that site; for example, **"https://contoso-my.sharepoint.com/personal/*"**.

   - If you're looking for all activities related to a **file**, add the wildcard symbol (\*) before the file name to return all entries for that file; for example, **"*Customer_Profitability_Sample.csv"**.

5. Click **Search** to run the search using your search criteria.

   The search results are loaded, and after a few moments they are displayed under **Results**. When the search is finished, the number of results found is displayed. A maximum of 5,000 events will be displayed in the **Results** pane in increments of 150 events. If more than 5,000 events meet the search criteria, the most recent 5,000 events are displayed.

   ![The number of results are displayed after the search is finished](media/986216f1-ca2f-4747-9480-e232b5bf094c.png)

#### Tips for searching the audit log

- You can select specific activities to search for by clicking the activity name. Or you can search for all activities in a group (such as **File and folder activities**) by clicking the group name. If an activity is selected, you can click it to cancel the selection. You can also use the search box to display the activities that contain the keyword that you type.

  ![Click activity group name to select all activities](media/3cde97cb-6f35-47c0-8612-ecd9c6ac36a3.png)

- You have to select **Show results for all activities** in the **Activities** list to display events from the Exchange admin audit log. Events from this audit log display a cmdlet name (for example, **Set-Mailbox**) in the **Activity** column in the results. For more information, click the **Audited activities** tab in this topic and then click **Exchange admin activities**.

  Similarly, there are some auditing activities that don't have a corresponding item in the **Activities** list. If you know the name of the operation for these activities, you can search for all activities, then filter the results by typing the name of the operation in the box for the **Activity** column. See [Step 3: Filter the search results](#step-3-filter-the-search-results) for more information about filtering the results.

- Click **Clear** to clear the current search criteria. The date range returns to the default of the last seven days. You can also click **Clear all to show results for all activities** to cancel all selected activities.

- If 5,000 results are found, you can probably assume that there are more than 5,000 events that met the search criteria. You can either refine the search criteria and rerun the search to return fewer results, or you can export all of the search results by selecting **Export results** \> **Download all results**.

### Step 2: View the search results

The results of an audit log search are displayed under **Results** on the **Audit log search** page. As previously stated a maximum of 5,000 (newest) events are displayed in increments of 150 events. To display more events you can use the scroll bar in the **Results** pane or you can press **Shift + End** to display the next 150 events.

The results contain the following information about each event returned by the search:

- **Date**: The date and time (in UTC format) when the event occurred.

- **IP address**: The IP address of the device that was used when the activity was logged. The IP address is displayed in either an IPv4 or IPv6 address format.

   > [!NOTE]
  > For some services, the value displayed in this field might be the IP address for a trusted application (for example, Office on the web apps) calling into the service on behalf of a user and not the IP address of the device used by person who performed the activity. Also, for admin activity (or activity performed by a system account) for Azure Active Directory-related events, the IP address isn't logged and the value displayed in this field is `null`.

- **User**: The user (or service account) who performed the action that triggered the event.

- **Activity**: The activity performed by the user. This value corresponds to the activities that you selected in the **Activities** drop down list. For an event from the Exchange admin audit log, the value in this column is an Exchange cmdlet.

- **Item**: The object that was created or modified as a result of the corresponding activity. For example, the file that was viewed or modified or the user account that was updated. Not all activities have a value in this column.

- **Detail**: Additional information about an activity. Again, not all activities have a value.

> [!TIP]
> Click a column header under **Results** to sort the results. You can sort the results from A to Z or Z to A. Click the **Date** header to sort the results from oldest to newest or newest to oldest.

#### View the details for a specific event

You can view more details about an event by clicking the event record in the list of search results. A **Details** page is displayed that contains the detailed properties from the event record. The properties that are displayed depend on the Office 365 service in which the event occurs. To display these details, click **More information**. For descriptions, see [Detailed properties in the Office 365 audit log](detailed-properties-in-the-office-365-audit-log.md).

![Click More information to view the detailed properties of the audit log event record](media/6df582ae-d339-4735-b1a6-80914fb77a08.png)

### Step 3: Filter the search results

In addition to sorting, you can also filter the results of an audit log search. This is a great feature that can help you quickly filter the results for a specific user or activity. You can initially create a wide search and then quickly filter the results to see specific events. Then you can narrow the search criteria and rerun the search to return a smaller, more concise set of results.

To filter the results:

1. Run an audit log search.

2. When the results are displayed, click **Filter results**.

   Keyword boxes are displayed under each column header.

3. Click one of the boxes under a column header and type a word or phrase, depending on the column you're filtering on. The results will dynamically readjust to display the events that match your filter.

   ![Type a word in filter to display events that match the filter](media/542dc323-a997-402c-934b-cc5e218e50bc.png)

4. To clear a filter, click the **X** in the filter box or click **Hide filtering**.

> [!TIP]
> To display events from the Exchange admin audit log, type a **-** (dash) in the **Activity** filter box. This will display cmdlet names, which are displayed in the **Activity** column for Exchange admin events. Then you can sort the cmdlet names in alphabetical order.

### Step 4: Export the search results to a file

You can export the results of an audit log search to a comma-separated value (CSV) file on your local computer. You can open this file in Microsoft Excel and use features such as search, sorting, filtering, and splitting a single column (that contains multiple properties) into multiple columns.

1. Run an audit log search, and then revise the search criteria until you have the desired results.

2. Click **Export results** and select one of the following options:

   - **Save loaded results**: Choose this option to export only the entries that are displayed under **Results** on the **Audit log search** page. The CSV file that is downloaded contains the same columns (and data) displayed on the page (Date, User, Activity, Item, and Details). An extra column (named **More**) is included in the CSV file that contains more information from the audit log entry. Because you're exporting the same results that are loaded (and viewable) on the **Audit log search** page, a maximum of 5,000 entries are exported.

   - **Download all results**: Choose this option to export all entries from the Office 365 audit log that meet the search criteria. For a large set of search results, choose this option to download all entries from the audit log in addition to the 5,000 audit records that can be displayed on the **Audit log search** page. This option downloads the raw data from the audit log to a CSV file, and contains additional information from the audit log entry in a column named **AuditData**. It may take longer to download the file if you choose this export option because the file may be much larger than the one that's downloaded if you choose the other option.

     > [!IMPORTANT]
     > You can download a maximum of 50,000 entries to a CSV file from a single audit log search. If 50,000 entries are downloaded to the CSV file, you can probably assume there are more than 50,000 events that met the search criteria. To export more than this limit, try using a date range to reduce the number of audit log entries. You might have to run multiple searches with smaller date ranges to export more than 50,000 entries.

3. After you select an export option, a message is displayed at the bottom of the window that prompts you to open the CSV file, save it to the Downloads folder, or save it to a specific folder.

#### More information about exporting and viewing audit log search results

- If you download all search results, the CSV file contains a column named **AuditData**, which contains additional information about each event. The data in this column consists of a JSON object that contains multiple properties from the audit log record. Each *property:value* pair in the JSON object is separated by a comma. You can use the JSON transform tool in the Power Query Editor in Excel to split **AuditData** column into multiple columns so that each property in the JSON object has its own column. This lets you sort and filter on one or more of these properties. For step-by-step instructions using the Power Query Editor to transform the JSON object, see [Export, configure, and view audit log records](export-view-audit-log-records.md).

  After you split the **AuditData** column, you can filter on the **Operations** column to display the detailed properties for a specific type of activity.

- The **Download all results** option downloads the raw data from the Office 365 audit log to a CSV file. This file contains different column names (CreationDate, UserIds, Operation, AuditData) than the file that's downloaded if you select the **Save loaded results** option. The values in the two different CSV files for the same activity may also be different. For example, the activity in the **Action** column in the CSV file and may have a different value than the "user-friendly" name that's displayed in the **Activity** column on the **Audit log search** page. For example, MailboxLogin vs. User signed in to mailbox.

- When you download all results from a search query that contains events from different Office 365 services, the **AuditData** column in the CSV file contains different properties depending on which service the action was performed in. For example, entries from Exchange and Azure AD audit logs include a property named **ResultStatus** that indicates if the action was successful or not. This property isn't included for events in SharePoint. Similarly, SharePoint events have a property that identifies the site URL for file and folder-related activities. To mitigate this behavior, consider using different searches to export the results for activities from a single service.

  For a description of many of the properties that are listed in the **AuditData** column in the CSV file when you download all results, and the service each one applies to, see [Detailed properties in the Office 365 audit log](detailed-properties-in-the-office-365-audit-log.md).

## Audited activities

The tables in this section describe the activities that are audited in Office 365. You can search for these events by searching the audit log in the security and compliance center.

These tables group related activities or the activities from a specific Office 365 service. The tables include the friendly name that's displayed in the **Activities** drop-down list and the name of the corresponding operation that appears in the detailed information of an audit record and in the CSV file when you export the search results. For descriptions of the detailed information, see [Detailed properties in the Office 365 audit log](detailed-properties-in-the-office-365-audit-log.md).

Click one of the following links to go to a specific table.

||||
|:-----|:-----|:-----|
|[File and page activities](#file-and-page-activities)|[Folder activities](#folder-activities)|[SharePoint list activities](#sharepoint-list-activities)|
|[Sharing and access request activities](#sharing-and-access-request-activities)|[Synchronization activities](#synchronization-activities)|[Site permissions activities](#site-permissions-activities)|
|[Site administration activities](#site-administration-activities)|[Exchange mailbox activities](#exchange-mailbox-activities)|[Sway activities](#sway-activities)|
|[User administration activities](#user-administration-activities)|[Azure AD group administration activities](#azure-ad-group-administration-activities)|[Application administration activities](#application-administration-activities)|
|[Role administration activities](#role-administration-activities)|[Directory administration activities](#directory-administration-activities)|[eDiscovery activities](#ediscovery-activities)|
|[Advanced eDiscovery activities](#advanced-ediscovery-activities)|[Power BI activities](#power-bi-activities)|[Microsoft Workplace Analytics](#microsoft-workplace-analytics-activities)|
|[Microsoft Teams activities](#microsoft-teams-activities)|[Microsoft Teams Healthcare activities](#microsoft-teams-healthcare-activities)|[Yammer activities](#yammer-activities)|
|[Microsoft Flow activities](#microsoft-flow-activities)|[Microsoft PowerApps activities](#microsoft-powerapps)|[Microsoft Stream activities](#microsoft-stream-activities)|
[Exchange admin activities](#exchange-admin-audit-log)|||
||||

### File and page activities

The following table describes the file and page activities in SharePoint Online and OneDrive for Business.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Accessed file|FileAccessed|User or system account accesses a file.|
|(none)|FileAccessedExtended|This is related to the "Accessed file" (FileAccessed) activity. A FileAccessedExtended event is logged when the same person continually accesses a file for an extended period (up to 3 hours). <br/><br/> The purpose of logging FileAccessedExtended events is to reduce the number of FileAccessed events that are logged when a file is continually accessed. This helps reduce the noise of multiple FileAccessed records for what is essentially the same user activity, and lets you focus on the initial (and more important) FileAccessed event.|
|Changed compliance policy label|ComplianceSettingChanged|A retention label was applied to or removed from a document. This event is triggered when a retention label is manually or automatically applied to a message.|
|Changed record status to locked|LockRecord|The record status of a retention label that classifies a document as a record was locked. This means the document can't be modified or deleted. Only users assigned at least the contributor permission for a site can change the record status of a document.|
|Changed record status to unlocked|UnlockRecord|The record status of a retention label that classifies a document as a record was unlocked. This means that the document can be modified or deleted. Only users assigned at least the contributor permission for a site can change the record status of a document.|
|Checked in file|FileCheckedIn|User checks in a document that they checked out from a document library.|
|Checked out file|FileCheckedOut|User checks out a document located in a document library. Users can check out and make changes to documents that have been shared with them.|
|Copied file|FileCopied|User copies a document from a site. The copied file can be saved to another folder on the site.|
|Deleted file|FileDeleted|User deletes a document from a site.|
|Deleted file from recycle bin|FileDeletedFirstStageRecycleBin|User deletes a file from the recycle bin of a site.|
|Deleted file from second-stage recycle bin|FileDeletedSecondStageRecycleBin|User deletes a file from the second-stage recycle bin of a site.|
|Deleted record compliance policy label|ComplianceRecordDelete|A document that was classified as a record was deleted. A document is considered a record when a retention label that classifies content as a record is applied to the document.|
|Detected document sensitivity mismatch|DocumentSensitivityMismatchDetected|User uploads a document classified with a sensitivity label that has a higher priority than the sensitivity label that's applied to the site the document is uploaded to. <br/><br/> This event isn't triggered if the sensitivity label applied to a site has a higher priority than the sensitivity label applied to a document that's uploaded to the site. For more information about sensitivity label priority, see the "Label priority" section in [Overview of sensitivity labels](sensitivity-labels.md#label-priority-order-matters).|
|Detected malware in file|FileMalwareDetected|SharePoint anti-virus engine detects malware in a file.|
|Discarded file checkout|FileCheckOutDiscarded|User discards (or undos) a checked out file. That means any changes they made to the file when it was checked out are discarded, and not saved to the version of the document in the document library.|
|Downloaded file|FileDownloaded|User downloads a document from a site.|
|Modified file|FileModified|User or system account modifies the content or the properties of a document on a site.|
|(none)|FileModifiedExtended|This is related to the "Modified file" (FileModified) activity. A FileModifiedExtended event is logged when the same person continually modifies a file for an extended period (up to 3 hours). <br/><br/> The purpose of logging FileModifiedExtended events is to reduce the number of FileModified events that are logged when a file is continually modified. This helps reduce the noise of multiple FileModified records for what is essentially the same user activity, and lets you focus on the initial (and more important) FileModified event.|
|Moved file|FileMoved|User moves a document from its current location on a site to a new location.|
|(none)|FilePreviewed|User previews files on a SharePoint or OneDrive for Business site. These events typically occur in high volumes based on a single activity, such as viewing an image gallery.|
|Recycled all minor versions of file|FileVersionsAllMinorsRecycled|User deletes all minor versions from the version history of a file. The deleted versions are moved to the site's recycle bin.|
|Recycled all versions of file|FileVersionsAllRecycled|User deletes all versions from the version history of a file. The deleted versions are moved to the site's recycle bin.|
|Recycled version of file|FileVersionRecycled|User deletes a version from the version history of a file. The deleted version is moved to the site's recycle bin.|
|Renamed file|FileRenamed|User renames a document on a site.|
|Restored file|FileRestored|User restores a document from the recycle bin of a site.|
|Uploaded file|FileUploaded|User uploads a document to a folder on a site.|
|Viewed page|PageViewed|User views a page on a site. This doesn't include using a Web browser to view files located in a document library.|
|(none)|PageViewedExtended|This is related to the "Viewed page" (PageViewed) activity. A PageViewedExtended event is logged when the same person continually views a web page for an extended period (up to 3 hours). <br/><br/> The purpose of logging PageViewedExtended events is to reduce the number of PageViewed events that are logged when a page is continually viewed. This helps reduce the noise of multiple PageViewed records for what is essentially the same user activity, and lets you focus on the initial (and more important) PageViewed event.|
|View signaled by client|ClientViewSignaled|A user’s client (such as website or mobile app) has signaled that the indicated page has been viewed by the user. This activity is often logged following a PagePrefetched event for a page. <br/><br/>**NOTE**: Because ClientViewSignaled events are signaled by the client, rather than the server, it's possible the event may not be logged by the server and therefore may not appear in the audit log. It's also possible that information in the audit record may not be trustworthy. However, because the user’s identity is validated by the token used to create the signal, the user’s identity listed in the corresponding audit record is accurate. |
|(none)|PagePrefetched|A user’s client (such as website or mobile app) has requested the indicated page to help improve performance if the user browses to it. This event is logged to indicate that the page content has been served to the user’s client. This event isn't a definitive indication that the user navigated to the page. <br/><br/> When the page content is rendered by the client (as per the user’s request) a ClientViewSignaled event should be generated. Not all clients support indicating a pre-fetch, and therefore some pre-fetched activities might instead be logged as PageViewed events.|
||||

### Folder activities

The following table describes the folder activities in SharePoint Online and OneDrive for Business.

|**Friendly name**|**Operation**|**Description**|
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
||||

### SharePoint list activities

The following table describes activities related to when users interact with lists and list items in SharePoint Online.

|**Friendly name**|**Operation**|**Description**|
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
||||

### Sharing and access request activities

The following table describes the user sharing and access request activities in SharePoint Online and OneDrive for Business. For sharing events, the **Detail** column under **Results** identifies the name of the user or group the item was shared with and whether that user or group is a member or guest in your organization. For more information, see [Use sharing auditing in the Office 365 audit log](use-sharing-auditing.md).

> [!NOTE]
> Users can be either  *members*  or  *guests*  based on the UserType property of the user object. A member is usually an employee, and a guest is usually a collaborator outside of your organization. When a user accepts a sharing invitation (and isn't already part of your organization), a guest account is created for them in your organization's directory. Once the guest user has an account in your directory, resources may be shared directly with them (without requiring an invitation).

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added permission level to site collection|PermissionLevelAdded|A permission level was added to a site collection.|
|Accepted access request|AccessRequestAccepted|An access request to a site, folder, or document was accepted and the requesting user has been granted access.|
|Accepted sharing invitation|SharingInvitationAccepted|User (member or guest) accepted a sharing invitation and was granted access to a resource. This event includes information about the user who was invited and the email address that was used to accept the invitation (they could be different). This activity is often accompanied by a second event that describes how the user was granted access to the resource, for example, adding the user to a group that has access to the resource.|
|Blocked sharing invitation|SharingInvitationBlocked|A sharing invitation sent by a user in your organization is blocked because of an external sharing policy that either allows or denies external sharing based on the domain of the target user. In this case, the sharing invitation was blocked because: <br/> The target user's domain isn't included in the list of allowed domains. <br/> Or <br/> The target user's domain is included in the list of blocked domains. <br/> For more information about allowing or blocking external sharing based on domains, see [Restricted domains sharing in SharePoint Online and OneDrive for Business](https://support.office.com/article/5d7589cd-0997-4a00-a2ba-2320ec49c4e9).|
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
||||

### Synchronization activities

The following table lists file synchronization activities in SharePoint Online and OneDrive for Business.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Allowed computer to sync files|ManagedSyncClientAllowed|User successfully establishes a sync relationship with a site. The sync relationship is successful because the user's computer is a member of a domain that's been added to the list of domains (called the *safe recipients list*) that can access document libraries in your organization. <br/><br/> For more information about this feature, see [Use Windows PowerShell cmdlets to enable OneDrive sync for domains that are on the safe recipients list](https://go.microsoft.com/fwlink/p/?LinkID=534609).|
|Blocked computer from syncing files|UnmanagedSyncClientBlocked|User tries to establish a sync relationship with a site from a computer that isn't a member of your organization's domain or is a member of a domain that hasn't been added to the list of domains (called the  *safe recipients list)*  that can access document libraries in your organization. The sync relationship is not allowed, and the user's computer is blocked from syncing, downloading, or uploading files on a document library. <br/><br/> For information about this feature, see [Use Windows PowerShell cmdlets to enable OneDrive sync for domains that are on the safe recipients list](https://go.microsoft.com/fwlink/p/?LinkID=534609).|
|Downloaded files to computer|FileSyncDownloadedFull|User establishes a sync relationship and successfully downloads files for the first time to their computer from a document library.|
|Downloaded file changes to computer|FileSyncDownloadedPartial|User successfully downloads any changes to files from a document library. This activity indicates that any changes that were made to files in the document library were downloaded to the user's computer. Only changes were downloaded because the document library was previously downloaded by the user (as indicated by the **Downloaded files to computer** activity).|
|Uploaded files to document library|FileSyncUploadedFull|User establishes a sync relationship and successfully uploads files for the first time from their computer to a document library.|
|Uploaded file changes to document library|FileSyncUploadedPartial|User successfully uploads changes to files on a document library. This event indicates that any changes made to the local version of a file from a document library are successfully uploaded to the document library. Only changes are uploaded because those files were previously uploaded by the user (as indicated by the **Uploaded files to document library** activity).|
||||

### Site permissions activities

The following table lists events related to assigning permissions in SharePoint and using groups to give (and revoke) access to sites.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added site collection admin|SiteCollectionAdminAdded|Site collection administrator or owner adds a person as a site collection administrator for a site. Site collection administrators have full control permissions for the site collection and all subsites. This activity is also logged when an admin gives themselves access to a user's OneDrive account (by editing the user profile in the SharePoint admin center or by [using the Microsoft 365 admin center](https://docs.microsoft.com/office365/admin/add-users/get-access-to-and-back-up-a-former-user-s-data)).|
|Added user or group to SharePoint group|AddedToGroup|User added a member or guest to a SharePoint group. This might have been an intentional action or the result of another activity, such as a sharing event.|
|Broke permission level inheritance|PermissionLevelsInheritanceBroken|An item was changed so that it no longer inherits permission levels from its parent.|
|Broke sharing inheritance|SharingInheritanceBroken|An item was changed so that it no longer inherits sharing permissions from its parent.|
|Created group|GroupAdded|Site administrator or owner creates a group for a site, or performs a task that results in a group being created. For example, the first time a user creates a link to share a file, a system group is added to the user's OneDrive for Business site. This event can also be a result of a user creating a link with edit permissions to a shared file.|
|Deleted group|GroupRemoved|User deletes a group from a site.|
|Modified access request setting|WebRequestAccessModified|The access request settings were modified on a site.|
|Modified 'Members Can Share' setting|WebMembersCanShareModified|The **Members Can Share** setting was modified on a site.|
|Modified permission level on site collection|PermissionLevelModified|A permission level was changed on a site collection.|
|Modified site permissions|SitePermissionsModified|Site administrator or owner (or system account) changes the permission level that is assigned to a group on a site. This activity is also logged if all permissions are removed from a group. <br/><br/> **NOTE**: This operation has been deprecated in SharePoint Online. To find related events, you can search for other permission-related activities such as **Added site collection admin**, **Added user or group to SharePoint group**, **Allowed user to create groups**, **Created group**, and **Deleted group.**|
|Removed permission level from site collection|PermissionLevelRemoved|A permission level was removed from a site collection.|
|Removed site collection admin|SiteCollectionAdminRemoved|Site collection administrator or owner removes a person as a site collection administrator for a site. This activity is also logged when an admin removes themselves from the list of site collection administrators for a user's OneDrive account (by editing the user profile in the SharePoint admin center).  To return this activity in the audit log search results, you have to search for all activities.|
|Removed user or group from SharePoint group|RemovedFromGroup|User removed a member or guest from a SharePoint group. This might have been an intentional action or the result of another activity, such as an unsharing event.|
|Requested site admin permissions|SiteAdminChangeRequest|User requests to be added as a site collection administrator for a site collection. Site collection administrators have full control permissions for the site collection and all subsites.|
|Restored sharing inheritance|SharingInheritanceReset|A change was made so that an item inherits sharing permissions from its parent.|
|Updated group|GroupUpdated|Site administrator or owner changes the settings of a group for a site. This can include changing the group's name, who can view or edit the group membership, and how membership requests are handled.|
||||

### Site administration activities

The following table lists events that result from site administration tasks in SharePoint Online.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added allowed data location|AllowedDataLocationAdded|A SharePoint or global administrator added an allowed data location in a multi-geo environment.|
|Added exempt user agent|ExemptUserAgentSet|A SharePoint or global administrator added a user agent to the list of exempt user agents in the SharePoint admin center.|
|Added geo location admin|GeoAdminAdded|A SharePoint or global administrator added a user as a geo admin of a location.|
|Allowed user to create groups|AllowGroupCreationSet|Site administrator or owner adds a permission level to a site that allows a user assigned that permission to create a group for that site.|
|Cancelled site geo move|SiteGeoMoveCancelled|A SharePoint or global administrator successfully cancels a SharePoint or OneDrive site geo move. The Multi-Geo capability lets an Office 365 organization span multiple Office 365 datacenter geographies, which are called geos. For more information, see [Multi-Geo Capabilities in OneDrive and SharePoint Online in Office 365](https://go.microsoft.com/fwlink/?linkid=860840).|
|Changed a sharing policy|SharingPolicyChanged|A SharePoint or global administrator changed a SharePoint sharing policy by using the Office 365 admin portal, SharePoint admin portal, or SharePoint Online Management Shell. Any change to the settings in the sharing policy in your organization will be logged. The policy that was changed is identified in the **ModifiedProperties** field in the detailed properties of the event record.|
|Changed device access policy|DeviceAccessPolicyChanged|A SharePoint or global administrator changed the unmanaged devices policy for your organization. This policy controls access to SharePoint, OneDrive, and Office 365 from devices that aren't joined to your organization. Configuring this policy requires an Enterprise Mobility + Security subscription. For more information, see [Control access from unmanaged devices](https://support.office.com/article/5ae550c4-bd20-4257-847b-5c20fb053622).|
|Changed exempt user agents|CustomizeExemptUsers|A SharePoint or global administrator customized the list of exempt user agents in the SharePoint admin center. You can specify which user agents to exempt from receiving an entire web page to index. This means when a user agent you've specified as exempt encounters an InfoPath form, the form will be returned as an XML file, instead of an entire web page. This makes indexing InfoPath forms faster.|
|Changed network access policy|NetworkAccessPolicyChanged|A SharePoint or global administrator changed the location-based access policy (also called a trusted network boundary) in the SharePoint admin center or by using SharePoint Online PowerShell. This type of policy controls who can access SharePoint and OneDrive resources in your organization based on authorized IP address ranges that you specify. For more information, see [Control access to SharePoint Online and OneDrive data based on network location](https://support.office.com/article/b5a5f1f1-1174-4c6b-91d0-9273a6b6971f).|
|Completed site geo move|SiteGeoMoveCompleted|A site geo move that was scheduled by a global administrator in your organization was successfully completed. The Multi-Geo capability lets an Office 365 organization span multiple Office 365 datacenter geographies, which are called geos. For more information, see [Multi-Geo Capabilities in OneDrive and SharePoint Online in Office 365](https://go.microsoft.com/fwlink/?linkid=860840).|
|Created Sent To connection|SendToConnectionAdded|A SharePoint or global administrator creates a new Send To connection on the Records management page in the SharePoint admin center. A Send To connection specifies settings for a document repository or a records center. When you create a Send To connection, a Content Organizer can submit documents to the specified location.|
|Created site collection|SiteCollectionCreated|A SharePoint or global administrator creates a site collection in your SharePoint Online organization or a user provisions their OneDrive for Business site.|
|Deleted orphaned hub site|HubSiteOrphanHubDeleted|A SharePoint or global administrator deleted an orphan hub site, which is a hub site that doesn't have any sites associated with it. An orphaned hub is likely caused by the deletion of the original hub site.|
|Deleted Sent To connection|SendToConnectionRemoved|A SharePoint or global administrator deletes a Send To connection on the Records management page in the SharePoint admin center.|
|Deleted site|SiteDeleted|Site administrator deletes a site.|
|Enabled document preview|PreviewModeEnabledSet|Site administrator enables document preview for a site.|
|Enabled legacy workflow|LegacyWorkflowEnabledSet|Site administrator or owner adds the SharePoint 2013 Workflow Task content type to the site. Global administrators can also enable work flows for the entire organization in the SharePoint admin center.|
|Enabled Office on Demand|OfficeOnDemandSet|Site administrator enables Office on Demand, which lets users access the latest version of Office desktop applications. Office on Demand is enabled in the SharePoint admin center and requires an Office 365 subscription that includes full, installed Office applications.|
|Enabled result source for People Searches|PeopleResultsScopeSet|Site administrator creates the result source for People Searches for a site.|
|Enabled RSS feeds|NewsFeedEnabledSet|Site administrator or owner enables RSS feeds for a site. Global administrators can enable RSS feeds for the entire organization in the SharePoint admin center.|
|Joined site to hub site|HubSiteJoined|A site owner associates their site with a hub site.|
|Registered hub site|HubSiteRegistered|A SharePoint or global administrator creates a hub site. The results are that the site is registered to be a hub site.|
|Removed allowed data location|AllowedDataLocationDeleted|A SharePoint or global administrator removed an allowed data location in a multi-geo environment.|
|Removed geo location admin|GeoAdminDeleted|A SharePoint or global administrator removed a user as a geo admin of a location.|
|Renamed site|SiteRenamed|Site administrator or owner renames a site|
|Scheduled site geo move|SiteGeoMoveScheduled|A SharePoint or global administrator successfully schedules a SharePoint or OneDrive site geo move. The Multi-Geo capability lets an Office 365 organization span multiple Office 365 datacenter geographies, which are called geos. For more information, see [Multi-Geo Capabilities in OneDrive and SharePoint Online in Office 365](https://go.microsoft.com/fwlink/?linkid=860840).|
|Set host site|HostSiteSet|A SharePoint or global administrator changes the designated site to host personal or OneDrive for Business sites.|
|Set storage quota for geo location|GeoQuotaAllocated|A SharePoint or global administrator configured the storage quota for a geo location in a multi-geo environment.|
|Unjoined site from hub site|HubSiteUnjoined|A site owner disassociates their site from a hub site.|
|Unregistered hub site|HubSiteUnregistered|A SharePoint or global administrator unregisters a site as a hub site. When a hub site is unregistered, it no longer functions as a hub site.|
||||

### Exchange mailbox activities

The following table lists the activities that can be logged by mailbox audit logging. Mailbox activities performed by the mailbox owner, a delegated user, or an administrator are automatically logged in the Office 365 audit log for up to 90 days. It's possible for an admin to turn off mailbox audit logging for all users in your organization. In this case, no mailbox actions for any user are logged. For more information, see [Manage mailbox auditing](enable-mailbox-auditing.md).

 You can also search for mailbox activities by using the [Search-MailboxAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-mailboxauditlog) cmdlet in Exchange Online PowerShell.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added delegate mailbox permissions|AddMailboxPermissions|An administrator assigned the FullAccess mailbox permission to a user (known as a delegate) to another person's mailbox. The FullAccess permission allows the delegate to open the other person's mailbox, and read and manage the contents of the mailbox.|
|Added or removed user with delegate access to calendar folder|UpdateCalendarDelegation|A user was added or removed as a delegate to the calendar of another user's mailbox. Calendar delegation gives someone else in the same organization permissions to manage the mailbox owner's calendar.|
|Added permissions to folder|AddFolderPermissions|A folder permission was added. Folder permissions control which users in your organization can access folders in a mailbox and the messages located in those folders.|
|Copied messages to another folder|Copy|A message was copied to another folder.|
|Created mailbox item|Create|An item is created in the Calendar, Contacts, Notes, or Tasks folder in the mailbox. For example, a new meeting request is created. Creating, sending, or receiving a message isn't audited. Also, creating a mailbox folder is not audited.|
|Created new inbox rule in Outlook web app|New-InboxRule|A mailbox owner or other user with access to the mailbox created an inbox rule in the Outlook web app.|
|Deleted messages from Deleted Items folder|SoftDelete|A message was permanently deleted or deleted from the Deleted Items folder. These items are moved to the Recoverable Items folder. Messages are also moved to the Recoverable Items folder when a user selects it and presses **Shift+Delete**.|
|Labeled message as a record|ApplyRecordLabel|A message was classified as a record. This occurs when a retention label that classifies content as a record is manually or automatically applied to a message.|
|Moved messages to another folder|Move|A message was moved to another folder.|
|Moved messages to Deleted Items folder|MoveToDeletedItems|A message was deleted and moved to the Deleted Items folder.|
|Modified folder permission|UpdateFolderPermissions|A folder permission was changed. Folder permissions control which users in your organization can access mailbox folders and the messages in the folder.|
|Modified inbox rule from Outlook web app|Set-InboxRule|A mailbox owner or other user with access to the mailbox modified an inbox rule using the Outlook web app.|
|Purged messages from the mailbox|HardDelete|A message was purged from the Recoverable Items folder (permanently deleted from the mailbox).|
|Removed delegate mailbox permissions|Remove-MailboxPermission|An administrator removed the FullAccess permission (that was assigned to a delegate) from a person's mailbox. After the FullAccess permission is removed, the delegate can't open the other person's mailbox or access any content in it.|
|Removed permissions from folder|RemoveFolderPermissions|A folder permission was removed. Folder permissions control which users in your organization can access folders in a mailbox and the messages located in those folders.|
|Sent message using Send As permissions|SendAs|A message was sent using the SendAs permission. This means that another user sent the message as though it came from the mailbox owner.|
|Sent message using Send On Behalf permissions|SendOnBehalf|A message was sent using the SendOnBehalf permission. This means that another user sent the message on behalf of the mailbox owner. The message indicates to the recipient who the message was sent on behalf of and who actually sent the message.|
|Updated inbox rules from Outlook client|UpdateInboxRules|A mailbox owner or other user with access to the mailbox modified an inbox rule in the Outlook client.|
|Updated message|Update|A message or its properties was changed.|
|User signed in to mailbox|MailboxLogin|The user signed in to their mailbox.|
||||

### Sway activities

The following table lists user and admin activities in Sway. Sway is an Office 365 app that helps users gather, format, and share ideas, stories, and presentations on an interactive, web-based canvas. For more information, see [Frequently asked questions about Sway - Admin Help](https://support.office.com/article/446380fa-25bf-47b2-996c-e12cb2f9d075).

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Changed Sway share level|SwayChangeShareLevel|User changes the share level of a Sway. This event captures the user changing the scope of sharing associated with a Sway; for example, public versus inside the organization.|
|Created Sway|SwayCreate|User creates a Sway.|
|Deleted Sway|SwayDelete|User deletes a Sway.|
|Disabled Sway duplication|SwayDisableDuplication|User disables duplication of a Sway.|
|Duplicated Sway|SwayDuplicate|User duplicates a Sway.|
|Edited Sway|SwayEdit|User edits a Sway.|
|Enabled Sway duplication|EnableDuplication|User enables duplication of a Sway. The ability for a user to enable duplication of a Sway is enabled by default.|
|Revoked Sway sharing|SwayRevokeShare|User stops sharing a Sway by revoking access to it. Revoking access changes the links associated with a Sway.|
|Shared Sway|SwayShare|User intends to share a Sway. This event captures the user action of clicking a specific share destination within the Sway share menu. The event doesn't indicate whether the user completed the share action.|
|Turned off external sharing of Sway|SwayExternalSharingOff|Administrator disables external Sway sharing for the entire organization by using the Microsoft 365 admin center.|
|Turned on external sharing of Sway|SwayExternalSharingOn|Administrator enables external Sway sharing for the entire organization by using the Microsoft 365 admin center.|
|Turned off Sway service|SwayServiceOff|Administrator disables Sway for the entire organization by using the Microsoft 365 admin center.|
|Turned on Sway service|SwayServiceOn|Administrator enables Sway for the entire organization by using the Microsoft 365 admin center (Sway service is enabled by default).|
|Viewed Sway|SwayView|User views a Sway.|
||||

### User administration activities

The following table lists user administration activities that are logged when an admin adds or changes a user account by using the Microsoft 365 admin center or the Azure management portal.

|**Activity**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added user|Add user|An Office 365 user account was created.|
|Changed user license|Change user license|The license assigned to a user what changed. To see what licenses were changes, see the corresponding **Updated user** activity.|
|Changed user password|Change user password|Administrator changed the password for a user.|
|Deleted user|Delete user|An Office 365 user account was deleted.|
|Reset user password|Reset user password|Administrator reset the password for a user.|
|Set property that forces user to change password|Set force change user password|Administrator set the property that forces a user to change their password the next time the user sign in to Office 365.|
|Set license properties|Set license properties|Administrator modifies the properties of a licensed assigned to a user.|
|Updated user|Update user|Administrator changes one or more properties of a user account. For a list of the user properties that can be updated, see the "Update user attributes" section in [Azure Active Directory Audit Report Events](https://go.microsoft.com/fwlink/p/?LinkID=616549).|
||||

### Azure AD group administration activities

The following table lists group administration activities that are logged when an admin or a user creates or changes an Office 365 group or when an admin creates a security group by using the Microsoft 365 admin center or the Azure management portal. For more information about groups in Office 365, see [View, create, and delete Groups in the Microsoft 365 admin center](https://support.office.com/article/a6360120-2fc4-46af-b105-6a04dc5461c7).

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added group|Add group|A group was created.|
|Added member to group|Add member to group|A member was added to a group.|
|Deleted group|Delete group|A group was deleted.|
|Removed member from group|Remove member from group|A member was removed from a group.|
|Updated group|Update group|A property of a group was changed.|
||||

### Application administration activities

The following table lists application admin activities that are logged when an admin adds or changes an application that's registered in Azure AD. Any application that relies on Azure AD for authentication must be registered in the directory.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added delegation entry|Add delegation entry|An authentication permission was created/granted to an application in Azure AD.|
|Added service principal|Add service principal|An application was registered in Azure AD. An application is represented by a service principal in the directory.|
|Added credentials to a service principal|Add service principal credentials|Credentials were added to a service principal in Azure AD. A service principle represents an application in the directory.|
|Removed delegation entry|Remove delegation entry|An authentication permission was removed from an application in Azure AD.|
|Removed a service principal from the directory|Remove service principal|An application was deleted/unregistered from Azure AD. An application is represented by a service principal in the directory.|
|Removed credentials from a service principal|Remove service principal credentials|Credentials were removed from a service principal in Azure AD. A service principle represents an application in the directory.|
|Set delegation entry|Set delegation entry|An authentication permission was updated for an application in Azure AD.|
||||

### Role administration activities

The following table lists Azure AD role administration activities that are logged when an admin manages admin roles in the Microsoft 365 admin center or in the Azure management portal.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Add member to Role|Add role member to role|Added a user to an admin role in Office 365.|
|Removed a user from a directory role|Remove role member from role|Removed a user to from an admin role in Office 365.|
|Set company contact information|Set company contact information|Updated the company-level contact preferences for your Office 365 organization. This includes email addresses for subscription-related email sent by Office 365, and technical notifications about Office 365 services.|
||||

### Directory administration activities

The following table lists Azure AD directory and domain-related activities that are logged when an administrator manages their Office 365 organization in the Microsoft 365 admin center or in the Azure management portal.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added domain to company|Add domain to company|Added a domain to your Office 365 organization.|
|Added a partner to the directory|Add partner to company|Added a partner (delegated administrator) to your Office 365 organization.|
|Removed domain from company|Remove domain from company|Removed a domain from your Office 365 organization.|
|Removed a partner from the directory|Remove partner from company|Removed a partner (delegated administrator) from your Office 365 organization.|
|Set company information|Set company information|Updated the company information for your Office 365 organization. This includes email addresses for subscription-related email sent by Office 365, and technical notifications about Office 365 services.|
|Set domain authentication|Set domain authentication|Changed the domain authentication setting for your Office 365 organization.|
|Updated the federation settings for a domain|Set federation settings on domain|Changed the federation (external sharing) settings for your Office 365 organization.|
|Set password policy|Set password policy|Changed the length and character constraints for user passwords in your Office 365 organization.|
|Turned on Azure AD sync|Set DirSyncEnabled flag on company|Set the property that enables a directory for Azure AD Sync.|
|Updated domain|Update domain|Updated the settings of a domain in your Office 365 organization.|
|Verified domain|Verify domain|Verified that your organization is the owner of a domain.|
|Verified email verified domain|Verify email verified domain|Used email verification to verify that your organization is the owner of a domain.|
||||

### eDiscovery activities

Content Search and eDiscovery-related activities that are performed in the security and compliance center or by running the corresponding PowerShell cmdlets are logged in the audit log. This includes the following activities:

- Creating and managing eDiscovery cases

- Creating, starting, and editing Content Searches

- Performing Content Search actions, such as previewing, exporting, and deleting search results

- Configuring permissions filtering for Content Search

- Managing the eDiscovery Administrator role

For a list and detailed description of the eDiscovery activities that are logged, see [Search for eDiscovery activities in the Office 365 audit log](search-for-ediscovery-activities-in-the-audit-log.md).

> [!NOTE]
> It takes up to 30 minutes for events that result from the activities listed under **eDiscovery activities** in the **Activities** drop-down list to be displayed in the search results. Conversely, it takes up to 24 hours for the corresponding events from eDiscovery cmdlet activities to appear in the search results.

### Advanced eDiscovery activities

The following table lists activities that result from IT and legal professionals performing tasks in Advanced eDiscovery in Microsoft 365. For more information, see [Overview of the Advanced eDiscovery solution in Microsoft 365](overview-ediscovery-20.md).

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added data to another review set|AddWorkingSetQueryToWorkingSet|User added documents from one review set to a different review set.|
|Added data to review set|AddQueryToWorkingSet|User added the search results from a content search associated with an Advanced eDiscovery case to a review set.|
|Added non-Office 365 data to review set|AddNonOffice365DataToWorkingSet|User added non-Office 365 data to a review set.|
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
|Edited tag|DownloadDocument|User changed a tag in a review set.|
|Exported documents from review set|ExportJob|User exported documents from a review set.|
|Modified case setting|UpdateCaseSettings|User modified the settings for a case. Case settings include case information, access permissions, and settings that control search and analytics behavior.|
|Modified review set search|UpdateWorkingSetSearch|User edited a search query in a review set.|
|Previewed review set search|PreviewWorkingSetSearch|User previewed the results of a search query in a review set.|
|Remediated error documents|ErrorRemediationJob|User fixes files that contained indexing errors.|
|Tagged document|TagFiles|User tags a document in a review set.|
|Tagged results of a query|TagJob|User tags all of the documents that match the criteria of search query in a review set.|
|Viewed document in review set|ViewDocument|User viewed a document in a review set.|
|||

### Power BI activities

You can search the audit log for activities in Power BI. For information about Power BI activities, see the "Activities audited by Power BI" section in [Using auditing within your organization](https://docs.microsoft.com/power-bi/service-admin-auditing#activities-audited-by-power-bi).

Audit logging for Power BI isn't enabled by default. To search for Power BI activities in the Office 365 audit log, you have to enable auditing in the Power BI admin portal. For instructions, see the "Audit logs" section in [Power BI admin portal](https://docs.microsoft.com/power-bi/service-admin-portal#audit-logs).

### Microsoft Workplace Analytics activities

Workplace Analytics provides insight into how groups collaborate across your Office 365 organization. The following table lists activities performed by users that are assigned the Administrator role or the Analyst roles in Workplace Analytics. Users assigned the Analyst role have full access to all service features and use the product to do analysis. Users assigned the Administrator role can configure privacy settings and system defaults, and can prepare, upload, and verify organizational data in Workplace Analytics. For more information, see [Workplace Analytics](https://docs.microsoft.com/workplace-analytics/index-orig).

|**Friendly name**|**Operation**|**Description**|
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
|Viewed Explore|ViewedExplore|Analyst viewed visualizations in one or more Explore page tabs.|
||||

### Microsoft Teams activities

The following table lists the user and admin activities in Microsoft Teams that are logged in the Office 365 audit log. Microsoft Teams is a chat-centered workspace in Office 365. It brings a team's conversations, meetings, files, and notes together into a single place. For more information and links to help topics, see:

- [Frequently asked questions about Microsoft Teams - Admin Help](https://support.office.com/article/05cbe533-2181-4e95-a4b0-52cd7695fafc)

- [Microsoft Teams help](https://support.office.com/article/23156c0c-2c6e-49dd-8b7b-7c564b76508c)

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Added bot to team|BotAddedToTeam|A user adds a bot to a team.|
|Added channel|ChannelAdded|A user adds a channel to a team.|
|Added connector|ConnectorAdded|A user adds a connector to a channel.|
|Added members to team|MemberAdded|A team owner adds members to a team.|
|Added tab|TabAdded|A user adds a tab to a channel.|
|Changed channel setting|ChannelSettingChanged|The ChannelSettingChanged operation is logged when the following activities are performed by a team member. For each of these activities, a description of the setting that was changed (shown in parentheses below) is displayed in the **Item** column in the audit log search results. <br/><br/>• Changes the name of a team channel (**Channel name**). <br/><br/>• Changes the description of a team channel (**Channel description**).|
|Changed organization setting|TeamsTenantSettingChanged|The TeamsTenantSettingChanged operation is logged when the following activities are performed by a global admin (using the Microsoft 365 admin center); note that these activities affect organization-wide Microsoft Teams settings. For more information, see [Administrator settings for Microsoft Teams](https://support.office.com/article/3966a3f5-7e0f-4ea9-a402-41888f455ba2). <br/> For each of these activities, a description of the setting that was changed (shown in parentheses below) is displayed in the **Item** column in the audit log search results. <br/><br/>• Enables or disables Microsoft Teams for the organization (**Microsoft Teams**). <br/><br/>• Enables or disables interoperability between Microsoft Teams and Skype for Business for the organization (**Skype for Business interoperability**). <br/><br/>• Enables or disables the organizational chart view in Microsoft Teams clients (Org chart view**). <br/><br/>• Enables or disables the ability for team members to schedule private meetings (**Private meeting scheduling**). <br/><br/>• Enables or disables the ability for team members to schedule channel meetings (Channel meeting scheduling**). <br/><br/>• Enables or disables video calling in Teams meetings (Video for Skype meetings**). <br/><br/>• Enables or disables screen sharing in Microsoft Teams meetups for the organization (**Screen sharing for Skype meetings**). <br/><br/>• Enables or disables that ability to add animated images (called Giphys) to Teams conversations (Animated images**). <br/><br/>• Changes the content rating setting for the organization (**Content rating**). The content rating restricts the type of animated image that can be displayed in conversations. <br/><br/>• Enables or disables the ability for team members to add customizable images (called custom memes) from the Internet to team conversations (Customizable images from the Internet**). <br/><br/>• Enables or disables the ability for team members to add editable images (called stickers) to team conversations (**Editable images**).<br/><br/>• Enables or disables that ability for team members to use bots in Microsoft Teams chats and channels (Org-wide bots**). <br/><br/>• Enables specific bots for Microsoft Teams. This doesn't include the T-Bot, which is Teams help bot that's available when bots are enabled for the organization (**Individual bots**). <br/><br/>• Enables or disables the ability for team members to add extensions or tabs (**Extensions or tabs**). <br/><br/>• Enables or disables the side-loading of proprietary Bots for Microsoft Teams (**Side loading of Bots**). <br/><br/>• Enables or disables the ability for users to send email messages to a Microsoft Teams channel (**Channel email**).|
|Changed role of members in team|MemberRoleChanged|A team owner changes the role of members in a team. The following values indicate the Role type assigned to the user. <br/><br/> **1** - Indicates the Owner role.<br/>**2** - Indicates the Member role. <br/>**3** - Indicates the Guest role. <br/><br/> The Members property also includes the name of your organization, and the member's email address.|
|Changed team setting|TeamSettingChanged|The TeamSettingChanged operation is logged when the following activities are performed by a team owner. For each of these activities, a description of the setting that was changed (shown in parentheses below) is displayed in the **Item** column in the audit log search results. <br/><br/>• Changes the access type for a team. Teams can be set as Private or Public (**Team access type**). When a team is private (the default setting), users can access the team only by invitation. When a team is public, it's discoverable by anyone. <br/><br/>• Changes the information classification of a team (**Team classification**). <br/> For example, team data can be classified as high business impact, medium business impact, or low business impact.<br/><br/>• Changes the name of a team (**Team name**). <br/><br/>• Changes the team description (Team description**). <br/><br/>• Changes made to any of the team settings. A team owner can access these settings in a Teams client by right-clicking a team, clicking **Manage team**, and then clicking the **Settings** tab. For these activities, the name of the setting that was changed is displayed in the **Item** column in the audit log search results.|
|Created team|TeamCreated|A user creates a team.|
|Deleted channel|ChannelDeleted|A user deletes a channel from a team.|
|Deleted team|TeamDeleted|A team owner deletes a team.|
|Removed bot from team|BotRemovedFromTeam|A user removes a bot from a team.|
|Removed connector|ConnectorRemoved|A user removes connector from a channel.|
|Removed members from team|MemberRemoved|A team owner removes members from a team.|
|Removed tab|TabRemoved|A user removes a tab from a channel.|
|Updated connector|ConnectorUpdated|A user modified a connector in a channel.|
|Updated tab|TabUpdated|A user modified a tab in a channel.|
|User signed in to Teams|TeamsSessionStarted|A user signs in to a Microsoft Teams client. This event doesn't capture token refresh activities.|
||||

### Microsoft Teams Healthcare activities

If your organization is using the [Patients application](https://docs.microsoft.com/MicrosoftTeams/expand-teams-across-your-org/healthcare/patients-app-overview) in Microsoft Teams, you can search the audit log for activities related to the using the Patients app. If your environment is configured to support Patients app, an additional activity group for these activities is available in the **Activities** picker list.

![Microsoft Teams Healthcare activities in Activities picker list](media/TeamsHealthcareAuditActivities.png)

For a description of the Patients app activities, see [Audit logs for Patients app](https://docs.microsoft.com/MicrosoftTeams/expand-teams-across-your-org/healthcare/patients-audit).

### Yammer activities

The following table lists the user and admin activities in Yammer that are logged in the Office 365 audit log. To return Yammer-related activities from the Office 365 audit log, you have to select **Show results for all activities** in the **Activities** list. Use the date range boxes and the **Users** list to narrow the search results.

|**Friendly name**|**Operation**|**Description**|
|:-----|:-----|:-----|
|Changed data retention policy|SoftDeleteSettingsUpdated|Verified admin updates the setting for the network data retention policy to either Hard Delete or Soft Delete. Only verified admins can perform this operation.|
|Changed network configuration|NetworkConfigurationUpdated|Network or verified admin changes the Yammer network's configuration. This includes setting the interval for exporting data and enabling chat.|
|Changed network profile settings|ProcessProfileFields|Network or verified admin changes the information that appears on member profiles for network users network.|
|Changed private content mode|SupervisorAdminToggled|Verified admin turns  *Private Content Mode*  on or off. This mode lets an admin view the posts in private groups and view private messages between individual users (or groups of users). Only verified admins only can perform this operation.|
|Changed security configuration|NetworkSecurityConfigurationUpdated|Verified admin updates the Yammer network's security configuration. This includes setting password expiration policies and restrictions on IP addresses. Only verified admins can perform this operation.|
|Created file|FileCreated|User uploads a file.|
|Created group|GroupCreation|User creates a group.|
|Deleted group|GroupDeletion|A group is deleted from Yammer.|
|Deleted message|MessageDeleted|User deletes a message.|
|Downloaded file|FileDownloaded|User downloads a file.|
|Exported data|DataExport|Verified admin exports Yammer network data. Only verified admins can perform this operation.|
|Shared file|FileShared|User shares a file with another user.|
|Suspended network user|NetworkUserSuspended|Network or verified admin suspends (deactivates) a user from Yammer.|
|Suspended user|UserSuspension|User account is suspended (deactivated).|
|Updated file description|FileUpdateDescription|User changes the description of a file.|
|Updated file name|FileUpdateName|User changes the name of a file.|
|Viewed file|FileVisited|User views a file.|
||||

### Microsoft Flow activities

You can search the audit log for activities in Microsoft Flow. These activities include creating, editing and deleting flows, and changing flow permissions. For information about auditing for Flow activities, see the blog  [Microsoft Flow audit events now available in Security & Compliance Center](https://flow.microsoft.com/blog/security-and-compliance-center).

### Microsoft PowerApps

You can search the audit log for app-related activities in PowerApps. These activities include creating, launching, and publishing an app. Assigning permissions to apps is also audited. For a description of all PowerApps activities, see [Activity logging for PowerApps](https://docs.microsoft.com/power-platform/admin/logging-powerapps#what-events-are-audited).

### Microsoft Stream activities

You can search the audit log for activities in Microsoft Stream. These activities include video activities performed by users, group channel activities, and admin activities such as managing users, managing organization settings, and exporting reports. For a description of these activities, see the "Activities logged in Microsoft Stream" section in [Audit Logs in Microsoft Stream](https://docs.microsoft.com/stream/audit-logs).

### Exchange admin audit log

Exchange administrator audit logging (which is enabled by default in Office 365) logs an event in the Office 365 audit log when an administrator (or a user who has been assigned administrative permissions) makes a change in your Exchange Online organization. Changes made by using the Exchange admin center or by running a cmdlet in Exchange Online PowerShell are logged in the Exchange admin audit log. Cmdlets that begin with the verbs **Get-**, **Search-**, or **Test-** are not logged in the Office 365 audit log. For more detailed information about admin audit logging in Exchange, see [Administrator audit logging](https://go.microsoft.com/fwlink/p/?LinkID=619225).

> [!IMPORTANT]
> Some Exchange Online cmdlets that aren't logged in the Exchange admin audit log (or in the Office 365 audit log). Many of these cmdlets are related to maintaining the Exchange Online service and are run by Microsoft datacenter personnel or service accounts. These cmdlets aren't logged because they would result in a large number of "noisy" auditing events. If there's an Exchange Online cmdlet that isn't being audited, please submit a suggestion to the [Office 365 Security & Compliance User Voice forum](https://office365.uservoice.com/forums/289138-office-365-security-compliance) and request that it is enabled for auditing. You can also submit a design change request (DCR) to Microsoft Support.

Here are some tips for searching for Exchange admin activities when searching the Office 365 audit log:

- To return entries from the Exchange admin audit log, you have to select **Show results for all activities** in the **Activities** list. Use the date range boxes and the **Users** list to narrow the search results for cmdlets run by a specific Exchange administrator within a specific date range.

- To display events from the Exchange admin audit log, filter the search results and type a **-** (dash) in the **Activity** filter box. This displays cmdlet names, which are displayed in the **Activity** column for Exchange admin events. Then you can sort the cmdlet names in alphabetical order.

  ![Type a dash in the Activities box to filter Exchange admin events](media/7628e7aa-6263-474a-a28b-2dcf5694bb27.png)

- To get information about what cmdlet was run, which parameters and parameter values were used, and what objects were affected, you can export the search results by selecting the **Download all results** option. For more information, see [Export, configure, and view audit log records](export-view-audit-log-records.md).

- You can also use the `Search-UnifiedAuditLog -RecordType ExchangeAdmin` command in Exchange Online PowerShell to return only audit records from the Exchange admin audit log. It may take up to 30 minutes after a Exchange cmdlet is run for the corresponding audit log entry to be returned in the search results. For more information, see [Search-UnifiedAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-unifiedauditlog). For information about exporting the search results returned by the **Search-UnifiedAuditLog** cmdlet to a CSV file, see the "Tips for exporting and viewing the audit log" section in [Export, configure, and view audit log records](export-view-audit-log-records.md#tips-for-exporting-and-viewing-the-audit-log).

- You can also view events in the Exchange admin audit log by using the Exchange admin center or running the **Search-AdminAuditLog** in Exchange Online PowerShell. This is a good way to specifically search for activity performed by Exchange Online administrators. For instructions, see:

  - [View the administrator audit log](https://technet.microsoft.com/library/dn342832%28v=exchg.150%29.aspx)

  - [Search-AdminAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-adminauditlog)

   Keep in mind that the same Exchange admin activities are logged in both the Exchange admin audit log and and Office 365 audit log.

## Frequently asked questions

**Where can I find about the features offered by the auditing service in Office 365?**

For more information about the auditing and reporting features available in Office 365, see [Auditing and Reporting in Office 365](https://docs.microsoft.com/Office365/Enterprise/office-365-auditing-and-reporting-overview).

**What are different Office 365 services that are currently audited?**

The most used Office 365 services like Exchange Online, SharePoint Online, OneDrive for Business, Azure Active Directory, Microsoft Teams, Dynamics 365, Advanced Threat Protection, and Power BI are audited. See the [beginning of this article](search-the-audit-log-in-security-and-compliance.md) for a list of services that are audited.

**What activities are audited by auditing service in Office 365?**

See the [Audited activities](#audited-activities) section in this article for a list and description of the activities that are audited in Office 365.

**How long does it take for an auditing record to be available after an event has occurred?**

Most auditing data is available within 30 minutes but it may take up to 24 hours after an event occurs for the corresponding audit log entry to be displayed in the search results. See the table in the [Before you begin](#before-you-begin) section of this article that shows the time it takes for events in the different Office 365 services to be available.

**How long are the audit records retained for?**

As previously explained, the retention period for audit records depends on your organization's Office 365 subscription.

- **Office 365 E3:** Audit records are retained for 90 days.

- **Office 365 E5:** Audit records are also retained for 90 days. Retaining audit records for one year may eventually be available for E5 users and users with an E3 license and an Office 365 Advanced Compliance add-on license.

  > [!NOTE]
  > As previously explained, the private preview program for the one-year retention period for audit records for E5 organizations (or E3 organizations that have Advanced Compliance add-on licenses) is closed to new enrollment. This article will be updated when the one-year retention period is available in public preview or released for general availability.

Also note that the duration of the retention period for audit records is based on per-user licensing. For example, if a user in your organization is assigned an Office 365 E3 or E5 license, then the audit records for activities performed by that user are retained for 90 days.

**Can I access the auditing data programmatically?**

Yes. The Office 365 Management Activity API is used to fetch the audit logs programmatically.  To get started, see [Get started with Office 365 Management APIs](https://docs.microsoft.com/office/office-365-management-api/get-started-with-office-365-management-apis).

**Are there other ways to get auditing logs other than using the security and compliance center or the Office 365 Management Activity API?**

No. These are the only two ways to get data from the Office 365 auditing service.

**Do I need to individually enable auditing in each service that I want to capture audit logs for?**

In most Office 365 services, auditing is enabled by default after you initially turn on auditing for your Office 365 organization (as described in the [Before you begin](#before-you-begin) section in this article).

**Does the Office 365 auditing service support de-duplication of records?**

No. The auditing service pipeline is near real time, and therefore can't support de-duplication.

**Does Office 365 auditing data flow across geographies?**

No. We currently have auditing pipeline deployments in the NA (North America), EMEA (Europe, Middle East, and Africa) and APAC (Asia Pacific) regions. However, we may flow the data across these regions for load-balancing and only during live-site issues. When we do perform these activities, the data in transit is encrypted.

**Is auditing data encrypted?**

Auditing data is stored in Exchange mailboxes (data at rest) in the same region where the auditing pipeline is deployed. This data is not encrypted. However, data in transit is always encrypted.
