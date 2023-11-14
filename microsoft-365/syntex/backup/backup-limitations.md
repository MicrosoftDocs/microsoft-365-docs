---
title: Preview limitations in Microsoft 365 Backup (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/15/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: backup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about preview limitations in Microsoft 365 Backup.
---

# Preview limitations in Microsoft 365 Backup (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change.

## Feature limitations

The constraints and limitations outlined in this article are temporary for the preview and will be resolved either by general availability or shortly after, unless stated otherwise.

### Performance

Performance and speed of web interfaces, initial configuration, and restores might be slower than expected during the preview period as we scale up our infrastructure to remove undesirable latency from our system.

### Backup configuration

- You can create only one active backup policy per underlying service (that is, one for SharePoint sites, one for Exchange online users, and one for OneDrive accounts). You can add or remove as many artifacts (sites or user accounts) to or from each active policy.

- Once the sites or mailboxes are added to a backup policy, it takes roughly 15 minutes per 1,000 sites or mailboxes for the policy to activate.

- The retention period of Microsoft 365 Backup product is fixed at one year and can't be configured by the admins.

- The CSV upload feature for bulk addition of sites or user accounts in the backup policy creation workflow can accommodate a maximum of 5,000 entries per CSV file.

- The rule-based feature for bulk addition of sites via site names or URL in the backup policy creation workflow can accommodate a maximum of 10 keywords only at a time. Each keyword can have a minimum of three characters and maximum of 255 characters.

- The rule-based feature for bulk addition of user accounts via security groups or distribution lists can accommodate a maximum of three groups only at a time. These rules are static and applied one time only. That is, the security groups or distribution lists are flattened at the time of adding to the backup configuration policy and won't be dynamically tracked or persisted in the system.

- Multi-geo feature isn't supported for SharePoint Online or OneDrive for Business. This might affect the visibility of sites in one geo if they have been configured in another geo.

- Mailboxes and OneDrive accounts that are under legal or in-place holds can't currently be backed up or restored.

### Restore

- SharePoint sites or OneDrive accounts that are currently in the first stage recycle bin must first be restored from the recycle bin before they can be rolled to a prior point in time via the Microsoft 365 Backup tool. The point in time restore via Microsoft 365 Backup won't work if the site or OneDrive is in the recycle bin.

- SharePoint admins operating the Microsoft 365 Backup tool need to have explicit permissions to the sites they are searching for in the backups to be able to find those sites in the backup and restore them.

- SharePoint sites and OneDrive accounts being restored to a new URL will have a read-only lock. The global admin can still download documents or remove the read-only lock manually.

- While searching for sites, note that search is case-sensitive and is a prefix-type search.

- The restored SharePoint or OneDrive sites (in-place or same URL restore only) will have a short downtime during the restoration but won't be explicitly locked during this release.

- SharePoint sites and OneDrive accounts being restored to a new URL, will not have new destination details populated instantly, they would be populated with a delay of approximately 15 minutes.

- For the new URL restore, the restored SharePoint or OneDrive sites (new URLs only) won't have the same permissions as original site. Only the global or SharePoint admin will have permission to the restored site. However, for the in-place or same URL restore, permissions are reverted to the state of the original site at the time it’s being restored from. This is likely to continue to be true into general availability.

- While OneDrive account and mailbox backups of deleted users are maintained and after the user’s Entra ID is deleted are restorable, search in the people picker UI for that user will not work. The user will be displayed as an empty user in results, requiring a guess and check methodology.

- Mailbox draft items aren't backed up or restorable.

- Calendar item backup and restore is limited to modified items only and doesn't cover deleted items. This includes the following specific limitations:

    - Restoring deleted calendar items with the ability to send updates post-restore isn't yet supported.
    - Replacing encrypted items with healthy items during a cross mailbox restore (mailboxes all belonging to the same user account) isn't supported.
    - Resolving orphaned conflict (in between ransomware and restore) isn't supported.
    - Restoring organizer copy doesn't automatically make attendee copies catch up, it only allows future updates by organizer to work for all users added on the calendar item.

- Deleting the user account (for example, deleting the Microsoft Entra ID user) that owns the OneDrive site or Exchange mailbox renders the OneDrive site and Exchange mailbox as inactive or orphaned. The end-to-end workflow to restore such sites or mailboxes isn't supported directly in the Microsoft 365 Backup product. The Microsoft 365 Backup product ensures retention of the content. For more information about how to restore inactive mailboxes or orphaned OneDrive accounts, see:

    - OneDrive and Sharepoint: [Fix site user ID mismatch in SharePoint or OneDrive](https://learn.microsoft.com/en-us/sharepoint/troubleshoot/sharing-and-permissions/fix-site-user-id-mismatch)
    - Exchange: [Recover an inactive mailbox](https://learn.microsoft.com/en-us/purview/recover-an-inactive-mailbox)

- While restoring Exchange mailboxes at a granular level, the search feature provides several search parameters. These parameters allow you to enter up to a maximum of five keywords each. For example, the parameters “from” and “to” allow you to enter up to a maximum of five email addresses each.

- Multi-geo feature isn't supported for SharePoint Online or OneDrive for Business services in this release. This might affect the restore of sites across different geos.

- OneDrive accounts and SharePoint sites that have undergone the following types of changes won't be undoable via restore: tenant rename, tenant move, and site URL change.  

- While performing a mailbox restore, if there are no items to be restored, the new folder name will not be returned.

## Self-service scale limits

During the preview, we're enforcing self-service restore limits while we gain a better understanding of how customers are using the tool so that we can build in enhancements in the future to help users avoid mistaken restore actions. These limits are described in the following table.

|Limit parameters  |Warning  |Limit throttle*  |
|---------|---------|---------|
|Number of artifacts being restored across all active restoration tasks per workload (at a time)    |> 100         | > 1,000        |
|Number of parallel active restoration tasks per workload    | > 5        | > 25        |
|Number of artifacts (active and completed) restored in a day per workload    | Not applicable        | > 10,000        |

*Customer can call into support to lift the safety restrictions.
