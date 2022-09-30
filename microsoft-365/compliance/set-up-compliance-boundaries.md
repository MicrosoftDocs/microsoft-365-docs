---
title: "Set up compliance boundaries for eDiscovery investigations"
description: "Learn how to use compliance boundaries to create logical boundaries that control the user content locations that an eDiscovery manager can search in Microsoft 365."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
---

# Set up compliance boundaries for eDiscovery investigations

The guidance in this article can be applied when using either Microsoft Purview eDiscovery (Standard) or Microsoft Purview eDiscovery (Premium) to manage investigations.

Compliance boundaries create logical boundaries within an organization that control the user content locations (such as mailboxes, OneDrive accounts, and SharePoint sites) that eDiscovery managers can search. Also, compliance boundaries control who can access eDiscovery cases used to manage the legal, human resources, or other investigations within your organization. The need for compliance boundaries is often necessary for multi-national corporations that have to respect geographical boarders and regulations and for governments, which are often divided into different agencies. In Microsoft 365, compliance boundaries help you meet these requirements when performing content searches and managing investigations with eDiscovery cases.
  
We use the example in the following illustration to explain how compliance boundaries work.
  
![Compliance boundaries consist of search permissions filters that control access to agencies and admin role groups that control access to eDiscovery cases.](../media/M365_ComplianceBoundary_OrgChart_v2.png)
  
In this example, Contoso LTD is an organization that consists of two subsidiaries, Fourth Coffee and Coho Winery. The business requires that eDiscovery managers and investigators can only search the Exchange mailboxes, OneDrive accounts, and SharePoint sites in their agency. Also, eDiscovery managers and investigators can only see eDiscovery cases in their agency, and they can only access the cases that they're a member of. Additionally in this scenario, investigators cannot place content locations on hold or export content from a case. Here's how compliance boundaries meet these requirements.
  
- The search permissions filtering functionality for eDiscovery controls the content locations that eDiscovery managers and investigators can search. This means eDiscovery managers and investigators in the Fourth Coffee agency can only search content locations in the Fourth Coffee subsidiary. The same restriction applies to the Coho Winery subsidiary.

- [Role groups](assign-ediscovery-permissions.md#rbac-roles-related-to-ediscovery) provide the following functions for compliance boundaries:

  - Control who can see the eDiscovery cases in the Microsoft Purview compliance portal. This means that eDiscovery managers and investigators can only see the eDiscovery cases in their agency.

  - Control who can assign members to an eDiscovery case. This means eDiscovery managers and investigators can only assign members to cases that they themselves are a member of.

  - Control the eDiscovery-related tasks that members can perform by adding or removing roles that assign specific permissions.

- When a search permissions filter is applied to a role group, members of the role group can perform the following search-related actions as long as the permissions to perform an action is assigned to the role group:

  - Search for content

  - Preview search results

  - Export search results

  - Purge items returned by a search

Here's the process for setting up compliance boundaries:
  
[Step 1: Identify a user attribute to define your agencies](#step-1-identify-a-user-attribute-to-define-your-agencies)

[Step 2: Create a role group for each agency](#step-2-create-a-role-group-for-each-agency)

[Step 3: Create a search permissions filter to enforce the compliance boundary](#step-3-create-a-search-permissions-filter-to-enforce-the-compliance-boundary)

[Step 4: Create an eDiscovery case for an intra-agency investigations](#step-4-create-an-ediscovery-case-for-intra-agency-investigations)

## Before you set up compliance boundaries

- Users must be assigned an Exchange Online license. To verify this, use the [Get-User](/powershell/module/exchange/get-user) cmdlet in Exchange Online PowerShell.

## Step 1: Identify a user attribute to define your agencies

The first step is to choose an attribute to use that will define your agencies. This attribute is used to create the search permissions filter that limits an eDiscovery manager to search only the content locations of users who are assigned a specific value for this attribute. For example, let's say Contoso decides to use the **Department** attribute. The value for this attribute for users in the Fourth Coffee subsidiary would be  `FourthCoffee`  and the value for users in Coho Winery subsidiary would be `CohoWinery`. In Step 3, you use this  `attribute:value`  pair (for example, *Department:FourthCoffee*) to limit the user content locations that eDiscovery managers can search. 
  
Here are some examples of user attributes that you can use for compliance boundaries:
  
- Company

- CustomAttribute1 - CustomAttribute15

- Department

- Office

- CountryOrRegion (Two-letter country code)

For a complete list, see the full list of supported [mailbox filters](/powershell/exchange/recipientfilter-properties#filterable-recipient-properties).

## Step 2: Create a role group for each agency

The next step is to create the role groups in the compliance portal that will align with your agencies. We recommend that you create a role group by copying the built-in eDiscovery Managers group, adding the appropriate members, and removing roles that may not be applicable to your needs. For more information about eDiscovery-related roles, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).
  
To create the role groups, go to the **Permissions** page in the compliance portal and create a role group for each team in each agency that will use compliance boundaries and eDiscovery cases to manage investigations.
  
Using the Contoso compliance boundaries scenario, four role groups need to be created and the appropriate members added to each one.
  
- Fourth Coffee eDiscovery Managers

- Fourth Coffee Investigators

- Coho Winery eDiscovery Managers

- Coho Winery Investigators
  
To meet the requirements of the Contoso compliance boundaries scenario, you would also remove the **Hold** and **Export** roles from the investigators role groups to prevent investigators from placing holds on content locations and exporting content from a case.

> [!IMPORTANT]
> If a role is added or removed from a role group that you've added as a member of a case, then the role group will be automatically removed as a member of the case (or any case the role group is a member of). The reason for this is to protect your organization from inadvertently providing additional permissions to members of a case. Similarly, if a role group is deleted, it will be removed from all cases it was a member of.

## Step 3: Create a search permissions filter to enforce the compliance boundary

After you've created role groups for each agency, the next step is to create the search permissions filters that associate each role group to its specific agency and defines the compliance boundary itself. You need to create one search permissions filter for each agency. For more information about creating security permissions filters, see [Configure permissions filtering for Content Search](permissions-filtering-for-content-search.md).
  
Here's the syntax that's used to create a search permissions filter used for compliance boundaries for the scenario in this article.

```powershell
New-ComplianceSecurityFilter -FilterName <name of filter> -Users <role groups> -Filters "Mailbox_<MailboxPropertyName>  -eq '<Value> '", "SiteContent_Path -like '<SharePointURL>' -or SiteContent_Path -like '<OneDriveURL>'"
```

Here's a description of each parameter in the command:
  
- `FilterName`: Specifies the name of the filter. Use a name that describes or identifies the agency that the filter is used in.

- `Users`: Specifies the users or groups who get this filter applied to the search actions they perform. For compliance boundaries, this parameter specifies the role groups (that you created in Step 2) in the agency that you're creating the filter for. Note this is a multi-value parameter so you can include one or more role groups, separated by commas.

- `Filters`: Specifies the search criteria for the filter. For compliance boundaries, you define the following filters. Each one applies to different content locations.

  - `Mailbox`: Specifies the mailboxes or OneDrive accounts that the role groups defined in the `Users` parameter can search. This filter allows members of the role group to search only the mailboxes or OneDrive accounts in a specific agency; for example, `"Mailbox_Department -eq 'FourthCoffee'"`.

  - `SiteContent`: This filter includes two separate filters. The first `SiteContent_Path` specifies the SharePoint sites in the agency that the role groups defined in the `Users` parameter can search. For example, `SiteContent_Path -like 'https://contoso.sharepoint.com/sites/FourthCoffee'`. The second `SiteContent_Path` filter (connected to the first `SiteContent_Path` filter by the `or` operator) specifies the agency's OneDrive domain (also called the *MySite* domain). For example, `SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'`. You can also use the `Site_Path` filter in place of the `SiteContent` filter. The `Site` and `SiteContent` filters are interchangeable, and don't affect search permissions filters described in this article.

    > [!IMPORTANT]
    > Why is the `SiteContent` filter for OneDrive included in the previous search permissions filter? Although the `Mailbox` filter applies to *both* mailboxes and OneDrive accounts, the inclusion of the SharePoint filter would exclude OneDrive accounts if you didn't also include the OneDrive `Site` filter. If the search permissions filter didn't include a SharePoint filter, then you wouldn't have to include a separate OneDrive filter because the Mailbox filter would include OneDrive accounts in the scope of the compliance boundary. In other words, a search permissions filter with only the `Mailbox` filter would include both mailboxes and OneDrive accounts.

Here are examples of the two search permissions filters that would be created to support the Contoso compliance boundaries scenario. Both of these examples include a comma-separated filters list, in which the mailbox and site filters are included in the same search permissions filter and are separated by a comma.
  
### Fourth Coffee

```powershell
New-ComplianceSecurityFilter -FilterName "Fourth Coffee Security Filter" -Users "Fourth Coffee eDiscovery Managers", "Fourth Coffee Investigators" -Filters "Mailbox_Department -eq 'FourthCoffee'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/FourthCoffee' -or SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'"
```

### Coho Winery

```powershell
New-ComplianceSecurityFilter -FilterName "Coho Winery Security Filter" -Users "Coho Winery eDiscovery Managers", "Coho Winery Investigators" -Filters "Mailbox_Department -eq 'CohoWinery'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/CohoWinery' -or SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'"
```

> [!NOTE]
> The syntax for the `Filters` parameters in the previous examples includes a *filters list*. A filters list is a filter that includes a mailbox filter and a site path filter separated by a comma. In the previous example, notice that a comma separates `Mailbox` and `SiteContent` filters: `-Filters "Mailbox_<MailboxPropertyName>  -eq '<Value> '", "SiteContent_Path -like '<SharePointURL>' -or SiteContent_Path -like '<OneDriveURL>'"`. When this filter is processed during the running of an eDiscovery search, two search permissions filters are created from the filters list: one mailbox filter and one SharePoint/OneDrive filter. An alternative to using a filters list would be to create two separate search permissions filters for each agency: one search permissions filter for the mailbox attribute and one filter for the SharePoint and OneDrive site attributes. In either case, the results will be the same. Using a filters list or creating separate search permissions filters is a matter of preference.

### How do the search permissions filters work in this scenario?

Here's how the search permission filters are applied for each agency in this scenario.

1. The `Mailbox` filter is first applied to define the content locations that eDiscovery managers can search. In this case, Coho Winery eDiscovery managers can only search the mailboxes and OneDrive accounts of users whose *Department* mailbox property has a value of **FourthCoffee**; Coho Winery eDiscovery managers can only search the mailboxes and OneDrive accounts of users  whose *Department* mailbox property has a value of **CohoWinery**. The `Mailbox` filter is a *content location filter*, because it specifies the content locations that eDiscovery managers can search. In both filters, eDiscovery managers can only search content locations with a specific mailbox property value.

2. After the content locations that can be searched are defined, the next part of the filter defines the content that eDiscovery managers can search. The first `SiteContent` filter lets Fourth Coffee eDiscovery managers only search for documents that have a site path property that contains (or starts with) `https://contoso.sharepoint.com/sites/FourthCoffee`; Coho Winery eDiscovery managers can only search documents that have a site path property that contains (or starts with) `https://contoso.sharepoint.com/sites/CohoWinery`. Therefore, the two `SiteContent` filters are *content filters* because they define the content that can be searched for. In both filters, eDiscovery managers can only search for documents with a specific document property value. All SharePoint-related filters are content filters because searchable site properties are stamped on all documents. For more information, see [Configure permissions filtering for eDiscovery](permissions-filtering-for-content-search.md#new-compliancesecurityfilter).

   > [!NOTE]
   > Although the scenario in this article doesn't use them, you can also use mailbox content filters to specify the content that eDiscovery managers can search for. The syntax for mailbox content filters is `"MailboxContent_<property> -<comparison operator> '<value>'"`. You can create content filters based on date ranges, recipients, and domains or any searchable email property. For example, this filter would allow eDiscovery managers to only search for mail items sent or received by users in the contoso.com domain: `"MailboxContent_Participants -like 'contoso.com'"`. For more information about mailbox content filters, see [Configure search permissions filtering](permissions-filtering-for-content-search.md#new-compliancesecurityfilter).

3. The search permissions filter is joined to the search query by the **AND** Boolean operator. That means when an eDiscovery manager in one of the agencies runs an eDiscovery search, the items returned by the search must match the search query and the conditions defined in the search permissions filter.

## Step 4: Create an eDiscovery case for intra-agency investigations

The final step is to create a eDiscovery (Standard) case or eDiscovery (Premium) case in the compliance portal and then add the role group that you created in Step 2 as a member of the case. This results in two important characteristics of using compliance boundaries:
  
- Only members of the role group added to the case will be able to see and access the case in the compliance portal. For example, if the Fourth Coffee Investigators role group is the only member of a case, then members of the Fourth Coffee eDiscovery Managers role group (or members of any other role group) won't be able to see or access the case.

- When a member of the role group assigned to a case runs a search associated with the case, they will only be able to search the content locations within their agency (which is defined by the search permissions filter that you created in Step 3.)

To create a case and assign members:

1. Go to the **eDiscovery (Standard)** or **eDiscovery (Premium)** page in the compliance portal and create a case.

2. In the list of cases, click the name of the case you created.

3. Add role groups as members to the case. For instructions, see the one of the following articles:

   - [Add members to a eDiscovery (Standard) case](get-started-core-ediscovery.md#step-4-optional-add-members-to-a-ediscovery-standard-case)

   - [Add members to an eDiscovery (Premium) case](add-or-remove-members-from-a-case-in-advanced-ediscovery.md)

> [!NOTE]
> When adding a role group to a case, you can only add the role groups that you are a member of.

## Searching and exporting content in Multi-Geo environments

Search permissions filters also let you control where content is routed for export and which datacenter can be searched when searching content locations in a [SharePoint Multi-Geo environment](../enterprise/multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md).
  
- **Export search results:** You can export the search results from Exchange mailboxes, SharePoint sites, and OneDrive accounts from a specific datacenter. This means that you can specify the datacenter location that search results will be exported from.

    Use the *Region* parameter for **New-ComplianceSecurityFilter** or **Set-ComplianceSecurityFilter** cmdlets to create or change which datacenter the export will be routed through.
  
    |**Parameter value**|**Datacenter location**|
    |:-----|:-----|
    |NAM  <br/> |North American (datacenters are in the US)  <br/> |
    |EUR  <br/> |Europe  <br/> |
    |APC  <br/> |Asia Pacific  <br/> |
    |CAN <br/> |Canada|
    |||

- **Route content searches:** You can route the content searches of SharePoint sites and OneDrive accounts to a satellite datacenter. This means you can specify the datacenter location where searches will be run.

    Use one of the following values for the *Region* parameter to control the datacenter location that searches will run in when searching SharePoint sites and OneDrive accounts.
  
    |**Parameter value**|**Datacenter routing locations for SharePoint**|
    |:-----|:-----|
    |NAM  <br/> |US  <br/> |
    |EUR  <br/> |Europe  <br/> |
    |APC  <br/> |Asia Pacific  <br/> |
    |CAN  <br/> |US  <br/> |
    |AUS  <br/> |Asia Pacific  <br/> |
    |KOR  <br/> |The organization's default datacenter  <br/> |
    |GBR  <br/> |Europe  <br/> |
    |JPN  <br/> |Asia Pacific  <br/> |
    |IND  <br/> |Asia Pacific  <br/> |
    |LAM  <br/> |US  <br/> |
    |NOR  <br/> |Europe |
    |BRA  <br/> |North American datacenters |
    |||

   If you don't specify the *Region* parameter for a search permissions filter, the organization's primary SharePoint region will be searched. Search results are exported to the closest datacenter.

   To simplify the concept, the *Region* parameter controls the datacenter that is used to search for content in SharePoint and OneDrive. This doesn't apply to searching for content in Exchange because Exchange content searches aren't bound by the geographic location of datacenters. Also, the same *Region* parameter value may also dictate the datacenter that exports are routed through. This is often necessary to control the movement of data across geographic boarders.

> [!NOTE]
> If you're using eDiscovery (Premium), the *Region* parameter doesn't control the region that data is exported from. Data is exported from the organization's central location. Also, searching for content in SharePoint and OneDrive isn't bound by the geographic location of datacenters. All datacenters are searched. For more information about eDiscovery (Premium), see [Overview of the eDiscovery (Premium) solution in Microsoft 365](overview-ediscovery-20.md).

Here are examples of using the *Region* parameter when creating search permission filters for compliance boundaries. This assumes that the Fourth Coffee subsidiary is located in North America and that Coho Winery is in Europe.
  
```powershell
New-ComplianceSecurityFilter -FilterName "Fourth Coffee Security Filter" -Users "Fourth Coffee eDiscovery Managers", "Fourth Coffee Investigators" -Filters "Mailbox_Department -eq 'FourthCoffee'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/FourthCoffee' -or SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'" -Region NAM
```

```powershell
New-ComplianceSecurityFilter -FilterName "Coho Winery Security Filter" -Users "Coho Winery eDiscovery Managers", "Coho Winery Investigators" -Filters "Mailbox_Department -eq 'CohoWinery'", "SiteContent_Path -like 'https://contoso.sharepoint.com/sites/CohoWinery' -or SiteContent_Path -like 'https://contoso-my.sharepoint.com/personal'" -Region EUR
```

Keep the following things in mind when searching and exporting content in multi-geo environments.
  
- The *Region* parameter doesn't control searches of Exchange mailboxes. All datacenters will be searched when you search mailboxes. To limit the scope of which Exchange mailboxes are searched, use the *Filters* parameter when creating or changing a search permissions filter.

- If it's necessary for an eDiscovery Manager to search across multiple SharePoint regions, you need to create a different user account for that eDiscovery manager to use in the search permissions filter to specify the region where the SharePoint sites or OneDrive accounts are located. For more information about setting this up, see the "Searching for content in a SharePoint Multi-Geo environment" section in [Content Search](content-search-reference.md#searching-for-content-in-a-sharepoint-multi-geo-environment).

- When searching for content in SharePoint and OneDrive, the *Region* parameter directs searches to either the primary or satellite location where the eDiscovery manager will conduct eDiscovery investigations. If an eDiscovery manager searches SharePoint and OneDrive sites outside of the region that's specified in the search permissions filter, no search results are returned.

- When exporting search results from eDiscovery (Standard), content from all content locations (including Exchange, Skype for Business, SharePoint, OneDrive, and other services that you can search by using the Content Search tool) are uploaded to the Azure Storage location in the datacenter that's specified by the *Region* parameter. This helps organizations stay within compliance by not allowing content to be exported across controlled borders. If no region is specified in the search permissions filter, content is uploaded to the organization's primary datacenter.

  When exporting content from eDiscovery (Premium), you can't control where content is uploaded by using the *Region* parameter. Content is uploaded to an Azure Storage location in a datacenter in your organization's central location. For a list of geo locations based on your central location, see [Microsoft 365 Multi-Geo eDiscovery configuration](../enterprise/multi-geo-ediscovery-configuration.md).

- You can edit an existing search permissions filter to add or change the region by running the following command:

    ```powershell
    Set-ComplianceSecurityFilter -FilterName <Filter name>  -Region <Region>
    ```

## Using compliance boundaries for SharePoint hub sites

[SharePoint hub sites](/sharepoint/dev/features/hub-site/hub-site-overview) often align with the same geographical or agency boundaries that eDiscovery compliance boundaries follow. That means you can use the site ID property of the hub site to create a compliance boundary. To do this, use the [Get-SPOHubSite](/powershell/module/sharepoint-online/get-spohubsite#examples) cmdlet in SharePoint Online PowerShell to obtain the SiteId for the hub site and then use this value for the department ID property to create a search permissions filter.

Use the following syntax to create a search permissions filter for a SharePoint hub site:

```powershell
New-ComplianceSecurityFilter -FilterName <Filter Name> -Users <User or Group> -Filters "Site_Departmentid -eq '{SiteId of hub site}'"
```

Here's an example of creating a search permissions filter for a hub site for the Coho Winery agency:

```powershell
New-ComplianceSecurityFilter -FilterName "Coho Winery Hub Site Security Filter" -Users "Coho Winery eDiscovery Managers", "Coho Winery Investigators" -Filters "Site_Departmentid -eq '44252d09-62c4-4913-9eb0-a2a8b8d7f863'"
```

## Compliance boundary limitations

Keep the following limitations in mind when managing eDiscovery cases and investigations that use of compliance boundaries.
  
- When creating and running a search, you can select content locations that are outside of your agency. However, because of the search permissions filter, content from those locations isn't included in the search results.

- Compliance boundaries don't apply to holds in eDiscovery cases. That means an eDiscovery manager in one agency can place a user in a different agency on hold. However, the compliance boundary will be enforced if the eDiscovery manager searches the content locations of the user who was placed on hold. That means the eDiscovery manager won't be able search the user's content locations, even though they were able to place the user on hold.

- If you're assigned a search permissions filter (either a mailbox or a site filter) and you try to export unindexed items for a search that includes all SharePoint sites in your organization, you'll receive the following error message: `Unable to execute the task. Reason: The scope options UnindexedItemsOnly or BothIndexedandUnindexedItems are not allowed when the executing user has a compliance security filter applied`. If you're assigned a search permissions filter and you want to export unindexed items from SharePoint, you'll have to rerun the search and include specific SharePoint sites to search. Otherwise, you'll only be able to export indexed items from a search that includes all SharePoint sites. For more information about the options when you export search results, see [Export Content search results](export-search-results.md#step-1-prepare-search-results-for-export).

- Search permissions filters aren't applied to Exchange public folders.

## More information

- If a mailbox is de-licensed or soft-deleted, the user will no longer be considered within the compliance boundary. If a hold was placed on the mailbox when it was deleted, the content preserved in the mailbox is still subject to a compliance boundary or search permissions filter.

- If compliance boundaries and search permissions filters are implemented for a user, then we recommend that you don't delete a user's mailbox and not their OneDrive account. In other words, if you delete a user's mailbox, you should also remove the user's OneDrive account since mailbox_RecipientFilter is used to enforce search permission filter for OneDrive.

- Compliance boundaries and search permissions filters depend on attributes being stamped on content in Exchange, OneDrive, and SharePoint and the subsequent indexing of this stamped content.

- We don't recommend using exclusion filters (such as using `-not()` in a search permissions filter) for a content-based compliance boundary. Using an exclusion filter can have unexpected results if content with recently updated attributes hasn't been indexed.

## Frequently asked questions

**Who can create and manage search permissions filters (using New-ComplianceSecurityFilter and Set-ComplianceSecurityFilter cmdlets)?**
  
To create, view, and modify search permissions filters, you have to be a member of the Organization Management role group in the compliance portal.
  
**If an eDiscovery manager is assigned to more than one role group that spans multiple agencies, how do they search for content in one agency or the other?**
  
The eDiscovery manager can add parameters to their search query that restrict the search to a specific agency. For example, if an organization has specified the **CustomAttribute10** property to differentiate agencies, they can append the following to their search query to search mailboxes and OneDrive accounts in a specific agency:  `CustomAttribute10:<value>`.
  
**What happens if the value of the attribute that's used as the compliance attribute in a search permissions filter is changed?**
  
It takes up to three days for a search permissions filter to enforce the compliance boundary if the value of the attribute that's used in the filter is changed. For example, in the Contoso scenario let's say that a user in the Fourth Coffee agency is transferred to the Coho Winery agency. As a result, the value of the **Department** attribute on the user object is changed from *FourthCoffee* to *CohoWinery*. In this situation, Fourth Coffee eDiscovery and investors will get search results for that user for up three days after the attribute is changed. Similarly, it takes up to three days before Coho Winery eDiscovery managers and investigators get search results for the user.
  
**Can an eDiscovery manager see content from two separate compliance boundaries?**
  
Yes, this can be done when searching Exchange mailboxes by adding the eDiscovery manager to role groups that have visibility to both agencies. However when searching SharePoint sites and OneDrive accounts, an eDiscovery manager can search for content in different compliance boundaries only if the agencies are in the same region or geo location. **Note:** This limitation for sites doesn't apply in eDiscovery (Premium) because searching for content in SharePoint and OneDrive isn't bound by geographic location.
  
**Do search permissions filters work for eDiscovery case holds, Microsoft 365 retention policies, or DLP?**
  
No, not at this time.
  
**If I specify a region to control where content is exported, but I don't have a SharePoint organization in that region, can I still search SharePoint?**
  
If the region specified in the search permissions filter doesn't exist in your organization, the default region will be searched.
  
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

Also, the number of search permissions filters appended to a query depends on the user who is running the search. When a specific user runs a search, the search permissions filters that are applied to the user (which is defined by the *Users* parameter in the filter) are appended to the query. Your organization could have hundreds of search permissions filters, but if more than 100 filters are applied to the same users, then it's likely the 100-condition limit will be exceeded when those users run searches.

There's one more thing to keep in mind about the condition limit. The number of specific SharePoint sites that are included in the search query or search permissions filters also count against this limit. 

To prevent your organization from reaching the conditions limit, keep the number of search permissions filters in your organization to few as possible to meet your business requirements.
