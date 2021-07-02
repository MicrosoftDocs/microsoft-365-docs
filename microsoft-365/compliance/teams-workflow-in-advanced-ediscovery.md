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

This article provides a comprehensive set of guidelines and best practices for using Advanced eDiscovery to preserve, collect, review, and export content in Microsoft Teams. The goal of this article is to help you optimize your eDiscovery workflow for Teams content.

There are four categories of Teams content that you can collect and process using Advanced eDiscovery:

- **Teams 1:1 chats**. Chat messages, posts, and attachments shared in a Teams conversation between two people.  Teams 1:1 chats are also called *conversations*.

- **Teams group chats**. Chat messages, posts, and attachments shared in a Teams conversation between three or more people. Also called *1:N* chats or *group conversations*.

- **Teams channels**. Chat messages, posts, replies, and attachments shared in a Teams channel.

- **Private Teams channels**. Message posts, replies, and attachments shared in a private Teams channel.

## Where Teams content is stored


||Location of chat messages and posts  |Location of files and attachments |
|:---------|:---------|:---------|
|Teams 1:1 chats     |Messages in 1:1 chats are stored in the Exchange Online mailbox of all chat participants. |Files shared in a 1:1 chat are stored in the OneDrive for Business account of the person who shared the file. |
|Teams group chats     |Messages in group chats are stored in the Exchange Online mailbox of all chat participants. |Files shared in group chats chat are stored in the OneDrive for Business account of the person who shared the file. |
|Teams channels     |All channel messages and posts are stored in the Exchange Online mailbox associated with the team.|Files shared in a channel are stored in the SharePoint Online site associated with the team.           |
|Private Teams channels     |Messages sent in a private channel are stored in the Exchange Online mailboxes of all members of the private channel.|Files shared in a private Channel are stored in a dedicated SharePoint Online site associated with the private channel.|
||||


## Create a case for Teams content

During case creation, users have the option to create a large case or a normal case. To collect Teams messages as transcript HTML items (recommended), select Large Case during case creation. If you select normal case, Teams and Yammer messages will be collected individually and threaded as a PDF.  


## Add Teams data sources and preserve Teams content  

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

- **Teams 1:1 chats and group chats**. All messages that were posted within a 24-hour time window are grouped in a single transcript.  

- **Teams channel messages and private channel messages**. Each post and all its corresponding replies are grouped in a single transcript.



## Export Teams content 