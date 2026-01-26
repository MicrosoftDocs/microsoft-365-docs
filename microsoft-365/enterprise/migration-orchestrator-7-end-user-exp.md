---
title: The end-user experience after using migration orchestrator
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.date: 12/11/2025
recommendations: true
audience: ITPro
ms.topic: upgrade-and-migration-article
ms.service: microsoft-365-migration
ms.localizationpriority: medium
ms.collection: 
- M365-collaboration
- m365initiative-migratetom365
search.appverid: MET150
description: "How individual users experience the results of using Microsoft 365's migration orchestrator."
---

# End-user experience

> [!IMPORTANT]
> Tenant-to-tenant migration is currently available in preview. Features and availability may change before general availability (GA).

## Exchange

Target users can access and interact with all content that was in their mailbox in the source tenant. Users can, for instance, reply to emails that they received while the mailbox was in the source tenant via their target tenant user profile.

Source users no longer have any access to the mailbox or any of its content, including the calendar.

## Teams chats

Target users can access and interact with all chat content in their Teams client in the source tenant, except for out of scope migration content:

- Conversations with themselves (the pinned "You" conversation).
- Conversations started by users external to the source and target tenant aren't migrated. Target users don't have access to these chats, but source users do.
- Conversations started by users who left their tenant (source or target) or no longer have Teams licenses in that tenant. Applies for Private (one-to-one) and Group (one-to-many) threads.

Source users can still see the chat threads in the source tenant. They can continue to use these threads if they're still a member of the chat. Any messages sent from the source after migration of a thread aren't migrated.

After the mailbox is migrated, users aren't able to see the calendar in the Teams client.

Based on the order in which users are migrated, there are variable experiences on the individual chats. At each point in migration, a user maintains access to their chats. They may notice that:

- They're added to or removed from an existing chat.
- An entirely new chat is created.
- Duplicate new chats are created.

### Example 1: 1:1 chats where both users are migrating

Users are never removed from a 1:1 conversation they're in. Instead, new 1:1 chats are created to account for the new user pairs. For example, if both users are migrating, the flow is as follows:

1. Two source users have a conversation before the migration.
1. Once one user migrates, a new conversation is created between the migrated user's target identity and the source identity for the user who isn't migrated yet. This chat is a temporary chat.
1. Once the second user migrates, a new conversation is created between the target identities of both users.

The temporary chat isn't deleted.

### Example 2: 1:1 chats – one user is migrating (Federation)

When only one user is migrating, then the 1:1 chat process operates as follows:

1. Two source users have a conversation before the migration.
1. When the one user migrates, a new conversation is created between the migrated user's target identity and the source identity for the user who doesn't migrate.

### Example 3:  Group chats – the "owner" migrates first

When users who are in group chats are migrating, the experience differs by user and by their "ownership" of the chat. The owner of the chat is the user who created the chat, by adding people or sending the first message. When that user migrates, a new chat on the target tenant is created, and the correct users are added.

If the owner of the chat isn't migrating yet, or at all, migrating participants are added and removed to the original chat as needed.

1. All users belong to a group chat on the source tenant. The original chat remains untouched during migration.
1. The owner migrates, and there's a new chat created on the target tenant with the target owner identity and the source participant identities.
1. When a participant migrates, their source identity is removed from the original chat, and their target identity is added to the chat. The target identity has the same level of access as they had before, as the time of their joining the chat original is maintained.

### Example 4:  Group chats – the "owner" isn't migrating first

When the owner of a group chat isn't migrating first, the migration appears in the following way:

1. Source users belong to a group chat.
1. When a participant migrates, their source identity is removed from the original source chat, and their target identity is added to the original source chat.
1. When the owner migrates, a new group chat on the target is created between the target owner, target participants (for those migrated users), and source participants (if any remain on the source at the time).
1. When later participants migrate, their source identities are removed from the target chat, and their target identities are added to the target chat.

### Example 5:  Group chats – owner isn't migrating (Federation)

When the owner of a group chat isn't migrating, the migration appears in the following way:

1. Source users belong to a group chat.
1. When a participant migrates, their source identity is removed from the original source chat, and their target identity is added to the original source chat.

A new target group isn't created.

### Example 6: meeting chats

There's a meeting chat associated with the migrated meeting. All messages are imported into this new meeting chat. All users who are identity mapped have their target users added to this chat, even if they aren't migrated yet.

## Meetings

Meetings are updated when the organizer migrates. At this point, the meeting URL updates and all participants who are identity mapped have their source identities removed from the roster and their target identities added to the roster. Participants who don't migrate can join the meeting depending on the tenant policies. Participants who don't migrate don't have access to the new meeting chat until they join the meeting from its new join URL. Target users view, start, and join migrated meetings on the target tenant. Target users can view the meeting chat and continue to use it.

To be hosted in the target tenant, URLs for meetings organized by a migrated user are updated. This update means any users who exist within the target tenant can join the meeting without entering the meeting lobby or facing other obstacles.

The participants list for migrated meetings updates to replace migrating source identities with the target user identities. Nonmigrating participants of a migrated meeting are able to join the meeting as guests (access level depends on tenant and meeting policy settings).

For meetings whose last occurrence was within the last 60 days at the time of migration, the meeting URL updates. It shows on users' calendars, users can access the chat from the calendar, and chat messages are associated with the meeting directly as meeting chats.

For meetings whose last occurrence was more than 60 days before the time of migration, the meeting URL **isn't** updated, it shows on users' calendars, users **can't** access the chat from the calendar, and chat messages are migrated as a new group chat.

## Known issues and unsupported behaviors

### General issues

Editing the Identity Mapping file by rerunning Identity Mapping using the `Remove-CTIMData` cmdlet can be detrimental to user experience. Running `Remove-CTIMData` while a migration is running removes users with a completed mailbox migration from Identity Mapping, which then affects their experience in Teams chats and meetings. It also affects any failed migrations you rerun in the future.

If you need to edit Identity Mapping while any migration batches are running, don't use `Remove-CTIMData`. Instead, add any users you need by rerunning Identity Mapping without running `Remove-CTIMData`.

### OneDrive issues

[Learn more](../enterprise/cross-tenant-onedrive-migration-faqs.md) about known issues with OneDrive Migration.

### Exchange issues

[Learn more](../enterprise/cross-tenant-mailbox-migration.md) about known issues with Exchange Mailbox Migration.

### Teams chats issues

1. Self-chats ("You") aren't migrated. These self-chats aren't available in the target tenant.
2. Chat threads created by a user external to the source and target tenant don't migrate or update. Target users don't have access to these chat threads.
3. Chat threads created by a user who no longer exists and/or no longer has a Teams license on either tenant isn't migrated or updated. Target users don't have access to these chat threads.
4. Reactions to chat messages aren't migrated. Target users don't see reactions sent before migration.
5. Migrated threads that are still accessible on the source tenant. They aren't locked, but any new messages sent after migration don't migrate to the target tenant.
6. Apps aren't migrated, including Polls.
7. Forwarded/Scheduled messages aren't migrated. If a scheduled message was sent, it migrates. If a scheduled message was scheduled, but not sent, it doesn't migrate.

## Meetings issues

1. Meeting recordings, meeting transcripts, and meeting recaps aren't migrated. Attendance reports, Apps, or Tags associated with meetings aren't migrated.
2. The new meeting URL has the updated participants (target tenant user IDs), apart from distribution groups. Identity mapping doesn't provide distribution group mappings. This exception impacts scenarios where a participant belonging to a distribution list tries to join a meeting that has the setting **Invite only users can join**.
3. Customers shouldn't remove the mail forwarding or delete source objects until after the tenant migration is completed. Since migration can happen in batches, any updates made to meetings that don't migrate don't forward to the migrated user mailbox if the mail forwarding isn't active.
4. The same set of users can't be migrated again to a different target tenant if the source objects are deleted or email forwarding is disabled.
5. Skype to Teams and Teams to Skype Migration for tenant-to-tenant scenarios are out of scope. Only Teams to Teams tenants are supported.
6. Channel and Shared Channel meetings aren't migrated.
7. Live Events, Webinar, Town halls, Virtual Appointments, Controlled-content meetings, Large Meetings, and other Custom template meetings aren't migrated. Meetings with more than 250 attendees aren't migrated.
8. Canceled meetings aren't migrated. Because they have invalid join blobs, the URLs aren't updated, and their chats aren't migrated.
9. Modified occurrences of recurring meetings aren't migrated. The modified occurrences still have the original URL after migration.
10. Meetings with no Teams coordinates or meeting URLs don't migrate (appointments).
11. If the format of the meeting coordinates body or tags changed from the original, meetings might not migrate.
12. Meetings that are already in the target tenant aren't migrated. Their participant list isn't updated when those users move.
13. Migration of meetings organized by resource mailboxes, such as room mailboxes or equipment mailboxes, is unsupported. These meetings don't have their URLs updated, nor their chats migrated.
14. Locations, such as conference rooms, aren't edited during the migration. This circumstance means that the locations still point to an old room after the migration.
15. All RSVPs are reset during migration. Attendees who have already RSVP'd (accepted, declined, tentative) have to respond again.
16. Only meetings in the user's Default calendar migrate. Meetings hosted by other calendars created by the user are out of scope.
17. Meeting chats for meetings that occurred over 60 days before the time of migration that contain a colon (**:**) in their titles have those colons replace by semicolons (**;**) in the new created group chat.
1. The value of the "spoken language in this meeting" is reset to the default (English (US)) after migration.
1. Meetings marked Confidential or Highly Confidential aren't migrated.

## Next steps

For FAQs and troubleshooting regarding the migration orchestrator, see [Migration orchestrator FAQ](migration-orchestrator-8-faq.md).
