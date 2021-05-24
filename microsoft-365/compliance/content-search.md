---
title: "Create and run a Content search in the Microsoft 365 compliance center"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MED150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Use the Content search eDiscovery tool in the compliance center to search for content in different Microsoft 365 services."
---

# Create a content search

You can use the Content search eDiscovery tool in the Microsoft 365 compliance center to search for in-place content such as email, documents, and instant messaging conversations in your organization. Use this tool to search for content in these Microsoft 365 data sources:
  
- Exchange Online mailboxes

- SharePoint Online sites and OneDrive for Business accounts

- Microsoft Teams

- Microsoft 365 Groups

- Yammer Groups

After you run a search, the number of content locations and an estimated number of search results are displayed on the search flyout page. You can quickly view statistics, such as the content locations that have the most items that match the search query. After you run a search, you can preview the results or export them to a local computer.

## Create and run a search

To access to the **Content search** page in the Microsoft 365 compliance center (to run searches and preview results and export results), an administrator, compliance officer, or eDiscovery manager must be a member of the eDiscovery Manager role group in Security & Compliance Center. For more information, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).
  
1. Go to <https://compliance.microsoft.com> and sign in using the credentials of an account that's been assigned the appropriate permissions.

2. In the left navigation pane of the Microsoft 365 compliance center, click **Show all**, and then click **Content search**.

3. On the **Content search** page, click **New search**.

   > [!NOTE]
   > The **Search by ID list** option lets you search for specific email messages and other mailbox items using a list of Exchange IDs. To create an ID list search, you submit a comma-separated value (CSV) file that identifies the specific mailbox items to search for. For instructions, see [Prepare a CSV file for an ID list search](csv-file-for-an-id-list-content-search.md).

4. Type a name for the search, an optional description that helps identify the search. The name of the search must be unique in your organization.

5. On the **Locations** page, choose the content locations that you want to search. You can search mailboxes, sites, and public folders.

    ![Choose the content locations to place on hold](../media/ContentSearchLocations.png)
  
   1. **Exchange mailboxes**: Set the toggle to **On** and then click **Choose users, groups, or teams** to specify the mailboxes to place on hold. Use the search box to find user mailboxes and distribution groups (to place a hold on the mailboxes of group members) to place on hold. You can also search the mailbox associated with a Microsoft Team (for channel messages), Office 365 Group, and Yammer Group. For more information about the application data stored in mailboxes, see [Content stored in mailboxes for eDiscovery](what-is-stored-in-exo-mailbox.md).

   2. **SharePoint sites**: Set the toggle to **On** and then click **Choose sites** to specify SharePoint sites and OneDrive accounts to place on hold. Type the URL for each site that you want to place on hold. You can also add the URL for the SharePoint site for a Microsoft Team, Office 365 Group, or Yammer Group.
  
   3. **Exchange public folders**: Set the toggle to **On** to put all public folders in your Exchange Online organization on hold. You can't choose specific public folders to put on hold. Leave the toggle switch off if you don't want to put a hold on public folders.
  
   4. Keep this checkbox selected to search for Teams content for on-premises users. For example, if you search all Exchange mailboxes in the organization and this checkbox is selected, the cloud-based storage used to store Teams chat data for on-premises users will be included in the scope of the search. For more information, see [Search for Teams chat data for on-premises users](search-cloud-based-mailboxes-for-on-premises-users.md).

6. On the **Define your search conditions** page, type a keyword query and add conditions to the search query if necessary.

   ![Configure the search query](../media/ContentSearchQuery.png)

   1. Specify keywords, message properties such as sent and received dates, or document properties such as file names or the date that a document was last changed. You can use more complex queries that use a Boolean operator, such as **AND**, **OR**, **NOT**, and **NEAR**. If you leave the keyword box empty, all content located in the specified content locations is included in the search results. For more information, see [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md).

   2. Alternatively, you can click the **Show keyword list** checkbox and the type a keyword in each row. If you do this, the keywords on each row are connected by a logical operator (**c:s**) that is similar in functionality to the **OR** operator in the search query that's created.

      Why use the keyword list? You can get statistics that show how many items match each keyword. This can help you quickly identify which keywords are the most (and least) effective. You can also use a keyword phrase (surrounded by parentheses) in a row. For more information about the keyword list and search statistics, see [Get keyword statistics for searches](view-keyword-statistics-for-content-search.md#get-keyword-statistics-for-searches).

      > [!NOTE]
      > To help reduce issues caused by large keyword lists, you're limited to a maximum of 20 rows in the keyword list.

   3. You can add search conditions to narrow a search and return a more refined set of results. Each condition adds a clause to the search query that is created and run when you start the search. A condition is logically connected to the keyword query (specified in the keyword box) by a logical operator (**c:c**) that is similar in functionality to the **AND** operator. That means that items have to satisfy both the keyword query and one or more conditions to be included in the results. This is how conditions help to narrow your results. For a list and description of conditions that you can use in a search query, see [Search conditions](keyword-queries-and-search-conditions.md#search-conditions).

7. Review the search settings (and edit if necessary), and then submit the search to start it.
  
To access this content search again or access other content searches listed on the **Content search** page, select the search and then click **Open**.

## Next steps

Here's a list of next steps to perform after you create and run a Content search.

- [Preview search results](preview-ediscovery-search-results.md)

- [View statistics for search results](view-keyword-statistics-for-content-search.md)

- [Export search results](export-search-results.md)

- [Export a search report](export-a-content-search-report.md)

## More information

For more information about Content search, such as searching for content in different Microsoft 365 services, see [Feature reference for Content search](content-search-reference.md).
