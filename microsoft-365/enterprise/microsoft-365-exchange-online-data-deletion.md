---
title: "Microsoft 365 Exchange Online Data Deletion"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: Learn how soft and hard data deletions for mailboxes and items within mailboxes are handled in Exchange Online.
ms.custom: seo-marvel-apr2020
---

# Exchange Online Data Deletion in Microsoft 365

Within Exchange Online, there are two kinds of deletions: soft deletions and hard deletions. This applies to both mailboxes and items within a mailbox.

## Soft-Deleted and Hard-Deleted Mailboxes
A soft-deleted user mailbox is a mailbox that has been deleted using the Microsoft 365 admin center or the Remove-Mailbox cmdlet and has still been in the Azure Active Directory recycle bin for less than 30 days. A mailbox can become soft-deleted in any of the following ways:
- The user mailbox's associated Azure Active Directory user account is soft-deleted (the user object is out of scope or in the recycle bin container).
- The user mailbox's associated Azure Active Directory user account has been hard-deleted but the Exchange Online mailbox is under a litigation hold or eDiscovery hold.
- The user mailbox's associated Azure Active Directory user account has been purged within the last 30 days; which is the maximum retention length Exchange Online will keep the mailbox in a soft-deleted state before it is permanently purged and unrecoverable.

A hard-deleted user mailbox is a mailbox that has been deleted in one of the following ways:
- The user mailbox has been soft-deleted for more than 30 days, and the associated Azure Active Directory user has been hard-deleted. All mailbox content such as emails, contacts and files are permanently deleted.
- The user account associated with the user mailbox has been hard-deleted from the Azure Active Directory. The user mailbox is now soft-deleted in Exchange Online and stays in a soft-deleted state for 30 days. If in the 30-day period a new Azure Active Directory user is synchronized from the original recipient account with the same **ExchangeGuid** or **ArchiveGuid**, and that new account is licensed for Exchange Online, this will result in a hard deletion of the original user mailbox. All mailbox content such as emails, contacts and files are permanently deleted.
- A soft-deleted mailbox is deleted using **Remove-Mailbox -PermanentlyDelete**.

The above deletion scenarios assume that the user mailbox isn't in any of the hold states, like Litigation hold or eDiscovery hold. If there is any type of hold on the mailbox, then the mailbox can't be deleted. For all mail-user recipient types, any [Hold](https://support.office.com/article/manage-legal-investigations-in-office-365-2e5fbe9f-ee4d-4178-8ff8-4356bc1b168e?ui=en-US&rs=en-US&ad=US) settings are ignored and have no effect on hard-deletions or soft-deletions.

## Soft-Deleted and Hard-Deleted Items
When a user deletes a mailbox item (such as an email message, a contact, a calendar appointment, or a task), the item is moved to the Recoverable Items folder, and into a subfolder named "Deletions". This is referred to as a soft deletion. How long deleted items are kept in the Deletions folder depends on the deleted item retention period that is set for the mailbox. An Exchange Online mailbox keeps deleted items for 14 days by default, but Exchange Online administrators can change this setting to increase the period up to a maximum of 30 days. (For detailed steps to increase the deleted item retention period for an Exchange Online mailbox, see [Change how long permanently deleted items are kept for an Exchange Online mailbox](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/change-deleted-item-retention).) Users can recover, or purge, deleted items before the retention time for a deleted item expires. To do so, they use the Recover Deleted Items feature in Microsoft Outlook or Outlook on the web.

If a user purges a deleted item by using the Recover Deleted Items feature in Outlook or Outlook on the web, this is known as a hard deletion. In Exchange Online, single item recovery is enabled by default when a new mailbox is created, so an administrator can still [recover](https://docs.microsoft.com/Exchange/recipients/user-mailboxes/recover-deleted-messages) hard-deleted items before the deleted item retention period expires. Also, if a message is changed by a user or a process, copies of the original item are also retained when single item recovery is enabled.

## Page Zeroing
*Zeroing* is a security mechanism that writes either zeros or a binary pattern over deleted data so that the deleted data is more difficult to recover. In Exchange Online, mailbox databases use *pages* as their unit of storage, and implement an overwriting process called *page zeroing*. Page zeroing is enabled by default, and it cannot be disabled by customers or by Microsoft. Page zeroing operations are recorded in the transaction log files so that all copies of a given database are page-zeroed in a similar manner. Zeroing a page on an active database copy causes the page to get zeroed on passive copies of the database.

Page zeroing writes a binary pattern over hard-deleted records. The page-zeroing pattern is specific to Extensible Storage Engine (ESE) operations (the name of the internal database engine used by servers in Exchange Online), and it is different for run-time operations versus background database maintenance operations. (Background database maintenance is a process that continuously checksums and scans each database. Its primary function is to checksum database pages, but it also handles cleaning up space and zeroing out records and pages that were not zeroed out because of a Store crash.)

The following table lists the fill patterns that correspond to specific run-time operations.

| ESE run-time operation   | Fill pattern |
|--------------------------|--------------|
| Replace                  | R            |
| Record/long value delete | D            |
| Freed page space         | H            |


The following table lists the fill patterns that correspond to specific operations that occur during ESE background database maintenance.

| ESE background database maintenance operation | Fill pattern |
|-----------------------------------------------|--------------|
| Record delete                                 | D            |
| Long value delete                             | L            |
| Freed page space of partially used page       | Z            |
| Freed page space of unused page               | U            |


### Page Zeroing Process
The process for page zeroing depends on the deletion scenario. The following table discusses database delete scenarios, and when page zeroing functions occur.

| Database delete scenario | ESE process and timeframe to zero database data |
|-----------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Item expires based on the deleted item retention period. | An asynchronous thread writes a binary pattern over the deleted data. This action occurs within milliseconds of the record deletion. If the Store process crashes while the asynchronous zeroing work is still outstanding (or version store cleanup is canceled due to version store growth), the zeroing is completed when background database maintenance processes that section of the database. |
| View Scenario: Expiration of items from Outlook/Outlook on the web folder view (for example, Conversation view) | Data zeroing occurs when background database maintenance processes that section of the database. |
| Move Mailbox/Delete Mailbox Scenario: Source mailbox deleted (expiry of deleted mailbox) | Data zeroing occurs when background database maintenance processes that section of the database. |

### Mailbox Data Types without Page Zeroing
The following mailbox data types have no provisions for page zeroing:
- **Mailbox database transaction logs** - When transaction logs are deleted as part of normal operations, there is no process to zero the blocks in the file system that stored the deleted log file(s). It's likely that the file system will quickly re-utilize that free space for newly created logs, but there is no guarantee that this will happen.
- **Content index catalog files** - Exchange Online uses Search Foundation (also known as FAST) for search indexing functionality. The search index catalog is composed of several dozen files stored on the same volume as the mailbox database file. When a message is hard-deleted from the mailbox database, the associated content in the search catalog isn't immediately deleted. Content deletion occurs when Search Foundation does a shadow (or master merge) of many small catalog files in to a single larger file. After the master merge completes, the smaller catalog files are deleted. There is no process to zero the blocks which stored the deleted catalog files.

## Continuous Replication
Continuous replication (also known as log shipping and replay) is technology in Exchange Online that creates and maintains copies of every mailbox database to provide high availability, site resilience, and disaster recovery. Continuous replication leverages the Exchange Server database crash recovery support to provide technology that performs asynchronous updating of one or more copies of a mailbox database. Each mailbox server records database updates made on an active database (for example, user email activity) as log records in a sequential set of 1 MB transaction log files. This set of files is referred to as the log stream. In continuous replication, the log stream is also used to asynchronously update one or more copies of a database. This is accomplished by transmitting the logs to a location containing a passive copy of the active database and then replaying them into the passive database copy. If all logs from the active database are replayed against a passive copy of the database, then the two databases are equivalent, and it is through this process that any physical change made to an active database is replicated to all passive copies of that database.

Any deletion from a mailbox database, whether a mailbox item or an entire mailbox, and whether a soft-delete or a hard-delete, represents a physical change to the active database. Page zeroing also entails making physical changes to the active database. These changes are written to the log files through a process called continuous replication, and when those log files are replayed against passive copies of the database, the same physical changes are made to those passive databases.