---
title: Preview limitations in Microsoft 365 Backup (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 04/15/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the preview limitations in Microsoft 365 Backup.
---

# Preview limitations in Microsoft 365 Backup (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change.

## Feature limitations

The constraints and limitations outlined in this article are temporary for the preview and will be resolved either by general availability or shortly after, unless stated otherwise.

### Performance

Performance and speed of web interfaces, initial configuration, and restores might be slower than expected during the preview period as we scale up our infrastructure to remove undesirable latency from our system.

### Backup configuration

- You can create only one active backup policy per underlying service (that is, one for OneDrive accounts, one for SharePoint sites, and one for Exchange online users). You can add or remove as many artifacts (sites or user accounts) to or from each active policy.

- Once the sites or mailboxes are added to a backup policy, it might take up to 15 minutes per 1,000 sites or mailboxes for restore points to become available for restore. Backups begin as soon as the policy is in effect, even if the restore points aren't yet available. This limitation will be removed shortly.

- The CSV upload feature for bulk addition of sites or user accounts in the backup policy creation workflow can accommodate a maximum of 3,000 entries per CSV file.

- The rule-based feature for bulk addition of sites via site names or URL in the backup policy creation workflow can accommodate a maximum of 10 keywords at a time. Each keyword can have a minimum of three characters and maximum of 255 characters.

- The rule-based feature for bulk addition of user accounts via security groups or distribution lists can accommodate a maximum of three groups at a time. These rules are static and applied one time only. That is, the security groups or distribution lists are flattened at the time of adding to the backup configuration policy. Groups or list won't be dynamically updated in the system if users are added or removed from the original security group, for example.

- Backup and restore of tenants that have the multi-geo feature enabled for OneDrive and SharePoint might not work properly. We recommend not using the preview version of Backup until multi-geo support is fully enabled.

- Backing up a parent site won't back up the channel sites.

### Restore

- Site search is case-sensitive and is a prefix-type search.

- SharePoint sites or OneDrive accounts that are currently in the first stage recycle bin must first be restored from the recycle bin before they can be rolled to a prior point in time via the Microsoft 365 Backup tool. The point in time restore via Microsoft 365 Backup won't work if the site or OneDrive is in the recycle bin.

- SharePoint admins operating the Microsoft 365 Backup tool need to have explicit read+ permissions to the sites they're searching for in the backups to be able to find those sites in the backup and restore them. In the future, we’ll introduce a Backup role, which grants SharePoint and Exchange admins full Backup search read rights when combined with their existing admin roles.

- SharePoint sites and OneDrive accounts being restored to a prior point in time aren't locked in a ready-only state. Therefore, users might not realize their current edits will be imminently rolled back and lost. In the future, we introduce a read-only lock on all sites undergoing a restore.

- For restores to a new URL, it might take up to 15 minutes for the destination URL to be displayed in the tool once a SharePoint site or OneDrive account restore to a new URL session completes.

- For restores to a new URL, only the admin who executed the restore has ownership permissions for the restored SharePoint sites or OneDrive accounts in the new URLs. Restores to the same URL reverts permissions to their original state. We might decide to change this behavior in the future via a "copy permissions" feature.

- Mailboxes, OneDrive accounts, and SharePoint sites that are under legal or in-place holds currently can't be restored unless the destination is removed from legal hold. To restore a SharePoint site under legal hold, you need to restore the site to a new URL.

- While OneDrive account and mailbox backups of deleted users are maintained and after the user’s Microsoft Entra ID is deleted are restorable, search in the people picker UI for that user won't work. The user is displayed as an empty user in results, requiring a guess-and-check methodology.

- Mailbox draft items aren't backed up or restorable.

- Calendar item backup and restore is limited to modified items only and doesn't cover deleted items. This action includes the following specific limitations:

    - Restoring deleted calendar items with the ability to send updates post-restore isn't yet supported.

    - Replacing encrypted items with healthy items during a cross mailbox restore (mailboxes all belonging to the same user account) isn't supported.

    - Resolving orphaned conflict (in between ransomware and restore) isn't supported.

    - Restoring organizer copy doesn't automatically make attendee copies catch up, it only allows future updates by organizer to work for all users added on the calendar item.

- Deleting the user account (for example, deleting the Microsoft Entra ID user) that owns the OneDrive account or Exchange mailbox renders the OneDrive account and Exchange mailbox as inactive or orphaned. The end-to-end workflow to restore such sites or mailboxes isn't supported directly in the Microsoft 365 Backup product. The Microsoft 365 Backup product ensures retention of the content. For more information about how to restore inactive mailboxes or orphaned OneDrive accounts, see:

    - OneDrive and Sharepoint: [Fix site user ID mismatch in SharePoint or OneDrive](/sharepoint/troubleshoot/sharing-and-permissions/fix-site-user-id-mismatch)

    - Exchange: [Recover an inactive mailbox](/purview/recover-an-inactive-mailbox)

- While restoring Exchange mailboxes at a granular level, the search feature provides several search parameters. These parameters allow you to enter up to a maximum of five keywords each. For example, the parameters "from" and "to" allow you to enter up to a maximum of five email addresses each.

- The multi-geo feature isn't supported for SharePoint or OneDrive services in this release. This might affect the restore of sites across different geos. Exchange Online multi-geo is supported, however, when configuring a restore each mailbox in a single restore request must be in the same geo.

- OneDrive accounts and SharePoint sites that undergoes the following types of changes won't be undoable via restore: tenant rename, tenant move, and site URL change.  

- If there are no differences between the current state of a mailbox and the prior point in time from which you're attempting a restore, a restore isn't performed and no new folders are created when a "restore to a new location" request is made. We don't plan to modify this behavior in the future.

- SharePoint sites and OneDrive accounts being restored to a new URL have a read-only lock on that new URL until the restore completes. The global admin can still download documents or remove the read-only lock manually. This isn't behavior we plan on changing.

## Self-service scale limits

During the preview, we're enforcing self-service restore limits while we gain a better understanding of how organizations are using the tool so that we can build in enhancements in the future to help users avoid mistaken restore actions. These limits are described in the following table.

|Limit parameters  |Warning  |Limit throttle*  |
|---------|---------|---------|
|Number of artifacts being restored across all active restoration tasks per workload (at a time)    |> 100         | > 1,000        |
|Number of parallel active restoration tasks per workload    | > 5        | > 25        |
|Number of artifacts (active and completed) restored in a day per workload    | Not applicable        | > 10,000        |

*Customer can call into support to lift the safety restrictions.

Follow these steps:

1. As an administrator, select the following link, which will populate a help query in the admin center: [Microsoft 365 Backup Limit Request](https://aka.ms/M365BackupLimit).

2. At the bottom of the pane, select **Contact Support**, and then select **New Service Request**.

3. Leave **Description** blank.
