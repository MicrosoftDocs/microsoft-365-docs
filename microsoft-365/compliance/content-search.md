---
title: "Create and run a Content search in the Microsoft Purview compliance portal"
description: "Use the Content search eDiscovery tool in the compliance center to search for content in different Microsoft 365 services."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid:
- MOE150
- MED150
- MET150
ms.custom:
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
---

# Create a content search

You can use the Content search eDiscovery tool in the Microsoft Purview compliance portal to search for in-place content such as email, documents, and instant messaging conversations in your organization. Use this tool to search for content in these cloud-based Microsoft 365 data sources:
  
- Exchange Online mailboxes
- SharePoint Online sites and OneDrive for Business accounts
- Microsoft Teams
- Microsoft 365 Groups
- Yammer Groups

After you run a search, the number of content locations and an estimated number of search results are displayed on the search flyout page. You can quickly view statistics, such as the content locations that have the most items that match the search query. After you run a search, you can preview the results or export them to a local computer.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you run a search

- To access to the Content search tool in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">compliance portal</a> (to run searches and preview results and export results), an administrator, compliance officer, or eDiscovery manager must be a member of the eDiscovery Manager role group in the compliance portal. For more information, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).
- In an Exchange hybrid deployment, you can't use the Content search tool to search emails in on-premises mailboxes. You can only use the tool to search cloud-based mailboxes.
- In an Exchange hybrid deployment, you can search for Teams chat data in on-premises mailboxes. For more information, see [Teams chat data for on-premises users](/microsoft-365/compliance/search-cloud-based-mailboxes-for-on-premises-users).

## Create and run a search
  
1. Go to the [Microsoft Purview compliance portal](https://compliance.microsoft.com) and sign in using the credentials of an account that's been assigned the appropriate permissions.

2. In the left navigation pane of the compliance portal, select **Content search**.

3. On the **Content search** page, select **New search**.

4. On the **Name and description** page, enter a name for the search, an optional description that helps identify the search. The name of the search must be unique in your organization.

5. On the **Locations** page, choose the content locations that you want to search. You can search mailboxes, sites, and public folders.

    ![Choose the content locations to search.](../media/ContentSearchLocations.png)
  
   1. **Exchange mailboxes**: Set the toggle to **On** and then select **Choose users, groups, or teams** to specify the mailboxes to search. Use the search box to find user mailboxes and distribution groups. You can also search the mailbox associated with a Microsoft Team (for channel messages), Microsoft 365 Group, and Yammer Group. For more information about the application data stored in mailboxes, see [Content stored in mailboxes for eDiscovery](what-is-stored-in-exo-mailbox.md).

   2. **SharePoint sites**: Set the toggle to **On** and then select **Choose sites** to specify SharePoint sites and OneDrive sites to search. Enter the URL for each site that you want to search. You can also add the URL for the SharePoint site for a Microsoft Team, Microsoft 365 Group, or Yammer Group.
  
   3. **Exchange public folders**: Set the toggle to **On** to search all public folders in your Exchange Online organization. You can't choose specific public folders to search. Leave the toggle switch off if you don't want search all public folders.
  
   4. Keep this checkbox selected to search for Teams content for on-premises users. For example, if you search all Exchange mailboxes in the organization and this checkbox is selected, the cloud-based storage used to store Teams chat data for on-premises users will be included in the scope of the search. For more information, see [Search for Teams chat data for on-premises users](search-cloud-based-mailboxes-for-on-premises-users.md).

6. On the **Conditions** page, enter a keyword query and add conditions to the search query if necessary.

   ![Configure the search query.](../media/ContentSearchQuery.png)

   1. Specify keywords, message properties such as sent and received dates, or document properties such as file names or the date that a document was last changed. You can use more complex queries that use a Boolean operator, such as **AND**, **OR**, **NOT**, and **NEAR**. If you leave the keyword box empty, all content located in the specified content locations is included in the search results. For more information, see [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md).

   2. Alternatively, you can select the **Show keyword list** checkbox and the enter a keyword in each row. If you do this, the keywords on each row are connected by a logical operator (**c:s**) that is similar in functionality to the **OR** operator in the search query that's created.

      **Why use the keyword list**? You can get statistics that show how many items match each keyword. This can help you quickly identify which keywords are the most (and least) effective. You can also use a keyword phrase (surrounded by parentheses) in a row. For more information about the keyword list and search statistics, see [Get keyword statistics for searches](view-keyword-statistics-for-content-search.md#get-keyword-statistics-for-searches).

      > [!NOTE]
      > To help reduce issues caused by large keyword lists, you're limited to a maximum of 20 rows in the keyword list.

   3. You can add search conditions to narrow a search and return a more refined set of results. Each condition adds a clause to the search query that is created and run when you start the search. A condition is logically connected to the keyword query (specified in the keyword box) by a logical operator (**c:c**) that is similar in functionality to the **AND** operator. That means that items have to satisfy both the keyword query and one or more conditions to be included in the results. This is how conditions help to narrow your results. For a list and description of conditions that you can use in a search query, see [Search conditions](keyword-queries-and-search-conditions.md#search-conditions).

7. Review the search settings (and edit if necessary), and then select **Submit** to start the search.
  
To access this content search again or access other content searches listed on the **Content search** page, select a search to view the search summary and search statistics.

For more information about Content search, such as searching for content in different Microsoft 365 services, see [Feature reference for Content search](content-search-reference.md).

## Next steps

Here's a list of next steps to perform after you create and run a Content search.

- [Preview search results](preview-ediscovery-search-results.md)
- [View statistics for search results](view-keyword-statistics-for-content-search.md)
- [Export search results](export-search-results.md)
- [Export a search report](export-a-content-search-report.md)
