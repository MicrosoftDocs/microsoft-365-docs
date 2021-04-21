---
title: "Content stored in Exchange Online mailboxes"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid:
description: "Content produced by cloud-based apps in Microsoft 365 is stored or associated with a user's Exchange Online mailbox. This content can be searched using Microsoft eDiscovery tools."
---

# Content stored in Exchange Online mailboxes for eDiscovery

A mailbox in Exchange Online is primarily used to store email-related items such as messages, calendar items, tasks, and notes. But that's changing as more cloud-based apps also store their data in a user's mailbox. One advantage of storing data in a mailbox is that you can use the search tools in content search, Core eDiscovery, and Advanced eDiscovery to find, view, and export the data from these cloud-based apps. The data from some of these apps is stored in hidden folders located in a non-interpersonal message (non-IPM) subtree in the mailbox. Data from other cloud-based apps might not be stored _in_ the mailbox, but it's _associated with_ the mailbox, and is returned in searches (if that data matches the search query). Regardless of whether cloud-based data is stored in or associated with a user mailbox, the data is typically not visible in an email client when a user opens their mailbox.

The following table lists the apps that either stores or associates data with a cloud-based mailbox. The table also describes the type of content that each app produces.

|Microsoft 365 app|Description|
|:---------|:---------|
|Forms<sup>*</sup>|Forms and responses to a form are stored in files that are attached to email messages and stored in a hidden folder in the mailbox of the user who created the form. Forms created before April 2020 are stored as a PDF file. Forms created after 2020 are stored as a JSON file.  Responses to a form are stored in a CSV file. When you export content from Forms in a PST file, this data is located in the **ApplicationDataRoot** folder in a subfolder named with the following globally unique identified (GUID): **c9a559d2-7aab-4f13-a6ed-e7e9c52aec87**. |
|Microsoft 365 Groups|Email messages, calendar items, contacts (People), notes, and tasks are stored in the mailbox that's associated with a Microsoft 365 group.|
|Outlook/Exchange Online|Email messages, calendar items, contacts (People), notes, and tasks are stored in a user's mailbox.|
|People|Contacts in the People app (which are the same contacts as the ones accessible in Outlook) are stored in a user's mailbox.|
|Class Schedule|Plans created in Class Schedule are stored in the mailbox of the corresponding Microsoft 365 Group that is provisioned when a new plan is created. The alias for the group mailbox is the name of the plan.|
|Skype for Business|Conversations in Skype for Business are stored in the Conversation History folder in a user's mailbox. If the mailbox of a participant of a Skype meeting is placed on Litigation Hold or assigned to a retention policy, files attached to a meeting are retained in the participants mailbox.|
|Sway<sup>*</sup>|Sways are stored as an HTML file that is attached to an email message and stored in a hidden folder in the mailbox of the user who created the sway. When you export content from Sway in a PST file, this data is located in the **ApplicationDataRoot** folder in a subfolder named with the following GUID:  **905fcf26-4eb7-48a0-9ff0-8dcc7194b5ba**.|
|Tasks|Tasks in the Tasks app (which are the same tasks as the ones accessible in Outlook) are stored in a user's mailbox.|
|Teams|Conversations that are part of a Teams channel are associated with the Teams mailbox. Conversations that are part of the Chat list in Teams (also called *1 x N chats*) are associated with the mailbox of the users who participate in the chat. Also, summary information for meetings and calls in a Teams channel are associated with mailboxes of users who dialed into the meeting or call. So when searching for Teams content, you would search the Teams mailbox for content in channel conversations and search user mailboxes for content in 1 x N chats.|
|To-Do|Tasks (called *to-dos*, which are saved in to-do lists) in the To-Do app are stored in a user's mailbox.|
|Yammer|Conversations and comments within a Yammer community are associated with the Microsoft 365 Group mailbox, as well as the user mailbox of the author and any named recipients (@ mentioned or Cc'ed users). Private messages sent outside of a Yammer community are stored in the mailbox of the users who participate in the private message.|  
||||

> [!NOTE]
> <sup>*</sup> At this time, if a hold is placed on a mailbox (by using holds in Core eDiscovery or Advanced eDiscovery cases), content from this app will not be preserved by the hold.