---
title: Frequently asked questions for Microsoft 365 Backup (Preview)
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
description: Read frequently asked questions for Microsoft 365 Backup.
---

# Frequently asked questions for Microsoft 365 Backup (Preview)

> [!NOTE]
> This feature is currently in public preview and subject to change.

## Has the Microsoft stance on shared responsibility of data protection changed?

No, we still have the same point of view, but are now offering additional tools to help organizations achieve those goals and responsibilities.

## Don’t DR copies suffice for my backup then?

DR copies protect only the current state of content, not prior points in time. Microsoft 365 Backup provides additional benefit by giving you a way to restore data back to a healthy state in the past with fast RTO to with short RPO intervals.

## Don’t versions already solve this point in time restore problem?

Versions give individual users a way to restore files or sites to prior points in time, but that kind of recovery method doesn't scale well for mass ransomware attacks where an admin needs to orchestrate the recovery. Versions might also be exhausted depending on the version limit set by the admin.

## Don’t legal holds solve the problem of keeping all versions of items for recovery?

Legal holds retain data, but that feature is optimized for export (fr example, via eDiscovery), not for mass restore. Microsoft 365 Backup gives the right enhanced restore tooling for ransomware and accidental/malicious deletions at scale, plus optimized performance for those scenarios.

## What mailbox changes are “backed up”?

Mailbox Backup enables the recovery of copies of mailbox item “versions.” Versions are created by two types of actions:

- Modifications 
- Deletions

Example events that are versions and recoverable via backup:

**User action**
Edit a received email using ‘edit message’ via OL
Edit a Note (not draft)
Remove an attachment from an email
Edit an attachment to an email
Edit a contact (not draft)
Modify body of a calendar invite
Update time of a calendar invite
Edit a task (not draft)
Delete note from deleted items
Delete email from deleted items
Purge items from single item retention
Delete a folder with items in it

Example events that aren't versioned or recoverable via backup:

**User action**
Edit an email item in the drafts folder
Update a flag on a received email
Set ‘Do Not Forward’ on a received email
Set a received message to highly important

## What is the service recovery point objective?

The recovery point objective (RPO) is the maximum amount of time between the most recent backup and a data destruction event. Stated another way, it’s the amount data lost due to a data destruction event not recoverable via the backups. In the case of Microsoft 365 Backup, the RPOs are:

For OneDrive and SharePoint, the RPO for the first two weeks is 10 mins, then one week beyond that. This means for the first two weeks, the most amount of data that can be lost due to a data destruction event is roughly 10 minute’s worth of the most recent data. Likewise, after two weeks, the most amount of data that can be lost is a week’s worth of data.

For Exchange Online, the RPO is 10 seconds, meaning the most amount of data that can be lost due to a data destruction event is roughly 10 second’s worth of data.

Lets start with what it doesn't mean: We are *not* taking snapshots every 10 seconds.

Backup frequency of 10 seconds (if the item is modified) means that changes to the item will be saved as a version once every 10 seconds, no matter how many changes are made in that 10-second interval. For example, if a ransomware attack encrypts the email item every second, will we take six copies in a minute.

## Why am I getting this error “x out of y user mailboxes selected don't have a backup before <timestamp>. Find backups or remove them from your scope.”

As mentioned earlier, mailbox versions are “event-based.” If there were no modifications or deletions done after the last known good time provided, a new restore task can't be created.

