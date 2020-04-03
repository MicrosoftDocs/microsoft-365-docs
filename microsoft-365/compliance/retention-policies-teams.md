---
title: "Learn about retention policies for Teams"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Learn about retention policies that apply to Microsoft Teams."
---

# Learn about retention policies for Microsoft Teams

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

The information in this article supplements [Learn about retention policies](retention-policies.md) because it has information that's specific to Microsoft Teams.

## How a retention policy works with Microsoft Teams

You can use a retention policy to retain chats and channel messages in Teams. Teams chats are stored in a hidden folder in the mailbox of each user included in the chat, and Teams channel messages are stored in a similar hidden folder in the group mailbox for the team. However, it's important to understand that Teams uses an Azure-powered chat service that also stores this data, and by default this service stores the data forever. For this reason, we strongly recommend that you use the Teams location to retain and delete Teams data. Using the Teams location will permanently delete data from both the Exchange mailboxes and the underlying Azure-powered chat service. For more information, see [Overview of security and compliance in Microsoft Teams](https://go.microsoft.com/fwlink/?linkid=871258).
  
Teams chats and channel messages are not affected by retention policies applied to user or group mailboxes in the Exchange or Office 365 groups locations. Even though Teams chats and channel messages are stored in Exchange, they're affected only by a retention policy that's applied to the Teams location.

> [!NOTE]
> If a user is included in an active retention policy that retains Teams data, then deleting a mailbox of such a user is not allowed since the storage of the data needs to be retained. To delete a mailbox of such a user, the admin needs to exclude the user from the retention policy first.
  

After a retention policy is assigned to a team, chat and channel messages, the paths the content takes depend on whether the retention policy is to retain and delete, to retain only, or delete only.

When the retention policy is to retain and delete:

![Diagram of retention flow for Teams chat and channel messages](../media/TeamsRetentionLifecycle.png)

1. **If a chat or channel message is modified or deleted** by the user during the retention period, the message is moved (or copied, in the case of edit) to the SubstrateHolds folder (which is a hidden folder in every user or group mailbox) and is stored in this folder until the retention period expires. Messages are permanently deleted on the day the retention period expires.

2. **If a chat or channel message isn't deleted** during the retention period, the message is moved to the SubstrateHolds folder within one day after the retention period expires (it takes from 0 to 24 hours). The message is permanently deleted one day after it is moved to the SubstrateHolds folder. 

> [!NOTE]
> Messages in the SubstrateHolds folder are searchable by eDiscovery tools. After a message is permanently deleted, it won't be returned in an eDiscovery search.

When the retention policy is retain-only, or delete-only, the contents paths are variations of retain and delete:

### Content paths for retain-only retention policy

1. **If a chat or channel message is modified or deleted** during the retention period: A copy of the original message is created in the SubstrateHolds folder and retained till the end of the retention period, when the copy in the SubstrateHolds folder is permanently deleted one day after the item expires. 

2. **If the item is not modified or deleted** during the retention period: Nothing happens before and after the retention period; the message remains in its original location.

#### Content paths paths for delete-only retention policy

1. **If the message is not deleted** during the retention period: At the end of the retention period, the message is moved to the SubstrateHolds folder. 

2. **If the item is deleted by the user** during the period, the item is immediately moved to the SubstrateHolds folder. If a user deletes the message from there or empties the SubstrateHolds folder, the item is permanently deleted. Otherwise, the message is permanently deleted one day after being in the SubstrateHolds folder.

## Limitations

We're continuously working on optimizing retention functionality in Teams, and we plan to release new features in the coming months. In the meantime, here are a few limitations to be aware of:
  
- **Teams require a separate retention policy**. When you create a retention policy and toggle on the Teams location, all other locations toggle off. A retention policy that includes Teams can include only Teams and no other locations. 
    
- **Teams aren't included in an org-wide policy**. If you create an org-wide policy, Teams are not included because they require a separate retention policy. 
    
- **Teams doesn't support advanced retention**. When you create a retention policy, if you choose the [Advanced settings to identify content that meets specific conditions](retention-policies.md#advanced-settings-to-identify-content-that-meets-specific-conditions), the Teams location is not available. At this time, retention in Teams applies to all of the chat and channel message content. 

- **Teams content in private channels isn't supported**. At this time, retention policies created for Teams don't apply to private channel messages. Only messages in standard channels are subject to a retention policy created for Teams. Support for retention policies for private channels is coming soon. 
    
- **Teams may take up to three days to clean up expired messages**. A retention policy applied to Teams will delete chat and channel messages when the retention period expires. However, it may take up to three days to clean up these messages and permanently delete them. Also, chat and channel messages will be searchable with eDiscovery tools during the time after the retention period expires and when messages are permanently deleted.

   > [!NOTE]
   > It used to be true that a retention policy couldn't delete Teams content that's less than 30 days old, but we've removed this limitation. Now the retention period for Teams content can be any number of days you choose and as short as one day. If you do have a retention period of one day, it will take up to three days after the retention period expires before messages are permanently deleted.
    
In a Team, files that are shared in chat are stored in the OneDrive account of the user who shared the file. Files that are uploaded into channels are stored in the SharePoint site for the Team. Therefore, to retain or delete files in a Team, you need to create a retention policy that applies to the SharePoint and OneDrive locations specifically. If you want to apply a policy to the files of just a specific team, you can choose the SharePoint site for the Team and the OneDrive accounts of users in the Team.
  
A retention policy that applies to Teams can use [Preservation Lock](retention-policies.md#use-preservation-lock-to-comply-with-regulatory-requirements).
  
![Teams locations for chat and channel messages](../media/127345da-e802-4b3a-afc7-6e354dc3f409.png)
  
> [!NOTE]
> If you create retention policies for Skype or Teams locations in your organization, one of those policies is shown as the default folder policy when a user views the properties of a mailbox folder in the Outlook desktop client. This is an incorrect display issue in Outlook and [a known issue](https://support.microsoft.com/help/4491013/outlook-client-displays-teams-or-skype-for-business-retention-policies). What should be displayed as the default folder policy is the mailbox retention policy that's applied to the folder. The Skype or Teams retention policy is not applied to the user's mailbox.

## How to configure a retention policy for Microsoft Teams

See [Create and configure retention policies](create-retention-policies.md).

For the **Choose locations** page of the wizard, select one of the following options:

- **Apply policy only to content in Exchange email, public folders, Office 365 groups, OneDrive and SharePoint documents**

- **Let me choose specific locations** > **Teams channel messages** and **Teams chats**

