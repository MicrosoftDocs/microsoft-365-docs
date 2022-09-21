---
title: "Configure permissions filtering for eDiscovery"
description: "Use search permissions filtering to let eDiscovery managers search only a subset of mailboxes and sites in your organization."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery
search.appverid:
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
---

# Configure permissions filtering for eDiscovery

You can use search permissions filtering to let an eDiscovery manager search only a subset of mailboxes and sites in your organization. You can also use permissions filtering to let that same eDiscovery manager search only for mailbox or site content that meets a specific search criteria. For example, you might let an eDiscovery manager search only the mailboxes of users in a specific location or department. You do this by creating a filter that uses a supported recipient filter to limit which mailboxes a specific user or group of users can search. You can also create a filter that specifies what mailbox content a user can search for. This is done by creating a filter that uses a searchable message property. Similarly, you can let an eDiscovery manager search only specific SharePoint sites in your organization. You do this by creating a filter that limits which site can be searched. You can also create a filter that specifies what site content can be searched. This is done by creating a filter that uses a searchable site property.

Search permissions filters are applied when you search for content using Content search, Microsoft Purview eDiscovery (Standard), and Microsoft Purview eDiscovery (Premium) in the Microsoft Purview compliance portal. When a search permissions filter is applied to a specific user, that user can perform the following search-related actions:

- Search for content
- Preview search results
- Export search results
- Purge items returned by a search

You can also use search permissions filtering to create logical boundaries (called _compliance boundaries_) within an organization that control the user content locations (such as mailboxes, SharePoint sites, and OneDrive accounts) that specific eDiscovery managers can search. For more information, see [Set up compliance boundaries for eDiscovery investigations](set-up-compliance-boundaries.md).

The following four cmdlets in Security & Compliance PowerShell let you configure and manage search permissions filters:

- [New-ComplianceSecurityFilter](#new-compliancesecurityfilter)
- [Get-ComplianceSecurityFilter](#get-compliancesecurityfilter)
- [Set-ComplianceSecurityFilter](#set-compliancesecurityfilter)
- [Remove-ComplianceSecurityFilter](#remove-compliancesecurityfilter)

## Requirements to configure permissions filtering

- To run the compliance security filter cmdlets, you have to be a member of the Organization Management role group in the compliance portal. For more information, see [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).

- You have to connect to both Exchange Online and Security & Compliance PowerShell to use the compliance security filter cmdlets. This is necessary because these cmdlets require access to mailbox properties, which is why you have to connect to Exchange Online PowerShell. See the steps in the next section.

- See the [More information](#more-information) section for additional information about search permissions filters.

- Search permissions filtering is applicable to inactive mailboxes, which means you can use mailbox and mailbox content filtering to limit who can search an inactive mailbox. See the [More information](#more-information) section for additional information about permissions filtering and inactive mailboxes.

- Search permissions filtering can't be used to limit who can search public folders in Exchange.

- There is no limit to the number of search permissions filters that can be created in an organization. However, a search query can have a maximum of 100 conditions. In this case, a condition is defined as something that's connected to the query by a Boolean operator (such as **AND**, **OR**, and **NEAR**). The limit for the number of conditions includes the search query itself plus all search permissions filters that are applied to the user who runs the search. Therefore, the more search permissions filters you have (especially if these filters are applied to the same user or group of users), the better the chance of exceeding the maximum number of conditions for a search. To prevent your organization from reaching the conditions limit, keep the number of search permissions filters in your organization to few as possible to meet your business requirements. For more information, see [Set up compliance boundaries for eDiscovery investigations](set-up-compliance-boundaries.md#frequently-asked-questions).

## Connect to Exchange Online and Security & Compliance PowerShell in a single session

Before you can successfully run the script in this section, you have to download and install the Exchange Online PowerShell module. For information, see [Install and maintain the Exchange Online Powershell module](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exchange-online-powershell-module).

1. Save the following text to a Windows PowerShell script file by using a filename suffix of **.ps1**. For example, you could save it to a file named **ConnectEXO-SCC.ps1**.

    ```powershell
    Import-Module ExchangeOnlineManagement
    $UserCredential = Get-Credential
    Connect-ExchangeOnline -Credential $UserCredential -ShowBanner:$false
    Connect-IPPSSession -Credential $UserCredential
    $Host.UI.RawUI.WindowTitle = $UserCredential.UserName + " (Exchange Online + Security & Compliance)"
    ```

2. On your local computer, open Windows PowerShell, go to the folder where the script that you created in the previous step is located, and then run the script; for example:

    ```powershell
    .\ConnectEXO-SCC.ps1
    ```

How do you know if this worked? After you run the script, cmdlets from Exchange Online PowerShell and Security & Compliance PowerShell are available. If you don't receive any errors, you connected successfully. A quick test is to run Exchange Online PowerShell and Security & Compliance PowerShell cmdlets. For example, you can run and **Get-Mailbox** and **Get-ComplianceSearch**.

For troubleshooting PowerShell connection errors, see:

- [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell#how-do-you-know-this-worked)

- [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell#how-do-you-know-this-worked)

## New-ComplianceSecurityFilter

The **New-ComplianceSecurityFilter** cmdlet is used to create a search permissions filter. Here's the basic syntax for this cmdlet:

```powershell
New-ComplianceSecurityFilter -FilterName <name of filter> -Users <user or role group> -Filters <filter>
```

The following sections describe the parameters for this cmdlet. All parameters are required to create a search permissions filter.

### FilterName

The  _FilterName_ parameter specifies the name of the permissions filter. This name is used to identity a filter when using the **Get-ComplianceSecurityFilter**, **Set-ComplianceSecurityFilter,** and **Remove-ComplianceSecurityFilter** cmdlets.

### Filters

The  _Filters_ parameter specifies the search criteria for the compliance security filter. You can create three different types of filters:

- **Mailbox or OneDrive filtering:** This type of filter specifies the mailboxes and OneDrive accounts the assigned users (specified by the  _Users_ parameter) can search. This type of filter is called a _content location_ filter because it defines the content locations that a user can search. The syntax for this type of filter is **Mailbox_** _MailboxPropertyName_, where  _MailboxPropertyName_ specifies a mailbox property used to scope the mailboxes and OneDrive accounts that can be searched. For example, the mailbox filter  `"Mailbox_CustomAttribute10 -eq 'OttawaUsers'"` would allow the user assigned this filter to search only the mailboxes and OneDrive accounts that have the value "OttawaUsers" in the CustomAttribute10 property.

  Any supported filterable recipient property can be used for the  _MailboxPropertyName_ property in a mailbox or OneDrive filter. The following table list four commonly used recipient properties used to create a mailbox or OneDrive filter. The table also includes an example of using the property in a filter.

  |Property name|Example|
  |---|---|
  |Alias|`"Mailbox_Alias -like 'v-'"`|
  |Company|`"Mailbox_Company -eq 'Contoso'"`|
  |CountryOrRegion|`"Mailbox_CountryOrRegion -eq 'United States'"`|
  |Department|`"Mailbox_Department -eq 'Finance'"`|

- **Mailbox content filtering:** This type of filter is applied on the content that can be searched. This type of filter is called a _content filter_ because it specifies the mailbox content or searchable email properties the assigned users can search for. The syntax for this type of filter is **MailboxContent_**_SearchablePropertyName_, where  _SearchablePropertyName_ specifies a Keyword Query Language (KQL) property that can be specified in a search. For example, the mailbox content filter `"MailboxContent_Recipients  -like 'contoso.com'"` would allow the user assigned this filter to only search for messages sent to recipients in the contoso.com domain. For a list of searchable email properties, see [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md#searchable-email-properties).

  > [!IMPORTANT]
  > A single search filter can't contain a mailbox filter and a mailbox content filter. To combine these in a single filter, you have to use a [filters list](#using-a-filters-list-to-combine-filter-types).  But a filter can contain a more complex query of the same type. For example, `"Mailbox_CustomAttribute10 -eq 'FTE' -and Mailbox_MemberOfGroup -eq '$($DG.DistinguishedName)'"`

- **Site and site content filtering:** There are two SharePoint- and OneDrive-related filters that you can use to specify what site or site content the assigned users can search.

  - **Site_**_SearchableSiteProperty_

  - **SiteContent_**_SearchableSiteProperty_

   These two filters are interchangeable. For example, `"Site_Path -like 'https://contoso.sharepoint.com/sites/doctors'"` and  `"SiteContent_Path -like 'https://contoso.sharepoint.com/sites/doctors'"` return the same results. For a list of searchable site properties, see [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md#searchable-site-properties)  For a more complete list, see [Overview of crawled and managed properties in SharePoint](/SharePoint/technical-reference/crawled-and-managed-properties-overview). Properties marked with a **Yes** in the **Queryable** column can be used to create a site or site content filter.

  > [!IMPORTANT]
  > Setting up a site filter with one of the supported properties doesn't mean the site property in the filter will propagate to all documents on that site. This means the user is still responsible for populating the specific property fields associated with the documents on that site in order for the site filter to work and capture the right content. For example, if the user has a security filter "Site_RefineableString00 -eq 'abc'" applied and then the user runs a search using keyword query "xyz". The security filter gets appended to the query and the actual query running would be "xyz **AND RefineableString0:'abc'**". The user needs to ensure that documents on the site indeed have values in the RefineableString00 field as"abc". If not, the search query won't return any results.

Keep the following considerations in mind when configuring the _Filters_ parameter for search permissions filters:

- Unlike mailboxes, there isn't a content location filter for sites even though the _Site_ filter looks like a location filter. All filters for SharePoint and OneDrive are content filters (which is also why _Site\__ and _SiteContent\__ filters are interchangeable) because site-related properties like _Path_ are stamped directly on the documents. Why is this? It's a result of the way that SharePoint is designed. In SharePoint, there isn't a "site object" with properties, like there is with Exchange mailboxes. Therefore, the _Path_ property is stamped on the document and contains the URL of the site where the document is located. This is why a _Site_ filter is considered a content filter and not a content location filter.

- You have to create a search permissions filter to explicitly prevent users from searching content locations in a specific service (such as preventing a user from searching any Exchange mailbox or any SharePoint site). In other words, creating a search permissions filter that allows a user to search all SharePoint sites in the organization doesn't prevent that user from searching mailboxes. For example, to allow SharePoint admins to only search SharePoint sites, you have to create a filter that prevents them from searching mailboxes. Similarly, to allow Exchange admins to only search mailboxes, you have to create a filter that prevents them from searching sites.

### Users

The  _Users_ parameter specifies the users who get this filter applied to their searches. Identify users by their alias or primary SMTP address. You can specify multiple values separated by commas, or you can assign the filter to all users by using the value **All**.

You can also use the  _Users_ parameter to specify a compliance portal role group. This lets you create a custom role group and then assign that role group a search permissions filter. For example, let's say you have a custom role group for eDiscovery managers for the U.S. subsidiary of a multi-national corporation. You can use the  _Users_ parameter to specify this role group (by using the Name property of the role group) and then use the  _Filter_ parameter to allow only mailboxes in the U.S. to be searched. You can't specify distribution groups with this parameter.|

### Using a filters list to combine filter types

A _filters list_ is a filter that includes a mailbox filter and a site filter separated by a comma. This comma also functions as an **OR** operator. Using a filters list is the only supported method for combining different types of filters. In the following example, notice that a comma separates the **Mailbox** and **Site** filters:

```powershell
-Filters "Mailbox_CustomAttribute10 -eq 'OttawaUsers'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/doctors'"
```

When a filter that contains a filters list is processed during the running of a search, two search permissions filters are created from the filters list: One for each filter that's separated by a comma. So in the previous example, one mailbox search permissions filter and one site search permissions filter would be created. These filters are connected by the **OR** operator.

An alternative to using a filters list would be to create two separate search permissions filters. So in the previous example, you'd create one filter for the mailbox attribute and one filter for the site attribute. In either case, the results are the same. Using a filters list or creating separate search permissions filters is a matter of preference.

Keep the following things in mind about using a filters list:

- You have to use a filters list to create a filter that includes a **Mailbox** filter and a **MailboxContent** filter.

- Each component of a filters list can contain a complex filter syntax. For example, the mailbox and site filters can contain multiple filters separated by an **-or** operator:

   ```powershell
   -Filters "Mailbox_Department -eq 'CohoWinery' -or Mailbox_CustomAttribute10 -eq 'CohoUsers'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/CohoWinery*'"
   ```

## Examples of creating search permissions filters

Here are examples of using the **New-ComplianceSecurityFilter** cmdlet to create a search permissions filter.

This example allows members of the "US Discovery Managers" role group to search only the mailboxes and OneDrive accounts in the United States.

```powershell
New-ComplianceSecurityFilter -FilterName USDiscoveryManagers  -Users "US Discovery Managers" -Filters "Mailbox_CountryOrRegion  -eq 'United States'"
```

This example allows the user annb@contoso.com to perform search actions only for mailboxes and OneDrive accounts in Canada. This filter contains the three-digit numeric country code for Canada from ISO 3166-1.

```powershell
New-ComplianceSecurityFilter -FilterName CountryFilter  -Users annb@contoso.com -Filters "Mailbox_CountryCode  -eq '124'"
```

This example allows the users donh and suzanf to search only the mailboxes and OneDrive accounts that have the value 'Marketing' for the CustomAttribute1 mailbox property.

```powershell
New-ComplianceSecurityFilter -FilterName MarketingFilter  -Users donh,suzanf -Filters "Mailbox_CustomAttribute1  -eq 'Marketing'"
```

This example allows members of the "Fourth Coffee eDiscovery Managers" role group to search only the mailboxes and OneDrive accounts that have the value 'FourthCoffee' for the Department mailbox property. The filter also allows the role group members to search for documents in the Fourth Coffee SharePoint site.

```powershell
New-ComplianceSecurityFilter -FilterName "Fourth Coffee Security Filter" -Users "Fourth Coffee eDiscovery Managers", "Fourth Coffee Investigators" -Filters "Mailbox_Department -eq 'FourthCoffee'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/FourthCoffee' -or SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'"
```

> [!NOTE]
> In the previous example, an additional site content filter (`SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'`) has to be included so that role group members can search for documents in OneDrive accounts. If this filter isn't included, the the filter would only allow role group members to search for documents located in `https://contoso.sharepoint.com/sites/FourthCoffee`.

This example allows members of the eDiscovery Manager role group to search only the mailboxes and OneDrive accounts of members of the Ottawa Users distribution group. The Get-DistributionGroup cmdlet in Exchange Online PowerShell is used to find the members of the Ottawa Users group.

```powershell
$DG = Get-DistributionGroup "Ottawa Users"
```

```powershell
New-ComplianceSecurityFilter -FilterName DGFilter  -Users eDiscoveryManager -Filters "Mailbox_MemberOfGroup -eq '$($DG.DistinguishedName)'"
```

This example prevents any user from performing search actions on the mailboxes and OneDrive accounts of members of the Executive Team distribution group. That means users can delete content from these mailboxes. The Get-DistributionGroup cmdlet in Exchange Online PowerShell is used to find the members of the Executive Team group.

```powershell
$DG = Get-DistributionGroup "Executive Team"
```

```powershell
New-ComplianceSecurityFilter -FilterName NoExecutivesPreview  -Users All -Filters "Mailbox_MemberOfGroup -ne '$($DG.DistinguishedName)'"
```

This example allows members of the OneDrive eDiscovery Managers custom role group to only search for content in OneDrive accounts in the organization.

```powershell
New-ComplianceSecurityFilter -FilterName OneDriveOnly  -Users "OneDrive eDiscovery Managers" -Filters "SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'"
```

This example restricts the user to performing search actions only on email messages sent during the calendar year 2015.

```powershell
New-ComplianceSecurityFilter -FilterName EmailDateRestrictionFilter -Users donh@contoso.com -Filters "MailboxContent_Received -ge '01-01-2015' -and MailboxContent_Received -le '12-31-2015'"
```

Similar to the previous example, this example restricts the user to performing search actions only on documents that were last changed sometime in the calendar year 2015.

```powershell
New-ComplianceSecurityFilter -FilterName DocumentDateRestrictionFilter -Users donh@contoso.com -Filters "SiteContent_LastModifiedTime -ge '01-01-2015' -and SiteContent_LastModifiedTime -le '12-31-2015'"
```

This example prevents members of the "OneDrive Discovery Managers" role group from performing search actions on any mailbox in the organization.

```powershell
New-ComplianceSecurityFilter -FilterName NoEXO -Users "OneDrive Discovery Managers" -Filters "Mailbox_Alias -notlike '*'"
```

This example prevents anyone in the organization from performing search actions on email messages that were sent or received by janets or sarad.

```powershell
New-ComplianceSecurityFilter -FilterName NoSaraJanet -Users All -Filters "MailboxContent_Participants -notlike 'janets@contoso.onmicrosoft.com' -and MailboxContent_Participants -notlike 'sarad@contoso.onmicrosoft.com'"
```

This example uses a filters list to combine mailbox and site filters. In this example, the mailbox filter is a content location filter and the site filter is a content filter.

```powershell
New-ComplianceSecurityFilter -FilterName "Coho Winery Security Filter" -Users "Coho Winery eDiscovery Managers", "Coho Winery Investigators" -Filters "Mailbox_Department -eq 'CohoWinery'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/CohoWinery'"
```

## Get-ComplianceSecurityFilter

The **Get-ComplianceSecurityFilter** is used to return a list of search permissions filters. Use the  _FilterName_ parameter to return information for a specific search filter.

## Set-ComplianceSecurityFilter

The **Set-ComplianceSecurityFilter** is used to modify an existing search permissions filter. The following sections describe the parameters for this cmdlet. The only required parameter is  _FilterName_.

### FilterName

The  _FilterName_ parameter specifies the name of the permissions filter.

### Users

The  _Users_ parameter specifies the users who get this filter applied to their searches. Because this is a multi-value property, specifying a user or group of users with this parameter overwrite the existing list of users. See the following examples for the syntax to add and remove selected users.

You can also use the  _Users_ parameter to specify a compliance portal role group. This lets you create a custom role group and then assign that role group a search permissions filter. For example, let's say you have a custom role group for eDiscovery managers for the U.S. subsidiary of a multi-national corporation. You can use the  _Users_ parameter to specify this role group (by using the Name property of the role group) and then use the  _Filter_ parameter to allow only mailboxes in the U.S. to be searched. You can't specify distribution groups with this parameter.

### Filters

The  _Filters_ parameter specifies the search criteria for the compliance security filter. You can create three different types of filters:

- **Mailbox and OneDrive filtering:** This type of filter specifies the mailboxes and OneDrive accounts the assigned users (specified by the  _Users_ parameter) can search. The syntax for this type of filter is **Mailbox_** _MailboxPropertyName_, where  _MailboxPropertyName_ specifies a mailbox property used to scope the mailboxes that can be searched. For example, the mailbox filter  `"Mailbox_CustomAttribute10 -eq 'OttawaUsers'"` would allow the user assigned this filter to search only the mailboxes that have the value "OttawaUsers" in the CustomAttribute10 property.  Any supported filterable recipient property can be used for the  _MailboxPropertyName_ property. For a list of supported properties, see [Filterable properties for the -RecipientFilter parameter](/powershell/exchange/recipientfilter-properties).

- **Mailbox content filtering:** This type of filter is applied on the content that can be searched. It specifies the mailbox content the assigned users can search for. The syntax for this type of filter is **MailboxContent_**_SearchablePropertyName_, where  _SearchablePropertyName_ specifies a Keyword Query Language (KQL) property that can be specified in a search. For example, the mailbox content filter `"MailboxContent_Recipients  -like 'contoso.com'"` would allow the user assigned this filter to only search for messages sent to recipients in the contoso.com domain.  For a list of searchable email properties, see [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md).

- **Site and site content filtering:** There are two SharePoint and OneDrive for Business site-related filters that you can use to specify what site or site content the assigned users can search:

  - **Site\_** _SearchableSiteProperty_
  - **SiteContent\_**_SearchableSiteProperty_

  These two filters are interchangeable. For example, `"Site_Path -like 'https://contoso.spoppe.com/sites/doctors*'"` and  `"SiteContent_Path -like 'https://contoso.spoppe.com/sites/doctors*'"` return the same results. For a list of searchable site properties, see [Overview of crawled and managed properties in SharePoint](/SharePoint/technical-reference/crawled-and-managed-properties-overview). Properties marked with a **Yes** in the **Queryable** column can be used to create a site or site content filter.

### Examples of changing search permissions filters

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

- **How does search permissions filtering work?** The permissions filter is appended to the search query when a search is run. The permissions filter is joined to the search query by the **AND** Boolean operator. The query logic for the search query and the permissions filter would look like this:

  ```text
  <SearchQuery> AND <PermissionsFilter>
  ```

  For example, you have a permissions filter that allows Bob to perform all search actions on the mailboxes of members of the Workers distribution group. Then Bob runs a search on all mailboxes in the organization with the search query  `sender:jerry@adatum.com`. Because the permissions filter and the search query are logically combined by an **AND** operator, the search returns any message sent by jerry@adatum.com to any member of the Workers distribution group.

- **What happens if you have multiple search permissions filters?** In a search query, multiple permissions filters are combined by **OR** Boolean operators. So results will be returned if any of the filters are true. In a search, all filters (combined by **OR** operators) are then combined with the search query by the **AND** operator.

  ```text
  <SearchQuery> AND  (<PermissionsFilter1> OR <PermissionsFilter2> OR <PermissionsFilter3>)
  ```

  Let's take the previous example, where a search filter allows Bob to search only the mailboxes of the members of the Workers distribution group. Then we create another filter that prevents Bob from searching Phil's mailbox ("Mailbox_Alias -ne 'Phil'"). And let's also assume that Phil is a member of the Workers group. When Bob runs a search (from the previous example) on all mailboxes in the organization, search results are returned for Phil's mailbox even though you applied filter to prevent Bob from searching Phil's mailbox. This is because the first filter, which allows Bob to search the Workers group, is true. And because Phil is a member of the Workers group, Bob can search Phil's mailbox.

- **Does search permissions filtering work for inactive mailboxes?** Yes, you can use mailbox and mailbox content filters to limit who can search inactive mailboxes in your organization. Like a regular mailbox, an inactive mailbox has to be configured with the recipient property that's used to create a permissions filter. If necessary, you can use the **Get-Mailbox -InactiveMailboxOnly** command to display the properties of inactive mailboxes. For more information, see [Create and manage inactive mailboxes](create-and-manage-inactive-mailboxes.md).

- **Does search permissions filtering work for public folders?** No. As previously explained, search permissions filtering can't be used to limit who can search public folders in Exchange. For example, items in public folder locations can't be excluded from the search results by a permissions filter.

- **Does allowing a user to search all content locations in a specific service also prevent them from searching content locations in a different service?** No. As previously explained, you have to create a search permissions filter to explicitly prevent users from searching content locations in a specific service (such as preventing a user from searching any Exchange mailbox or any SharePoint site). In other words, creating a search permissions filter that allows a user to search all SharePoint sites in the organization doesn't prevent that user from searching mailboxes. For example, to allow SharePoint admins to only search SharePoint sites, you have to create a filter that prevents them from searching mailboxes. Similarly, to allow Exchange admins to only search mailboxes, you have to create a filter that prevents them from searching sites.

- **Do search permissions filters count against search query character limits?** Yes. Search permissions filters count against the character limit for search queries. For more information, see [Limits in eDiscovery (Premium)](limits-ediscovery20.md).

**What is the maximum number of search permissions filters that can be created in an organization?**

There is no limit to the number of search permissions filters that can be created in an organization. However, a search query can have a maximum of 100 conditions. In this case, a condition is defined as something that's connected to the query by a Boolean operator (such as **AND**, **OR**, and **NEAR**). The limit of the number of conditions includes the search query itself plus all search permissions filters that are applied to the user who runs the search. Therefore, the more search permissions filters you have (especially if these filters are applied to the same user or group of users), the better the chance of exceeding the maximum number of conditions for a search.

To understand how this limit works, you need to understand that a search permissions filter is appended to the search query when a search is run. A search permissions filter is joined to the search query by the **AND** Boolean operator. The query logic for the search query and a single search permissions filter would look like this:

```text
<SearchQuery> AND <PermissionsFilter>
```

Multiple search permissions filters are combined together by the **OR** Boolean operator, and then those conditions are connected to the search query by the **AND** operator.

The query logic for the search query and multiple search permissions filters would look like this:

```text
<SearchQuery> AND (<PermissionsFilter1> OR <PermissionsFilter2> OR <PermissionsFilter3>...)
```

It's possible the search query itself may consist of multiple conditions connected by Boolean operators. Each condition in the search query would also count against the 100-condition limit.

Also, the number of search permissions filters appended to a query depends on the user who is running the search. When a specific user runs a search, the search permissions filters that are applied to the user (which is defined by the _Users_ parameter in the filter) are appended to the query. Your organization could have hundreds of search permissions filters, but if more than 100 filters are applied to the same users, then it's likely the 100-condition limit will be exceeded when those users run searches.

There's one more thing to keep in mind about the condition limit. The number of specific SharePoint sites that are included in the search query or search permissions filters also count against this limit.

To prevent your organization from reaching the conditions limit, keep the number of search permissions filters in your organization to few as possible to meet your business requirements.