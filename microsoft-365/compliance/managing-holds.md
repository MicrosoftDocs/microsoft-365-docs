---
title: "Manage holds in eDiscovery (Premium)"
description: Learn how to place holds on custodians and their data sources to preserve relevant content for your eDiscovery (Premium) case.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 04/27/2022
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- highpri
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
ms.custom: 
- seo-marvel-mar2020
- admindeeplinkMAC
---

# Manage holds in eDiscovery (Premium)

You can use an Microsoft Purview eDiscovery (Premium) case to create holds to preserve content that might be relevant to your case. Using the eDiscovery (Premium) hold capabilities, you can place holds on custodians and their data sources. Additionally, you can place a non-custodial hold on mailboxes and OneDrive for Business sites. You can also place a hold on the group mailbox, SharePoint site, and OneDrive for Business site for a Microsoft 365 Group. Similarly, you can place a hold on the mailbox and site that are associated with Microsoft Teams. When you place content locations on hold, content is held until you release the custodian, remove a specific data location, or delete the hold policy entirely.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Manage custodian-based holds

In some cases, you may have a set of custodians that you have identified and have decided to preserve their data during the case. In eDiscovery (Premium), when these custodians are placed on hold, the user and their selected data sources are automatically added to a custodian hold policy.

To view the custodian hold policy:

1. In the Microsoft Purview compliance portal, click **eDiscovery > Advanced** to display the list of cases in your organization.

2. Go to the **Sources** tab to add custodians within your case. To learn how you can add and place custodians on hold within an eDiscovery (Premium) case, see [Add Custodians to a case](add-custodians-to-case.md). If you have already added custodians and placed them on hold, go to step 3.

3. Go to the **Holds** tab and click **CustodianHold\<HoldId>**.

4. On the flyout page, you can perform actions like apply a query to your custodian-based hold. For more information about creating a hold query and using conditions, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).

## Manage non-custodial holds

When you create a hold, you have the following options to scope the content that is held in the specified content locations:

- You create an infinite hold where all content is placed on hold. Alternatively, you can create a query-based hold where only content that matches a search query is placed on hold.
  
- You can specify a date range to hold only the content that was sent, received, or created within that date range. Alternatively, you can hold all content regardless of when it was sent, received, or created.

To create a non-custodial hold for an eDiscovery (Premium) case:

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">compliance portal</a>, click **eDiscovery > Advanced** to display the list of cases in your organization.
  
2. Click **Open** next to the case that you want to create the holds in.
  
3. From the home page for the case, click the **Holds** tab.
  
4. On the **Holds** tab, click **Create**.
  
5. On the **Name your hold** page, give the hold a name. The name of the hold must be unique in your organization.

6. (Optional) In the **Description** box, add a description of the hold.
  
7. Click **Next**.
  
8. Choose the content locations that you want to place on hold. You can place mailboxes, sites, and public folders on hold.

   1. **Exchange email** - Click **Choose users, groups, or teams** and then click **Choose users, groups, or teams** again to specify mailboxes to place on hold. Use the search box to find user mailboxes and distribution groups (to place a hold on the mailboxes of group members) to place on hold. You can also place a hold on the associated mailbox for a Microsoft 365 Group or a Microsoft Team. Select the user, group, team check box, click **Choose**, and then click **Done**.

      > [!NOTE]
      > When you click **Choose users, groups, or teams** to specify mailboxes to place on hold, the mailbox picker that's displayed is empty. This is by design to enhance performance. To add people to this list, type a name (a minimum of 3 characters) in the search box.

   1. **SharePoint Sites** - Click **Choose sites** and then click **Choose sites** again to specify SharePoint and OneDrive for Business sites to place on hold. Type the URL for each site that you want to place on hold. You can also add the URL for the SharePoint site for a Microsoft 365 Group or a Microsoft Team. Click **Choose**, and then click **Done**.

      > [!NOTE]
      > The URL for a user's OneDrive account includes their user principal name (UPN) (for example, `https://alpinehouse-my.sharepoint.com/personal/sarad_alpinehouse_onmicrosoft_com`). In the rare case that a person's UPN is changed, their OneDrive URL will also change to incorporate the new UPN. If a user's OneDrive account is part of a non-custodial hold and their UPN is changed, you need to update the hold and point to the new OneDrive URL. For more information, see [How UPN changes affect the OneDrive URL](/onedrive/upn-changes).

   1. **Exchange public folders** - Move the toggle switch to the All position to put all public folders in your Exchange Online organization on hold. You can't choose specific public folders to put on hold. Leave the toggle switch set to **None** if you don't want to put a hold on public folders.

9. When you're done adding content locations to the hold, click **Next**.
  
10. To create a query-based hold with conditions, complete the following. Otherwise, just click **Next**.

    - In the box under **Keywords**, type a search query in the box so that only the content that meets the search criteria is placed on hold. You can specify keywords, message properties, or document properties, such as file names. You can also use more complex queries that use a Boolean operator, such as AND, OR, or NOT. If you leave the keyword box empty, then all content located in the specified content locations will be placed on hold.

    - Click  **Add** conditions to add one or more conditions to narrow the search query for the hold. Each condition adds a clause to the KQL search query that is created and run when you create the hold. For example, you can specify a date range so that email or site documents that were created within the date ranged are placed on hold. A condition is logically connected to the keyword query (specified in the keyword box) by the AND operator. That means that items have to satisfy both the keyword query and the condition to be placed on hold.

     For more information about creating a search query and using conditions, see [Keyword queries and search conditions for Content Search](/office365/SecurityCompliance/keyword-queries-and-search-conditions).

11. After configuring a query-based hold, click **Next**.

12. Review your settings, and then click **Create this hold**.

> [!NOTE]
> When you create a query-based hold, all content from selected locations is initially placed on hold. After the timer job in either Exchange or SharePoint runs, any content that doesn't match the specified query is cleared from the hold. After the character count across all queries on a single location exceeds 10,000 characters, the entire location is placed on hold. 

> [!NOTE]
> If the SMTP address of the user changes after you place the user's mailbox on hold, the mailbox will remain on hold. To use the new SMTP address to place hold, create a new hold.

## Place a hold on Microsoft Teams and Office 365 Groups

Microsoft Teams is built on Office 365 Groups. Therefore, placing them on hold in eDiscovery (Premium) is similar.

- **How do I map an additional Microsoft 365 Groups or Microsoft Teams site to a custodian? And what about placing a non-Custodial hold on Microsoft 365 Groups and Microsoft Teams?** Microsoft Teams is built on Microsoft 365 Groups. Therefore, placing them on hold in an eDiscovery case is similar. Keep the following things in mind when placing Microsoft 365 Groups and Microsoft Teams on hold.

  - To place content located in Microsoft 365 Groups and Microsoft Teams on hold, you have to specify the mailbox and SharePoint site that associated with a group or team.
  
  - Run the **Get-UnifiedGroup** cmdlet in Exchange Online to view properties for a Microsoft 365 Group or Microsoft Team. This is a good way to get the URL for the site that's associated with a Microsoft 365 Group or a Microsoft Team. For example, the following command displays selected properties for a Microsoft 365 Group named Senior Leadership Team:

    ```console
    Get-UnifiedGroup "Senior Leadership Team" | FL DisplayName,Alias,PrimarySmtpAddress,SharePointSiteUrl
    DisplayName            : Senior Leadership Team
    Alias                  : seniorleadershipteam
    PrimarySmtpAddress     : seniorleadershipteam@contoso.onmicrosoft.com
    SharePointSiteUrl      : https://contoso.sharepoint.com/sites/seniorleadershipteam
    ```

    > [!NOTE]
    > To run the Get-UnifiedGroup cmdlet, you have to be assigned the View-Only Recipients role in Exchange Online or be a member of a role group that's assigned the View-Only Recipients role.

  - When a user's mailbox is searched, any Microsoft 365 Group or Microsoft Team that the user is a member of won't be searched. Similarly, when you place a Microsoft 365 Group or Microsoft Team hold, only the group mailbox and group site are placed on hold; the mailboxes and OneDrive for Business sites of group members aren't placed on hold unless you explicitly add them as custodians or place their data sources hold. Therefore, if you the need to place a Microsoft 365 Group or Microsoft Team on hold for a specific custodian, consider mapping the group site and group mailbox to the custodian (See Managing Custodians in eDiscovery (Premium)). If the Microsoft 365 Group or Microsoft Team is not attributable to a single custodian, consider adding the source to a non-custodial hold.
  - To get a list of the members of a Microsoft 365 Group or Microsoft Team, you can view the properties on the **Home** > [**Groups**](https://go.microsoft.com/fwlink/p/?linkid=2052855) page in the Microsoft 365 admin center. Alternatively, you can run the following command in Exchange Online PowerShell:

    ```powershell
    Get-UnifiedGroupLinks <group or team name> -LinkType Members | FL DisplayName,PrimarySmtpAddress
    ```

    > [!NOTE]
    > To run the **Get-UnifiedGroupLinks** cmdlet, you have to be assigned the View-Only Recipients role in Exchange Online or be a member of a role group that's assigned the View-Only Recipients role.

  - Channel conversations that are part of a Microsoft Teams channel are stored in the mailbox that's associated with the Team. Similarly, files that team members share in a channel are stored on the team's SharePoint site. Therefore, you have to place the Microsoft Team mailbox and SharePoint site on hold to retain conversations and files in a channel.
  
  - Alternatively, conversations that are part of the Chat list in Microsoft Teams are stored in the mailbox of the user's who participate in the chat.  Files that a user shares in Chat conversations are stored in the OneDrive for Business site of the user who shares the file. Therefore, you have to place the individual user mailboxes and OneDrive for Business sites on hold to retain conversations and files in the Chat list.
  
  - Every Microsoft Team or team channel contains a Wiki for note-taking and collaboration. The Wiki content is automatically saved to a file with a .mht format. This file is stored in the Teams Wiki Data document library on the team's SharePoint site. You can place the content in the Wiki on hold by placing the team's SharePoint site on hold.

    > [!NOTE]
    > The capability to retain Wiki content for a Microsoft Team or team channel (when you place the team's SharePoint site on hold) was released on June 22, 2017. If a team site is on hold, the Wiki content will be retained starting on that date. However, if a team site is on hold and the Wiki content was deleted before June 22, 2017, the Wiki content was not retained.
