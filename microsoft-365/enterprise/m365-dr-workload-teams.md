---
title: Data Residency for Microsoft Teams
description: Learn about data residency for Microsoft Teams
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Data Residency for Microsoft Teams

## Data Residency Commitments Available

### Product Terms

Required Conditions:

1. _Tenant_ has a sign up country/region included in _Local Region Geography_, the European Union or the United States.

**Commitment:**

_For current language please refer to the [Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all) and view the section titled "Location of Customer Data at Rest for Core Online Services"._

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_ or _Expanded Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. The Microsoft Teams subscription customer data is provisioned in _Local Region Geography_ or _Expanded Local Region Geography_.

**Commitment:**

Please refer to the [ADR Commitment page](m365-dr-commitments.md#microsoft-teams) to understand the specific commitments provided via Product Terms.  Examples of the committed data include:

- Chat/ channel messages and team structure: Every team in Microsoft Teams is backed by an Microsoft 365 Modern Group and its SharePoint site and Exchange mailbox. Private chats (including group chats), messages sent as part of a conversation in a channel, and the structure of teams and channels are stored in an Azure powered chat service. The data is also stored in a hidden folder in the user and group mailboxes to enable information protection features.  
- Images and Media: Media used in chats (except for Giphy GIFs which are not stored but are a reference link to the original Giphy URL) are stored in an Azure based Media Service deployed to the same locations as the chat service.
- Meeting Recordings: For users of Microsoft Stream (on SharePoint) Meeting Recordings are stored in the OneDrive for Business storage of the user that initiates the recording.

### Multi-Geo add-on

Required Conditions:

1. _Tenants_ have a valid Multi-Geo subscription that covers all users assigned to a _Satellite Geography_
1. Customer must have an active Enterprise Agreement.
1. Total purchased Multi-Geo units must be greater than 5% of the total eligible seats in the _Tenant_.

**Commitment:**
Customers can assign users of Microsoft Teams to any _Satellite Geography_ supported by Multi-Geo. The following customer data will be stored in the relevant _Satellite Geography_: Teams chat data that consists of chat messages, including private messages, channel messages, and images used in chats.

## Multi-Geo Capabilities in Microsoft Teams

Multi-Geo capabilities in Teams enable Teams chat data to be stored at rest in a specified _Macro Region Geography_ or _Local Region Geography_ location. Chat data consists of chat messages, including private messages, channel messages, and images used in chats.

Teams uses the Preferred Data Location (PDL) for users and groups to determine where to store data. If the PDL isn't set or is invalid, data is stored in the tenant's _Primary Provisioned Geography_ location.

>[!NOTE]
>Multi-Geo capabilities in Teams rolled out in July 2021. Your chat and channel messages will be automatically migrated to the correct _Macro Region Geography_ or _Local Region Geography_ location over the next few quarters. Any new PDL changes will be processed after the _Tenant_ has completed the initial sync, and new PDL changes beyond that will be queued and processed in the order they are received.

### User chat

User chat includes one-to-one, one-to-many, and private meeting messages.

When a new user is created, Teams reads the user's PDL and stores all their chat data in that _Macro Region Geography_ or _Local Region Geography_ location.
For existing users, if an administrator adds or modifies the PDL for a user, that user's chat data is added to a migration queue to be moved to the specified _Macro Region Geography_ or _Local Region Geography_ location.

The storage location for a one-to-one or one-to-many chat is based on the PDL of the person who created the chat. If that user's PDL is changed, the chat will be migrated to the new _Macro Region Geography_ or _Local Region Geography_ location. The storage location for a meeting chat is based on the PDL of the meeting organizer.

To find the current location of a user's Teams data, connect to Teams PowerShell and run the following command:

```PowerShell
Get-MultiGeoRegion -EntityType User -EntityId <UPN>
```

### Channel messages

Each Microsoft 365 group has a Preferred Data Location (PDL) which denotes the _Geography_ location where related data is to be stored. Teams uses the PDL for the group associated with each team to determine where to store channel messaging data for that team. This includes private channels and chat that occurs within a channel meeting.

When a user creates a new team, that user's PDL determines what PDL is assigned to the Microsoft 365 group. The group PDL determines where that team's data is stored. If that user's PDL later changes, the group's PDL isn't changed.

For existing teams, if an administrator adds or modifies the PDL for the Microsoft 365 group that backs a team, that team's channel messaging data is added to a migration queue to be moved to the specified _Macro Region Geography_ or _Local Region Geography_ location.

Changing the PDL of the Microsoft 365 group queues the Teams data to migrate to the chosen _Macro Region Geography_ or _Local Region Geography_ location. However, this doesn't migrate the SharePoint site or files associated with the Group automatically. You must move the site separately by following the procedures in Move a SharePoint site to a different _Geography_ location. Be sure to do both steps to avoid Teams data and SharePoint data for one group in different locations.

To find the current location of a team's data, connect to Teams PowerShell and run the following command:

```PowerShell
Get-MultiGeoRegion -EntityType Group -EntityId <GroupObjectId>
```

### User Experience

Teams Multi-Geo is seamless to the end user. Once you change the PDL of a user or a group, the respective data will queue for migration and the migration will occur automatically with no impact to the user or their Teams client even if they're active while the migration occurs.

### Migration

**Files Tab**
After the migration is complete the Files tab may take additional time (up to 7 seconds) to fully load when the user first attempts to use it.

**Read-only period**
Teams chat services moves each thread individually. The thread is locked in a read-only state during the move, which lasts a few seconds per thread. Threads remain accessible during the migration.

**In-scope for Migration**
In addition to Exchange Online, SharePoint Online, and OneDrive for Business; Microsoft will migrate Teams data to the local datacenter.

- Teams chat messages, including private messages and channel messages.
- Teams images used in chats.

Teams files are stored in SharePoint Online and Teams chat files are stored in OneDrive for Business. Voicemail, calendar, and contacts are stored in Exchange Online. In many cases, Exchange Online, SharePoint Online, and OneDrive for Business are already used by the customer in the local datacenter _Geography_ and are also part of the Microsoft 365 migration program for eligible customer countries/regions.

### How can I determine customer data location?
You can find the actual data location in _Tenant_ Admin Center. As a _Tenant_ administrator you can find the actual data location, for committed data, by navigating to Admin|Settings|Org Settings|Organization Profile|Data Location.
