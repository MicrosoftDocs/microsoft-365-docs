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

- Collections up to 1 TB can be added to reviews sets, which enables you to collect and amounts large amounts of Teams content in a case.

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

After adding custodians to the case and preserving content in custodian data sources, the next step in the workflow is to search for Teams content that's relevant to your investigation and add it to a review set for further review and analysis. Though it's typical to collect Teams content together with content content from other Microsoft 365 services such as email in Exchange and documents in SharePoint, this section will specifically focus on collecting Teams content in a collection. You can create additional collections that collect non-Teams content to add to a review set.

When you collect Teams content for a case, there are two steps in the workflow:

1. **Create a draft collection**.  The first step is to create a *draft collection*, which is an estimate of the items that match your search criteria. You can view information about the results that matched the search query, such as the total number and size of items found, the different data sources where they were found, and statistics about the search query. You can also preview a sample of items that were returned by the collection. Using these statistics, you can change the search query and rerun the draft collection as many times as is necessary to narrow your results until you're satisfied you're collecting the content relevant to your case.

2. **Commit a draft collection to a review set**. Once you're satisfied with the results of a draft collection, you can commit the collection to a review set. When you commit a draft collection, the items returned by the collection are added to a review set for review, analysis, and export.

You also have the option of not running a draft collection and adding the collection results directly to a review set.

To create a draft collection of Teams items:

1. Go to the Advanced eDiscovery case that you added the custodians to in the previous section, and then click **Collections**.

2. On the **Collections** page, select **New collection** > **Standard collection**.

3. Type a name (required) and description (optional) for the collection.

4. On the **Custodial data sources** page, click **Select custodians** to select the custodians that you added to the case.

   The list of the case custodians is displayed on the **Select custodians** flyout page.

5. Select one or more custodians and then click **Add**.

   After you add specific custodians to the collection, a list of specific data sources for each custodian is displayed. These are the data sources that you configured when you added the custodian to the case. All custodian data sources are selected by default.

6. We recommending removing custodians' OneDrive accounts from the collection (by un-selecting the checkbox in the **Custodian's OneDrive** column for each custodian). This prevents the collection of duplicate files that where attached to 1:1 chats and group chats. To collect these files, you can enable the option of collecting cloud attachments when you commit the draft collection to the review set. By using this method (instead of searching OneDrive accounts as part of the collection) files that attached to 1:1 and group chats are grouped in the conversation transcript.

7. After you configure the custodial data sources

Teams 1-1, Group chat, and Private Channel messages will automatically be included as part of this collection scope given that Custodian’s mailbox are automatically selected by default.  

We recommend removing all custodian’s OneDrive to avoid bringing in unnecessary duplicate items attachment items by de-selecting the checkbox next to the OneDrive column. There is a collection setting in Step 7 that enables you to collect cloud attachments to ensure that attachments are included as part of your collection and grouped with the transcript in which they are shared.  

If you have associated Teams Channels with Custodians when you added a Custodian, then Teams Channel should also be automatically included in the scope of this collection. To confirm, horizontally scroll to the end of the table and ensure that all checkboxes under Additional teams are selected.  

On the Non-custodial data sources page, do one of the following things to identify the non-custodial data sources to collect content from: 

Click Select non-custodial data sources to select specific non-custodial data sources that were added to the case.  

Even though you have added a SharePoint Site for Teams Private Channels during data source identification to place a hold on this content, we don’t recommend including as part of search to avoid bringing unnecessary duplicate attachments. There is a collection setting in Step 7 that enables you to collect cloud attachments to ensure that attachments are included as part of your collection and grouped with the transcript in which they are shared. 

Select Next to skip over this step.  

On the Additional data sources page, select Next to skip over this step.  

On the Conditions page, you can create the search query that is used to collect items from the data sources that you've identified in the previous wizard pages. You can also add various search conditions to narrow the scope of the collection. For more information, see Build search queries for collections. 

To limited your collection to just Teams content, add the following condition into your keyword condition 

“kind:microsoftteams(c:c)(date=2021-03-28..2021-06-30)” 

On the Save as draft or add to review set page, select  Add to review set 

Select a new review set and provide a name 

Collection of cloud attachments and contextual messages are selected by default for all Large cases.  







## Review Teams content 



Understand grouping, threading, and extraction behavior for Teams messages to optimize review of Teams content.  

 

### Grouping 

After Teams content is collected into a review set, Team chat messages are grouped by family or by conversation.  

Transcript  


| Teams content type|Group by family  |Group by conversation  |
|:---------|:---------|:---------|
|Teams 1:1 and group chats   | A transcript and its attachments/extracted items will share the same FamilyId        |ll transcripts and their family items within the same conversation/thread would share the same ConversationId. For Teams 1-1 chat, transcripts of different time windows, but same conversation thread would be grouped together.           |
|Teams channel and private channels    | A transcript and its attachments/extracted items will share the same FamilyId. Each post and all its replies would be its own transcript.        |Each post has its unique conversationId. If there are recent replies for a post that weren’t collected initially, these replies will continue to be grouped via ConversationId with the originally collect post.           |
||||


### Conversation threading

Transcript HTML Threading 

- **Teams 1:1 chats and group chats**. All messages that were posted within a 24-hour time window of responsive items are grouped in a single transcript.  

- **Teams channel messages and private channel messages**. Each post and all its corresponding replies are grouped in a single transcript.



## Export Teams content 