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

You can use an eDiscovery case to create holds to preserve content that might be relevant to the case. You can place a hold on the mailboxes and OneDrive for Business sites of people who are custodians in the case. You can also place a hold on the group mailbox, SharePoint site, and OneDrive for Business site for an Office 365 Group. Similarly, you can place a hold on the mailboxes and sites that are associated with Microsoft Teams or Yammer Groups. When you place content locations on hold, content is held until you remove the hold from the content location or until you delete the hold.

> [!NOTE]
> After you place a content location on hold, it takes up to 24 hours for the hold to take effect. 

When you create a hold, you have the following options to scope the content that is held in the specified content locations:
  
- You create an infinite hold where all content is placed on hold. Alternatively, you can create a query-based hold where only content that matches a search query is placed on hold.
    
- You can specify a date range to hold only the content that was sent, received, or created within that date range. Alternatively, you can hold all content regardless of when it was sent, received, or created.
    
> [!NOTE]
> You can have a maximum of 10,000 hold policies across all eDiscovery cases in your organization. 
  
To create a hold for an eDiscovery case:
  
1. In the Security & Compliance Center, click **eDiscovery** \> **eDiscovery** to display the list of cases in your organization. 
    
2. Click **Open** next to the case that you want to create the holds in. 
    
3. On the **Home** page for the case, click the **Hold** tab. 
    
    ![Click the Hold tab](../media/3fef2db4-36de-4517-a34d-82f47b82d9bf.png)
  
4. On the **Hold** page, click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) **Create**.
    
5. On the **Name your hold** page, give the hold a name. The name of the hold must be unique in your organization. 
    
    ![Give your hold a unique name](../media/7e15ea63-abd1-4f14-a29c-7ecfb9571d2c.png)
  
6. (Optional) In the **Description** box, add a description of the hold. 
    
7. Click **Next**.
    
8. Choose the content locations that you want to place on hold. You can place mailboxes, sites, and public folders on hold.
    
    ![Choose the content locations to place on hold](../media/a59e4265-9151-4dbf-913f-6a4ab8db06b4.png)
  
   a. **Exchange email** - Click **Choose users, groups, or teams** and then click **Choose users, groups, or teams** again. to specify mailboxes to place on hold. Use the search box to find user mailboxes and distribution groups (to place a hold on the mailboxes of group members) to place on hold. You can also place a hold on the associated mailbox for a Microsoft Team, a Yammer Group, or an Office 365 Group. Select the user, group, team check box, click **Choose**, and then click **Done**.
    
    > [!NOTE]
    > When you click **Choose users, groups, or teams** to specify mailboxes to place on hold, the mailbox picker that's displayed is empty. This is by design to enhance performance. To add people to this list, type a name (a minimum of 3 characters) in the search box. 

   b. **SharePoint sites** - Click **Choose sites** and then click **Choose sites** again to specify SharePoint and OneDrive for Business sites to place on hold. Type the URL for each site that you want to place on hold. You can also add the URL for the SharePoint site for a Microsoft Team, a Yammer Group, or a, Office 365 Group. Click **Choose**, and then click **Done**.
    
    See the More information section for tips on putting Microsoft Teams, Yammer Groups, and Office 365 Groups on hold. 
    
    > [!NOTE]
    > In the rare case that a person's user principal name (UPN) is changed, the URL for their OneDrive account will also be changed to incorporate the new UPN. If this happens, you'll have to modify the hold by adding the user's new OneDrive URL and removing the old one. 
  
   c. **Exchange public folders.** Move the toggle switch ![Toggle control](../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png) to the **All** position to put all public folders in your Exchange Online organization on hold. You can't choose specific public folders to put on hold. Leave the toggle switch set to **None** if you don't want to put a hold on public folders.
    
9. When you're done adding content locations to the hold, click **Next**.
    
10. To create a query-based hold with conditions, complete the following. Otherwise, click **Next**
    
    ![Create a query-based hold with conditions](../media/d587b58e-d05c-4ac0-b0fe-09019e4f1063.png)
  
    
       a. In the box under **Keywords**, type a search query in the box so that only the content that meets the search criteria is placed on hold. You can specify keywords, message properties, or document properties, such as file names. You can also use more complex queries that use a Boolean operator, such as **AND**, **OR**, or **NOT**. If you leave the keyword box empty, then all content located in the specified content locations will be placed on hold.
    
    b. Click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) **Add conditions** to add one or more conditions to narrow the search query for the hold. Each condition adds a clause to the KQL search query that is created and run when you create the hold. For example, you can specify a date range so that email or site documents that were created within the date ranged are placed on hold. A condition is logically connected to the keyword query (specified in the keyword box) by the **AND** operator. That means that items have to satisfy both the keyword query and the condition to be placed on hold.

    For more information about creating a search query and using conditions, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
    
11. After configuring a query-based hold, click **Next**.
    
12. Review your settings, and then click **Create this hold**.
    
## Hold statistics

After a while, information about the new hold is displayed in the details pane on the **Holds** page for the selected hold. This information includes the number of mailboxes and sites on hold and statistics about the content that was placed on hold, such as the total number and size of items placed on hold and the last time the hold statistics were calculated. These hold statistics help you identify how much content that's related to the eDiscovery case is being held. 
  
![Hold statistics](../media/575cfe0a-9210-4ae4-8df8-65665d66712e.png)
  
Keep the following things in mind about hold statistics:
  
- The total number of items on hold indicates the number of items from all content sources that are placed on hold. If you've created a query-based hold, this statistic indicates the number of items that match the query.
    
- The number of items on hold also includes unindexed items found in the content locations. If you create a query-based hold, all unindexed items in the content locations are placed on hold. This includes unindexed items that don't match the search criteria of a query-based hold and unindexed items that might fall outside of a date range condition. This is different than what happens when you run a Content Search, in which unindexed items that don't match the search query or are excluded by a date range condition aren't included in the search results. For more information about unindexed items, see [Partially indexed items in Content Search in Office 365](partially-indexed-items-in-content-search.md).
    
- You can get the latest hold statistics by clicking **Update statistics** to re-run a search estimate that calculates the current number of items on hold. If necessary, click **Refresh**![Refresh icon](../media/O365-MDM-Policy-RefreshIcon.gif) in the toolbar to update the hold statistics in the details pane. 
    
- It's normal for the number of items on hold to increase over time because users whose mailbox or site is on hold are typically sending or receiving new email message and creating new SharePoint and OneDrive for Business documents.
    
> [!NOTE]
> If a SharePoint site or OneDrive account is moved to a different region in a multi-geo environment, the statistics for that site won't be included in the hold statistics. However, the content in the site will still be on hold. Also, if a site is moved to a different region the URL that's displayed in the hold will not be updated. You'll have to edit the hold and update the URL. 