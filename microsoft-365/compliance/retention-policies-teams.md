---
title: "Learn about retention for Teams"
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

# Learn about retention for Microsoft Teams

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

The information in this article supplements [Learn about retention](retention.md) because it has information that's specific to Microsoft Teams messages.

For other workloads, see:

- [Learn about retention for SharePoint and OneDrive](retention-policies-sharepoint.md)
- [Learn about retention for Yammer](retention-policies-yammer.md)
- [Learn about retention for Exchange](retention-policies-exchange.md)

## What's included for retention and deletion

The following Teams items can be retained and deleted by using retention policies for Teams: Chat messages and channel messages, including embedded images, tables, hypertext links and links to other Teams messages and files, and [card content](https://docs.microsoft.com/microsoftteams/platform/task-modules-and-cards/what-are-cards). Chat messages include all the names of the people in the chat, and channel messages include the team name and the message title (if supplied). 

Teams messages in private channels are not included, and reactions from others in the form of emoticons are not included.

Emails and files that you use with Teams aren't included in retention policies for Teams. These items have their own retention policies.

## How retention works with Microsoft Teams

You can use a retention policy to retain data from chats and channel messages in Teams. Data from Teams chats is stored in a hidden folder in the mailbox of each user included in the chat, and data from Teams channel messages is stored in a similar hidden folder in the group mailbox for the team.

It's important to understand that Teams uses an Azure-powered chat service that also stores this data, and by default this service stores the data indefinitely. For this reason, we recommend that you create a retention policy that uses the Teams locations to retain and delete this Teams data. This retention policy can permanently delete this data from both the Exchange mailboxes and the underlying Azure-powered chat service. For more information, see [Security and compliance in Microsoft Teams](https://go.microsoft.com/fwlink/?linkid=871258) and specifically, the [Information Protection Architecture](https://docs.microsoft.com/MicrosoftTeams/security-compliance-overview#information-protection-architecture) section.

Teams chats and channel messages are not affected by retention policies that are configured for user or group mailboxes. Even though Teams chats and channel messages are stored in Exchange, this Teams data is included only by a retention policy that's configured for the **Teams channel messages** and **Teams chats** locations.

> [!NOTE]
> If a user is included in an active retention policy that retains Teams data and you a delete a mailbox of a user who is included in this policy, to retain the Teams data, the mailbox is converted into an [inactive mailbox](inactive-mailboxes-in-office-365.md). If you don't need to retain this Teams data for the user, exclude the user account from the retention policy before you delete their mailbox.

After a retention policy is configured for chat and channel messages, a timer job from the Exchange service periodically evaluates items in the hidden folder where these Teams messages are stored. The timer job takes up to seven days to run. When these items have expired their retention period, they are moved to the SubstrateHolds folder—another hidden folder that's in every user or group mailbox to store "soft-deleted" items before they are permanently deleted.

After a retention policy is configured for chat and channel messages, the paths the content takes depend on whether the retention policy is to retain and then delete, to retain only, or delete only.

When the retention policy is to retain and then delete:

![Diagram of retention flow for Teams chat and channel messages](../media/teamsretentionlifecycle.png)

For the two paths in the diagram:

1. **If a chat or channel message is edited or deleted** by the user during the retention period, the original message is copied (if edited) or moved (if deleted) to the SubstrateHolds folder within 21 days. The message is stored there until the retention period expires and then the message is permanently deleted within 24 hours.

2. **If a chat or channel message is not deleted** and for current messages after editing, the message is moved to the SubstrateHolds folder after the retention period expires. This action takes up to 7 days from the expiry date. When the message is in the SubstrateHolds folder, it is then permanently deleted within 24 hours. 

> [!NOTE]
> Messages in the SubstrateHolds folder are searchable by eDiscovery tools. Until messages are permanently deleted from this SubstrateHolds folder, they remain searchable by eDiscovery tools.

When the retention policy is retain-only, or delete-only, the content's paths are variations of retain and delete.

### Content paths for retain-only retention policy

1. **If a chat or channel message is edited or deleted**: A copy of the original message is created in the SubstrateHolds folder within 21 days, and retained there until the retention period expires. Then the message is permanently deleted from the SubstrateHolds folder within 24 hours.

2. **If the item is not modified or deleted** and for current messages after editing during the retention period: Nothing happens before and after the retention period; the message remains in its original location.

### Content paths for delete-only retention policy

1. **If the message is not deleted** during the retention period: At the end of the retention period, the message is moved to the SubstrateHolds folder. This action takes up to seven days from the expiry date. Then the message is permanently deleted from the SubstrateHolds folder within 24 hours.

2. **If the item is deleted by the user** during the period, the item is moved to the SubstrateHolds folder within 21 days where it is then permanently deleted within 24 hours.


## Skype for Business and Teams interop chats

When a Skype for Business chat comes into Teams, it becomes a message in a Teams chat thread and is ingested into the appropriate mailbox. Teams retention policies will apply to these messages from the Teams thread. 

However, if conversation history is turned on for Skype for Business and from the Skype for Business client side that history is being saved into a mailbox, that chat data isn't handled by a Teams retention policy. For this content, use a retention policy that's configured for Skype for Business.

## Meetings and external users

Channel meeting messages are stored the same way as channel messages, so for this data, select the **Teams channel messages** location when you configure your retention policy.

Impromptu meeting messages are stored in the same way as group chat messages, so for this data, select the **Teams chats** location when you configure your retention policy.

When external users are included in a meeting that your organization hosts:

- If an external user joins by using a guest account in your tenant, this user has a shadow mailbox that can be subject to your organization's retention policy for Teams. Any messages from the meeting are stored in both your users' mailbox and the shadow mailbox. 

- If an external user joins by using an account from another Microsoft 365 organization, your retention policies can't delete messages for this user because they are stored in that user's mailbox in another tenant. For the same meeting however, your retention policies can delete messages for your users.

## When a user leaves the organization 

If a user who has a mailbox in Exchange Online leaves your organization and their Microsoft 365 account is deleted, their chat messages that are subject to retention are stored in an inactive mailbox. The chat messages remain subject to any retention policy that was placed on the user before their mailbox was made inactive, and the contents are available to an eDiscovery search. For more information, see [Inactive mailboxes in Exchange Online](inactive-mailboxes-in-office-365.md). 

If the user stored any files in Teams, see the [equivalent section](retention-policies-sharepoint.md#when-a-user-leaves-the-organization) for SharePoint and OneDrive.

## Limitations

We're continuously working on optimizing retention functionality in Teams. In the meantime, here are a few limitations to be aware of when you use retention for Teams channel messages and chats:

- **Incorrect display issue in Outlook**. If you create retention policies for Skype or Teams locations, one of those policies is shown as the default folder policy when a user views the properties of a mailbox folder in the Outlook desktop client. This is an incorrect display issue in Outlook and [a known issue](https://support.microsoft.com/help/4491013/outlook-client-displays-teams-or-skype-for-business-retention-policies). What should be displayed as the default folder policy is the mailbox retention policy that's applied to the folder. The Skype or Teams retention policy is not applied to the user's mailbox.

- **Configuration issues**: 
    - When you select **Choose teams** for the **Teams channel messages** location, you might see Microsoft 365 groups that aren't also teams. Don't select these groups.
    
    - When you select **Choose users** for the **Teams chats** location, you might see guests and non-mailbox users. Retention policies aren't designed for these users, so don't select them.

## Configuration guidance

If you're new to configuring retention in Microsoft 365, see [Get started with retention policies and retention labels](get-started-with-retention.md).

If you're ready to configure a retention policy for Teams, see [Create and configure retention policies](create-retention-policies.md).
