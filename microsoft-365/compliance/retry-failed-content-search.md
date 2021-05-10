---
title: "Retry a Content Search to resolve a content location error"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: troubleshooting
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
search.appverid:
- MOE150
- MET150
ms.assetid: 
description: During an investigation, you can use the Retry button to resolve Content Searches that have content location errors.
ms.custom: seo-marvel-apr2020
---

# Retry a Content Search to resolve a content location error

When you use Content Search in the security and compliance center to search a large number of mailboxes, you may get search errors that are similar to the  error:

```text
Error


The search on the following locations failed:

User1@contoso.com: Problem in processing the request. Please try again later. If you keep getting this error, contact your admin. (CS008-009)

User2@contoso.com: Application error occurred. Please try again later. (CS012-002)
```

These errors (with error codes of CS001-002, CS003-002, CS008-009, CS012-002, and other errors of the form CS0XX-0XX) indicate that Content Search failed to search specific content locations; in this example, two mailboxes weren't searched. These errors are displayed on the status details flyout page of the Content Search.

## Cause of content location errors

When searching a large number of mailboxes, the search is distributed across thousands of servers in a Microsoft datacenter. At any one time, specific servers could be in reboot state or in the process of failing over to redundant copies. In either of these cases, the Content Search's request to retrieve data will time out. In the previous example, the errors for the mailboxes that failed were the result of the search timing out.

## Resolving content location errors

Restarting the search will often result in similar errors on different servers. Instead of restarting the search, click the **Retry** button that is displayed at the top of the search results page.

![Click the Retry button to resolve content location errors](../media/retrycontentsearch3.png)

This will result in the retrying the search only for the mailboxes that failed. When you retry the search, the other results that were successfully returned are retained.

## Tips to avoid content location errors

Here are some additional causes of content location errors and some tips to help you avoid them when searching large numbers of mailboxes.

- The mailbox being searched might be busy due to user activity. In this case, the search service might throttle itself to prevent the mailbox from becoming unavailable. To avoid this, try running searches during non-business hours.

- The search query might be retrieving too much content from the mailbox. If possible, try to narrow the scope of the search by using keywords, date ranges, and search conditions.

- Too many keywords or keyword phrases when you create a search query using the [keywords list](view-keyword-statistics-for-content-search.md#get-keyword-statistics-for-searches). When you run a search query that uses the keywords list, the service essentially runs a separate search for each row in the keyword list so that statistics can be generated. If you're using the keywords list in search queries, minimize the number of rows in the keyword list or divide the number keywords into smaller lists and create a different search for each keyword list.

  > [!NOTE]
  > To help reduce issues caused by large keyword lists, you're now limited to a maximum of 20 rows in the keyword list of a search query.

- Too many searches are being performed on the same mailbox at the same time. If possible, try to run one search at a time on any one mailbox.

- Searching too many mailboxes in a single search. The probability of content location errors increases when searching a large number of mailboxes. If possible, try to run multiple searches so that each search includes a subset of  mailboxes in your organization.

- Required maintenance is being performed on the mailbox. Though this cause probably occurs infrequently, wait a little while after receiving the content location error and then retry the search.
