---
title: "Search for content in a core eDiscovery case"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "You can search for content that may be relevant to a Core eDiscovery case."
---

# Search for content in a Core eDiscovery case

After a Core eDiscovery case is created and people of interest in the case are placed on hold, you can create and run one or more searches for content relevant to the case. Searches associated with a Core eDiscovery case aren't listed on the **Content search** page in the Microsoft 365 compliance center. These searches are listed on the **Searches** page of the Core eDiscover case the searches are associated with. This also means that searches associated with a case can only be accessed by case members.

To create a Core eDiscovery search:
  
1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in using the credentials for user account that has been assigned the appropriate eDiscovery permissions.

2. In the left navigation pane of the Microsoft 365 compliance center, click **Show all**, and then click **eDiscovery > Core**.

3. On the **Core eDiscovery** page, select the case that you want to create an associated search, and then click **Open case**.

4. On the **Home** page for the case, click the **Searches** tab.
  
5. On the **Search** page, click **New search**.

6. On the **New search** page, you can add keywords and conditions to create the search query. 

    ![New search](../media/0e9954e7-c0ea-4e05-820b-e4b81dc5f81d.png)
  
   a. You can specify keywords, message properties, such as sent and received dates, or document properties, such as file names or the date that a document was last changed. You can use more complex queries that use a Boolean operator, such as **AND**, **OR**, **NOT**, or **NEAR**. You can also search for sensitive information (such as social security numbers) in documents, or search for documents that have been shared externally. If you leave the keyword box empty, all content located in the specified content locations will be included in the search results.

   b. You can click the **Show keyword list** check box and the type a keyword in each row. If you do this, the keywords on each row are connected by the **OR** operator in the search query that's created. You can enter a maximum of 20 keywords to the list.

    ![Keyword list](../media/29cceb5d-2817-4fc4-b91a-ced1c5824a17.png)
  
    Why use the keyword list? You can get statistics that show how many items match each keyword. This can help you quickly identify which keywords are the most (and least) effective. You can also use a keyword phrase (surrounded by parentheses) in a row. For more information about search statistics, see [View keyword statistics for Content Search results](view-keyword-statistics-for-content-search.md).

    For more information about using the keywords list, see [Building a search query](content-search.md#building-a-search-query).

   c. You can click **Conditions** and add conditions to a search query to narrow a search and return a more refined set of results. Each condition adds a clause to the KQL search query that is created and run when you start the search. A condition is logically connected to the keyword query (specified in the keyword box) by the **AND** operator. That means that items have to satisfy both the keyword query and each condition to be included in the results. This is how conditions help to narrow your results.

    For more information about creating a search query and using conditions, see [Keyword queries for Content Search](keyword-queries-and-search-conditions.md).

7. Under **Locations: locations on hold**, choose the content locations that you want to search. You can search mailboxes, sites, and public folders in the same search.

    ![Locations, locations on hold](../media/d56398aa-0b20-4500-8e26-494eab92a99f.png)
  
    - **All locations**. Select this option to search all content locations in your organization. When you select this option, you can choose to search all Exchange mailboxes (which includes the mailboxes for all Microsoft Teams, Yammer Groups, and Office 365 Groups), all SharePoint and OneDrive for Business sites (which includes the sites for all Microsoft Teams, Yammer Groups, and Office 365 Groups), and all public folders.
    
    - **All locations on hold**. Select this option to search all the content locations that have been placed on eDiscovery hold in the case. If the case contains multiple holds, the content locations from all holds will be searched. Additionally, if a content location was placed on a query-based hold, only the items that are on hold will be searched when you run the content search that you're creating in this step. For example, if a user was placed on query-based case hold that preserves items that were sent or created before a specific date, only those items would be searched. This is accomplished by connecting the case hold query and the content search query by an **AND** operator. For more information, see [Search locations on eDiscovery hold](create-ediscovery-holds.md#search-locations-on-ediscovery-hold).
    
    - **Specific locations**. Select this option to select the mailboxes and sites that you want to search. When you select this option and click **Modify**, a list of locations appears. You can choose to search any or all users, groups, teams, or site locations. You can also search the public folders in your organization.
    
      ![Select specific locations](../media/97469b15-7be1-4aee-be27-f8343636152c.png)
  
     If you select this option and search any content location that's on hold, any query from a query-based case hold won't be applied to the search query. In other words, all content is searched, not just the content that's preserved by a query-based case hold.

8. After you select the content locations to search, click **Done** and then click **Save**.

9. On the **New search** page, click **Save & run** and then type a name for the search. Searches associated with a Core eDiscovery case must have names that are unique within your Office 365 organization.

10. Click **Save** to save the search settings and start the search.

  After the search is completed, you can preview the search results. If necessary, click **Refresh** on the **Searches** page to display the search you created in the list.

11. Click the search to display the flyout page, which contains statistics about the search and to perform other tasks such as viewing search statistics and exporting the search results.

## More information about searching content locations

- When you click **Choose users, groups, or teams** to specify mailboxes to search, the mailbox picker that's displayed is empty. This is by design to enhance performance. To add recipients to this list, click **Choose users, groups, or teams**, type a name (a minimum of 3 characters) in the search box, select the check box next to the name, and then click **Choose**.

- You can add inactive mailboxes, Microsoft Teams, Yammer Groups, Office 365 Groups, and distribution groups to the list of mailboxes to search. Dynamic distribution groups aren't supported. If you add Microsoft Teams, Yammer Groups, or Office 365 Groups, the group or team mailbox is searched; the mailboxes of the group members aren't searched.

- To add sites click **Choose sites**, click **Choose sites** again, and then type the URL for each site that you want to search. You can also add the URL for the SharePoint site for a Microsoft Team, a Yammer Group, or an Office 365 Group.
