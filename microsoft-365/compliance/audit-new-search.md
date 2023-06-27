---
title: "Audit New Search"
description: "The Audit New Search validates the performance improvements, completeness, and consistency of results."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 06/27/2023
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- audit
search.appverid:
- MOE150
- MET150
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkEXCHANGE
---

# Audit New Search

Your organization requires access to critical audit log event data to gain insight and further investigate user activities. Previously, your search jobs in the Microsoft Purview compliance portal UI were limited in their ability to create concurrent audit search jobs and review historical search jobs. These critical audit search jobs also had a dependency on the browser window remaining open in order to complete.

The Audit New Search builds upon the existing search functionalities and includes the following key improvements:

- Search jobs initiated via the compliance portal UI no longer require the web browser window to remain open in order to complete. These jobs will continue to run even after the browser window is closed.
- Completed search jobs are now stored for 30 days, giving customers the ability to reference historical audit searches. These search jobs are presented in the UI, listing the search name, search job status, progress %, Number of results, Creation Time, and Searched by.
- Each admin Audit account user can have a maximum of 10 concurrent search jobs in progress with a maximum of one unfiltered search job.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Information to get started

View the available Microsoft Purview Audit documentation as the search job creation and export experiences have many parallels with the current search experience:

- [Search the audit log in the Microsoft Purview compliance portal](audit-log-search.md) (note that PowerShell isn't yet compatible with Audit Search V2)
- [Detailed properties in the audit log](audit-log-detailed-properties.md)
- [Export, configure, and view audit log records](audit-log-export-records.md)

Additional information:

- Searching via an EXO PowerShell session using the Search-UnifiedAuditLog cmdlet isn't compatible with the New Search at this time.
- Search jobs can take in the following criteria: Date Range, Time Range, Search Job Name, Activities, Users, Files, Folders, and Sites.
- Searching and filtering using date, time, search name, activities, and users are all fully functional
- Audit Log data is stored for the defined retention period, regardless of a search job being deleted

## Get started with audit new search

Follow the below steps to test and validate the Audit New Search experience:

1. Sign into the [Microsoft Purview compliance portal](https://compliance.microsoft.com).
2. Select the **Audit** tab on the left panel of the homepage to navigate to the Audit tool.
3. Select **New Search** tab at the top of the **Audit** page.

      ![Audit New Search overview in Microsoft Purview.](../media/audit-search/audit-new-search.png)

4. On the **New Search** tab, configure the following search criteria as applicable:

   1. **Start date** and **End date**: The last seven days are selected by default. Select a date and time range to display the events that occurred within that period. The date and time are presented in Coordinated Universal Time (UTC). The maximum date range that you can specify is 90 days. An error is displayed if the selected date range is greater than 90 days.

      > [!TIP]
      > If you're using the maximum date range of 90 days, select the current time for the **Start date**. Otherwise, you'll receive an error saying that the start date is earlier than the end date. If you've turned on auditing within the last 90 days, the maximum date range can't start before the date that auditing was turned on.

   2. **Keyword Search**: Enter a keyword or phrase to search for in the audit log. The keyword or phrase is searched for in the the audit log or in the file, folder, or sites (if specified) for the search. To search for text that contain special characters, replace the special characters with an asterisk(\*) in your keyword search. For example, to search for *test_search_document*, use *test\*search\*document*.

        > [!IMPORTANT]
        > Terms entered in the **Keyword Search** field are only searched within indexed content (content within the Audit *common schema*). Audit *data content* in the audit log isn't searched for these keywords.

   3. **Admin Units (preview)**:  Select the drop-down list to display the [administrative units](/microsoft-365/compliance/microsoft-365-compliance-center-permissions#administrative-units-preview) you want the audited activities scoped to for your search. You can select one or more administrative units to scope your search to. Leave this box blank to return entries for all administrative units in your organization.

   4. **Activities - friendly names**: Select the drop-down list to display the friendly names for audited activities that you can search for. Friendly names for user and admin activities are organized into groups of related activities. Using friendly names, you can select specific audited activities or you can select the activity group name to select all activities in the group. You can also select a selected activity to clear the selection. To search for a friendly name for the activities in the list, use the search box above the list.

   5. **Activities - operations names (preview)**: Enter the exact operation names to search for audited activities to include in your search results. You can enter one or more operation names, separated by commas. This search criteria is similar to previous searches only available in PowerShell and provides greater flexibility helping you find the data that you need.

        > [!IMPORTANT]
        > Operation names must be entered exactly as they are named. If operation names are entered incorrectly, no results are returned.

        For example, to search for all activities related to enabling and disabing information barriers for a SharePoint site in your organizaton, you would:

        - Review the [audit activities](/microsoft-365/compliance/audit-log-activities) article to find the exact operation name for the information barriers activities you want to search for. In this [example](/microsoft-365/compliance/audit-log-activities#information-barriers-activities), the operation names are *SPOIBIsEnabled* and *SPOIBIsDisabled*.
        - Enter *SPOIBIsEnabled,SPOIBIsDisabled* in operation search field. We recommend copying and pasting the operation names directly from the article to the operation search field to ensure that they are entered correctly and without typos.

   6. **Record types**: Select the drop-down list to display the record types for audited activities that you can search for. You can select one or more record types to search for. To search for a record type in the list, use the search box above the list.<br><br> Specific [record types](/microsoft-365/compliance/audit-log-search#microsoft-365-services-that-support-auditing) are associated with specific Microsoft services and applications. For example, if you wanted to scope your search for specifc record types associated with sensitivity labels in Microsoft Purview Information Protection (MIP), you could select the *MIPLabel*, *MipAutoLabelExchangeItem*, *MipAutoLabelSharePointItem*, and *MipAutoLabelSharePointPolicyLocation* record types from the list.

   7. **Search name**: Enter in a custom name for your search job. This name will be used to identify your search job in the search job history. If you don't enter a name, the search job is automatically named using a combination of the date and time defined for the search and other defined search criteria values.

   8. **Users**: Select this field and choose the names one or more users to display search results for. The audit log entries for the selected activity performed by the users you select in this box are displayed in the list of results. Leave this box blank to return entries for all users (and service accounts) in your organization.

   9. **File, folder, or site**: Enter some or all of a file or folder name to search for activity related to the file of folder that contains the specified keyword. You can also specify a URL of a file or folder. If you use a URL, be sure the type the full URL path or if you type a portion of the URL, don't include any special characters or spaces (however, using the wildcard character (\*) is supported). Leave this box blank to return entries for all files and folders in your organization.

5. Select **Search** to start your search job. A maximum of 10 search jobs can be run in parallel in one account. If a user requires more than 10 search jobs, they must wait for an *In progress* job to finish or delete a search job.
6. After the search status displays *Completed*, explore the search job history and select different search jobs to get their corresponding data from the search job results. Results can be sorted by their creation time by selecting the corresponding button at the top of the table.

      ![Results of a Audit New Search overview in Microsoft Purview.](../media/audit-search/audit-new-search-columns.png)

7. Select a search job to see the results of the job displayed in a line-item format:

    - Referencing the complete search query at the top of the page, which includes all search criteria entered when completing the original search.
    - Selecting various results for more information in the fly-out window.
    - Filtering across the search job using *IP address*, *User*, *Activity*, *Date*, *Item*, and *Details*.
    - Exporting both unfiltered and filtered searches.
    - Sorting the results by selecting the corresponding buttons on the top of the table including *Date*, *IP Address* (when applicable), *User*, Activity, Item, and Detail (when applicable).

      ![Sorting results of a Audit New Search overview in Microsoft Purview.](../media/audit-search/audit-new-search-result-details.png)

## Audit search job overview

- Search jobs can take in the following criteria: Date Range, Time Range, Search Job Name, Activities, Users, Files, Folders, and Sites.
- File, folder, or site search text box will return all related results for corresponding file, folders, and sites
- The search jobs runs at the bottom of the search page.
  - Search jobs can be *Queued*, *In Progress*, and *Completed*
  - A maximum of 10 *In Progress* search jobs can be completed simultaneously per user
- Full search names for jobs can be seen by hovering the cursor over the search job
- Search jobs display the *Search Name*, *Status*, *Progress %*, *Number of results*, *Creation time*, and *Search performed by*.
- Delete search jobs by selecting the job and then selecting **Delete** on the command bar. Deleting a search job doesn't delete the backend data associated with search. It only deletes the search job definition and the associated search result.

## Audit search results overview

- Search results are displayed in a line-item once a search job is selected
- The search query is displayed on the top of the search job results page for reference and the total number of items
  > [!NOTE]
  > The total result number deducts duplicates, which is why it might be less than the number of items in the main Audit search window
- Information about the date, IP Address, User, Activity, and Item can be found in the search job results page for each item
- Select an activity to see a fly-out window with more details about the activity
- The filtering feature for search job results can help to parse through results.
- Export all search job items to a .csv file as needed. Export supports results up to 50 KB for Audit (Standard) and up to 500 KB (500,000 rows) for Audit (Premium).
