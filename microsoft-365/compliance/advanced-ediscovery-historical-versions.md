---
title: "Set up historical versions in eDiscovery (Premium)"
description: "Use historical versions in eDiscovery (Premium) to collect content from all versions of documents stored in SharePoint and OneDrive."
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
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
---

# Set up historical versions in eDiscovery (Premium) (preview)

The historical versions feature in eDiscovery (Premium) lets eDiscovery managers in your organization search for and collect content from all versions of documents stored in SharePoint Online and OneDrive for Business. Then you can add that content to a review set for analysis and review. This helps you find and review content from a specific version of a document that may be relevant to a case or investigation, even if the latest version of the same document doesn't contain the relevant information.

To support the historical versions capability in eDiscovery (Premium), SharePoint administrators must enable versioning for sites in their organization. Then, when users modify documents in SharePoint or OneDrive, implicit regular versions are created when document is saved (or autosaved). SharePoint versioning allows for tracking of the activity performed on SharePoint items (including documents, events, and tasks). This versioning capability leaves an audit trail that can provide evidence in legal investigations. These older versions of a document are available to the organization, who may be required to share such versions that have sensitive or relevant content during court discovery in a legal matter.

After an eDiscovery administrator turns on historical versions for the organization and then activates it for specific SharePoint sites, the SharePoint content push service crawls all major and minor versions of documents on the activated sites and then sends those versions for indexing. After the crawling and indexing process is complete, documents and their versions are available for eDiscovery search. As long as a specific version can be accessed (by version history), then that version will be discoverable in an eDiscovery (Premium) collection search.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Set up historical versions

To enable historical versions in eDiscovery (Premium), your organization has to turn it on and then activate specific sites so that all versions of documents stored on those sites are indexed for search. Before you set up eDiscovery (Premium) for historical versions, you have to enable versioning support in SharePoint.

### Step 1: Turn on versioning in SharePoint

The first step is to turn on versioning in SharePoint Online so that all versions of a document are preserved. For instructions, see [Versioning in SharePoint](/microsoft-365/community/versioning-basics-best-practices).

### Step 2: Turn on historical versions

The next step is to turn on historical versions in eDiscovery (Premium). To turn on historical versions for your organization, a person must be a global administrator or an eDiscovery Administrator  (a member of the eDiscovery Administrator subgroup in the eDiscovery Manager role group). After historical versions is turned on, it will apply to your entire organization.

> [!IMPORTANT]
> After you turn on historical versions, you won't be able to turn it off during the public preview. You will be able to turn it off after historical versions is released for general availability.

1. In the Microsoft Purview compliance portal, go to [eDiscovery (Premium)](https://go.microsoft.com/fwlink/p/?linkid=2173764), and then click **eDiscovery (Premium) settings**.

   ![Select eDiscovery (Premium) settings](..\media\HistoricalVersions1.png)

2. On the **Settings** page, select the **Historical versions (preview)** tab, and then switch the **Historical versions tenant control** toggle to on.

   ![Switch on the toggle to enable historical versions](..\media\HistoricalVersions2.png)

   A warning is displayed that says you won't be able to turn off historical versions. As previously stated, you won't be able to turn off historical versions until the feature is released for general availability.

3. Click **Yes** to turn on historical versions.

### Step 3: Activate SharePoint sites

After you turn on historical versions for your organization, the last step is to activate SharePoint sites to support historical versions. When you activate a site (by adding it to a list of sites on the **Historical versions** tab), the site is recrawled and all versions of documents stored on that site are indexed for search.

> [!NOTE]
> There is a limit of 100 site activations per organization during the public preview of historical versions. An activation is counted against this limit whenever you enable or disable a site for historical versions. If you enable multiple sites, each site is counted as a single activation. The total number of activations is displayed on the **Historical versions** tab.

1. On the **Historical versions** tab on the eDiscovery (Premium) **Settings** page, click **Enable** to activate sites for historical versions.

   ![Click Enable to activate sites for historical versions](..\media\HistoricalVersions3.png)  

   A flyout out page is displayed that contains a list of all SharePoint sites in your organization.

2. Select a site to activate, and then click **Enable** to activate it for historical versions. You can use the search box to search for a  specific site.

   A warning is displayed that says document versions on the site will be indexed and this indexing process will take some time before the versions will be ready to be searched. The warning also states that you won't be able to disable historical versions for the selected site for 30 days.

3. Click **Yes** to activate the site for historical versions.

   ![The activated site and the number of site activations are displayed](..\media\HistoricalVersions4.png)  

   The site is added to the list of activated sites. The counter showing the number of site activations is also updated.

4. Repeat the previous steps for each site that you want to activate for historical versions.

## Frequently asked questions

**How are historical versions different that the option to "collect all versions" when you commit a draft collection to a review set?**

Currently, only the latest version of documents is indexed for search. That means when you run a draft collection, only the latest versions of documents are searched. If a document matches the keyword query for the collection, it is returned in the collection results. However, if the latest version of a document doesn't match a search query, the document won't be returned event if older versions of the document contain the keyword. To help mitigate this situation, eDiscovery (Premium) gives you the ability to collect all versions of the document when you [commit a collection to a review set](commit-draft-collection.md#commit-a-draft-collection-to-a-review-set). That means any older version that may contain the keyword will be added to the review set.

Historical versions are different and more efficient than "collecting all versions" because when you activate a site, all versions of a document (and not just the last version) are indexed for search. The result is that if an older version of a document contains a keyword that matches the search query, it will be returned by the collection.

**When historical versions is enabled for a site, does it impact the performance of the site?**

No. Once historical versions is enabled for a site, the performance for the site will the same as it was before the site was enabled. The crawling and indexing processes that are performed on the site after it's enabled will occur at a slower rate and be performed during off-peak hours. Enabling historical versions for a site will kick off a backfill process, which finds all the versions of documents on the site and then sends those versions to the index. Depending on the number of document versions for site, this backfill process might impact service health. We have mitigated this potential impact in the following ways:

- We make the best effort to process these versions during off-peak hours.

- We process document versions in our lowest priority queues, which allows most service resources to be delegated to user changes.

**How long do I have to wait after a site is activated until all historical versions of documents on that site are all indexed and available for eDiscovery search?**

Based on the number of documents for a site and the average number of versions per document, we try to estimate the total number of files per site. Based on this, an estimate of how long it may take to index is as follows:

`Number of versions / (Processing rate of 100,000 files per day ) + .5 days = Total number of days to process a site`

The half-day is added as a buffer since indexing of versions on site is optimized to run during off-peak hours.

For example, if the total number of documents and all versions for a site is 150,000 then it will take at least two days to process the site for historical versions:

`150,000 files/100,000 files per day + .5 days = 2 days`

**Why is it not recommended to frequently activate or deactivate sites for historical versions?**

When you deactivate a previously activated site, a clean-up process is triggered. This process will take time to complete. If that same site is activated again, the backfill process of reindexing the site has to be rerun. Both the clean-up and backfill processes are time- and resource-intensive. Therefore we recommended that you carefully consider and plan which sites you want to activate for historical version so you can avoid repeatedly activating and deactivating historical versions for a site.
