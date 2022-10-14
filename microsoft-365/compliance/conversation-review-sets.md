---
title: "Review conversations in eDiscovery (Premium)"
description: "Learn about the conversation reconstruction feature in Microsoft Purview eDiscovery (Premium) (called conversation threading) to reconstruct, review, and export chat conversations in Microsoft Teams and Yammer groups."
ms.custom: seo-marvel-mar2020
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
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

# Conversation threading in eDiscovery (Premium)

Instant messaging is a convenient way to ask questions, share ideas, or quickly communicate across large audiences. As instant messaging platforms, like Microsoft Teams and Yammer groups, become core to enterprise collaboration, organizations must evaluate how their eDiscovery workflow addresses these new forms of communication and collaboration.

The conversation reconstruction feature in Microsoft Purview eDiscovery (Premium) is designed to help you identify contextual content and produce distinct conversation views. This capability allows you to efficiently and rapidly review complete instant message conversations (also called *threaded conversations*) that are generated in platforms like Microsoft Teams.

With conversation reconstruction, you can use built-in capabilities to reconstruct, review, and export threaded conversations. Use eDiscovery (Premium) conversation reconstruction to:

- Preserve unique message-level metadata across all messages within a conversation.

- Collect contextual messages around your search results.

- Review, annotate, and redact threaded conversations.

- Export individual messages or threaded conversations

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Terminology

Here are few definitions to help you get start using conversation reconstruction.

- **Messages:** Represent the smallest unit of a conversation. Messages may vary in size, structure, and metadata.

- **Conversation:** Represents a grouping of one or more messages. Across different applications, conversations may be represented in different ways. In some applications, there is an explicit action that results from replying to an existing message. Conversations are formed explicitly as a result of this user action. For example, here is a screenshot of a channel conversation in Microsoft Teams.

   ![Microsoft Teams Channel Conversation.](../media/threadedchat.png)

   In other apps (such as group chat messages in Teams), there is not a formal reply chain and instead messages appear as a "flat river of messages" within a single thread. In these types apps, conversations are inferred from a group of messages that occur within a certain time. This "soft-grouping" of messages (as opposed to a reply chain) represent the "back and forth" conversation about a specific topic of interest.

## Step 1: Create a draft collection

After you have identified relevant custodians and content locations, you can create a search to find potentially relevant content. On the **Collections** tab in the eDiscovery (Premium) case, you can create a collection by clicking **New collection** and following the wizard. For information about how you can create a collection, build a search query, and preview the search results, see [Create a draft collection](create-draft-collection.md).

## Step 2: Commit a draft collection to a review set

After you have reviewed and finalized the search query in a collection, you can add the search results to a review set. When you add your search results into a review set, the original data is copied to an Azure Storage area to facilitate the review and analysis process. For more information about adding search results to a review set, see [Commit a draft collection to a review set](commit-draft-collection.md).

When you add items from conversations to a review set, you can use the threaded conversations option to collect contextual messages from conversations that contain items that match the search criteria of the collection. After you select the thread conversations option, the following things can happen:

  ![Conversation Retrieval.](../media/messagesandconversations.png)

1. Using a keyword and date range query, the search returned a hit on *Message 3*. This message was part of a larger conversation, illustrated by *CRC1*.

2. When you add the data into a review set and enable the conversation retrieval options, eDiscovery (Premium) will go back and collect other items in *CRC1*.

3. After the items have been added to the review set, you can review all the individual messages from *CRC1*.

To enable the threaded conversations option, see [Commit a draft collection to a review set](commit-draft-collection.md#commit-a-draft-collection-to-a-review-set).

## Step 3: Review and export threaded conversations

After the content has been processed and added to the review set, you can start reviewing the data in the review set. Individual messages are threaded together and presented as conversations. This lets you review and export contextual conversations.

  ![Conversation review set.](../media/ConversationRSOptions.PNG)

The following sections describe reviewing and exporting conversations.

### Reviewing conversations

In a review set, you can use the following options to facilitate the review process.

- **Group by conversation:** Groups messages within the same conversation together to help users simplify and expedite their review process.

- **Summary view:** Displays the threaded conversation. In this view, you can see the entire conversation and also access the metadata for each individual message.

   - View metadata for individual messages

   - Download individual messages

- **Text view:** Provides the extracted text for the entire conversation.

- **Annotate view:** Lets you markup a threaded view of the conversation. All messages in the conversation share the same annotated document.

- **Tagging:** When viewing conversations in a review set, you can view and apply tags by clicking **Tagging panel** in the Coding panel.

- **Rerun conversation conversion:** When messages are added to a conversation review set, a conversion job is automatically run to create the threaded summary and annotate views. If the Conversation Reconstruction job fails, you can rerun this job by clicking **Action > Create conversation PDFs** in the review set.

### Exporting conversations

For the options you can select when exporting conversations from a review set, see [Export documents from a review set](export-documents-from-review-set.md#export-options).

Specifically, you can export entire chat conversations in a single PDF file or you can export each chat message in a conversation as an individual file.

## More information

To learn more about how to review case data in eDiscovery (Premium), see the following articles:

- [Query and filter content in a review set](review-set-search.md)
- [Tag documents in a review set](tagging-documents.md)
- [View case data](view-documents-in-review-set.md)
- [Analyze case data](analyzing-data-in-review-set.md)
- [Export case data](exporting-data-ediscover20.md)
