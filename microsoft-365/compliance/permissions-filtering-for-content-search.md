---
title: "Configure permissions filtering for Content Search"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
ms.assetid: 1adffc35-38e5-4f7d-8495-8e0e8721f377
description: "Use Content Search permissions filtering to let an eDiscovery manager search only a subset of mailboxes and sites in your organization."
ms.custom: seo-marvel-apr2020
---

# Configure permissions filtering for Content Search

You can use search permissions filtering to let an eDiscovery manager search only a subset of mailboxes and sites in your organization. You can also use permissions filtering to let that same eDiscovery manager search only for mailbox or site content that meets a specific search criteria. For example, you might let an eDiscovery manager search only the mailboxes of users in a specific location or department. You do this by creating a filter that uses a supported recipient filter to limit which mailboxes a specific user or group of users can search. You can also create a filter that specifies what mailbox content a user can search for. This is done by creating a filter that uses a searchable message property. Similarly, you can let an eDiscovery manager search only specific SharePoint sites in your organization. You do this by creating a filter that limits which site can be searched. You can also create a filter that specifies what site content can be searched. This is done by creating a filter that uses a searchable site property.

You can also use search permissions filtering to create logical boundaries (called *compliance boundaries*) within an organization that control the user content locations (such as mailboxes, SharePoint sites, and OneDrive accounts) that specific eDiscovery managers can search. For more information, see [Set up compliance boundaries for eDiscovery investigations in Office 365](tagging-and-assessment-in-advanced-ediscovery.md).
  
Search permissions filtering is supported by the Content Search feature in the Security & Compliance Center. These four cmdlets let you configure and manage search permissions filters:
  
[New-ComplianceSecurityFilter](#new-compliancesecurityfilter)

[Get-ComplianceSecurityFilter](#get-compliancesecurityfilter)

[Set-ComplianceSecurityFilter](#set-compliancesecurityfilter)

[Remove-ComplianceSecurityFilter](#remove-compliancesecurityfilter)

## Requirements to configure permissions filtering

- To run the compliance security filter cmdlets, you have to be a member of the Organization Management role group in the Security & Compliance Center. For more information, see [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).

- You have to connect to both Exchange Online and Security & Compliance Center PowerShell to use the compliance security filter cmdlets. This is necessary because these cmdlets require access to mailbox properties, which is why you have to connect to Exchange Online PowerShell. See the steps in the next section.

- See the [More information](#more-information) section for additional information about search permissions filters.

- Search permissions filtering is applicable to inactive mailboxes, which means you can use mailbox and mailbox content filtering to limit who can search an inactive mailbox. See the [More information](#more-information) section for additional information about permissions filtering and inactive mailboxes.

- Search permissions filtering can't be used to limit who can search public folders in Exchange.

- There is no limit to the number of search permissions filters that can be created in an organization. But search performance will be impacted when there are more than 100 search permissions filters. To keep the number of search permissions filters in your organization as small as possible, create filters that combine rules for Exchange, SharePoint, and OneDrive in a single filter whenever possible.

## Connect to Exchange Online and Security & Compliance Center PowerShell in a single session

Before you can successfully run the script in this section, you have to download and install the Exchange Online PowerShell V2 module. For information, see [About the Exchange Online PowerShell V2 module](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exo-v2-module).

1. Save the following text to a Windows PowerShell script file by using a filename suffix of **.ps1**. For example, you could save it to a file named **ConnectEXO-SCC.ps1**.

    ```powershell
    Import-Module ExchangeOnlineManagement
    $UserCredential = Get-Credential
    Connect-ExchangeOnline -Credential $UserCredential -ShowBanner:$false
    Connect-IPPSSession -Credential $UserCredential
    $Host.UI.RawUI.WindowTitle = $UserCredential.UserName + " (Exchange Online + Compliance Center)"
    ```

2. On your local computer, open Windows PowerShell, go to the folder where the script that you created in the previous step is located, and then run the script; for example:

    ```powershell
    .\ConnectEXO-SCC.ps1
    ```

How do you know if this worked? After you run the script, cmdlets from Exchange Online and Security & Compliance PowerShell are imported to your local Windows PowerShell session. If you don't receive any errors, you connected successfully. A quick test is to run an Exchange Online and Security & Compliance Center cmdlet. For example, you can run and **Get-Mailbox** and **Get-ComplianceSearch**.

For troubleshooting PowerShell connection errors, see:

- [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell#how-do-you-know-this-worked)

- [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell#how-do-you-know-this-worked)

## New-ComplianceSecurityFilter

The **New-ComplianceSecurityFilter** is used to create a search permissions filter. The following table describes the parameters for this cmdlet. All parameters are required to create a compliance security filter.
  
| Parameter | Description |
|:-----|:-----|
| _Action_ <br/> | The  _Action_ parameter specifies that type of search action that the filter is applied to. The possible Content Search actions are:  <br/><br/> **Export:** The filter is applied when exporting search results.  <br/> **Preview:** The filter is applied when previewing search results.  <br/> **Purge:** The filter is applied when purging search results.  <br/> **Search:** The filter is applied when running a search.  <br/> **All:** The filter is applied to all search actions.  <br/> |
| _FilterName_ <br/> |The  _FilterName_ parameter specifies the name of the permissions filter. This name is used to identity a filter when using the **Get-ComplianceSecurityFilter**, **Set-ComplianceSecurityFilter,** and **Remove-ComplianceSecurityFilter** cmdlets.  <br/> |
| _Filters_ <br/> | The  _Filters_ parameter specifies the search criteria for the compliance security filter. You can create three different types of filters:  <br/><br/> **Mailbox or OneDrive filtering:** This type of filter specifies the mailboxes and OneDrives the assigned users (specified by the  _Users_ parameter) can search. The syntax for this type of filter is **Mailbox_** _MailboxPropertyName_, where  _MailboxPropertyName_ specifies a mailbox property used to scope the mailboxes and OneDrives that can be searched. For example, the mailbox filter  `"Mailbox_CustomAttribute10 -eq 'OttawaUsers'"` would allow the user assigned this filter to search only the mailboxes and OneDrives that have the value "OttawaUsers" in the CustomAttribute10 property.  <br/>  Any supported filterable recipient property can be used for the  _MailboxPropertyName_ property. For a list of supported properties, see [Filterable properties for the -RecipientFilter parameter](/powershell/exchange/recipientfilter-properties).  <br/><br/> **Mailbox content filtering:** This type of filter is applied on the content that can be searched. It specifies the mailbox content the assigned users can search for. The syntax for this type of filter is **MailboxContent_** _SearchablePropertyName: value_, where  _SearchablePropertyName_ specifies a Keyword Query Language (KQL) property that can be specified in a Content Search. For example, the mailbox content filter  `MailboxContent_recipients:contoso.com` would allow the user assigned this filter to only search for messages sent to recipients in the contoso.com domain.  <br/>  For a list of searchable message properties, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md). <br/> <br/> **Important:**  A single search filter can't contain a mailbox filter and a mailbox content filter. To combine these in a single filter, you have to use a [filters list](#using-a-filters-list-to-combine-filter-types).  But a filter can contain a more complex query of the same type. For example,  `"Mailbox_CustomAttribute10 -eq 'FTE' -and Mailbox_MemberOfGroup -eq '$($DG.DistinguishedName)'"`  <br/><br/> **Site and site content filtering:** There are two SharePoint and OneDrive for Business site-related filters that you can use to specify what site or site content the assigned users can search:  <br/><br/> - **Site_** _SearchableSiteProperty_ <br/> - **SiteContent_** _SearchableSiteProperty_ <br/><br/>  These two filters are interchangeable. For example,  `"Site_Path -like 'https://contoso.sharepoint.com/sites/doctors*'"` and  `"SiteContent_Path -like 'https://contoso.sharepoint.com/sites/doctors*'"` return the same results. But to help you identify what a filter does, you can use  `Site_` to specify site-related properties (such as a site URL) and  `SiteContent_` to specify content-related properties (such as document types. For example, the filter  `"Site_Path -like 'https://contoso.sharepoint.com/sites/doctors*'"` would allow the user assigned this filter to only search for content in the https://contoso.sharepoint.com/sites/doctors site collection. The filter  `"SiteContent_FileExtension -eq 'docx'"` would allow the user assigned this filter to only search for Word documents (Word 2007 and later).  <br/><br/>  For a list of searchable site properties, see [Overview of crawled and managed properties in SharePoint](/SharePoint/technical-reference/crawled-and-managed-properties-overview). Properties marked with a **Yes** in the **Queryable** column can be used to create a site or site content filter.  <br/><br/> **Important:** You have to create a search permissions filter to explicitly prevent users from searching content locations in a specific service (such as preventing a user from searching any Exchange mailbox or any SharePoint site). In other words, creating a search permissions filter that allows a user to search all SharePoint sites in the organization doesn't prevent that user from searching mailboxes. For example, to allow SharePoint admins to only search SharePoint sites, you have to create a filter that prevents them from searching mailboxes. Similarly, to allow Exchange admins to only search mailboxes, you have to create a filter that prevents them from searching sites.           |
| _Users_ <br/> |The  _Users_ parameter specifies the users who get this filter applied to their Content Searches. Identify users by their alias or primary SMTP address. You can specify multiple values separated by commas, or you can assign the filter to all users by using the value **All**.  <br/> You can also use the  _Users_ parameter to specify a Security & Compliance Center role group. This lets you create a custom role group and then assign that role group a search permissions filter. For example, let's say you have a custom role group for eDiscovery managers for the U.S. subsidiary of a multi-national corporation. You can use the  _Users_ parameter to specify this role group (by using the Name property of the role group) and then use the  _Filter_ parameter to allow only mailboxes in the U.S. to be searched.  <br/> You can't specify distribution groups with this parameter.  <br/> |
   
### Using a filters list to combine filter types

A *filters list* is a filter that includes a mailbox filter and a site filter separated by a comma. Using a filters list is the only supported method for combining different types of filters. In the following example, notice that a comma separates the **Mailbox** and **Site** filters:

```powershell
-Filters "Mailbox_CustomAttribute10 -eq 'OttawaUsers'", "Site_Path -like 'https://contoso.sharepoint.com/sites/doctors*'"
```

When a filter that contains a filters list is processed during the running of a content search, two search permissions filters are created from the filters list: One for each filter that's separated by a comma. So in the previous example, one mailbox search permissions filter and one site search permissions filter would be created. 

An alternative to using a filters list would be to create two separate search permissions filters. So in the previous example, you'd create one filter for the mailbox attribute and one filter for the site attribute. In either case, the results are the same. Using a filters list or creating separate search permissions filters is a matter of preference.

Keep the following things in mind about using a filters list:

- You have to use a filters list to create a filter that includes a **Mailbox** filter and a **MailboxContent** filter. 

- As previously suggested, you don't have to use a filters list to include a **Site** and a **SiteContent** filter in a single search permissions filter. For example, you can combine **Mailbox** and a **SiteContent** filters using an **-or** operator.

   ```powershell
   -Filters "Mailbox_Department -eq 'FourthCoffee'", "Site_Path -like 'https://contoso.sharepoint.com/sites/FourthCoffee*'"
   ```

- Each component of a filters list can contain a complex filter syntax. For example, the mailbox and site filters can contain multiple filters separated by an **-or** operator:

   ```powershell
   -Filters "Mailbox_Department -eq 'CohoWinery' -or Mailbox_CustomAttribute10 -eq 'CohoUsers'", "Site_Path -like 'https://contoso.sharepoint.com/sites/CohoWinery*'"
   ```

## Examples of creating search permissions filters

Here are examples of using the **New-ComplianceSecurityFilter** cmdlet to create a search permissions filter. 
  
This example allows the user annb@contoso.com to perform all Content Search actions only for mailboxes in Canada. This filter contains the three-digit numeric country code for Canada from ISO 3166-1.

```powershell
New-ComplianceSecurityFilter -FilterName CountryFilter  -Users annb@contoso.com -Filters "Mailbox_CountryCode  -eq '124'" -Action All
```

This example allows the users donh and suzanf to search only the mailboxes that have the value 'Marketing' for the CustomAttribute1 mailbox property.

```powershell
New-ComplianceSecurityFilter -FilterName MarketingFilter  -Users donh,suzanf -Filters "Mailbox_CustomAttribute1  -eq 'Marketing'" -Action Search
```

This example allows members of the "US Discovery Managers" role group to perform all Content Search actions only on mailboxes in the United States. This filter contains the three-digit numeric country code for the United States from ISO 3166-1.
  
```powershell
New-ComplianceSecurityFilter -FilterName USDiscoveryManagers  -Users "US Discovery Managers" -Filters "Mailbox_CountryCode  -eq '840'" -Action All
```

This example allows members of the eDiscovery Manager role group to search only the mailboxes of members of the Ottawa Users distribution group. The Get-DistributionGroup cmdlet in Exchange Online PowerShell is used to find the members of the Ottawa Users group.
  
```powershell
$DG = Get-DistributionGroup "Ottawa Users"
```

```powershell
New-ComplianceSecurityFilter -FilterName DGFilter  -Users eDiscoveryManager -Filters "Mailbox_MemberOfGroup -eq '$($DG.DistinguishedName)'" -Action Search
```

This example prevents any user from deleting content from the mailboxes of members of the Executive Team distribution group. The Get-DistributionGroup cmdlet in Exchange Online PowerShell is used to find the members of the Executive Team group.

```powershell
$DG = Get-DistributionGroup "Executive Team"
```

```powershell
New-ComplianceSecurityFilter -FilterName NoExecutivesPreview  -Users All -Filters "Mailbox_MemberOfGroup -ne '$($DG.DistinguishedName)'" -Action Purge
```

This example allows members of the OneDrive eDiscovery Managers custom role group to only search for content in OneDrive for Business locations in the organization.

```powershell
New-ComplianceSecurityFilter -FilterName OneDriveOnly  -Users "OneDrive eDiscovery Managers" -Filters "Site_Path -like 'https://contoso-my.sharepoint.com/personal*'" -Action Search
```

> [!NOTE]
> To restrict users to searching specific sites, use the filter  `Site_Path`, as shown in the previous example. Using  `Site_Site` will not work. 
  
This example restricts the user to performing all Content Search actions only on email messages sent during the calendar year 2015.

```powershell
New-ComplianceSecurityFilter -FilterName EmailDateRestrictionFilter -Users donh@contoso.com -Filters "MailboxContent_Received -ge '01-01-2015' -and MailboxContent_Received -le '12-31-2015'" -Action All
```

Similar to the previous example, this example restricts the user to performing all Content Search actions on documents that were last changed sometime in the calendar year 2015.

```powershell
New-ComplianceSecurityFilter -FilterName DocumentDateRestrictionFilter -Users donh@contoso.com -Filters "SiteContent_LastModifiedTime -ge '01-01-2015' -and SiteContent_LastModifiedTime -le '12-31-2015'" -Action All
```

This example prevents members of the "OneDrive Discovery Managers" role group from performing content search actions on any mailbox in the organization. 

```powershell
New-ComplianceSecurityFilter -FilterName NoEXO -Users "OneDrive Discovery Managers" -Filters "Mailbox_Alias -notlike '*'"  -Action All
```

This example prevents anyone in the organization from searching for email messages that were sent or received by janets or sarad.

```powershell
New-ComplianceSecurityFilter -FilterName NoSaraJanet -Users All -Filters "MailboxContent_Participants -notlike 'janets@contoso.onmicrosoft.com' -and MailboxContent_Participants -notlike 'sarad@contoso.onmicrosoft.com'" -Action Search
```

This example uses a filters list to combine mailbox and site_path filters.

```powershell
New-ComplianceSecurityFilter -FilterName "Coho Winery Security Filter" -Users "Coho Winery eDiscovery Managers", "Coho Winery Investigators" -Filters "Mailbox_Department -eq 'CohoWinery'", "Site_Path -like 'https://contoso.sharepoint.com/sites/CohoWinery*'" -Action ALL
```


## Get-ComplianceSecurityFilter

The **Get-ComplianceSecurityFilter** is used to return a list of search permissions filters. Use the  _FilterName_ parameter to return information for a specific search filter. 
  
## Set-ComplianceSecurityFilter

The **Set-ComplianceSecurityFilter** is used to modify an existing search permissions filter. The only required parameter is  _FilterName_. 
  
| Parameter | Description |
|:-----|:-----|
| _Action_| The  _Action_ parameter specifies that type of search action that the filter is applied to. The possible Content Search actions are: <br/><br/> **Export:** The filter is applied when exporting search results.  <br/> **Preview:** The filter is applied when previewing search results.  <br/> **Purge:** The filter is applied when purging search results.  <br/> **Search:** The filter is applied when running a search.  <br/> **All:** The filter is applied to all search actions.  <br/> |
| _FilterName_|The  _FilterName_ parameter specifies the name of the permissions filter. |
| _Filters_| The  _Filters_ parameter specifies the search criteria for the compliance security filter. You can create two different types of filters: <br/><br/>**Mailbox and OneDrive filtering:** This type of filter specifies the mailboxes and Onedrives the assigned users (specified by the  _Users_ parameter) can search. The syntax for this type of filter is **Mailbox_** _MailboxPropertyName_, where  _MailboxPropertyName_ specifies a mailbox property used to scope the mailboxes that can be searched. For example, the mailbox filter  `"Mailbox_CustomAttribute10 -eq 'OttawaUsers'"` would allow the user assigned this filter to search only the mailboxes that have the value "OttawaUsers" in the CustomAttribute10 property.  Any supported filterable recipient property can be used for the  _MailboxPropertyName_ property. For a list of supported properties, see [Filterable properties for the -RecipientFilter parameter](/powershell/exchange/recipientfilter-properties). <br/><br/>**Mailbox content filtering:** This type of filter is applied on the content that can be searched. It specifies the mailbox content the assigned users can search for. The syntax for this type of filter is **MailboxContent_** _SearchablePropertyName:value_, where  _SearchablePropertyName_ specifies a Keyword Query Language (KQL) property that can be specified in a Content Search. For example, the mailbox content filter  `MailboxContent_recipients:contoso.com` would allow the user assigned this filter to only search for messages sent to recipients in the contoso.com domain.  For a list of searchable message properties, see [Keyword queries for Content Search](keyword-queries-and-search-conditions.md). <br/><br/>**Site and site content filtering:** There are two SharePoint and OneDrive for Business site-related filters that you can use to specify what site or site content the assigned users can search: <br/><br/>- **Site_** *SearchableSiteProperty* <br/>- **SiteContent**_*SearchableSiteProperty*<br/><br/>These two filters are interchangeable. For example,  `"Site_Path -like 'https://contoso.spoppe.com/sites/doctors*'"` and  `"SiteContent_Path -like 'https://contoso.spoppe.com/sites/doctors*'"` returns the same results. But to help you identify what a filter does, you can use  `Site_` to specify site-related properties (such as a site URL) and  `SiteContent_` to specify content-related properties (such as document types. For example, the filter  `"Site_Path -like 'https://contoso.spoppe.com/sites/doctors*'"` would allow the user assigned this filter to only search for content in the https://contoso.spoppe.com/sites/doctors site collection. The filter  `"SiteContent_FileExtension -eq 'docx'"` would allow the user assigned this filter to only search for Word documents (Word 2007 and later).  <br/><br/>For a list of searchable site properties, see [Overview of crawled and managed properties in SharePoint](/SharePoint/technical-reference/crawled-and-managed-properties-overview). Properties marked with a **Yes** in the **Queryable** column can be used to create a site or site content filter. <br/><br/>          |
| _Users_|The  _Users_ parameter specifies the users who get this filter applied to their Content Searches. Because this is a multi-value property, specifying a user or group of users with this parameter overwrite the existing list of users. See the following examples for the syntax to add and remove selected users. <br/><br/>You can also use the  _Users_ parameter to specify a Security & Compliance Center role group. This lets you create a custom role group and then assign that role group a search permissions filter. For example, let's say you have a custom role group for eDiscovery managers for the U.S. subsidiary of a multi-national corporation. You can use the  _Users_ parameter to specify this role group (by using the Name property of the role group) and then use the  _Filter_ parameter to allow only mailboxes in the U.S. to be searched. <br/><br/>You can't specify distribution groups with this parameter. |

## Examples of changing search permissions filters

These examples show how to use the **Get-ComplianceSecurityFilter** and **Set-ComplianceSecurityFilter** cmdlets to add or remove a user to the existing list of users that the filter is assigned to. When you add or remove users from a filter, specify the user by using their SMTP address. 
  
This example adds a user to the filter.

```powershell
$filterusers = Get-ComplianceSecurityFilter -FilterName OttawaUsersFilter
```

```powershell
$filterusers.users.add("pilarp@contoso.com")
```

```powershell
Set-ComplianceSecurityFilter -FilterName OttawaUsersFilter -Users $filterusers.users
```

This example removes a user from the filter.

```powershell
$filterusers = Get-ComplianceSecurityFilter -FilterName OttawaUsersFilter
```

```powershell
$filterusers.users.remove("annb@contoso.com")
```

```powershell
Set-ComplianceSecurityFilter -FilterName OttawaUsersFilter -Users $filterusers.users
```

## Remove-ComplianceSecurityFilter

The **Remove-ComplianceSecurityFilter** is used to delete a search filter. Use the  _FilterName_ parameter to specify the filter you want to delete. 
  
## More information

- **How does search permissions filtering work?** The permissions filter is added to the search query when a Content Search is run. The permissions filter is joined to the search query by the **AND** Boolean operator. For example, you have a permissions filter that allows Bob to perform all search actions on the mailboxes of members of the Workers distribution group. Then Bob runs a Content Search on all mailboxes in the organization with the search query  `sender:jerry@adatum.com`. Because the permissions filter and the search query are logically combined by an **AND** operator, the search returns any message sent by jerry@adatum.com to any member of the Workers distribution group. 
    
- **What happens if you have multiple search permissions filters?** In a Content Search query, multiple permissions filters are combined by **OR** Boolean operators. So results will be returned if any of the filters are true. In a Content Search, all filters (combined by **OR** operators) are then combined with the search query by the **AND** operator. Let's take the previous example, where a search filter allows Bob to search only the mailboxes of the members of the Workers distribution group. Then we create another filter that prevents Bob from searching Phil's mailbox ("Mailbox_Alias -ne 'Phil'"). And let's also assume that Phil is a member of the Workers group. When Bob runs a Content Search (from the previous example) on all mailboxes in the organization, search results are returned for Phil's mailbox even though you applied filter to prevent Bob from searching Phil's mailbox. This is because the first filter, which allows Bob to search the Workers group, is true. And because Phil is a member of the Workers group, Bob can search Phil's mailbox. 
    
- **Does search permissions filtering work for inactive mailboxes?** Yes, you can use mailbox and mailbox content filters to limit who can search inactive mailboxes in your organization. Like a regular mailbox, an inactive mailbox has to be configured with the recipient property that's used to create a permissions filter. If necessary, you can use the **Get-Mailbox -InactiveMailboxOnly** command to display the properties of inactive mailboxes. For more information, see [Create and manage inactive mailboxes in Office 365](create-and-manage-inactive-mailboxes.md).
    
- **Does search permissions filtering work for public folders?** No. As previously explained, search permissions filtering can't be used to limit who can search public folders in Exchange. For example, items in public folder locations can't be excluded from the search results by a permissions filter. 

- **Does allowing a user to search all content locations in a specific service also prevent them from searching content locations in a different service?** No. As previously explained, you have to create a search permissions filter to explicitly prevent users from searching content locations in a specific service (such as preventing a user from searching any Exchange mailbox or any SharePoint site). In other words, creating a search permissions filter that allows a user to search all SharePoint sites in the organization doesn't prevent that user from searching mailboxes. For example, to allow SharePoint admins to only search SharePoint sites, you have to create a filter that prevents them from searching mailboxes. Similarly, to allow Exchange admins to only search mailboxes, you have to create a filter that prevents them from searching sites.

- **Do search permissions filters count against search query character limits?** Yes. Search permissions filters count against the character limit for search queries. For more information, see [Limits in Advanced eDiscovery](limits-ediscovery20.md).

