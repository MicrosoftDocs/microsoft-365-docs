---
title: "Query the data in a review set"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: "Learn how to create and run a query in a review set to organize data for a more efficient review in an Advanced eDiscovery case."
ms.custom: seo-marvel-mar2020
---

# Query the data in a review set

In most cases, it will be useful to be able to dig deeper into the data in a review set and organize that data to facilitate a more efficient review. Using Queries in a review set helps you focus on a subset of documents that meet the criteria of your review.

## Creating and running a query in a review set

To create and run a query on the documents in a review set, select **New query** in the review set. After you name your query and define the conditions, select **Save** to save and run the query. To run a query that has been previously saved, select a saved query.

![Review set queries](../media/AeDReviewSetQueries.png)

## Building a review set query

You can build a query by using a combination of keywords, properties, and conditions in the Keywords condition. You can also group conditions as a block (called a *condition group*) to build a more complex query. For a list and description of metadata properties that you can search, see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md).

### Conditions

Every searchable field in a review set has a corresponding condition that you can use to build your query.

There are multiple types of conditions:

- Freetext: A freetext condition is used for text fields such as subject. You can list multiple search terms by separating them out with a comma.

- Date: A date condition is used for date fields such as last modified date.

- Search options: A search options condition will provide a list of possible values for the particular field in your review set. This is used for fields, such as sender, where there is a finite number of possible values in your review set.

- Keyword: A keyword condition is a specific instance of freetext condition that you can use to search for terms, or use KQL-like query language in. See below for more detail.

### Query language

In addition to conditions, you can use a KQL-like query language in the Keywords condition to build your query. The query language for review set queries supports standard Boolean operators, such as **AND**, **OR**, **NOT**, and **NEAR**. It also supports a single-character wildcard (?) and a multi-character wildcard (*).

## Filters

In addition to queries that you can save, you can use review set filters to quickly apply additional conditions to a review set query. Using filters help you further refine the results displayed by a review set query.

![Review set filters](../media/AeDReviewSetFilters.png)

Filters differ from queries in two significant ways:

- Filters are transient. They don't persist beyond the existing session. In other words, you can't save a filter. Queries are saved to the review set, and access them whenever you open the review set.

- Filters are always additive. Filters are applied in addition to the current review set query. Applying a different query will replace the results returned by the current query.
