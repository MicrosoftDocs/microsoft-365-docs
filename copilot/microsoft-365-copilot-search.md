---
title: "Microsoft 365 Copilot Search"
author: Efrene
ms.author: efrene
manager: scotv
ms.date: 08/07/2025
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- CopilotSearch
- operations-pod
ms.reviewer: kwekua
audience: admin
ai-usage: ai-assisted
description: An overview of the Microsoft 365 Copilot search feature.
---

# Microsoft 365 Copilot Search

Microsoft 365 Copilot Search is an AI-powered universal search experience optimized for your organization. It provides a familiar search experience that helps users quickly find relevant results from your organization. It offers a simple user experience that helps you find what you need, when you need it in a fast and secure unified search.

> [!NOTE]
> Microsoft 365 Copilot Search is generally available as both a Targeted and Standard release as of July 23, 2025. Learn more about [Standard and Targeted releases](/microsoft-365/admin/manage/release-options-in-office-365).

**Unified search across all applications:** Copilot Search delivers comprehensive insights into your organization's data by interpreting content across Microsoft 365 applications and beyond. With over 100 connectors now in the Microsoft Catalog, support for custom connectors, and hundreds of connectors from integrated software vendors (ISVs), Copilot Search is the single place for quick information across all your Microsoft and non-Microsoft data sources. Learn more about the [Microsoft 365 Copilot connectors gallery](/microsoftsearch/connectors-gallery).

**What to use when:** Because it's integrated with Microsoft 365 Copilot, users can find the results they need with search, then seamlessly transition to chat for deeper exploration or follow-up task completion.

:::image type="content" source="media/copilot-search-home-ex.png" alt-text="Screenshot that shows Microsoft 365 Copilot Search." lightbox="media/copilot-search-home-ex.png":::

## How Copilot Search works with Microsoft 365 Copilot

Copilot Search is integrated into the Microsoft 365 Copilot app as a dedicated **Search** module. This integration makes Copilot Search:

- **Comprehensive**: A universal search experience that allows users to search across all their Microsoft 365 and third-party data sources to find what they need quickly
- **Fast**: Delivers fast responses at scale across your organizational content
- **Relevant**: Uses semantic understanding for highly contextual and precise results
- **Simple**: Features an intuitive, modern user experience
- **Connected**: Copilot answers and summaries link Search to Chat
- **Personalized**: Tailored to individual users and tenants
- **Secure**: Offers enterprise-grade security and privacy

This design positions search as the organizing layer for AI, while chat remains the workspace for task execution and deeper interactions. For example, if a user searches for **what's the status of the Q2 report**, Copilot Search may return a summarized answer and offer to continue the conversation in chat for more nuanced exploration or follow-up actions.

:::image type="content" source="media/copilot-search-landing-ex.png" alt-text="Screenshot that shows Microsoft 365 Copilot Search results." lightbox="media/copilot-search-landing-ex.png":::

## Access and eligibility

Copilot Search is available to users with an eligible Microsoft 365 Copilot license at no additional cost. It can be accessed through the Microsoft 365 Copilot app on desktop, web, and mobile platforms. The app is available to users with Entra accounts (work or school).

No action is required by admins or users to set up Copilot Search. If a user has an eligible Microsoft 365 Copilot license, Copilot Search appears as a tab in the Microsoft 365 Copilot app.

## Privacy and security

Microsoft 365 Copilot Search adheres to the same data protection, privacy standards, and security configurations as Microsoft 365 Copilot. Learn more about [data, privacy, and security in Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-privacy).

## Natural language search

Copilot Search supports natural language queries, allowing users to type questions or requests in everyday language. For example, you can search for, **show me emails from John about Q4 forecasting sent last week** or **where is the spreadsheet that breaks down marketing ROI by region?**, and Copilot Search will understand your intent and return relevant results from across Microsoft 365, including emails, files, chats, meetings, and more.

Copilot Search goes beyond keyword matching by using AI to interpret context, relationships, and meaning, helping you find what you need faster and more intuitively. It also supports traditional keyword queries for specific words or short phrases, relying on exact or partial matches. But a natural language query can engage AI to better interpret the context of the query, leading to more relevant results.

## Answer types

A Copilot Answer in Microsoft 365 Copilot Search is a concise, AI-generated response that's powered by Microsoft 365 Copilot Chat. It appears at the top of the search results page when you enter specific natural language queries.

Copilot Answers may include references and information from external sources, including optional connected cloud-backed services and the web. Its grounding is consistent with the grounding you've enabled for Copilot Chat. Learn more about how Copilot Search and Copilot Chat [use the Bing search service](/copilot/privacy-and-protections#privacy-and-security-of-generated-search-queries) to ground some answers and responses in the latest information from the web.

Copilot Search also allows admins to curate answers that provide concise, authoritative results that are especially relevant to your organization. These answers are delivered directly in search results and convey information about your organization's acronyms, bookmarks, and people.

- **Acronyms:** Define terminology used in the workplace.
- **Bookmarks:** Promote key resources in your organization.
- **People:** Surface coworkers' roles and show how they fit into the organization.

For more information, see [how to curate answers for Copilot Search](/microsoftsearch/setup-microsoft-search#step-2-create-answers).

## How is Microsoft 365 Copilot Search different from Microsoft 365 Copilot Chat? 
The following table shows some of the key differences between Microsoft 365 Copilot and Microsoft 365 Copilot Chat.

| Feature | Microsoft 365 Copilot Search  | Microsoft 365 Copilot Chat  |
|---|---|---|
| Best for | Find what you need quickly | Generate deeper answers, created content and get the task done |
| Interaction style | Query-based (search box) | Conversational (chat-based) |
| Data sources | Microsoft Graph & third-party connectors | Microsoft Graph, third-party connectors, web |

## How is Microsoft 365 Copilot Search different from Microsoft Search? 

The following table shows a summary of key comparisons between Microsoft 365 Copilot Search (Paid) and Microsoft Search (Free), focusing on the most relevant features:

| Feature/Capability | Microsoft Copilot Search (paid) | Microsoft Search (free) |
|---|---|---|
| UI Entry Point | Microsoft 365 Copilot App (Web, Desktop, Mobile) | Microsoft 365 Copilot App (Web, Desktop, Mobile). SharePoint (organizational tab) |
| User Eligibility | Requires Microsoft 365 Copilot license | Available to unpaid Entra ID users |
| Search Experience | AI-powered, semantic search; universal search across M365 & non-M365 sources; modern UX | Keyword-based search; interleaved results; Teams/Outlook in Messages vertical |
| Graph Connector Support (3P) | Instant support for all tenant-enabled connectors with semantic search & personalization | Requires admin setup for connectors to appear as verticals with result-types and filters. No semantic search. |
| Integration with Copilot Chat | Deep integration with Chat —via Copilot Chat answers | No integration |
| Security & Privacy | Enterprise-grade security and privacy; sensitivity labels in UX | Same baseline security; sensitivity labels in UX. Already available as default |
| Integrations | Native Edge integration (people-centric, tenant-scoped search) | Native Edge integration (people-centric, tenant-scoped search) |
| Administration | No setup required; admin can configure bookmarks/acronyms; Admin analytics reports will be available starting August 2025 | Admin config for bookmarks/acronyms; Admin analytics available |
| Future Updates | Document-level AI summary, enhanced people search, Ranking/Relevance and natural language improvements and more | N/A |

