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
description: Use the Content Search tool in the Security & Compliance Center to search for and export Teams chat data for on-premises users in an Exchange hybrid deployment.
ms.custom: seo-marvel-apr2020
---

# Search for Teams chat data for on-premises users

If your organization has an Exchange hybrid deployment (or your organization synchronizes an on-premises Exchange organization with Office 365) and has enabled Microsoft Teams, on-premises users can use the Teams chat application for instant messaging. For a cloud-based user, Teams chat data (also called *1x1 or 1xN chats*) is saved to their primary cloud-based mailbox. When an on-premises user uses the Teams chat application, their chat messages can't be stored in their primary mailbox, which is located on-premises. To get around this limitation, Microsoft has released a new feature where a cloud-based storage area is created so that you use eDiscovery tools to search for and export Teams chat data for on-premises users.
  
Here are the requirements and limitations for enabling cloud-based storage for on-premises users:
  
- The user accounts in your on-premises directory service (such as Active Directory) must be synchronized with Azure Active Directory, the directory service in Microsoft 365. This means that a mail user account is created in Microsoft 365 and is associated with a user whose primary mailbox is located in the on-premises organization.

- The user whose primary mailbox is located in the on-premises organization must be assigned a Microsoft Teams license and a minimum of an Exchange Online Plan 1 license.

- Have an exchange hybrid configuration in order there is no duplicate mailbox generated for the user which his mailbox is hosted on-premises or sync the exchange schema.

- Only Teams chat data associated with an on-premises user is stored in the cloud-based storage area. An on-premises user can't access this storage area in any way.

- You have to submit a request to Microsoft Support to enable your organization to search for Teams chat data for on-premises users. See [Filing a request with Microsoft Support to enable this feature](#filing-a-request-with-microsoft-support-to-enable-this-feature) in this article.

> [!NOTE]
> Teams channel conversations are always stored in the cloud-based mailbox that's associated with the Team. That means you can use Content Search to search channel conversations without have to file a support request. For more information about searching Teams channel conversations, see [Searching Microsoft Teams and Microsoft 365 Groups](content-search.md#searching-microsoft-teams-and-microsoft-365-groups).
  
## How it works

If a Microsoft Teams-enabled user has an on-premises mailbox and their user account/identity has been synched to the cloud, Microsoft creates cloud-based storage to associate the on-premises user's 1xN Teams chat data with. Teams chat data for on-premises users is indexed for search. This lets you Use Content Search (and searches associated with Core and Advanced eDiscovery cases) to search, preview, and export Teams chat data for on-premises users. You can also use **\*ComplianceSearch** cmdlets in the Security & Compliance Center PowerShell to search for Teams chat data for on-premises users.
  
The following graphic shows the workflow of how Teams chat data for on-premises users is available to search, preview, and export.
  
![Cloud-based storage for on-premises users in Microsoft Teams](../media/EHAMShard1.png)
  
In addition to this new capability, you can still use Content Search to search, preview, and export Teams content in the cloud-based SharePoint site and Exchange mailbox associated with each Microsoft Team and 1xN Teams chat data in the Exchange Online mailbox for cloud-based users.

## Filing a request with Microsoft Support to enable this feature

You must file a request with Microsoft Support to enable your organization to use the graphical user interface in the Security & Compliance Center to search for Teams chat data for on-premises users. This feature is available in Security & Compliance Center PowerShell. You don't have to submit a support request to use PowerShell to search for Teams chat data for on-premises users.
  
Include the following information when you submit the request to Microsoft Support:
  
- The default domain name of your organization.

- The tenant name and tenant ID of your organization. You can find these in the Azure Active Directory portal (under **Manage** \> **Properties**). See [Find your Microsoft 365 tenant ID](https://docs.microsoft.com/onedrive/find-your-office-365-tenant-id).

- The following title or description of the purpose of the support request: "Enable Application Content Search for On-premises Users". This helps route the request to the eDiscovery engineering team who will implement the request.

After the engineering change is made, Microsoft Support will send you an estimated deployment date. The deployment process usually takes 2–3 weeks after you submit the support request.
  
### What happens after this feature is enabled?

After this feature is deployed in your organization, the following changes are made in Content Search and in searches associated with an eDiscovery case in the Security & Compliance Center:
  
- The **Add Office app content for on-premises users** checkbox is added under the **Locations** in Content Search.

    ![The "Add Office app content for on-premises users" checkbox is added to the Content Search UI](../media/599e751e-17bd-408d-a18c-127538de6e85.png)
  
- On-premises users are displayed in the content locations picker that you use to select user mailboxes to search.

## Searching for Teams chat content for on-premises users

After the feature has been enabled, you can use Content Search in the Security & Compliance Center to search for Teams chat data for on-premises users.
  
1. In the Security & Compliance Center, go to **Search** \> **Content search**

2. On the **Search** page, click ![Add icon](../media/8ee52980-254b-440b-99a2-18d068de62d3.gif) **New search**.

    As previously explained, the **Add Office app content for on-premises users** checkbox is displayed under **Locations**. It's selected by default.

3. Create the keyword query and add conditions to the search query if necessary. To only search for Team chats data, you can add the following query in the **Keywords** box:

    ```text
    kind:im
    ```

4. At this point, you can choose one of the following options under **Locations**:

    - **All locations:** Select this option to search the mailboxes of all users in your organization. When the checkbox is selected, all cloud-based storage of Teams chat data for on-premises users will also be searched.

    - **Specific locations:** Select this option and then click **Modify** \> Choose user, groups, or teams to search specific mailboxes. As previously explained, the locations picker lets you search for Teams chat data for on-premises users.

5. Save and run the search. Any search results for on-premises users can be previewed like any other search results. You can also export the search results (including any Teams chat data) to a PST file. For more information, see:

    - [Create a search](content-search.md#create-a-search)

    - [Preview search results](content-search.md#preview-search-results)

    - [Export Content Search results](export-search-results.md)

## Using PowerShell to search for Teams chat data for on-premises users

You can use the **New-ComplianceSearch** and **Set-ComplianceSearch** cmdlets in the Security & Compliance Center PowerShell to search for Teams chat data for on-premises users. As previously explained, you don't have to submit a support request to use PowerShell to search for Teams chat data for on-premises users.
  
1. [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell).

2. Run the following PowerShell command to create a content search that searches for Teams chat data for on-premises users.

    ```powershell
    New-ComplianceSearch <name of new search> -ContentMatchQuery <search query> -ExchangeLocation <on-premises user> -IncludeUserAppContent $true -AllowNotFoundExchangeLocationsEnabled $true  
    ```

    The *IncludeUserAppContent*  parameter is used to specify the cloud-based storage for the user or users who are specified by the  *ExchangeLocation*  parameter. The *AllowNotFoundExchangeLocationsEnabled*  allows you to search the cloud-based storage for on-premises users. When you use the `$true` value for this parameter, the search doesn't try to validate the existence of the mailbox before it runs. This is required to search the cloud-based storage for on-premises users because this cloud-based storage doesn't resolve as a regular cloud-based mailbox.

    The following example searches for Teams chats (which are instant messages) that contain keyword "redstone" in the cloud-based storage for Sara Davis, who is an on-premises user in the Contoso organization.
  
    ```powershell
    New-ComplianceSearch "Redstone_Search" -ContentMatchQuery "redstone AND kind:im" -ExchangeLocation sarad@contoso.com -IncludeUserAppContent $true -AllowNotFoundExchangeLocationsEnabled $true  
    ```

   After you create a search, be sure to use the **Start-ComplianceSearch** cmdlet to run the search. 
  
For more information using these cmdlets, see:
  
- [New-ComplianceSearch](https://docs.microsoft.com/powershell/module/exchange/new-compliancesearch)

- [Set-ComplianceSearch](https://docs.microsoft.com/powershell/module/exchange/set-compliancesearch)

- [Start-ComplianceSearch](https://docs.microsoft.com/powershell/module/exchange/start-compliancesearch)

## Known issues

- Currently, you can search, preview, and export Teams chat data for on-premises users. You can also place the Teams chat data for an on-premises user on a hold associated with a Core or Advanced eDiscovery case, and apply a retention policy for Teams chats or channel messages for on-premises users. However at this time, you can't apply a retention policy for other content locations (such as Exchange mailboxes and SharePoint sites) for on-premises users.

## Frequently asked questions

**Where is the cloud-based storage for on-premises users located?**
  
Teams chat data is stored in the Preferred Data Location (PDL) for an on-premises user. The PDL is honored in both Single-Geo and Multi-Geo environments. For more information, see [Microsoft 365 Multi-Geo](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-multi-geo).
  
 **Are there any other requirements other than submitting a support request?**
  
As previously explained, the identities of users with on-prem mailboxes must be synchronized to your cloud-based organization so that a corresponding mail user account is created for each on-premises user account in Office 365. Your organization must also have an Office 365 enterprise subscription, such as an Office 365 Enterprise E1, E3, or E5 subscription.
  
 **Is there a risk of losing the Teams chat data if the user's on-premises mailbox is migrated to the cloud?**
  
No. When you migrate the primary mailbox of an on-premises user to the cloud, the Teams chat data for that user will be migrated to their new cloud-based primary mailbox.
  
 **Can I apply an eDiscovery hold or retention policies to on-premises users?**
  
Yes. You can apply eDiscovery holds or retention policies for Teams chats and channel messages of on-premises users.
  
 **Can Content Search find older Teams chat data for on-premises users before the time my organization submitted the request to enable this feature?**
  
Microsoft started storing the Teams chat data for on-premises users on January 31, 2018. So, if the identity of an on-premises Teams user has been synched between Active Directory and Azure Active Directory since this date, then their Teams chat data is stored in the cloud and is searchable using Content Search. Microsoft is also working on storing Teams chat data from prior to January 31, 2018 in the cloud-based storage for on-premises users. More information about this will be available soon.

 **Do on-premises users need a license to store their Teams chat data in the cloud?**
  
Yes. To store Teams chat data for an on-premises user in a cloud-based storage, the user must be assigned a Microsoft Teams license and an Exchange Online Plan license in Office 365 (or Microsoft 365).
