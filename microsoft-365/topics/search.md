---
ms.date: 01/01/2024
title: Use Microsoft Search to find topics in Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - Tier1
ms.service: viva-topics 
search.appverid:
    - MET150   
ms.localizationpriority:  medium
description: Learn how to search for topics in Topics.
---

# Use Microsoft Search to find topics in Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

While Topics users can find topics through topic highlights in their SharePoint sites, they can also find them through Microsoft Search.

## Topic answer

When you search for a specific topic from the SharePoint start page, on Office.com, or from a SharePoint site that has been scoped to your organization, if a topic exists and is found, it will display the result in the topic answer suggestion format.

The topic answer will display:

- Topic name
- Alternate names: Alternate names or acronyms for the topic.
- Definition: Description of the topic provided by AI or manually added by a person.
- Suggested or Confirmed people: People suggested by AI or added to the topic by a person
- Suggested or Confirmed resources: Files, pages, or sites either suggested by AI or added to the topic by a person.

   ![Screenshot of a topic showing up in Search.](../media/knowledge-management/search-topic-answer.png)

The topic page can display in the search results even if the topic answer card doesn't appear.

The search results in Word, PowerPoint, Outlook, and Excel will also show the topic answer when one is found.

## Acronyms

In Topics, you can manually edit a topic to include an acronym for it as an *Alternate Name*. This allows a user who is searching by only the topic's acronym to find the topic answer through Microsoft Search.

[Acronym Answers](/microsoftsearch/manage-acronyms) is a feature provided though Microsoft Search and is managed separately from Topics.

## Bookmarks and topics

[Bookmarks](/microsoftsearch/manage-bookmarks) are a Microsoft Search feature that help people quickly find important sites and tools with just a search (for example, a travel booking tool on an external site outside of their Microsoft 365 tenant). They're created by search admins in the Microsoft 365 admin center.

For users who are looking for information about booking a trip for work:

- If some users know the travel tool name (for example, "Concur"), it's easier to create a bookmark to go directly to the external site.

- For users who search generally for "travel", create a topic on "Travel" that has the information they expect to see. Consider adding a link to the Concur external site in the description of the topic. If the link is instead to an internal travel booking site hosted on the Microsoft 365 tenant, you can add it to the “Pinned Resources.”

### Search results priority

Search priority depends on the content being searched for. Results in search are prioritized based on user engagement and content coverage of bookmarks, topics, acronyms, editorial Q&A, and other types of answers.

Bookmarks and topics typically have high engagement due to them being premium features. This affects the way results are displayed in a search. In a query triggered by both bookmarks and topics, the two answers prioritize the bookmark before the topic. For example, in a user's search experience, when a user searches for a term like “travel”, a bookmark will appear in place of a topic when a bookmark is available. When a query doesn't trigger bookmarks, but triggers topics and acronyms, the topic result will show before the acronym result. When a query only triggers one answer in any of the types, the answer will show first.
