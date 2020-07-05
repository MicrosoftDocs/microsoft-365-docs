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

You can use a retention policy to retain chats and channel messages in Teams. Teams chats are stored in a hidden folder in the mailbox of each user included in the chat, and Teams channel messages are stored in a similar hidden folder in the group mailbox for the team. 

It's important to understand that Teams uses an Azure-powered chat service that also stores this data, and by default this service stores the data indefinitely. For this reason, we strongly recommend that you use the Teams locations to retain and delete this Teams data. Using the Teams locations will permanently delete data from both the Exchange mailboxes and the underlying Azure-powered chat service. For more information, see [Security and compliance in Microsoft Teams](https://go.microsoft.com/fwlink/?linkid=871258) and specifically, the [Information Protection Architecture](https://docs.microsoft.com/MicrosoftTeams/security-compliance-overview#information-protection-architecture) section.

Teams chats and channel messages are not affected by retention policies that are configured for user or group mailboxes. Even though Teams chats and channel messages are stored in Exchange, this Teams data is included only by a retention policy that's configured for the **Teams channel messages** and **Teams chats** locations.

> [!NOTE]
> If a user is included in an active retention policy that retains Teams data and you a delete a mailbox of a user who is included in this policy, to retain the Teams data, the mailbox is converted into an [inactive mailbox](inactive-mailboxes-in-office-365.md). If you don't need to retain this Teams data for the user, exclude the user account from the retention policy before you delete their mailbox.

After a retention policy is configured for chat and channel messages, the paths the content takes depend on whether the retention policy is to retain and delete, to retain only, or delete only.

When the retention policy is to retain and delete:

![Diagram of retention flow for Teams chat and channel messages](../media/TeamsRetentionLifecycle.png)

1. **If a chat or channel message is modified or deleted** by the user during the retention period, the message is moved (or copied, in the case of edit) to the SubstrateHolds folder (which is a hidden folder in every user or group mailbox) and is stored in this folder until the retention period expires. Messages are permanently deleted on the day the retention period expires.

2. **If a chat or channel message isn't deleted** during the retention period, the message is moved to the SubstrateHolds folder within one day after the retention period expires (it takes from 0 to 24 hours). The message is permanently deleted one day after it is moved to the SubstrateHolds folder. 

> [!NOTE]
> Messages in the SubstrateHolds folder are searchable by eDiscovery tools. After a message is permanently deleted, it won't be returned in an eDiscovery search.

When the retention policy is retain-only, or delete-only, the contents paths are variations of retain and delete:

### Content paths for retain-only retention policy

1. **If a chat or channel message is modified or deleted** during the retention period: A copy of the original message is created in the SubstrateHolds folder and retained until the end of the retention period, when the copy in the SubstrateHolds folder is permanently deleted one day after the item expires. 

2. **If the item is not modified or deleted** during the retention period: Nothing happens before and after the retention period; the message remains in its original location.

#### Content paths for delete-only retention policy

1. **If the message is not deleted** during the retention period: At the end of the retention period, the message is moved to the SubstrateHolds folder. 

2. **If the item is deleted by the user** during the period, the item is immediately moved to the SubstrateHolds folder. If a user deletes the message from there or empties the SubstrateHolds folder, the item is permanently deleted. Otherwise, the message is permanently deleted one day after being in the SubstrateHolds folder.


## Skype for Business and Teams interop chats

The same flow works for Skype for Business and Teams interop chats. When a Skype for Business chat comes into Teams, it becomes a message in a Teams chat thread and is ingested into the appropriate mailbox. Teams retention policies will apply to these messages from the Teams thread. 

However, if conversation history is turned on for Skype for Business and from the Skype for Business client side that history is being saved into a mailbox, that chat data isn't handled by a Teams retention policy. For this content, use a retention policy that's configured for Skype for Business.

## Additional retention policies needed to support Teams

Teams is more than just chats and channel messages. It supports group emails and files. This means that if you have teams that were created from a Microsoft 365 group (formerly Office 365 group), you should additionally configure a retention policy that includes that Microsoft 365 group by using the **Office 365 groups** location. This retention policy applies to content in the group's mailbox, site, and files.

If the team site isn't connected to a Microsoft 365 group, you need a retention policy that includes the **SharePoint sites** or **OneDrive accounts** locations to retain and delete files in Teams:

- Files that are shared in chat are stored in the OneDrive account of the user who shared the file. 

- Files that are uploaded to channels are stored in the SharePoint site for the team.

> [!TIP]
> You can apply a retention policy to the files of just a specific team when it's not connected to a Microsoft 365 group by selecting the SharePoint site for the team, and the OneDrive accounts of users in the Team.

It's possible that a retention policy that's applied to Office 365 groups, SharePoint sites, or OneDrive accounts could delete a file that's referenced in a Teams chat or channel message before those messages get deleted. In this scenario, the file still displays in the Teams message, but when users select the file, they get a "File not found" error. This behavior isn't specific to retention policies and could also happen if a user manually deletes a file from SharePoint or OneDrive.

> [!NOTE]
> A retention policy that includes Teams channel messages or Teams chats can only include Teams locations. So to retain or delete other content that's supported by Teams, you must create a separate retention policy.

## Meetings and external users

Channel meeting messages are stored the same way as channel messages, so for this data, select the **Teams channel messages** location when you configure your retention policy.

Impromptu meeting messages are stored in the same way as group chat messages, so for this data, select the **Teams chats** location when you configure your retention policy.

When external users are included in a meeting that your organization hosts:

- If an external user joins by using a guest account in your tenant, this user has a shadow mailbox that can be subject to your organization's retention policy for Teams. Any messages from the meeting are stored in both your users' mailbox and the shadow mailbox. 

- If an external user joins by using an account from another Microsoft 365 organization, your retention policies can't delete messages for this user because they are stored in that user's mailbox in another tenant. For the same meeting however, your retention policies can delete messages for your users.

## When a user leaves the organization 

If a user leaves your organization and their Microsoft 365 account is deleted, their chat messages that are subject to retention are stored in an inactive mailbox. The chat messages remain subject to any retention policy that was placed on the user before their mailbox was made inactive, and the contents are available to an eDiscovery search. For more information, see [Inactive mailboxes in Exchange Online](inactive-mailboxes-in-office-365.md). 

If the user stored any files in Teams, see the [equivalent section](retention-policies-sharepoint.md#when-a-user-leaves-the-organization) for SharePoint and OneDrive.

## Limitations

We're continuously working on optimizing retention functionality in Teams. In the meantime, here are a few limitations to be aware of:
  
- **Teams requires a separate retention policy**. When you create a retention policy and toggle on the Teams locations, all other locations toggle off. A retention policy that includes Teams can include only Teams and no other locations. 
    
- **Teams isn't included in an org-wide policy**. If you create an org-wide policy, Teams isn't included because it requires a separate retention policy. 
    
- **Teams doesn't support advanced retention**. When you create a retention policy, if you choose the [Advanced settings to identify content that meets specific conditions](create-retention-policies.md#advanced-settings-to-identify-content-that-meets-specific-conditions), the Teams locations are not available. Currently, retention in Teams applies to all the chat and channel message content when you select those locations. 

- **Teams messages in private channels aren't included when you configure a retention policy for Teams channel messages**. Instead, messages from private channels are included for the users as group chats with the **Teams chats** option. 
    
- **Teams may take up to three days to clean up expired messages**. A retention policy applied to Teams will delete chat and channel messages when the retention period expires. However, it may take up to three days to clean up these messages and permanently delete them. Also, chat and channel messages will be searchable with eDiscovery tools during the time after the retention period expires and when messages are permanently deleted.
    
   > [!NOTE]
   > It used to be true that a retention policy couldn't delete Teams content that's less than 30 days old, but we've removed this limitation. Now the retention period for Teams content can be any number of days you choose and as short as one day. If you do have a retention period of one day, it will take up to three days after the retention period expires before messages are permanently deleted.

- **Incorrect display issue in Outlook**. If you create retention policies for Skype or Teams locations, one of those policies is shown as the default folder policy when a user views the properties of a mailbox folder in the Outlook desktop client. This is an incorrect display issue in Outlook and [a known issue](https://support.microsoft.com/help/4491013/outlook-client-displays-teams-or-skype-for-business-retention-policies). What should be displayed as the default folder policy is the mailbox retention policy that's applied to the folder. The Skype or Teams retention policy is not applied to the user's mailbox.

- **Configuration issues**: 
    - When you select **Choose teams** for the **Teams channel messages** location, you might see Microsoft 365 groups that aren't also teams. Don't select these groups.
    
    - When you select **Choose users** for the **Teams chats** location, you might see guests and non-mailbox users. Retention policies aren't designed for these users, so don't select them.

## How to configure a retention policy for Microsoft Teams

Follow the instructions for [Create and configure retention policies](create-retention-policies.md) and for the **Choose locations** page of the wizard, select the following options:

- **Let me choose specific locations** > **Teams channel messages** and **Teams chats**

A retention policy that applies to Teams can use [Preservation Lock](retention-policies.md#use-preservation-lock-to-comply-with-regulatory-requirements), which might be required for regulatory reasons.

## Related information

[Retention policies in Microsoft Teams](https://docs.microsoft.com/microsoftteams/retention-policies)
