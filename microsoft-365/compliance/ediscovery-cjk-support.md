---
title: "CJK/Double Byte support for Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Learn how Advanced eDiscovery in Microsoft 365 supports Chinese, Japanese, and Korean (CJK) languages, which use a double-byte character set."
---

# CJK language support for Advanced eDiscovery

Advanced eDiscovery supports double-byte character set languages (these include Simplified Chinese, Traditional Chinese, Japanese, and Korean, which are collectively known as *CJK* languages) for the following advanced scenarios in a review set:

- When you [query the data in a review set](review-set-search.md).

- When you [tag documents in a review set](tagging-documents.md).

- When you [analyze case data in a review set](analyzing-data-in-review-set.md) by using near duplicate detection, email threading, and themes analytics.

## Frequently asked questions

**How do I create a search to collect items that contains CJK characters?**

You can use CJK characters for [keyword searches](building-search-queries.md#keyword-searches), [keyword queries and search conditions](keyword-queries-and-search-conditions.md) when searching for content in Advanced eDiscovery. Searching for CJK characters is also supported when searching for content in Core eDiscovery and Content Search.

We provide CJK support for all [search operators](keyword-queries-and-search-conditions.md#search-operators) and [search conditions](keyword-queries-and-search-conditions.md#search-conditions), including the boolean operators **AND**, **OR**, **NOT**, and **NEAR**.

If you're certain that content locations or items contain CJK characters, but searches aren't returning any results, click the query language-country/region icon ![Query language-country/region icon in Content search](../media/8d4b60c8-e1f1-40f9-88ae-ee2a7eca0886.png) and select the corresponding language-country culture code value for the search. The default language/region is neutral.

**Can I search for multiple languages at once?**

It depends on your search scenario.

- When you [query data in a review set](review-set-search.md) in Advanced eDiscovery, you can search for multiple languages.

- When you [create a search to collect data](create-search-to-collect-data.md), create a separate search for each language you're targeting. For example, if you are searching for a document that contains both Chinese and Korean, select Chinese for your first query and select Korean for your second query.

**I don't see the query language-country/region icon to select a language for queries in a review set. How can I specify a query language in a review set search?**

For review set queries, you don't need to specify a document language. Advanced eDiscovery automatically detects document languages when you add content to a review set. This helps you optimize your query results in a review set.

**Can I see detected languages in [file metadata](view-documents-in-review-set.md#file-metadata)?**

No, you can't see detected languages in file metadata.

**Can I filter by document languages in a review set**?

No, you can't filter, sort, or search by document languages in a review set.

**Will this CJK release for review set scenarios affect any of my existing searches and review sets?**

No, none of your existing searches and review sets will change. You don't need to reindex existing data, and search results for English text will be the same.

**How do I change my display language to Chinese, Japanese, or Korean?**

For information about how to change display language and time zone, see [How to set language and region settings for Office 365](/office365/troubleshoot/access-management/set-language-and-region).

## Known issues

- OCR doesn't support CJK characters from image files

- Email files (such as *.eml and *.msg) in [Annotate view](view-documents-in-review-set.md#annotate-view) aren't supported for CJK languages.

- Search hit highlighting in [Text view](view-documents-in-review-set.md#text-view) isn't supported for CJK languages.

- The [Relevance module](using-relevance.md) used to analyze data doesn't support CJK languages.

- [Query-based holds](managing-holds.md#manage-non-custodial-holds) aren't supported for CJK languages.