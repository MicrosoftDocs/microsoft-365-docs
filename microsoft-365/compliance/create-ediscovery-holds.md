---
title: "Create eDiscovery holds in a Core eDiscovery case"
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
description: "You can create a hold that's associated with a Core eDiscovery case to preserve content that may be relevant to an investigation. "
---

# Create an eDiscovery hold

You can use a Core eDiscovery case to create holds to preserve content that might be relevant to the case. You can place a hold on the Exchange mailboxes and OneDrive for Business accounts of people you're investigating in the case. You can also place a hold on the mailboxes and sites that are associated with Microsoft Teams, Office 365 Groups, and Yammer Groups. When you place content locations on hold, content is preserved until you remove the hold from the content location or until you delete the hold.

After you create an eDiscovery hold, it may take up to 24 hours for the hold to take effect. 

When you create a hold, you have the following options to scope the content that is preserved in the specified content locations:
  
- You create an infinite hold where all content is placed on hold. Alternatively, you can create a query-based hold where only the content that matches a search query is placed on hold.

- You can specify a date range to preserve only the content that was sent, received, or created within that date range. Alternatively, you can hold all content regardless of when it was sent, received, or created.

> [!NOTE]
> You can have a maximum of 10,000 eDiscovery holds across all Core eDiscovery cases in your organization.
  
## How to create an eDiscovery hold

To create an eDiscovery hold that's associated with a Core eDiscovery case:
  
1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in using the credentials for user account that has been assigned the appropriate eDiscovery permissions.

2. In the left navigation pane of the Microsoft 365 compliance center, click **Show all**, and then click **eDiscovery > Core**.

3. On the **Core eDiscovery** page, select the case that you want to create the hold in, and then click **Open case**.

4. On the **Home** page for the case, click the **Holds** tab.
  
5. On the **Holds** page, click **Create**.

6. On the **Name your hold** wizard page, give the hold a name and add an optional description, and then click **Next**. The name of the hold must be unique in your organization.

7. On the **Content locations** page, choose the content locations that you want to place on hold. You can place mailboxes, sites, and public folders on hold.

    ![Choose the content locations to place on hold](../media/a59e4265-9151-4dbf-913f-6a4ab8db06b4.png)
  
   a. **Mailbox locations** - Click **Choose users, groups, or teams** and then click **Choose users, groups, or teams** again to specify the mailboxes to place on hold. Use the search box to find user mailboxes and distribution groups (to place a hold on the mailboxes of group members) to place on hold. You can also place a hold on the associated mailbox for a Microsoft Team, Office 365 Group, or Yammer Group. Select the user, group, team check box, click **Choose**, and then click **Done**.

   b. **Site locations** - Click **Choose sites** and then click **Choose sites** again to specify SharePoint and OneDrive accounts to place on hold. Type the URL for each site that you want to place on hold. You can also add the URL for the SharePoint site for a Microsoft Team, Office 365 Group or a Yammer Group. Click **Choose**, and then click **Done**.

    See the More information section for tips on putting Microsoft Teams, Office 365 Groups, or Yammer Groups on hold.

    > [!NOTE]
    > In the rare case that a person's user principal name (UPN) is changed, the URL for their OneDrive account will also be changed to incorporate the new UPN. If this happens, you'll have to update the hold and specify the user's new OneDrive URL and remove the old one.
  
   c. **Exchange public folders.** Move the toggle switch ![Toggle control](../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png) to the **All** position to put all public folders in your Exchange Online organization on hold. You can't choose specific public folders to put on hold. Leave the toggle switch set to **None** if you don't want to put a hold on public folders.

8. When you're done adding content locations to the hold, click **Next**.

9. To create a query-based hold with conditions, complete the following. Otherwise, to preserve all content in the specified content locations, click **Next**

    ![Create a query-based hold with conditions](../media/d587b58e-d05c-4ac0-b0fe-09019e4f1063.png)
  
    a. In the box under **Keywords**, type a search query so that only the content that meets the search criteria is preserved. You can specify keywords, email message properties, or document properties, such as file names. You can also use more complex queries that use a Boolean operator, such as **AND**, **OR**, or **NOT**.

    b. Click **Add conditions** to add one or more conditions to narrow the search query for the hold. Each condition adds a clause to the KQL search query that is created and run when you create the hold. For example, you can specify a date range so that email or site documents that were created within the date ranged are placed on hold. A condition is logically connected to the keyword query (specified in the **Keywords** box) by the **AND** operator. That means that items have to satisfy both the keyword query and the condition to be preserved.

    For more information about creating a search query and using conditions, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).

10. After configuring a query-based hold, click **Next**.

11. Review your settings (and edit them if necessary), and then click **Create this hold**.

## eDiscovery hold statistics

After you create an eDiscovery hold, information about the new hold is displayed on the flyout page for the selected hold. This information includes the number of mailboxes and sites on hold and statistics about the content that was placed on hold, such as the total number and size of items placed on hold and the last time the hold statistics were calculated. These hold statistics help you identify the amount of content related to the case is being preserved.
  
![Hold statistics](../media/575cfe0a-9210-4ae4-8df8-65665d66712e.png)
  
Keep the following things in mind about eDiscovery hold statistics:
  
- The total number of items on hold indicates the number of items from all content sources that are placed on hold. If you've created a query-based hold, this statistic indicates the number of items that match the query.

- The number of items on hold also includes unindexed items found in the content locations. If you create a query-based hold, all unindexed items in the content locations are placed on hold. This includes unindexed items that don't match the search criteria of a query-based hold and unindexed items that might fall outside of a date range condition. This is different than what happens when you run a search, in which unindexed items that don't match the search query or are excluded by a date range condition aren't included in the search results. For more information about unindexed items, see [Partially indexed items] (partially-indexed-items-in-content-search.md).

- You can get the latest hold statistics by clicking **Update statistics** to rerun a search estimate that calculates the current number of items on hold.

- It's normal for the number of items on hold to increase over time because users whose mailbox or site is on hold are typically sending or receiving new email message and creating new documents in SharePoint and OneDrive.

- If an Exchange mailbox, SharePoint site, or OneDrive account is moved to a different region in a multi-geo environment, the statistics for that site won't be included in the hold statistics. But the content in those locations will still be preserved. Also, if a mailbox or site is moved to a different region, the SMTP address or URL that's displayed in the hold will not automatically be updated. You'll have to edit the hold and update the URL or SMTP address so the content locations are once again included in the hold statistics

## Searching locations on eDiscovery hold

When you [search for content](search-for-content-in-core-ediscovery.md) in a Core eDiscovery case, you can quickly configure the search to only search the content locations that have been placed on a hold associated with the case.

![Locations, locations on hold](../media/d56398aa-0b20-4500-8e26-494eab92a99f.png)

Select the **Locations on hold** option to search all the content locations that have been placed on hold. If the case contains multiple eDiscovery holds, the content locations from all holds will be searched when you select this option. Additionally, if a content location was placed on a query-based hold, only the items that match the hold query will be searched when you run the search. In other words, only the content that matches both the hold criteria and the search criteria is returned with the search results. For example, if a user was placed on query-based case hold that preserves items that were sent or created before a specific date, only those items would be searched. This is accomplished by connecting the case hold query and the search query by an **AND** operator.

Here are some other things to keep in mind when searching locations on eDiscovery hold:

- If a content location is part of multiple holds within the same case, the hold queries are combined by **OR** operators when you search that content location using the all case content option. Similarly, if a content location is part of two different holds, where one is query-based and the other is an infinite hold (where all content is placed on hold), then all content is search because of the infinite hold.

- If a search is configured it to search locations on hold and then you change an eDiscovery hold in the case (by adding or removing a location or changing a hold query), the search configuration is updated with those changes. However, you have to rerun the search after the hold is changed to update the search results.

- If multiple eDiscovery holds are placed on a single location in an eDiscovery case and you select to search locations on hold, the maximum number of keywords for that search query is 500. That's because the search combines all the query-based holds by using the **OR** operator. If there are more than 500 keywords in the combined hold queries and the search query, then all content in the mailbox is searched, not just that content that matches the query-based case holds. 
    
- If an eDiscovery hold has a status of **Turning on**, you can still search the locations on hold while the hold is being turned on.

## Preserving content in Microsoft Teams and Office 365 Groups

Microsoft Teams is built on Office 365 Groups. Therefore, placing them on hold in an eDiscovery case is similar. Keep the following things in mind when placing Office 365 Groups and Microsoft Teams on hold. 
    
- To place content located in Office 365 Groups and Microsoft Teams on hold, you have to specify the mailbox and SharePoint site that associated with a group or team.
    
- Run the **Get-UnifiedGroup** cmdlet in Exchange Online to view properties for an Office 365 Group or Microsoft Team. This is a good way to get the URL for the site that's associated with an Office 365 Group or a Microsoft Team. For example, the following command displays selected properties for an Office 365 Group named Senior Leadership Team: 
    
       ```text
       Get-UnifiedGroup "Senior Leadership Team" | FL DisplayName,Alias,PrimarySmtpAddress,SharePointSiteUrl

       DisplayName            : Senior Leadership Team
       Alias                  : seniorleadershipteam
       PrimarySmtpAddress     : seniorleadershipteam@contoso.onmicrosoft.com
       SharePointSiteUrl      : https://contoso.sharepoint.com/sites/seniorleadershipteam
       ```

    > [!NOTE]
    > To run the **Get-UnifiedGroup** cmdlet, you have to be assigned the View-Only Recipients role in Exchange Online or be a member of a role group that's assigned the View-Only Recipients role. 
  
- When a user's mailbox is searched, any Office 365 Group or Microsoft Team that the user is a member of won't be searched. Similarly, when you place an Office 365 Group or Microsoft Team hold, only the group mailbox and group site are placed on hold. The mailboxes and OneDrive for Business sites of group members aren't placed on hold unless you explicitly add them to the hold. Therefore, if you the need to place an Office 365 Group or Microsoft Team on hold for a legal reason, consider adding the mailboxes and OneDrive for Business sites for group and team members on the same hold.
    
- To get a list of the members of an Office 365 Group or Microsoft Team, you can view the properties on the **Home \> Groups** page in the Microsoft 365 admin center. Alternatively, you can run the following command in Exchange Online PowerShell: 
    
    ```powershell
    Get-UnifiedGroupLinks <group or team name> -LinkType Members | FL DisplayName,PrimarySmtpAddress 
    ```

    > [!NOTE]
    > To run the **Get-UnifiedGroupLinks** cmdlet, you have to be assigned the View-Only Recipients role in Exchange Online or be a member of a role group that's assigned the View-Only Recipients role. 
  
- Conversations that are part of a Microsoft Teams channel are stored in the mailbox that's associated with the Microsoft Team. Similarly, files that team members share in a channel are stored on the team's SharePoint site. Therefore, you have to place the Microsoft Team mailbox and SharePoint site on hold to retain conversations and files in a channel.
    
    Alternatively, conversations that are part of the Chat list in Microsoft Teams are stored in the mailbox of the user's who participate in the chat. And files that a user shares in Chat conversations are stored in the OneDrive for Business site of the user who shares the file. Therefore, you have to place the individual user mailboxes and OneDrive for Business sites on hold to retain conversations and files in the Chat list. That's why it's a good idea to place a hold on the mailboxes of members of a Microsoft Team in addition to placing the team mailbox (and site) on hold.
    
    > [!IMPORTANT]
    > Users who participate in conversations that are part of the Chat list in Microsoft Teams must have an Exchange Online (cloud-based) mailbox in order to retain chat conversations when the mailbox is placed on an eDiscovery hold. That's because conversations that are part of the Chat list are stored in the cloud-based mailboxes of the chat participants. If a chat participant doesn't have an Exchange Online mailbox, you won't be able to retain chat conversations. For example, in an Exchange hybrid deployment, users with an on-premises mailbox might be able to participate in conversations that are part of the Chat list in Microsoft Teams. However in this case, content from these conversation can't be retained because the users don't have cloud-based mailboxes. 
  
- Every Microsoft Team or team channel contains a Wiki for note-taking and collaboration. The Wiki content is automatically saved to a file with a .mht format. This file is stored in the Teams Wiki Data document library on the team's SharePoint site. You can place the content in the Wiki on hold by placing the team's SharePoint site on hold.
    
    > [!NOTE]
    > The capability to retain Wiki content for a Microsoft Team or team channel (when you place the team's SharePoint site on hold) was released on June 22, 2017. If a team site is on hold, the Wiki content will be retained starting on that date. However, if a team site is on hold and the Wiki content was deleted before June 22, 2017, the Wiki content was not retained. 

## Preserving content in OneDrive accounts

To collect a list of the URLs for the OneDrive for Business sites in your organization so you can add them to a hold or search associated with an eDiscovery case, see [Create a list of all OneDrive locations in your organization](https://support.office.com/article/8e200cb2-c768-49cb-88ec-53493e8ad80a). This script in this article creates a text file that contains a list of all OneDrive sites. To run this script, you have to install and use the SharePoint Online Management Shell. Be sure to append the URL for your organization's MySite domain to each OneDrive site that you want to search. This is the domain that contains all your OneDrive; for example,  `https://contoso-my.sharepoint.com`. Here's an example of a URL for a user's OneDrive site:  `https://contoso-my.sharepoint.com/personal/sarad_contoso_onmicrosoft.com`.