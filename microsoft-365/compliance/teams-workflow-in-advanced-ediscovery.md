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

A prerequisite to managing Teams content in Advanced eDiscovery is to understand the type Teams content that you can collect, process and review in Advanced eDiscovery and where that content is stored in Microsoft 365. The following table lists Teams content type and where each are stored.

||Location of chat messages and posts  |Location of files and attachments |
|:---------|:---------|:---------|
|Teams 1:1 chats     |Messages in 1:1 chats are stored in the Exchange Online mailbox of all chat participants. |Files shared in a 1:1 chat are stored in the OneDrive for Business account of the person who shared the file. |
|Teams group chats     |Messages in group chats are stored in the Exchange Online mailbox of all chat participants. |Files shared in group chats chat are stored in the OneDrive for Business account of the person who shared the file. |
|Teams channels     |All channel messages and posts are stored in the Exchange Online mailbox associated with the team.|Files shared in a channel are stored in the SharePoint Online site associated with the team.           |
|Private Teams channels     |Messages sent in a private channel are stored in the Exchange Online mailboxes of all members of the private channel.|Files shared in a private Channel are stored in a dedicated SharePoint Online site associated with the private channel.|
||||

## Create a case for Teams content

The first step to managing Teams content in Advanced eDiscovery is to create a case using the large case format that's optimized for managing Teams content. Here's the benefits of using the large case format for Teams content:

- Support for conversation threading, in which additional messages in the same conversation that include responsive items are are automatically collected and added to review sets.

- Teams chat conversations (that include the original post and all replies) are automatically added to review sets as an HTML transcript file. This helps provides context the conversations with responsive items and reduce total number of items produced by chat-based content.   

- Collections up to 1 TB can be added to reviews sets, which enables you to collect and amounts large amounts of Teams content in a case.

To create a large case:

1. Go to <https://compliance.microsoft.com> and sign in.

2. In the left navigation pane of the Microsoft 365 compliance center, click **eDiscovery > Advanced**.

3. On the **Advanced eDiscovery** page, click the **Cases** tab, and then click **Create a case**.

   The **New eDiscovery case** flyout page is displayed. The **Case format** section provides the option to create a large case.

   ![Large case option on the New eDiscovery case page](..\media\AeDLargeCases1.png)

4. After naming the case, select the **Large case** option, and then click **Save** to create the large case.

## Add Teams data sources and preserve Teams content  

The next step is to identify the users who are custodians in your investigation and add them and their content locations as custodian to the case. When you add custodian, you can specify their mailbox and OneDrive as custodial data sources. You can also specify the Teams and private channels that they are members and add those as custodial data locations. Specifying Teams content locations as custodian data locations let you quickly place these locations on legal hold to preserve content during the course of your investigation. It also makes it easy to collect content from custodial data sources and add it to a review set.

Identify custodians 

Click the Data sources tab and then click Add data source > Add new custodians. 

Add one or more users in your organization as custodians to the case by typing the first part of a person's name or alias. After you find the correct person, select their name to add them to the list.  

Choose custodian data locations 

Expand the custodian to view the primary data locations that have been automatically associated to each custodian.  

To ensure that Teams 1-1, Teams Group messages and files are added – Given that a custodian’s mailbox and OneDrive are automatically associated to each custodian as primary locations, this automatically ensures that Teams 1-1 and group conversations are added for each custodian.   

To ensure that Teams Channel messages and files are added – Expand a custodian and navigate to the Teams picker and click Edit to view a list of Teams that a custodian is a member of. By selecting a Team, user would associate all Channels within that team to the custodian.  

To ensure that Teams private channel messages and files are added – All messages shared in private channels are stored on user’s mailbox and should be automatically added as a primary data location by default. Add the private channel’s SharePoint site separate via the SharePoint picker.  

Link to Teams documentation on how users and figure out sharepoint url using powershell commands  

Configure hold settings 

Same 

Review the custodians and complete the process  

Same 

 

 

<Insert link to custodian workflow /> 

Follow these steps to ensure the appropriate Teams content is identified when adding Custodians.  

Link to Custodian workflow.  

Teams 1-1 chat and group chat 

Add each user’s personal mailbox and OneDrive as a custodian and place them on hold  

Screenshot 

Teams Channels  

When adding a user as custodian, associate Teams that they are a member of as additional location. When placing this custodian on hold, all of their data sources including the Teams associated with this user will be placed on hold.  

Screenshot 

Teams Private Channels  

Add mailboxes of the members to each private channel you are collecting as part of custodians 

Add sharepoint of each private channel separately either as custodian or as an independent data-source   

## Collect Teams content 

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