---
title: "Search for Teams chat data for on-premises users"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Priority
search.appverid:
- MOE150
- MST160
- MET150
ms.assetid: 3f7dde1a-a8ea-4366-86da-8ee6777f357c
description: Use eDiscovery tools in Microsoft 365 to search for and export Teams chat data for on-premises users in an Exchange hybrid deployment.
ms.custom: seo-marvel-apr2020
---

# Search for Teams chat data for on-premises users

If your organization has an Exchange hybrid deployment (or your organization synchronizes an on-premises Exchange organization with Office 365) and has enabled Microsoft Teams, on-premises users can use the Teams chat application for instant messaging. For a cloud-based user, Teams chat data (also called *1x1 or 1xN chats*) is saved to their primary cloud-based mailbox. When an on-premises user uses the Teams chat application, their chat messages can't be stored in their primary mailbox, which is located on-premises. To get around this limitation, Microsoft has released a new feature where a cloud-based storage area is created so that you use eDiscovery tools to search for and export Teams chat data for on-premises users.
  
Here are the requirements and limitations for enabling cloud-based storage for on-premises users:
  
- The user accounts in your on-premises directory service (such as Active Directory) must be synchronized with Azure Active Directory, the directory service in Microsoft 365. This means that a mail user account is created in Microsoft 365 and is associated with a user whose primary mailbox is located in the on-premises organization.

- The user whose primary mailbox is located in the on-premises organization must be assigned a Microsoft Teams license and a minimum of an Exchange Online Plan 1 license.

- If your organization doesn't have an Exchange hybrid deployment, you must synchronize your on-premises Exchange schema to Azure Active Directory. If you don't do this, you might risk creating duplicate cloud-based mailboxes in Exchange Online for users that have a mailbox in your on-premises Exchange organization.

- Only the Teams chat data associated with an on-premises user is stored in the cloud-based storage area. An on-premises user can't access this storage area in any way.

> [!NOTE]
> Teams channel conversations are always stored in the cloud-based mailbox that's associated with the Team, which means you can search for channel conversations. For more information about searching Teams channel conversations, see [Searching Microsoft Teams and Microsoft 365 Groups](content-search-reference.md#searching-microsoft-teams-and-microsoft-365-groups).
  
## How it works

If a Microsoft Teams-enabled user has an on-premises mailbox and their user account/identity has been synched to the cloud, Microsoft creates cloud-based storage to associate the on-premises user's 1xN Teams chat data with. Teams chat data for on-premises users is indexed for search. This lets you Use Content search (and searches associated with Core eDiscovery and Advanced eDiscovery cases) to search, preview, and export Teams chat data for on-premises users. You can also use **\*ComplianceSearch** cmdlets in the Security & Compliance Center PowerShell to search for Teams chat data for on-premises users.
  
The following graphic shows the workflow of how Teams chat data for on-premises users is available to search, preview, and export.
  
![Cloud-based storage for on-premises users in Microsoft Teams](../media/EHAMShard1.png)
  
In addition to this capability, you can also use eDiscovery tools to search, preview, and export Teams content in the cloud-based SharePoint site and Exchange mailbox associated with each Microsoft Team and 1xN Teams chat data in the Exchange Online mailbox for cloud-based users.

### How this feature is supported in Content search and Core eDiscovery search tools

The following UI elements in Content search and in the search tool associated with Core eDiscovery cases in the Microsoft 365 compliance center:
  
- The **Add app content for on-premises users** checkbox is displayed on the **Locations** wizard page in Content search tool and selected by default. Keep this checkbox selected to include the cloud-based storage for on-premises users in a content search.

    ![The "Add Office app content for on-premises users" checkbox is added to the Content Search UI](../media/EHAMShardCheckBox.png)
  
- You can search for on-premises users when you choose specific users to search for.

## Searching for Teams chat content for on-premises users

Here's how to use Content search in the Microsoft 365 compliance center to search for Teams chat data for on-premises users.
  
1. In the Microsoft 365 compliance center, go to **Content search**.

2. On the **Searches** tab, click **New search**, and name the new search.

3. On the **Locations** page, set the toggle to **On** for Exchange mailboxes. Notice that the **Add app content for on-premises users** checkbox is displayed and selected by default.

4. To search for Teams content for specific users, select **Choose user, groups, or teams** and choose specific users to include in the search. Otherwise, click **Next** to search for Teams content for all users, including  on-premises users

5. On the **Define your search conditions** page, create a keyword query and add conditions to the search query if necessary. To only search for Team chats data, you can add the following query in the **Keywords** box:

    ```text
    kind:im AND kind:microsoftteams
    ```

6. Submit and run the search. Any search results for on-premises users can be previewed like any other search results. You can also export the search results (including any Teams chat data) to a PST file. For more information, see:

    - [Create a search](content-search.md)

    - [Preview search results](preview-ediscovery-search-results.md)

    - [Export search results](export-search-results.md)

## Using PowerShell to search for Teams chat data for on-premises users

You can use the **New-ComplianceSearch** and **Set-ComplianceSearch** cmdlets in the Security & Compliance Center PowerShell to search for Teams chat data for on-premises users. As previously explained, you don't have to submit a support request to use PowerShell to search for Teams chat data for on-premises users.
  
1. [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. Run the following PowerShell command to create a content search that searches for Teams chat data for on-premises users.

    ```powershell
    New-ComplianceSearch <name of new search> -ContentMatchQuery <search query> -ExchangeLocation <on-premises user> -IncludeUserAppContent $true -AllowNotFoundExchangeLocationsEnabled $true  
    ```

    The *IncludeUserAppContent*  parameter is used to specify the cloud-based storage for the user or users who are specified by the  *ExchangeLocation*  parameter. The *AllowNotFoundExchangeLocationsEnabled*  allows you to search the cloud-based storage for on-premises users. When you use the `$true` value for this parameter, the search doesn't try to validate the existence of the mailbox before it runs. This is required to search the cloud-based storage for on-premises users because this cloud-based storage doesn't resolve as a regular cloud-based mailbox.

    The following example searches for Teams chats that contain keyword "redstone" in the cloud-based storage for Sara Davis, who is an on-premises user in the Contoso organization.
  
    ```powershell
    New-ComplianceSearch "Redstone_Search" -ContentMatchQuery "redstone AND (kind:im AND kind:microsoftteams)" -ExchangeLocation sarad@contoso.com -IncludeUserAppContent $true -AllowNotFoundExchangeLocationsEnabled $true  
    ```

   After you create a search, be sure to use the **Start-ComplianceSearch** cmdlet to run the search.
  
For more information using these cmdlets, see:
  
- [New-ComplianceSearch](/powershell/module/exchange/new-compliancesearch)

- [Set-ComplianceSearch](/powershell/module/exchange/set-compliancesearch)

- [Start-ComplianceSearch](/powershell/module/exchange/start-compliancesearch)

## Known issues

- Currently, you can search, preview, and export Teams chat data for on-premises users. You can also place the Teams chat data for an on-premises user on a hold associated with a Core or Advanced eDiscovery case, and apply a retention policy for Teams chats or channel messages for on-premises users. However at this time, you can't apply a retention policy for other content locations (such as Exchange mailboxes and SharePoint sites) for on-premises users.

## Frequently asked questions

**Do I have to submit a support request to search for chat messages for on-premises users?**

No. This feature is enabled by default for all organizations. At one point, you did have to contact Microsoft Support but that is no longer the case.
  
 **Can eDiscovery tools find older Teams chat data for on-premises users before the time that this feature was enabled by default for all organizations?**
  
Microsoft started storing the Teams chat data for on-premises users on January 31, 2018. So, if the identity of an on-premises Teams user has been synched between you on-premises Active Directory and Azure Active Directory in Microsoft 365 since this date, then their Teams chat data is stored in the cloud and is searchable using eDiscovery tools.

 **Do on-premises users need a license to store their Teams chat data in the cloud?**
  
Yes. To store Teams chat data for an on-premises user in a cloud-based storage, the user must be assigned a Microsoft Teams license and an Exchange Online Plan license in Office 365 (or Microsoft 365).

**Where is the cloud-based storage for on-premises users located?**
  
Teams chat data is stored in the Preferred Data Location (PDL) for an on-premises user. The PDL is honored in both Single-Geo and Multi-Geo environments. For more information, see [Microsoft 365 Multi-Geo](../enterprise/microsoft-365-multi-geo.md).

**Is there a risk of losing the Teams chat data if the user's on-premises mailbox is migrated to the cloud?**
  
No. When you migrate the primary mailbox of an on-premises user to the cloud, the Teams chat data for that user will be migrated to their new cloud-based primary mailbox.
  
 **Can I apply an eDiscovery hold or retention policies to on-premises users?**
  
Yes. You can apply eDiscovery holds or retention policies for Teams chats and channel messages of on-premises users. However, to preserve or retain Teams content for on-premises users, an on-premises user must be assigned an Exchange Online Plan 2 license.
