---
title: "Add search results to a review set"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: ""
---

# Add search results to a review set

When you're satisfied with the results of a search and you're ready to review and analyze those search results, you can add them to a review set in the case. Copying the original data to the review set also facilitates the review and analysis process by providing you with advanced analytics tools such as themes detection, near-duplicate detection, and email thread identification. You can also add data from non-Office 365 data sources to a review set so that you can review that data in addition to the data you collect from Office 365. 

When you add the results of a search to a review set (review sets are on the **Review sets** tab of the case), the following things occur:

- The search is run again. This means the actual search results copied to the review set may be different than the estimated results that were returned when the search was last run.

- All items in the search results are copied from the original data source in the live Office 365 services, and copied to a secure Azure storage location in the Microsoft cloud.

- All items (including the content and metadata) are re-indexed so that all data in the review set is fully searchable during the review of the case data. Re-indexing the data results in thorough and very fast searches when you search the data in the review set during the case investigation.

To add data to a review set, click a search on the **Searches** tab, and then click **Add results to review set** on the flyout page.

![Adding data to a review set](media/c1b4fc00-7a15-4587-b9b0-ce594bb02e4d.png)

You can add to an existing review set or create a new review set.  If adding to a new review set, specify the name and then click **Add**.

![Select a review set](media/e8c6ab51-da8d-4c39-9b21-26bfdf453fb9.png)

Adding data to a review set is a long-running process. This process includes gathering items from the original data sources in Office 365 (for example, from mailboxes and sites), copying them to the Azure storage location (this copying process is also called *ingestion*), and then re-indexing the items. You can track the progress on the **Jobs** tab or on the **Searches** tab by monitoring the status in the **Added data to review set** column. After the review set processing is completed, click the **Review sets** tab in the case, and click the review set to start the process of filtering, reviewing, tagging, and exporting data in the review set.

## Add a sample to a review set

If you want to validate the results of a search more thoroughly before adding all of them to a review set, you can add a sample of the search results to a review set instead of adding everything.

To add a sample to a review set, click a search on the **Searches** tab and click **Sample** on the flyout page. On the **Sampling parameters** page, choose one of the following options:

- **Confidence level %** and **Confidence interval %** – The items added to the review set will be determined by the statistical parameters that you set. If you typically use a confidence level and interval when sampling results, specify them in the drop-down boxes. Otherwise, use the default settings.

- **Random sample %** – The items added to the review set is based on a random selection of the specified percentage of the total number of items returned by the search.

After selecting and configuring one of the previous options, choose a review set to add the sample to and then click **Send**. Again, you can track the progress on the **Jobs** tab or on the **Searches** tab by monitoring the status in the **Added data to review set** column.