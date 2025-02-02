---
title: Frequently asked questions about Microsoft 365 Backup
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 07/31/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Read frequently asked questions about protecting your organization's data using Microsoft 365 Backup.
---

# Frequently asked questions about Microsoft 365 Backup

#### Has Microsoft's stance on shared responsibility of data protection changed?

No, we still have the same point of view, but are now offering more tools to help organizations achieve those goals and responsibilities.

#### Why don’t Disaster Recovery copies suffice for my backup?

Disaster Recovery (DR) is the ability to recover from a situation in which the primary data center is unable to continue to operate. A DR copy with Microsoft 365 maintains the current state of content, not any historical versions from prior points in time. Microsoft 365 Backup offers the added advantage of allowing you to restore data to a previous healthy state quickly, with fast RTO (recovery time objectives) and short RPO (recovery point objectives).

#### Why don’t versions already solve this point in time restore problem?

Versions give individual users a way to restore files or sites to prior points in time, However, that kind of recovery method doesn't scale well for large-scale ransomware attacks where an admin needs to orchestrate the recovery. Versions might also be exhausted depending on the version limit set by the admin.

#### Why don’t legal holds solve the problem of keeping all versions of items for recovery?

Legal holds retain data, but that feature is optimized for export (for example, via eDiscovery), not for mass restore. Microsoft 365 Backup gives the right enhanced restore tooling for ransomware and accidental/malicious deletions at scale, plus optimized performance for those scenarios.

#### What mailbox changes are "backed up"?

Mailbox backup enables the recovery of copies of mailbox item "versions." Two types of actions create versions:

- Modifications
- Deletions

Example events that are versions and recoverable via backup:

**User action**
- Edit a received email using "edit message" via Outlook
- Edit a Note (not draft)
- Remove an attachment from an email
- Edit an attachment to an email
- Edit a contact (not draft)
- Modify body of a calendar invite
- Update time of a calendar invite
- Edit a task (not draft)
- Delete note from deleted items
- Delete email from deleted items
- Purge items from single item retention
- Delete a folder with items in it

Example events that aren't versioned or recoverable via backup:

**User action**
- Edit an email item in the drafts folder
- Update a flag on a received email
- Set "Do Not Forward" on a received email
- Set a received message to highly important

#### What is the service recovery point objective?

The recovery point objective (RPO) is the maximum amount of time between the most recent backup and a data destruction event. Stated another way, it’s the amount data lost due to a data destruction event not recoverable via the backups. For Microsoft 365 Backup, the RPOs are:

- For OneDrive and SharePoint, the RPO for the trailing two weeks is 10 minutes. This means if it's Monday at 8:00 AM, you can go back in time to any 10-minute period up to two weeks in the past. Beyond that, you can go to any one week period of time in past from 2 to 52 weeks in the past.

- For Exchange Online, the RPO is 10 minutes, meaning the most amount of data that can be lost due to a data destruction event is roughly 10 minutes’s worth of data.

Let's start with what it doesn't mean: We are *not* taking snapshots every 10 minutes.

A backup frequency of 10 minutes (if the item is modified) means that any changes made to the item will be saved as a new version every 10 minutes, regardless of how many changes occur within that 10-minute period. For example, if a ransomware attack encrypts the email item every minute, we'll take six copies in an hour.

#### What happens when user content is backed up but then is removed or deleted from Microsoft Entra ID (formerly Azure Active Directory)?

When a user is removed from the backup policy, the backup of the OneDrive account or Exchange mailbox is retained for one year from the date the backup was created.

When a user is deleted from Microsoft Entra ID, the backup of the OneDrive account or Exchange mailbox is retained for one year from the date the backup was created.

When a site is removed from the backup policy, the backup of the SharePoint site will be held for 52 weeks from the time a given restore point was created for that site.

#### How can I restore the OneDrive account or Exchange mailbox for a user who is deleted from Microsoft Entra ID (formerly Azure Active Directory)?

If the user has been deleted within the past 30 days, the best option is to restore the user based on instructions found at [Restore a user in the Microsoft 365 admin center](/microsoft-365/admin/add-users/restore-user). Once the user is reconstituted, the name will reappear in the Backup tool restore experience, and the rest of the experience will work as normal.

For OneDrive, you can restore the OneDrive to the original URL or a new URL. At that time, the OneDrive is in an "orphaned" state. To connect the OneDrive to a user, see [Fix site user ID mismatch in SharePoint or OneDrive](/sharepoint/troubleshoot/sharing-and-permissions/fix-site-user-id-mismatch).

For Exchange, if the user account is permanently deleted, Microsoft 365 Backup retains the inactive mailbox for the duration of the backup policy. To recover the inactive mailbox, follow the guidance at [Recover an inactive mailbox](/purview/recover-an-inactive-mailbox) to convert the inactive mailbox to a new, active mailbox. Once the inactive mailbox is recovered, remove the deleted user from the backup policy and then add the new user to the backup policy to access backups from the recovered mailbox.

<!---
- For Exchange, a user account will be in a soft-deleted state for 30 days after it's deleted. To restore the user, see [Restore a user in the Microsoft 365 admin center](/microsoft-365/admin/add-users/restore-user). Once you restore the user, you can use the restore feature in Microsoft 365 Backup to restore as usual.
--->
