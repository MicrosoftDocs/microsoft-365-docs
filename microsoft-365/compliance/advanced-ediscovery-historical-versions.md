---
title: "Set up historical versions in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: "Use historical versions in Advanced eDiscovery to collect content from all versions of documents stored in SharePoint."
---

# Set up historical versions in Advanced eDiscovery (preview)

The historical versions feature in Advanced eDiscovery lets eDiscovery managers in your organization search for and collect content from all versions of documents that are stored in SharePoint Online and then add that content to a review for analysis and review. This helps find and review content from a single version of a document that may be relevant to a case or investigation.

## How does it work?

When historical versions is enabled and configured in Advanced eDiscovery, all version of documents stored on a SharePoint site are indexed and searchable when you collect content in a case.

To support the historical versions capability, SharePoint administrators must enable versioning for sites  

If a SharePoint administrator has versioning enabled on the site, when customers modify documents in SharePoint, implicit regular versions are created as the document is saved (or auto saved). SharePoint versioning allows for tracking the activity of any item (document, event, task, etc.) that helps in audit trail and as evidence in legal investigations. These older versions of a document are available to the customer, and the customer may be required to share such versions that have sensitive or relevant content during court discovery in a legal matter. 

Typically, eDiscovery users would collect all content that meets the search query criteria for a legal case through the Advanced eDiscovery interface. SharePoint Online indexes only the latest major version. This means that  when an eDiscovery user searches for a keyword that is not in the latest document, the user would not get any results back, even if historical versions include the keyword the eDiscovery user is looking for. The lack of ability to return historical versions of SharePoint Online documents during advance compliance search may result in missed content in a legal investigation.

With the release of Historical Version (historical versions) feature into Advanced eDiscovery, once eDiscovery administrator enables the feature on a specific SharePoint site and that site has versioning enabled, the SharePoint’s content push service will crawl all the versions (major and minor) and send these versions for indexing. Once the crawling and indexing process is complete, the documents and their versions would be available for eDiscovery search. As long as the customer can access a specific version (via Version History), then that version should be discoverable by eDiscovery search once historical versions is enabled. 



## Set up historical versions

To enable historical versions in Advanced eDiscovery, your organization has to turn it on and then activate specific sites so that all versions of documents stored on those sites are indexed for search. Before you set up Advanced eDiscovery for historical versions, you have to enable versioning support in SharePoint.

### Step 1: Turn on versioning in SharePoint

The first step is to turn on versioning in SharePoint Online so that all versions of a document are preserved. For instructions, see [Versioning in SharePoint](/microsoft-365/community/versioning-basics-best-practices).

### Step 2: Turn on historical versions

The next step is to turn on historical versions in Advanced eDiscovery. To turn on historical versions, a person must be an eDiscovery Administrator in your organization (a member of the eDiscovery Administrator subgroup in the eDiscovery Manager role group). After historical versions is turned on, it will apply to your entire organization.

> [!IMPORTANT]
> After you turn on historical versions, you won't be able to turn it off during the public preview. You will be able to turn it off after historical versions is released for general availability.

1. In the Microsoft 365 compliance center, go to [Advanced eDiscovery](https://go.microsoft.com/fwlink/p/?linkid=2173764), and then click **Advanced eDiscovery settings**.

   ![Select Advanced eDiscovery settings](..\media\HistoricalVersions1.png)

2. On the **Settings** page, select the **Historical versions (preview)** tab, and then switch the **Historical versions tenant control** toggle to on.

   ![Switch on the toggle to enable historical versions](..\media\HistoricalVersions2.png)

   A warning is displayed that says you won't be able to turn off historical versions. As previously stated, you won't be able to turn off historical versions until the feature is released for general availability.

3. Click **Yes** to turn on historical versions.

### Step 3: Activate SharePoint sites

After you turn on historical versions for your organization, the last step is to activate SharePoint sites to support historical versions. When you activate a site (by adding it to a list of sites on the **Historical versions** tab), the site is re-crawled and all versions of documents stored on that site are indexed for search.

> [!NOTE]
> There is a limit of 100 site activations per organization during the public preview of historical versions. An activation is counted against this limit whenever you enable or disable a site for historical versions. If you enable multiple sites, each site is counted as a single activation. The total number of activations is displayed on the **Historical versions** tab.

1. On the **Historical versions** tab on the Advanced eDiscovery **Settings** page, click **Enable** to activate sites for historical versions.

   ![Click Enable to activate sites for historical versions](..\media\HistoricalVersions3.png)  

   A flyout out page is displayed that contains a list of all SharePoint sites in your organization.

2. Select a site to activate, and then click **Enable** to activate it for historical versions. You can use the search box to search for a  specific site.

   A warning is displayed that says the site will be reindexed and will take away before it's ready to be search. The warning also states that you won't be able to disable historical versions for the selected site for 30 days.

3. Click **Yes** to activate the site for historical versions.

   ![The activated site and the number of site activations are displayed](..\media\HistoricalVersions4.png)  

   The site is added to the list of activated sites. The counter showing the number of site activations is also updated.

4. Repeat the previous steps for each site that you want to activate for historical versions.

## Frequently asked questions

**How are historical versions different that the option to "collect all versions" when you commit a draft collection to a review set?**

Currently, only the latest version of documents are indexed for search. That means when you run a draft collection, only the latest version of documents are searched. If a document matches the keyword query for the collection, it is returned in the collection results. However, if the latest version of a document doesn't match a search query, the document won't be returned event if older versions of the document contain the keyword. To help mitigate this situation, Advanced eDiscovery gives you the ability to collect all versions of the document when you [commit a collection to a review set]((commit-draft-collection.md#commit-a-draft-collection-to-a-review-set). That means any older version that may contain the keyword will be added to the review set.

Historical versions are different and more efficient than "collecting all versions" because when you activate a site, all versions of a document (and not just the last version) are indexed for search. The result is that if an older version of a document contains a keyword that matches the search query, it will be returned by the collection.

**How long do I have to wait after a site is activated until all historical versions of documents on that site are all indexed and available for eDiscovery search?**

Based on the number of documents for a site and the average number of versions per document, we try to estimate the total number of files per site. Based on this, an estimate of how long it will take to index is as follows:

`Number of versions / (Processing rate of 100,000 files per day ) + .5 days = Total number of days to process a site`

Notice in the previous equation that we add .5 days as a buffer to make the estimate more conservative.

For example, if the total number of documents and all versions for a site is 150,000, then it will approximately two days to process the site for historical versions:

`150,000 files/100,000 files per day + .5 days = 2 days`

**When historical versions enabled for a site, does it impact the performance of the site?**

No. Once historical versions is enabled for a site, the performance for the site will the the same as it was before the site was enabled. The crawling and indexing processes that are performed on the site after it's enable will occur at a slower rate and be performed during off-peak hours. Enabling historical versions for a site will kick off a backfill process, which finds all the versions of documents on the site and then sends those versions to the index. Depending on the number of document versions for site, this backfill process might impact service health. We have mitigated this potential impact in the following ways:

- We make the best effort to process these versions during off-peak hours.

- We process document versions in our lowest priority queues, which allows a majority of the service resources to be delegated to user changes.

**Why is it not recommended to frequently activate or deactivate sites for historical versions?**

When you deactivate a previously activated site, a clean-up process is triggered. This process will take time to complete. If that same site is then activated again, the backfill process of re-indexing the site hat to be rerun. Both the clean-up and backfill process are time and resource intensive. Therefore we recommended that you carefully consider and plan which sites you want to activate for historical version so you can avoid repeatedly activating and deactivating historical versions for a site.
