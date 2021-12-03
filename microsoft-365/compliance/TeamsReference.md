---
title: "Teams workflow reference in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
ms.reviewer: jefwan
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MET150
ms.collection: M365-security-compliance
description: "Learn how to preserve, collect, review, and export content from Microsoft Teams in Advanced eDiscovery."
---

# Advanced eDiscovery workflow reference


<table>
<thead>
<tr class="header">
<th><strong>Workflow phase</strong></th>
<th><strong>​</strong></th>
<th><strong>Teams 1:1 chats​</strong></th>
<th><strong>Teams group chats​</strong></th>
<th><strong>Teams channels​</strong></th>
<th><strong>Private Teams channels​</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Identify</strong>​</td>
<td><strong>Teams content types</strong>​</td>
<td>Chat messages, posts, and attachments shared in a Teams conversation between two people​</td>
<td>Chat messages, posts, and attachments shared in a Teams conversation between three or more people​</td>
<td>Chat messages, posts, replies, and attachments shared in a Teams channel​</td>
<td>Message posts, replies, and attachments shared in a private Teams channel​</td>
</tr>
<tr class="even">
<td><strong>Identify</strong>​</td>
<td><strong>Storage location of chat messages and posts</strong>​</td>
<td>Messages in 1:1 chats are stored in the Exchange Online mailbox of all chat participants​</td>
<td>Messages in group chats are stored in the Exchange Online mailbox of all chat participants​</td>
<td>All channel messages and posts are stored in the Exchange Online mailbox associated with the team​</td>
<td>Messages sent in a private channel are stored in the Exchange Online mailboxes of all members of the private channel​</td>
</tr>
<tr class="odd">
<td><strong>Identify</strong></td>
<td><strong>Storage location of files and attachments</strong>​</td>
<td><p>Files shared in a 1:1 chat are stored in the OneDrive for Business account of the person who shared the file​</p>
<p>​</p></td>
<td><p>Files shared in group chats chat are stored in the OneDrive for Business account of the person who shared the file​</p>
<p>​</p></td>
<td>Files shared in a channel are stored in the SharePoint Online site associated with the team​</td>
<td><p>Files shared in a private Channel are stored in a dedicated SharePoint Online site associated with the private channel​</p>
<p>​</p></td>
</tr>
<tr class="even">
<td><strong>Collect</strong>​</td>
<td><strong>Queries with search parameters</strong>​</td>
<td>Messages posted 12 hours before and 12 hours after responsive items are grouped with the responsive item in a single transcript file​</td>
<td>Messages posted 12 hours before and 12 hours after responsive items are grouped with the responsive item in a single transcript file​</td>
<td>Each post that contains responsive items and all corresponding replies are grouped in a single transcript file​</td>
<td>Each post that contains responsive items and all corresponding replies are grouped in a single transcript file​</td>
</tr>
<tr class="odd">
<td><strong>Collect</strong>​</td>
<td><strong>Queries with date ranges</strong>​</td>
<td>Messages in a 24-hour window are grouped in a single transcript file​</td>
<td>Messages in a 24-hour window are grouped in a single transcript file​</td>
<td>Each post that contains responsive items and all corresponding replies are grouped in a single transcript file​</td>
<td>Each post that contains responsive items and all corresponding replies are grouped in a single transcript file​</td>
</tr>
<tr class="even">
<td><strong>Review </strong>​</td>
<td><strong>Grouping messages by family</strong>​</td>
<td><p>Transcript + attachments + extracted items have the same FamilyId​</p>
<p>Each transcript has a unique FamilyId​</p></td>
<td><p>Transcript + attachments + extracted items have the same FamilyId</p>
<p>Each transcript has a unique FamilyId​</p></td>
<td><p>Each post + all replies + attachments are saved to its own transcript ​</p>
<p>This transcript + all attachments and extracted items share the same FamilyId​</p></td>
<td><p>Each post + all replies + attachments are saved to its own transcript​</p>
<p>This transcript + all its attachments and extracted items share the same FamilyId​</p></td>
</tr>
<tr class="odd">
<td><strong>Review </strong></td>
<td><strong>Grouping messages by conversation</strong>​</td>
<td>All transcript files and family items within the same conversation share the same ConversationId, including all extracted items and attachments of all transcripts, transcripts for the same chat conversation, and custodian copies of each transcript​</td>
<td>All transcript files and family items within the same conversation share the same ConversationId, including all extracted items and attachments of all transcripts, transcripts for the same chat conversation, and custodian copies of each transcript​</td>
<td>Each post and its attachments and extracted items have a unique ConversationId​</td>
<td>Each post and its attachments and extracted items have a unique ConversationId</td>
</tr>
</tbody>
</table>
