---
title: "Learn about retention for Yammer"
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
description: "Learn about Microsoft 365 retention policies that apply to Yammer so you can manage automatic retention or deletion of Yammer messages for your organization."
---

# Learn about retention for Yammer

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

The information in this article supplements [Learn about retention](retention.md) because it has information that's specific to Yammer.

For other workloads, see:

- [Learn about retention for SharePoint and OneDrive](retention-policies-sharepoint.md)
- [Learn about retention for Microsoft Teams](retention-policies-teams.md)
- [Learn about retention for Exchange](retention-policies-exchange.md)

## What's included for retention and deletion

Yammer user messages and community messages can be deleted by using retention policies for Yammer, and in addition to the text in these messages, the following items can be retained for compliance reasons: Hypertext links and links to other Yammer messages.

> [!NOTE]
> As explained in the following section, user messages include private messages for an individual user, and any community messages associated with that user.

User messages include all the names of the people in the conversation, and community messages include the community name and the message title (if supplied).

Reactions from others in the form of emoticons aren't retained when you use retention policies for Yammer.

Files that you use with Yammer aren't included in retention policies for Yammer. These items have their own retention policies.

## How retention works with Yammer

Use this section to understand how your compliance requirements are met by backend storage and processes, and should be verified by eDiscovery tools rather than by messages that are currently visible in the Yammer app.

You can use a retention policy to retain data from community messages and user messages in Yammer, and delete these messages. Behind the scenes, Exchange mailboxes are used to store data copied from these messages. Data from Yammer user messages is stored in a hidden folder in the mailbox of each user included in the user message, and a similar hidden folder in a group mailbox is used for community messages.

Copies of community messages can also be stored in the hidden folder of user mailboxes when they @ mention users or notify the user of a reply. Although these messages originate as a community message, a retention policy for Yammer user messages will often include copies of community messages. As a result, user messages aren't restricted to private messages.

These hidden folders aren't designed to be directly accessible to users or administrators, but instead, store data that compliance administrators can search with eDiscovery tools.

Even though they are stored in Exchange, Yammer messages are only included in a retention policy that's configured for the **Yammer community messages** or **Yammer user messages** locations.

> [!NOTE]
> If a user is included in an active retention policy that retains Yammer data and you a delete a mailbox of a user who is included in this policy, to retain the Yammer data, the mailbox is converted into an [inactive mailbox](inactive-mailboxes-in-office-365.md). If you don't need to retain this Yammer data for the user, exclude the user account from the retention policy before you delete their mailbox.

After a retention policy is configured for Yammer messages, a timer job from the Exchange service periodically evaluates items in the hidden folder where these Yammer messages are stored. The timer job takes up to seven days to run. When these items have expired their retention period, they're moved to the SubstrateHolds folder—a hidden folder that's in every user or group mailbox to store "soft-deleted" items before they're permanently deleted.

> [!IMPORTANT]
> Because of the [first principle of retention](retention.md#the-principles-of-retention-or-what-takes-precedence) and since Yammer messages are stored in Exchange Online mailboxes, permanent deletion from the SubstrateHolds folder is always suspended if the mailbox is affected by another Yammer retention policy for the same location, Litigation Hold, delay hold, or if an eDiscovery hold is applied to the mailbox for legal or investigative reasons.
>
> While the mailbox is included in an applicable hold, Yammer messages that have been deleted will no longer be visible in Yammer but will continue to be discoverable with eDiscovery.

After a retention policy is configured for Yammer messages, the paths the content takes depend on whether the retention policy is to retain and then delete, to retain only, or delete only.

When the retention policy is to retain and then delete:

![Diagram of retention flow for Yammer messages.](../media/yammerretentionlifecycle.png)

For the two paths in the diagram:

1. **If a Yammer message is edited or deleted** by the user during the retention period, the original message is immediately copied (if edited) or moved (if deleted) to the SubstrateHolds folder. The message is stored there until the retention period expires and then the message is immediately permanently deleted.

2. **If a Yammer message is not deleted** and for current messages after editing, the message is moved to the SubstrateHolds folder after the retention period expires. This action takes up to seven days from the expiry date. When the message is in the SubstrateHolds folder, it's then immediately permanently deleted. 

> [!NOTE]
> Messages in the SubstrateHolds folder are searchable by eDiscovery tools. Until messages are permanently deleted from the SubstrateHolds folder, they remain searchable by eDiscovery tools.

When the retention period expires and moves a message to the SubstrateHolds folder, a delete operation is communicated to the Yammer service, that then relays the same operation to the Yammer client app. Delays in this communication or caching can explain why, for a short period of time, users continue to see these messages in their Yammer app.

In this scenario where the Yammer service receives a delete command because of a retention policy, the corresponding message in the Yammer app is deleted for all users in the conversation. Some of these users might be from another organization, have a retention policy with a longer retention period, or no retention policy assigned to them. For these users, copies of the messages are still stored in their mailboxes and remain searchable for eDiscovery until the messages are permanently deleted by another retention policy.

> [!IMPORTANT]
> Messages visible in the Yammer app are not an accurate reflection of whether they are retained or permanently deleted for compliance requirements.

When the retention policy is retain-only, or delete-only, the content's paths are variations of retain and delete.

### Content paths for retain-only retention policy

1. **If a Yammer message is edited or deleted**: A copy of the original message is immediately created in the SubstrateHolds folder and retained there until the retention period expires. Then the message is immediately permanently deleted from the SubstrateHolds folder.

2. **If the Yammer message is not modified or deleted** and for current messages after editing during the retention period: Nothing happens before and after the retention period; the message remains in its original location.

### Content paths for delete-only retention policy

1. **If the Yammer message is not deleted** during the retention period: At the end of the retention period, the message is moved to the SubstrateHolds folder. This action takes up to seven days from the expiry date. Then the message is immediately permanently deleted from the SubstrateHolds folder.

2. **If the Yammer message is deleted by the user** during the period, the item is immediately moved to the SubstrateHolds folder where it's immediately permanently deleted.

#### Example flows and timings for retention policies

Use the following examples to see how the processes and timings explained in the previous sections apply to retention policies that have the following configurations:

- [Example 1: Retain-only for 7 years](#example-1-retain-only-for-7-years)
- [Example 2: Retain for 30 days and then delete](#example-2-retain-for-30-days-and-then-delete)
- [Example 3: Delete-only after 1 day](#example-3-delete-only-after-1-day)

For all examples that refer to permanent deletion, because of the [principles of retention](retention.md#the-principles-of-retention-or-what-takes-precedence), this action is suspended if the message is subject to another retention policy to retain the item or it's subject to an eDiscovery hold.

##### Example 1: Retain-only for 7 years

On day 1, a user posts a new Yammer message.

On day 5, the user edits that message.

On day 30, the user deletes the current message.

Retention outcomes:

- For the original message:
    - On day 5, the message is copied to the SubstrateHolds folder where it can still be searched with eDiscovery tools for a minimum of 7 years from day 1 (the retention period).

- For the current (edited) message:
    - On day 30, the message moves to the SubstrateHolds folder where it can still be searched with eDiscovery tools for a minimum of 7 years from day 1 (the retention period).

If the user had deleted the current message after the specified retention period, instead of within the retention period, the message would still be moved to the SubstrateHolds folder. However, now the retention period has expired, the message would be permanently deleted after the minimum of 1 day and then typically within 1-7 days.

##### Example 2: Retain for 30 days and then delete

On day 1, a user posts a new Yammer message.

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

On day 1, a user posts a new Yammer message.

Example retention outcome if the user doesn't edit or delete the message:

- Day 5 (typically 1-7 days after the start of the retention period on day 2):
    - The message moves to the SubstrateHolds folder and remains there for at least 1 day where it can still be searched with eDiscovery tools.

- Day 9 (typically 1-7 days after a minimum of 1 day in the SubstrateHolds folder):
    - The message is permanently deleted and then won't be returned with eDiscovery searches.

As this example shows, although you can configure a retention policy to delete messages after just one day, the service undergoes multiple processes to ensure a compliant deletion. As a result, a delete action after 1 day could take 16 days before the message is permanently deleted so that it's no longer returned in eDiscovery searches.

## Messages and external users

By default, a retention policy for Yammer user messages applies to all users in your organization, but not external users. You can apply a retention policy to external users if you use the **Edit** option for users included, and specify their account.

At this time, Azure B2B guest users are not supported.

## When a user leaves the organization 

If a user leaves your organization and their Microsoft 365 account is deleted, their Yammer user messages that are subject to retention are stored in an inactive mailbox. These messages remain subject to any retention policy that was placed on the user before their mailbox was made inactive, and the contents are available to an eDiscovery search. For more information, see [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md).

If the user stored any files in Yammer, see the [equivalent section](retention-policies-sharepoint.md#when-a-user-leaves-the-organization) for SharePoint and OneDrive.

## Limitations

Be aware of the following limitation when you use retention for Yammer community messages and user messages:

- When you select **Edit** for the **Yammer user messages** location, you might see guests and non-mailbox users. Retention policies aren't designed for these users, so don't select them.

## Configuration guidance

If you're new to configuring retention in Microsoft 365, see [Get started with data lifecycle management](get-started-with-data-lifecycle-management.md).

If you're ready to configure a retention policy for Yammer, see [Create and configure retention policies](create-retention-policies.md).
