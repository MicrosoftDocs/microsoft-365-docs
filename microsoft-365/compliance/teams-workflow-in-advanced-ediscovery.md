---
title: "Teams workflow in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
ms.reviewer: jefwan
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MET150
ms.collection: M365-security-compliance
description: "Learn how to preserve, collect, review, and export content from Microsoft Teams in Advanced eDiscovery."
---

# Advanced eDiscovery workflow for content in Microsoft Teams

This article provides a comprehensive set of procedures, guidelines, and best practices for using Advanced eDiscovery to preserve, collect, review, and export content from Microsoft Teams. The goal of this article is to help you optimize your eDiscovery workflow for Teams content.

There are four categories of Teams content that you can collect and process using Advanced eDiscovery:

- **Teams 1:1 chats**. Chat messages, posts, and attachments shared in a Teams conversation between two people.  Teams 1:1 chats are also called *conversations*.

- **Teams group chats**. Chat messages, posts, and attachments shared in a Teams conversation between three or more people. Also called *1:N* chats or *group conversations*.

- **Teams channels**. Chat messages, posts, replies, and attachments shared in a Teams channel.

- **Private Teams channels**. Message posts, replies, and attachments shared in a private Teams channel.

## Where Teams content is stored

A prerequisite to managing Teams content in Advanced eDiscovery is to understand the type of Teams content that you can collect, process, and review in Advanced eDiscovery and where that content is stored in Microsoft 365. The following table lists Teams content type and where each is stored.

||Location of chat messages and posts  |Location of files and attachments |
|:---------|:---------|:---------|
|Teams 1:1 chats     |Messages in 1:1 chats are stored in the Exchange Online mailbox of all chat participants. |Files shared in a 1:1 chat are stored in the OneDrive for Business account of the person who shared the file. |
|Teams group chats     |Messages in group chats are stored in the Exchange Online mailbox of all chat participants. |Files shared in group chats chat are stored in the OneDrive for Business account of the person who shared the file. |
|Teams channels     |All channel messages and posts are stored in the Exchange Online mailbox associated with the team.|Files shared in a channel are stored in the SharePoint Online site associated with the team.           |
|Private Teams channels     |Messages sent in a private channel are stored in the Exchange Online mailboxes of all members of the private channel.|Files shared in a private Channel are stored in a dedicated SharePoint Online site associated with the private channel.|
||||

## Create a case for Teams content

The first step to managing Teams content in Advanced eDiscovery is to create a case using the large case format that's optimized for managing Teams content. Here's the benefits of using the large case format for Teams content:

- Support for conversation threading, in which additional messages in the same conversation that include responsive items are automatically collected and added to review sets.

- Teams chat conversations (that include the original post and all replies) are automatically added to review sets as an HTML transcript file. This helps provides context the conversations with responsive items and reduce total number of items produced by chat-based content.

- Collections up to 1 TB can be added to review sets, which lets you collect and amounts large amounts of Teams content in a case.

To create a large case:

1. Go to <https://compliance.microsoft.com> and sign in.

2. In the left navigation pane of the Microsoft 365 compliance center, click **eDiscovery > Advanced**.

3. On the **Advanced eDiscovery** page, click the **Cases** tab, and then click **Create a case**.

   The **New eDiscovery case** flyout page is displayed. The **Case format** section provides the option to create a large case.

   ![Large case option on the New eDiscovery case page](..\media\AeDLargeCases1.png)

4. After naming the case, select the **Large case** option, and then click **Save** to create the large case.

## Add Teams custodial data sources and preserve Teams content  

The next step is to identify the users who are the data custodians in your investigation and add them and their content locations as custodians to the case you created in the previous section. When you add custodians, you can specify their mailbox and OneDrive account as custodial data sources. You can also specify the Teams and private channels they are members of and add those as custodial data sources. Specifying Teams content locations as custodian data sources let you quickly place these locations on legal hold to preserve content during your investigation. It also makes it easy to collect content and add it to a review set.

To add custodians to a case and preserve custodial data sources:

1. Go to the Advanced eDiscovery case that you created in the previous section, and then click **Data sources**.

2. On the **Data sources** page, click **Add data source** > **Add new custodians**.

3. In the **New custodian** wizard, add one or more users as custodians to the case by typing the first part of the user's name or alias. After you find the correct person, select their name to add them to the list.  

4. Expand each custodian to view the primary data sources that have been automatically associated to the custodian, and to select other locations to associate to the custodian.

   ![Custodian data sources](..\media\TeamsCustodialDataLocations1.png)

5. Follow these guidelines to add custodial data sources for Teams content. Click **Edit** to add a data location.

   - **Mailbox**. The custodian's mailbox is selected by default. Keep this selected to add (and preserve) 1:1 chats, group chats, and chat messages sent in private channels as custodial data.

   - **OneDrive**. The custodian's OneDrive account is selected by default. Keep this selected to add (and preserve) files shared in 1:1 chats and group chats as custodial data.

   - **SharePoint**. Add the SharePoint site associated with any private channel the custodian is a member of to add (and preserve) as custodial data the files shared in the private channel. Click **Edit** ad then add the URL for the SharePoint site associated with a private channel. To learn how to locate the private channels a user is a member of, see [eDiscovery of private channels](/microsoftteams/ediscovery-investigation#ediscovery-of-private-channels).

   - **Teams**. Add the teams that the custodian is a member of to add (and preserve) as custodial data all channel messages and all files shared to a Teams channel. When you click **Edit**, the mailbox and site associated with each team the custodian is a member of are displayed in a list. Select the teams that you want to associate to the custodian. You have to select both the corresponding mailbox and site for each team.

   > [!NOTE]
   > You can also add the mailbox and site of Teams that custodians aren't members of as a custodian data location. You do this by clicking **Edit** next to **Exchange** and **SharePoint** and then adding the mailbox and site associate with the team.

6. After you add custodians and configure the custodial data sources, click **Next** to display the **Hold settings** page.

   A list of the custodians is displayed and the checkbox in the **Hold** column is selected by default. This indicated that a hold will be placed on the data sources that you associated with each custodian. Leave these checkboxes selected to preserve this data.

7. On the **Hold settings** page, click **Next** to review the custodians settings. Click **Submit** to add the custodians to the case.

## Collect Teams content and add to review set

After adding custodians to the case and preserving content in custodian data sources, the next step in the workflow is to search for Teams content that's relevant to your investigation and add it to a review set for further review and analysis. Though it's typical to collect Teams content together with content from other Microsoft 365 services such as email in Exchange and documents in SharePoint, this section will specifically focus on collecting Teams content in a collection. You can create additional collections that collect non-Teams content to add to a review set.

When you collect Teams content for a case, there are two steps in the workflow:

1. **Create a draft collection**.  The first step is to create a *draft collection*, which is an estimate of the items that match your search criteria. You can view information about the results that matched the search query, such as the total number and size of items found, the different data sources where they were found, and statistics about the search query. You can also preview a sample of items that were returned by the collection. Using these statistics, you can change the search query and rerun the draft collection as many times as is necessary to narrow the results until you're satisfied you're collecting the content relevant to your case.

2. **Commit a draft collection to a review set**. Once you're satisfied with the results of a draft collection, you can commit the collection to a review set. When you commit a draft collection, the items returned by the collection are added to a review set for review, analysis, and export.

You also have the option of not running a draft collection and adding the collection results directly to a review set when you create and run the collection.

To create a collection of Teams content:

1. Go to the Advanced eDiscovery case that you added the custodians to in the previous section, and then click **Collections**.

2. On the **Collections** page, select **New collection** > **Standard collection**.

3. Type a name (required) and description (optional) for the collection.

4. On the **Custodial data sources** page, click **Select custodians** to select the custodians that you added to the case.

   The list of the case custodians is displayed on the **Select custodians** flyout page.

5. Select one or more custodians and then click **Add**.

   After you add specific custodians to the collection, a list of specific data sources for each custodian is displayed. These are the data sources that you configured when you added the custodian to the case. All custodian data sources are selected by default. This includes any Teams and private channels that you associated with a custodian.

   We recommend doing the two following things when collecting Teams content:

   - Remove custodians' OneDrive accounts from the collection scope (by unselecting the checkbox in the **Custodian's OneDrive** column for each custodian). This prevents the collection of duplicate files that were attached to 1:1 chats and group chats. Cloud attachments are automatically collected from each data source that was searched in the collection when you commit the draft collection to the review set. By using this method (instead of searching OneDrive accounts as part of the collection), files attached to 1:1 and group chats are grouped in the conversation they were shared in.

   - Remove private channels from the collection scope (by unselecting the appropriate checkbox in the **Additional site** column) to eliminate collecting duplicate files that were attached to private channel conversations. Files attached to private channel conversations are automatically added to the review set when you commit the draft collection and grouped in the conversations that were shared in.

6. On the **Non-custodial data sources** wizard page, you can choose non-custodial data sources that contain Teams content that you may have added to the case to search in the collection. For more information, see [Add non-custodial data sources to a case](non-custodial-data-sources.md).

7. On the **Additional locations** wizard page, you can add other data sources to search in the collection. For example, you could add the mailbox and site for a team that wasn't added as a custodial or non-custodial data source.

8. On the **Conditions** wizard page, configure the search query to collect Teams content from the data sources that you specified on the previous wizard pages. You can use various keywords and search conditions to narrow the scope of the collection. For more information, see [Build search queries for collections](building-search-queries.md).

   To help ensure the most comprehensive collection of Teams chat conversations (including 1:1, group, channel, and private chats) use the **Type** condition and select the **Instant messages** option. We also recommend including a date range to narrow the scope of the collection to items with the date range of your investigation. Here's a screenshot of a sample query using the **Type** and **Date** options:

   ![Query to collect Teams content](..\media\TeamsConditionsQueryType.png)

9. On the **Save draft or collect** wizard page, do one of the following depending on whether you want to create a draft collection or commit the collection to a review set.

   ![Save draft collection or commit collection](..\media\TeamsDraftCommitCollection.png)

   1. **Save collection as draft**. Choose this option to create a draft collection. As previously explained, a draft collection doesn't add the collection results to a review set. It returns an estimate of the search results that match the search query for the data sources in the collection scope. This gives you the opportunity to view [collection statistics and reports[(collection-statistics-reports.md)] and edit and rerun the draft collection. When you satisfied with the result of a draft collection, you can commit it to a review set. For more information, see [Create a draft collection](create-draft-collection.md).

   2. **Collect items and add to a review set**. Choose this option to run the collection and then add the results to a review set. You can add the collection to a new or existing review set. The options to collect contextual Teams conversation messages (also called *conversation threading*) and collect cloud attachments are selected by default and can't be unselected. These options are automatically applied because of the large case format that you used when you initially created the new case for Teams content. For more information about committing collections to a review set, see [Commit a draft collection to a review set](commit-draft-collection.md).

10. After you're finished configuring the collection, submit the collection to create a draft collection or collect items and add them to a review set.

   When the process of adding the collection to the review set is completed, the status value for the collection on the **Collections** tab is set to **Committed**.

## Review Teams content in a review set

After you add collections of Teams content to a review set, the next step is to review the content for its relevance to your investigation and cull it if necessary. An important prerequisite to reviewing Teams content is understanding how Advanced eDiscovery processes Teams chat conversations and attachments when adding them to a review set. This processing of Teams content results in the following three things:

- **[Grouping](#grouping)**. How posts and replies in chat conversations are grouped together and presented in the review set. This also includes how child items in chat conversations are extracted and group within the conversation.

- **[Conversation threading](#conversation-threading)**. How Advanced eDiscovery determines what additional content from a chat conversation to add to a review set to provide context around items that matched the collection criteria.

- **[Deduplication](#deduplication-of-teams-content)**. How Advanced eDiscovery handles duplicate Teams content.

- **[Metadata](#metadata-for-teams-content)**. Metadata properties that Advanced eDiscovery adds to Teams content after it's collected and added to a review set.

Understand grouping, conversation threading, deduplication, and Teams metadata will help you optimize the review and analysis of Teams content. This section also has [tips for viewing Teams content in a review set](#tips-for-viewing-teams-content-in-a-review-set).

### Grouping

When content from Teams chat conversations is added to a review set, posts and replies from conversations are added to HTML transcript files. A single chat conversation can have multiple transcript files. An important function of these transcript files is to present Teams content as conversations and not as individual (or separate) messages. This helps provides context for items that matched the search criteria of your collections in the previous step. Items are group in transcript files by *family* and *conversation*. Items in the same family will have the same value for the **FamilyId** metadata property. Items in the same conversation will have the same value for the **ConversationId** metadata property.

The following table describes how the different types of Teams chat content are grouped by family and conversation.

| Teams content type|Group by family  |Group by conversation  |
|:---------|:---------|:---------|
|Teams 1:1 and group chats   | A transcript and all of its attachments and extracted items share the same **FamilyId**. Different **FamilyId** values indicate different transcript files. So if conversation items in a review set have different **FamilyId** values, they are different transcript files. In other words, each transcript has a unique **FamilyId**. |All transcript files and their family items within the same conversation share the same **ConversationId**. This includes the following items:<br/><br/>  - All extracted items that are attachments of a transcript <br/> - All transcripts within the same chat conversation<br/> - All custodian copies of each transcript<br/> - Transcripts from subsequent collections from the same chat conversation <br/><br/>  For Teams 1:1 chat conversations, you might have multiple transcript files, each one corresponding to a different time frame within the conversation. Because these transcript files contain content from the same conversation, they share the same **ConversationId**.|
|Teams channel and private channel chats    | Each post and all replies and attachments are saved to its own transcript. This transcript and all of its attachments and extracted items share the same **FamilyId**.         |Each post has a unique **ConversationId**. If there are subsequent collections from the same post, the transcripts resulting from those collections will have the same **ConversationId**.|
||||

Use the **Group** control in the command bar of a review set to view Teams content grouped by family or conversation.

![Group control in command bar](..\media\TeamsGroupControl.png)

- Select **Group family attachments** to view Teams content grouped by family. Each transcript file is displayed on a line in the list of review set items. Attachments are nested under the item.

- Select **Group Teams or Yammer conversations** to view Teams content grouped by conversation. Each conversation is displayed on a line in the list of review set items. Transcript files and attachments are nested under the top-level conversation.

> [!NOTE]
> Cloud attachments are grouped with the conversations they appear in. This grouping is accomplished by assigning the same **FamilyId** as the transcript file of the message the file was attached to and the same **ConversationId** as the conversation the message appeared in. This means multiple copies of cloud attachments may be added to the review set if they were attached to different conversations.

#### Tip for viewing transcript files for conversations

When viewing transcript files in a review set, some of the messages are highlighted in purple. The messages that are highlighted depend on which custodian copy of the transcript you're viewing. For example, in a 1:1 chat between User1 and User2, the messages posted by User1 are highlighted in purple when you view the transcript collected from User1's mailbox. When you view User2's transcript of the same conversation, messages posted by User2 are highlighted in purple. This highlighting behavior is based on the same Teams client experience, where a user's posts are highlighted in purple in the Teams client.

### Conversation threading

Conversation threading functionality in the large case format in Advanced eDiscovery helps you identify contextual content related to items that may be relevant to your investigation. This feature produces distinct conversation views that include chat messages that precede and follow the items match the search query during collection. This capability allows you to efficiently and rapidly review complete chat conversations (called *threaded conversations*) in Microsoft Teams. As previous explained, chat conversations are reconstructed in HTML transcript files when Advanced eDiscovery adds Teams content to a review set.

Here's the logic used by Advanced eDiscovery to include additional messages and replies transcript files that provide context around the items match the collection query (called *responsive items*) you used when collecting Teams content. Different threading behaviors are based on the types of chats and the search query used to collect the responsive items. The two types of collection criteria are:

- Queries that use search parameters, such as keywords and property:value pairs

- Queries that only use date ranges

| Teams content type|Queries with search parameters  |Queries with date ranges  |
|:---------|:---------|:---------|
|Teams 1:1 and group chats   |Messages that were posted 12 hours before and 12 hours after responsive items are grouped with the responsive item in a single transcript file.   |Messages in a 24-hour window are grouped in a single transcript file.|
|Teams channel and private channel chats    |Each post that contains responsive items and all corresponding replies are grouped in a single transcript file. |Same as queries with search parameters.|
||||

### Deduplication of Teams content

The following list describes the deduplication (and duplication) behavior when collecting Teams content into a review set.

- If a chat message is already collected in a review set, Advanced eDiscovery doesn't add the same message into the review set in subsequent collections.  

- Copies of the same conversation that exist in different data sources (such as the mailboxes of the conversation participants) are tagged with different metadata. As a result, each instance of the conversation is treated as unique and brought into the review set in separate transcript files. Each of these files will correspond to a specific custodian.

- Each transcript file added to a review set should be a one-to-one mapping to an item from workload. That means Advanced eDiscovery doesn't add any Teams content item that has already been added to the review set.

- For 1:1 and group chats, copies of messages are store in the mailbox of each conversation participant. So if all participants of a 1:1 or group chat are added as custodians in a case and include in the scope of a collection, then copies of each transcript (for the same conservation) are added to the review set. Each of these copies is associated with a corresponding custodian. **Tip**: The **Custodian** column in the review set list identifies the custodian for the corresponding transcript file.

- In subsequent collections of items from the same conversation, only the delta content that wasn't previously collected previously is added to the review set and grouped (by sharing the same **ConversationId**) with the previously collected transcripts from the same conversation. Here's an example of this behavior:

   1. Collection A collects messages in a conversation between User1 and User2 and adds to review set.

   2. Collection B collects messages from the same conversation, but there are new messages between User1 and User2 since Collection A was run.

   3. Only the new messages in Collection B are added to the review set. These messages are added to a separate transcript file, but the file is group with the transcripts from Collection A by the same **ConversationId**.

   This behavior applies to all the types of Teams chats.

### Metadata for Teams content

In large review sets with thousands or millions of items, it can be difficult to narrow the scope of your review to Teams content. To help you focus your review on Teams content, there are metadata properties that are specific to Teams content. You can use these properties to organize the columns in the review list and [configure filters and queries](review-set-search.md) to optimize the review of Teams content. These metadata properties are also included when you export Teams content from Advanced eDiscovery, to help you organize and view content post-export or in third-party eDiscovery tools.

The following table describes metadata properties for Teams content.

|Metadata property  |Description  |
|:---------|:---------|
|ContainsDeletedMessage      | Indicates whether a transcript file contains a deleted message. Deleted messages are identified when viewing the transcript file.|
|ContainsEditedMessage      | Indicates whether a transcript file contains an edited message. Edited messages are identified when viewing the transcript file.|
|ConversationId|A GUID that identifies the conversation that the item is associated with. Transcript files and attachments from the same conversation have the same value for this property.|
|Conversation name     | The name of the conversation the transcript file or attachment is associated with. For Teams 1:1 and group chats, the value of this property is the UPN of all participants of the conversation are concatenated. For example, `User3 <User3@contoso.onmicrosoft.com>,User4 <User4@contoso.onmicrosoft.com>,User2 <User2@contoso.onmicrosoft.com>`. Teams channel and private channel chats use the following format for conversation name: `<Team name>,<Channel name>`.  For example, `eDiscovery vNext, General`.          |
|ConversationType     | Indicates the type of Team chat. For Teams 1:1 and group chats, the value for this property is `Group`. For Teams channel and private channel chats, the value is `Channel`.|
|Date | The time stamp of the first message in the transcript file.|
|FamilyId|A GUID that identifies the transcript file for a chat conversation. Attachments will have the same value for this property as the transcript file that contains the message the file was attached to.|
|FileClass     |Indicates that type of content. Items from Teams chats have the value `Conversation`. In contrast, Exchange email messages have the value `Email`.|          |
|MessageKind     | The message kind property. Teams content has the value `microsoftteams , im`. |
|Recipients     | A list of all users who were sent a copy of the message in a transcript file.|
|TeamsChannelName     | The name of Teams channel for transcript files for channel and private channel chat messages.|
|||

For descriptions of other Advanced eDiscovery metadata properties, see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md).

## Export Teams content

After you have reviewed and culled Teams content in a review set, you can export the transcript files that contain content that's responsive to your investigation. There aren't any specific export settings for Teams content. Each transcript file is exported as an HTML message file. This file also  contains hidden CDATA tags with all metadata for the individual chat messages. The metadata properties discussed in the previous section are included when Teams content is exported.  

Each transcript file is referenced in the load file and can be located using the relative path in the Export_native_path field in the load file. Transcript files are located in the Conversations folder in the root export folder.

## Tips for viewing Teams content in a review set

Here are some tips and best practices for viewing Teams content in a review set.

- Use the **Customize columns** control in the command bar to add and organize columns to optimize the review of Teams content.

  ![Use the Edit column flyout page to add, remove, and organize columns](..\media\EditReviewSetColumns.png)

   You can add and remove columns that are useful for Teams content. You can also sequence the order of columns by dragging and dropping them in the **Edit column** flyout page. You can also sort on columns to group Teams content with similar values for the column you sort on.

- Add the **ConversationId** and **FamilyId** columns and move them to the left. This lets you sort conversation and family items and quickly views the column values at a glance. Other useful columns that to help you review Teams content include **Custodian**, **Recipients**, and **File type** or **Message kind**.

- Use [filters](review-set-search.md) for Teams-related properties to quickly display Teams content. There are filters for most of the metadata properties described in the previous section.
