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

Microsoft 365 Advanced eDiscovery supports double-byte character set languages (this includes Simplified Chinese, Traditional Chinese, Japanese, and Korean, which are collectively known as *CJK* languages) for the following advanced scenarios in a review set:

- When you [query the data in a review set](review-set-search.md).

- When you [tag documents in a review set](tagging-documents.md).

- When you [analyze case data](analyzing-data-in-review-set.md) (near duplicate detection, email threading, and themes).

## Frequently asked questions

**How do I create a search to collect data that contains CJK documents?**

You can use CJK characters for [keyword searches](building-search-queries.md#keyword-searches), [keyword queries and search conditions](keyword-queries-and-search-conditions.md) for a search in Advanced eDiscovery, Core eDiscovery, and Content Search.

We provide CJK support for all [search operators](keyword-queries-and-search-conditions.md#search-operators) and [search conditions](keyword-queries-and-search-conditions.md#search-conditions), including the boolean operators **AND, OR, NOT, and NEAR**.

If you're certain content locations contain the CJK characters you're searching for, but the search returns no results, click query language-country/region![Query language-country/region icon in Content search](../media/8d4b60c8-e1f1-40f9-88ae-ee2a7eca0886.png) and select the corresponding language-country culture code value for the search. The default language/region is neutral.

**Can I search for multiple languages at once?**

It depends on your search scenario.

When you [query the data in a review set](review-set-search.md), you can search for multiple languages at once.


When you [create a search to collect data](create-search-to-collect-data.md), create a separate search for each language you're targeting. For example, if you are searching for a document that contains both Chinese and Korean, select Chinese for your first query and select Korean for your second query.

**I don't see query language-country/region![Query language-country/region icon in Content search](../media/8d4b60c8-e1f1-40f9-88ae-ee2a7eca0886.png) to select a language for queries in a review set, how can I specify query language in a review set?**

For queries in a review set, you don't need to specify document language. Advanced eDiscovery automatically detects document languages when you add search results to a review set to optimize your query results in a review set.

**Can I see detected languages in [file metadata](view-documents-in-review-set.md#file-metadata)?**

No, you can't see detected languages in file metadata.

**Can I filter by document languages in a review set**?

No, you can't filter, sort, or search by document languages in a review set.

**Will this CJK release for review set scenarios affect any of my existing searches and review sets?**

No, none of your existing searches and review sets will change. You don't need to reindex existing data. For English text, all search results will be the same.

**How do I change my display language to Chinese, Japanese, or Korean?**

For information about how to change display language and time zone, see [How to set language and region settings for Office 365](https://docs.microsoft.com/office365/troubleshoot/access-management/set-language-and-region).

## Known issues

- OCR doesn't support CJK characters from image files

- Email files (such as *.eml and *.msg) in [Annotate view](view-documents-in-review-set.md#annotate-view) aren't supported.

- Search hit highlight in [Text view](view-documents-in-review-set.md#text-view) in Review Set is not supported for CJK languages.

- The [Relevance module](using-relevance.md) used to to analyze data doesn't support CJK languages.

- Query-based holds aren't supported. For more information on query-based holds, see [Manage non-custodial holds](managing-holds.md#manage-non-custodial-holds).