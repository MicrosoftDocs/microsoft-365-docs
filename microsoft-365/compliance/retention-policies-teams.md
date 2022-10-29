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
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- tier1
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Learn about Microsoft 365 retention policies that apply to Microsoft Teams so you can manage automatic retention or deletion of Teams messages for your organization."
---

# Learn about retention for Microsoft Teams

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

> [!NOTE]
> If you are seeing a message in Teams that your chats or messages have been deleted by a retention policy, see [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).
> 
> The information on this page is for IT administrators who manage these retention policies.

The information in this article supplements [Learn about retention](retention.md) because it has information that's specific to Microsoft Teams messages.

For other workloads, see:

- [Learn about retention for SharePoint and OneDrive](retention-policies-sharepoint.md)
- [Learn about retention for Yammer](retention-policies-yammer.md)
- [Learn about retention for Exchange](retention-policies-exchange.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## What's included for retention and deletion

> [!NOTE]
> Retention policies support [shared channels](/MicrosoftTeams/shared-channels). Any shared channels inherit retention settings from the parent team.
> 
> Retention policies also support messages posted with the [chat with yourself](https://support.microsoft.com/office/start-a-chat-in-teams-0c71b32b-c050-4930-a887-5afbe742b3d8?storagetype=live#bkmk_chatwithself) feature.

Teams chats messages, channel messages, and private channel messages can be deleted by using retention policies for Teams, and in addition to the text in the messages, the following items can be retained for compliance reasons: [Video clips](https://support.microsoft.com/office/record-a-video-clip-in-teams-0c57dae5-2974-4214-9c46-7a2136386f1c), embedded images, tables, hypertext links, links to other Teams messages and files, and [card content](/microsoftteams/platform/task-modules-and-cards/what-are-cards). Newly created call data records, which are system-generated messages that contain [metadata for meetings and calls](https://review.learn.microsoft.com/en-us/MicrosoftTeams/ediscovery-investigation?branch=pr-en-us-10532#teams-metadata), are also included. Chat messages and private channel messages include all the names of the people in the conversation, and channel messages include the team name and the message title (if supplied). 

Code snippets, recorded voice memos from the Teams mobile client, thumbnails, announcement images, and reactions from others in the form of emoticons aren't retained when you use retention policies for Teams.

Emails and files that you use with Teams aren't included in retention policies for Teams. These items have their own retention policies.

## How retention works with Microsoft Teams

Use this section to understand how your compliance requirements are met by backend storage and processes, and should be verified by eDiscovery tools rather than by messages that are currently visible in the Teams app.

You can use a retention policy to retain data from chats and channel messages in Teams, and delete these chats and messages. Behind the scenes, Exchange mailboxes are used to store data copied from these messages. Data from Teams chats is stored in a hidden folder in the mailbox of each user included in the chat, and a similar hidden folder in a group mailbox is used for Teams channel messages. These hidden folders aren't designed to be directly accessible to users or administrators, but instead, store data that compliance administrators can search with eDiscovery tools.

These mailboxes are, listed by their RecipientTypeDetails attribute:

- **UserMailbox**: These mailboxes store message data for cloud-based Teams users.
- **MailUser**: These mailboxes store message data for [on-premises Teams users](search-cloud-based-mailboxes-for-on-premises-users.md).
- **GroupMailbox**: These mailboxes store message data for Teams standard channels.
- **SubstrateGroup**: These mailboxes store message data for Teams shared channels.

Other mailbox types, such as RoomMailbox that is used for Teams conference rooms, aren't supported for Teams retention policies.

Teams uses an Azure-powered chat service as its primary storage for all messages (chats and channel messages). If you need to delete Teams messages for compliance reasons, retention policies for Teams can delete messages after a specified period, based on when they were created. Messages are then permanently deleted from both the Exchange mailboxes where they stored for compliance operations, and from the primary storage used by the underlying Azure-powered chat service. For more information about the underlying architecture, see [Security and compliance in Microsoft Teams](/MicrosoftTeams/security-compliance-overview) and specifically, the [Information Protection Architecture](/MicrosoftTeams/security-compliance-overview#information-protection-architecture) section.

Although this data from Teams chats and channel messages are stored in mailboxes, you must configure a retention policy for the **Teams channel messages** and **Teams chats** locations. Teams chats and channel messages aren't included in retention policies that are configured for Exchange user or group mailboxes. Similarly, retention policies for Teams don't affect other email items stored in mailboxes.

If a user is added to a chat, a copy of all messages shared with them are ingested into their mailbox. The created date of those messages doesn't change for the new user and remains the same for all users.

> [!NOTE]
> If a user is included in an active retention policy that retains Teams messages and you delete a mailbox of a user who is included in this policy, the mailbox is converted into an [inactive mailbox](inactive-mailboxes-in-office-365.md) to retain the Teams data. If you don't need to retain this Teams data for the user, exclude the user account from the retention policy and [wait for this change to take effect](create-retention-policies.md#how-long-it-takes-for-retention-policies-to-take-effect) before you delete their mailbox.

After a retention policy is configured for chat and channel messages, a timer job from the Exchange service periodically evaluates items in the hidden mailbox folder where these Teams messages are stored. The timer job typically takes 1-7 days to run. When these items have expired their retention period, they are moved to the SubstrateHolds folder—another hidden folder that's in every user or group mailbox to store "soft-deleted" items before they're permanently deleted. 

Messages remain in the SubstrateHolds folder for at least 1 day, and then if they're eligible for deletion, the timer job permanently deletes them the next time it runs.

> [!IMPORTANT]
> Because of the [first principle of retention](retention.md#the-principles-of-retention-or-what-takes-precedence) and since Teams chat and channel messages are stored in Exchange Online mailboxes, permanent deletion from the SubstrateHolds folder is always suspended if the mailbox is affected by another Teams retention policy for the same location, Litigation Hold, delay hold, or if an eDiscovery hold is applied to the mailbox for legal or investigative reasons.
>
> While the mailbox is included in an applicable hold, Teams chat and channel messages that have been deleted will no longer be visible in the Teams app but will continue to be discoverable with eDiscovery.

After a retention policy is configured for chat and channel messages, the paths the content takes depend on whether the retention policy is to retain and then delete, to retain only, or delete only.

When the retention policy is to retain and then delete:

![Diagram of retention flow for Teams chat and channel messages.](../media/teamsretentionlifecycle.png)

For the two paths in the diagram:

1. **If a chat or channel message is edited or deleted** by a user during the retention period, the original message is copied (if edited) or moved (if deleted) to the SubstrateHolds folder. When a user deletes a Teams message, although the message disappears from the Teams app, the message doesn't go into the SubstrateHolds folder for 21 days. The message is stored in the SubstrateHolds folder for at least 1 day. When the retention period expires, the message is permanently deleted the next time the timer job runs (typically between 1-7 days).

2. **If a chat or channel message is not deleted** by a user and for current messages after editing, the message is moved to the SubstrateHolds folder after the retention period expires. This action typically takes between 1-7 days from the expiry date. When the message is in the SubstrateHolds folder, it's stored there for at least 1 day, and then the message is permanently deleted the next time the timer job runs (typically between 1-7 days). 

> [!NOTE]
> Messages stored in mailboxes, including the hidden folders, are searchable by eDiscovery tools. Until messages are permanently deleted from the SubstrateHolds folder, they remain searchable by eDiscovery tools.

When the retention period expires and moves a message to the SubstrateHolds folder, a delete operation is communicated to the backend Azure chat service, that then relays the same operation to the Teams client app. Delays in this communication or caching can explain why, for a short period of time, users continue to see these messages in their Teams app.

In this scenario where the Azure chat service receives a delete command because of a retention policy, the corresponding message in the Teams client app is deleted for all users in the conversation. Sometimes, this [behavior might seem unexpected](/microsoftteams/troubleshoot/teams-im-presence/messages-unexpectedly-deleted-retention-policy) because some of these users can be from another organization, have a retention policy with a longer retention period, or no retention policy assigned to them. For these users, copies of the messages are still stored in their mailboxes and remain searchable for eDiscovery until the messages are permanently deleted by another retention policy.

> [!IMPORTANT]
> Messages visible in the Teams app are not an accurate reflection of whether they are retained or permanently deleted for compliance requirements.

When the retention policy is retain-only, or delete-only, the content's paths are variations of retain and delete.

### Content paths for retain-only retention policy

1. **If a chat or channel message is edited or deleted** by a user during the retention period: The original message is copied (if edited) or moved (if deleted) to the SubstrateHolds folder. When a user deletes a Teams message, although the message disappears from the Teams app, the message doesn't go into the SubstrateHolds folder for 21 days. The message is stored in the SubstrateHolds folder for at least 1 day. If the retention policy is configured to retain forever, the item remains there. If the retention policy has an end date for the retention period and it expires, the message is permanently deleted the next time the timer job runs (typically between 1-7 days).

2. **If the chat or channel message is not modified or deleted** by a user and for current messages after editing during the retention period: Nothing happens before and after the retention period; the message remains in its original location.

### Content paths for delete-only retention policy

1. **If the chat or channel message is edited or deleted** by a user during the retention period: The original message is copied (if edited) or moved (if deleted) to the SubstrateHolds folder.  When a user deletes a Teams message, although the message disappears from the Teams app, the message doesn't go into the SubstrateHolds folder for 21 days. The message is stored in the SubstrateHolds folder for at least 1 day and permanently deleted the next time the timer job runs (typically between 1-7 days).

2. **If a chat or channel message is not deleted** by a user during the retention period: At the end of the retention period, the message is moved to the SubstrateHolds folder. This action typically takes between 1-7 days from the expiry date. The message is retained there for at least 1 day and then permanently deleted the next time the timer job runs (typically between 1-7 days).

#### Example flows and timings for retention policies

Use the following examples to see how the processes and timings explained in the previous sections apply to retention policies that have the following configurations:

- [Example 1: Retain-only for 7 years](#example-1-retain-only-for-7-years)
- [Example 2: Retain for 30 days and then delete](#example-2-retain-for-30-days-and-then-delete)
- [Example 3: Delete-only after 1 day](#example-3-delete-only-after-1-day)

For all examples that refer to permanent deletion, because of the [principles of retention](retention.md#the-principles-of-retention-or-what-takes-precedence), this action is suspended if the message is subject to another retention policy to retain the item or it's subject to an eDiscovery hold.

##### Example 1: Retain-only for 7 years

On day 1, a user creates a chat or channel message.

On day 5, the user edits that message.

On day 30, the user deletes the current message.

Retention outcomes:

- For the original message:
    - On day 5, the message is copied to the SubstrateHolds folder where it can still be searched with eDiscovery tools for a minimum of 7 years from day 1 (the retention period).

- For the current (edited) message:
    - On day 30, the message is no longer displayed in the Teams app and moves to the SubstrateHolds folder after 21 days where it continues to be searchable with eDiscovery tools for a minimum of 7 years from day 1 (the retention period).

If the user had deleted the current message after the specified retention period, instead of within the retention period, the message would still be moved to the SubstrateHolds folder after 21 days. However, now the retention period has expired, the message would be permanently deleted there after the minimum of 1 day and then typically within 1-7 days.

##### Example 2: Retain for 30 days and then delete

On day 1, a user creates a chat or channel message.

On day 10, the user edits that message.

The user doesn't make further edits and doesn't delete the message.

Retention outcomes:

- For the original message:
    - On day 10, the message is copied to the SubstrateHolds folder, where it can still be searched with eDiscovery tools.
    - At the end of the retention period (30 days from day 1), the message is permanently deleted typically within 1-7 days after the minimum of 1 day, and then won't be returned with eDiscovery searches.

- For the current (edited) message:
    - At the end of the retention period (30 days from day 1), the message moves to the SubstrateHolds folder typically within 1-7 days, where it can still be searched with eDiscovery tools.
    - The message is then permanently deleted typically within 1-7 days after the minimum of 1 day, and then won't be returned with eDiscovery searches.

##### Example 3: Delete-only after 1 day

> [!NOTE]
> Because of the short one-day duration of this configuration and retention processes that operate within a time period of 1-7 days, this section shows example timings that are within the typical time ranges.

On day 1, a user creates a chat or channel message.

Example retention outcome if the user doesn't edit or delete the message:

- Day 5 (typically 1-7 days after the start of the retention period on day 2):
    - The message moves to the SubstrateHolds folder and remains there for at least 1 day where it can still be searched with eDiscovery tools.

- Day 9 (typically 1-7 days after a minimum of 1 day in the SubstrateHolds folder):
    - The message is permanently deleted and then won't be returned with eDiscovery searches.

As this example shows, although you can configure a retention policy to delete messages after just one day, the service undergoes multiple processes to ensure a compliant deletion. As a result, a delete action after 1 day could take 16 days before the message is permanently deleted so that it's no longer returned in eDiscovery searches.

## Skype for Business and Teams interop chats

When a Skype for Business chat comes into Teams, it becomes a message in a Teams chat thread and is ingested into the appropriate mailbox. Teams retention policies will apply to these messages from the Teams thread. 

However, if conversation history is turned on for Skype for Business and from the Skype for Business client side that history is being saved into a mailbox, that chat data isn't handled by a Teams retention policy. For this content, use a retention policy that's configured for Skype for Business.

## Messages and external users

When external users are included in a meeting or chat that your organization hosts:

- If an external user joins by using a guest account in your tenant, any Teams messages are stored in both your users' mailbox and a shadow mailbox that's granted to the guest account. However, retention policies aren't supported for shadow mailboxes, even though they can be reported as included in a retention policy for the entire location (sometimes known as an "organization-wide policy").

- If an external user joins by using an account from another Microsoft 365 organization, your retention policies can't delete messages for this user because they're stored in that user's mailbox in another tenant. For the same meeting or chat however, your retention policies can delete messages for your users.

## When a user leaves the organization 

If a user who has a mailbox in Exchange Online leaves your organization and their Microsoft 365 account is deleted, their chat messages that are subject to retention are stored in an inactive mailbox. The chat messages remain subject to any retention policy that was placed on the user before their mailbox was made inactive, and the contents are available to an eDiscovery search. For more information, see [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md). 

If the user stored any files in Teams, see the [equivalent section](retention-policies-sharepoint.md#when-a-user-leaves-the-organization) for SharePoint and OneDrive.

## Configuration guidance

If you're new to configuring retention in Microsoft 365, see [Get started with data lifecycle management](get-started-with-data-lifecycle-management.md).

If you're ready to configure a retention policy for Teams, see [Create and configure retention policies](create-retention-policies.md).
