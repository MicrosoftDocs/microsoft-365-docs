---
title: "Query the content in a review set"
description: "Learn how to create and run a query in a review set to organize content for a more efficient review in a Microsoft Purview eDiscovery (Premium) case."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-mar2020
---

# Query and filter content in a review set

In most cases, it will be useful to dig deeper into the content in a review set and organize it to facilitate a more efficient review. Using filters and queries in a review set helps you focus on a subset of documents that meet the criteria of your review.

## Default filters

In a review set, there are five default filters that are pre-loaded in the review set:

- Keywords
- Date
- Sender/Author
- Subject/Title
- Tags

![Default filter types.](../media/DefaultFilterTypes.png)

Click each filter to expand it and assign a value. Click outside the filter to automatically apply the filter to the review set. The following screenshot shows the Date filter configured to show documents within a date range.

![Default filter expanded.](../media/ExpandedFilter.png)

## Add or remove filters

To add or remove filters that are displayed for the review set, select **Filters** to open the filter panel, which is displayed on a flyout page. 

![Filter panel.](../media/FilterPanel.png)

The available filters are organized in four sections:

- **Search**: Filters that provide different search capabilities.

- **Analytics & predictive coding**: Filters for properties generated and added to documents when you run the **Document & email analytic** job or use predictive coding models.

- **IDs**: Filters for all ID properties of documents.

- **Item properties**: Filters for document properties. 

Expand each section and select or deselect filters to add or remove them in the filter set. When you add a filter, it's displayed in the filter set. 

![List of filter sections and properties in the filter panel.](../media/FilterPanel2.png)

> [!NOTE]
> When you expand a section in the filter panel, you'll notice that the default filter types are selected. You can keep these selected or deselect them and removed them from the filter set. 

## Filter types

Every searchable field in a review set has a corresponding filter that you can use for filter items based on a specific field.

There are multiple types of filters:

- **Freetext**: A freetext filter is applied to text fields such as "Subject". You can list multiple search terms by separating them with a comma.

- **Date**: A date filter is used for date fields such as "Last modified date".

- **Search options**: A search options filter provides a list of possible values (each value is displayed with a checkbox that you can select) for particular fields in the review. This filter is used for fields, such as "Sender", where there's a finite number of possible values in the review set.

- **Keyword**: A keyword condition is a specific instance of freetext condition that you can use to search for terms. You can also use KQL-like query language in this type of filter. For more information, see the Query language and Advanced query builder sections in this article.

## Include and exclude filter relationships

You can change the include and exclude relationship for a particular filter. For example, in the Tag filter, you can exclude items that are tagged with a particular tag by selecting **Equals none of** in the dropdown filter. 

![Exclude tag filter.](../media/TagFilterExclude.png)

## Save filters as queries

After you're satisfied with your filters, you can save the filter combination as a filter query. This lets you apply the filter in the future review sessions.

To save a filter, select **Save the query** and name it. You or other reviewers can run previously saved filter queries by selecting the **Saved filter queries** dropdown and selecting a filter query to apply to review set documents. 

![Save a filter query.](../media/SaveFilterQuery.png)

To delete a filter query, open the filter panel and select the trashcan icon next to the query.

![Delete a filter query.](../media/DeleteFilterQuery.png)

## Query language

In addition to using filters, you can also use a KQL-like query language in the Keywords filter to build your review set search query. The query language for review set queries supports standard Boolean operators, such as **AND**, **OR**, **NOT**, and **NEAR**. It also supports a single-character wildcard (?) and a multi-character wildcard (*).

## Advanced query builder

You can also build more advanced queries to search for documents in a review set.

1. Open the filter panel, select **Filters**, and expand the **Search** section.

  ![Add a KQL filter.](../media/AddKQLFilter.png)

2. Select the **KQL** filter and click **Open query builder**.

   In this panel, you can create complex KQL queries by using the query builder. You can add conditions or add condition groups that are made up of multiple conditions that are logically connected by **AND** or **OR** relationships.

   ![Use query builder to configure complex filter queries.](../media/ComplexQuery.png)

## Filter partially indexed items

If you selected the option to add partially indexed items from additional data sources when you committed the draft collection to a review set. You'll probably want to identify and view those items to determine if an item might be relevant to your investigation and whether you need to remediate the error that resulted in the item being partially indexed.

At this time, there isn't a filter option in a review set to display partially indexed items. But we're working on it. Until then, here's a way you can filter and display the partially indexed items that you added to a review set.

1. Create a collection and commit it to a new review set *without* adding partially indexed items from the additional data sources.

2. Create a new collection by copying the collection from step 1.

3. Commit the new collection to the same review set. But this time, add the partially indexed items from the additional data sources. Because items from the collection you created in step 1 have already been added to the review set, only the partially indexed items from the second collection are added to the review set.

4. After both collections are added to the review set, go to the review set, and select **Manage** > **Load sets**.

5. Copy or make note of the **Load Id** for the second collection (the one you created in step 2). The collection name is identified in the **Source info** column.

6. Back in the review set, click **Filter**, expand the **IDs** section, and then select the **Load Id** checkbox.

7. Expand the **Load Id** filter, and then select the checkbox for the load Id that corresponds to the second collection to display the partially indexed items.
