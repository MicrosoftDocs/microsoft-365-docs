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
description: Learn how Advanced eDiscovery in Microsoft 365 support Chinese, Japanese, and Korean (CJK) languages, which use a double-byte character set."
---
# CJK/Double Byte support for Advanced eDiscovery

## Summary

Microsoft 365 Advanced eDiscovery now supports double byte character set languages (Simplified Chinese, Traditional Chinese, Japanese, and Korean) for the following scenarios.

- When you [collect data for a case](./collecting-data-for-ediscovery.md), you can use CJK characters for [keyword searches](./building-search-queries.md#keyword-searches), [keyword queries and search conditions](./keyword-queries-and-search-conditions.md) for a search. We provide CJK support for all [search operators](./keyword-queries-and-search-conditions.md#search-operators) and [search conditions](./keyword-queries-and-search-conditions.md#search-conditions), including the boolean operators **AND, OR, NOT, and NEAR**.
- When you [query the data in a review set](./review-set-search.md)
- When you [tag documents in a review set](./tagging-documents.md)
- When you [analyze case data](./analyzing-data-in-review-set.md) (near duplicate detection, email threading, and themes)

> [!Tip]
> You don't need to specify document languages in your search queries. Advanced eDiscovery automatically detects languages for each document during the ingestion process to optimize your search results.

> [!Note]
> For information on how to change display language and time zone, see [How to set language and region settings for Office 365](/office365/troubleshoot/access-management/set-language-and-region)

## Frequently Asked Questions (FAQ)

### I'm not an Advanced eDiscovery user, can I leverage CJK support in Content Search or Core eDiscovery?

Yes, CJK languages are fully supported in search capabilities in both Contend Search and Core eDiscovery. You can use CJK characters for [keyword searches](./building-search-queries.md#keyword-searches), [keyword queries and search conditions](./keyword-queries-and-search-conditions.md) for a search in Content Search and Core eDiscvoery.

### Will this CJK release affect any of my existing searches and review sets?

No, none of your existing searches and review sets will change. You don't need to re-index existing data. For English text, all search results will be the same.

### Known Issues (as of October, 2020)

- Optical character recognition(OCR) does not process CJK characters from image files
- CJK characters are broken when displaying emails (*.eml, *.msg) in [Annotate view](./view-documents-in-review-set.md#annotate-view).
- CJK support for [the Relevance module to analyze data](./using-relevance.md) is not in scope for this release.
- CJK support for the query-based hold is not in scope for this release. For more information on query-based hold, see [Manage non-custodial holds](./managing-holds.md#manage-non-custodial-holds)