---
title: "Exchange Online Data Resiliency in Microsoft 365"
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
description: In this article, find an explanation of the various aspects of data resiliency within Exchange Online and Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Exchange Online Data Resiliency in Microsoft 365

There are two types of corruption that can affect an Exchange database: physical corruption, which is typically caused by hardware (in particular, storage hardware) problems, and logical corruption, which occurs due to other factors. Generally, there are two types of logical corruption that can occur within an Exchange database: 
- **Database logical corruption** - The database page checksum matches, but the data on the page is wrong logically. This can occur when the database engine (the Extensible Storage Engine (ESE)) attempts to write a database page and even though the operating system returns a success message, the data is either never written to the disk or it's written to the wrong place. This is referred to as a *lost flush*. ESE includes numerous features and safeguards that are designed to prevent physical corruption of a database and other data loss scenarios. To prevent lost flushes from losing data, ESE includes a lost flush detection mechanism in the database along with a feature (single page restore) to correct it. 
- **Store logical corruption** - Data is added, deleted, or manipulated in a way that the user doesn't expect. These cases are generally caused by third-party applications. It's generally only corruption in the sense that the user views it as corruption. The Exchange store considers the transaction that produced the logical corruption to be a series of valid MAPI operations. The [In-Place Hold](https://docs.microsoft.com/exchange/security-and-compliance/create-or-remove-in-place-holds) features in Exchange Online provides protection from store logical corruption (because it prevents content from being permanently deleted by a user or an application). 

Exchange Online performs several consistency checks on replicated log files during both log inspection and log replay. These consistency checks prevent physical corruption from being replicated by the system. For example, during log inspection, there is a physical integrity check which verifies the log file and validates that the checksum recorded in the log file matches the checksum generated in memory. In addition, the log file header is examined to make sure the log file signature recorded in the log header matches that of the log file. During log replay, the log file undergoes further scrutiny. For example, the database header also contains the log signature which is compared with the log file's signature to ensure they match. 

Protection against corruption of mailbox data in Exchange Online is achieved by using Exchange Native Data Protection, a resiliency strategy that leverages application-level replication across multiple servers and multiple datacenters along with other features that help protect data from being lost due to corruption or other reasons. These features include native features that are managed by Microsoft or the Exchange Online application itself, such as:

- [Data Availability Groups](https://docs.microsoft.com/exchange/back-up-email)
- Single Bit Correction 
- Online Database Scanning 
- Lost Flush Detection 
- Single Page Restore 
- Mailbox Replication Service 
- Log File Checks 
- Deployment on Resilient File System 

For more information on the native features listed above, click on the above hyperlinks, and see below for additional information and for details on items without hyperlinks. In addition to these native features, Exchange Online also includes data resiliency features that customers can manage, such as: 
- [Single Item Recovery (enabled by default)](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/recover-deleted-messages) 
- [In-Place Hold and Litigation Hold](https://docs.microsoft.com/exchange/security-and-compliance/in-place-and-litigation-holds) 
- [Deleted Item Retention and Soft-Deleted Mailboxes (both enabled by default)](https://docs.microsoft.com/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes) 

## Database Availability Groups 
Every mailbox database in Microsoft 365 is hosted in a [database availability group (DAG)](https://docs.microsoft.com/exchange/back-up-email) and replicated to geographically-separate datacenters within the same region. The most common configuration is four database copies in four datacenters; however, some regions have fewer datacenters (databases are replicated to three datacenters in India, and two datacenters in Australia and Japan). But in all cases, every mailbox database has four copies that are distributed across multiple datacenters, thereby ensuring that mailbox data is protected from software, hardware, and even datacenter failures. 

Out of these four copies, three of them are configured as highly available. The fourth copy is configured as a [lagged database copy](https://docs.microsoft.com/Exchange/high-availability/manage-ha/activate-lagged-db-copies). The lagged database copy is not intended for individual mailbox recovery or mailbox item recovery. Its purpose is to provide a recovery mechanism for the rare event of system-wide, catastrophic logical corruption. 

Lagged database copies in Exchange Online are configured with a seven-day log file replay lag time. In addition, the Exchange Replay Lag Manager is enabled to provide dynamic log file play down for lagged copies to allow lagged database copies to self-repair and manage log file growth. Although lagged database copies are used in Exchange Online, it is important to understand that they are not a guaranteed point-in-time backup. Lagged database copies in Exchange Online have an availability threshold, typically around 90%, due to periods where the disk containing a lagged copy is lost due to disk failure, the lagged copy becoming a highly-available copy (due to automatic play down), as well as the periods where the lagged database copy is re-building the log replay queue. 

## Transport Resilience 
Exchange Online includes two primary transport resilience features: Shadow Redundancy and Safety Net. Shadow Redundancy keeps a redundant copy of a message while it is in transit. Safety Net keeps a redundant copy of a message after the message is successfully delivered. 

With Shadow Redundancy, each Exchange Online transport server makes a copy of each message it receives before it acknowledges successfully receiving the message to the sending server. This makes all messages in the transport pipeline redundant while in transit. If Exchange Online determines the original message was lost in transit, a redundant copy of the message is redelivered. 

Safety Net is a transport queue that is associated with the Transport service on a Mailbox server. This queue stores copies of messages that were successfully processed by the server. When a mailbox database or server failure requires activating an out-of-date copy of the mailbox database, messages in the Safety Net queue are automatically resubmitted to the new active copy of the mailbox database. Safety Net is also redundant, thereby eliminating transport as a single point of failure. It uses the concept of a Primary Safety Net and a Shadow Safety Net wherein if the Primary Safety Net is unavailable for more than 12 hours, resubmit requests become shadow resubmit requests, and messages are re-delivered from the Shadow Safety Net.

Message resubmissions from Safety Net are automatically initiated by the Active Manager component of the Microsoft Exchange Replication service that manages DAGs and mailbox database copies. No manual actions are required to resubmit messages from Safety Net. 

## Single Bit Correction 
ESE includes a mechanism to detect and resolve single-bit CRC errors (aka single-bit flips) that are the result of hardware errors (and as such they represent physical corruption). When these errors occur, ESE automatically corrects them and logs an event in the event log. 

## Online Database Scanning 
Online database scanning (also known as *database checksumming*) is the process where an ESE uses a database consistency checker to read each page and check for page corruption. The primary purpose is to detect physical corruption and lost flushes that may not be getting detected by transactional operations. Database scanning also performs post-store crash operations. Space can be leaked due to crashes, and online database scanning finds and recovers lost space. The system is designed with the expectation that every database is fully scanned once every seven days. 

## Lost Flush Detection 
A lost flush occurs when a database write operation that the disk subsystem/operating system returned as completed did not actually get written to disk, or was written in the wrong location. Lost flush incidents can result in database logical corruption, so to prevent lost flushes from resulting in lost data, ESE includes a lost flush detection mechanism. As database pages are written to passive copies, a check is performed for lost flushes on the active copy. If a lost flush is detected, ESE can repair the process using a page patching process. 

## Single Page Restore 
Single page restore, aka *page patching*, is an automatic process where corrupt database pages are replaced by healthy copies from a healthy replica. The repair process for a corrupt page depends on whether the database copy is active or passive. When an active database copy encounters a corrupted page, it can copy a page from one of its replicas, provided the page it copies is completely up-to-date. This is accomplished by putting a request for the page into the log stream, which is the basis of mailbox database replication. As soon as a replica encounters the page request it responds by sending a copy of the page to the requesting database copy. Single page restore also provides an asynchronous communication mechanism for the active to request a page from replicas, even if the replicas are currently offline. 

In case of corruption in a passive database copy, including a lagged database copy, because these copies are always behind their active copy, it is always safe to copy any page from the active copy to a passive copy. A passive database copy is by nature highly available, so during the page patching process, log replaying is suspended, but log copying continues. The passive database copy retrieves a copy of the corrupted page from the active copy, waits until the log file which meets the maximum required log generation requirement is copied and inspected, and then patches the corrupt page. Once the page has been patched, log replay resumes. The process is the same for the lagged database copy, except that the lagged database first replays all log files that are necessary to achieve a patchable state. 

## Mailbox Replication Service 
Moving mailboxes is a key part of managing a large-scale email service. There are always updated technologies and hardware and version upgrades to deal with, so having a robust, throttled system that enables our engineers to accomplish this work while keeping the mailbox moves transparent to users (by making sure they stay online throughout the process) is key and making sure that the process scales up gracefully as mailboxes get larger and larger. 

The Exchange Mailbox Replication Service (MRS) is responsible for moving mailboxes between databases. During the move, MRS performs a consistency check on all items within the mailbox. If a consistency issue is found, MRS will either correct the problem, or skip the corrupted items, thereby removing the corruption from the mailbox. 

Because MRS is a component of Exchange Online, we can make changes in its code to address new forms of corruption that are detected in the future. For example, if we detect a consistency issue that MRS is not able to fix, we can analyze the corruption, change the MRS code and correct the inconsistency (if we understand how to). 

## Log File Checks 
All transaction log files generated by an Exchange database undergo several forms of consistency checks. When a log file is created, the first thing done is a bit pattern is written and then a series of log writes is performed. This enables Exchange Online to execute a series of checks (lost flush, CRC and other checks) to validate each log file as it is written, and again as it is replicated. 

## Deployment on Resilient File System 
To help prevent corruption from occurring at the file system level, Exchange Online is being deployed on Resilient File System (ReFS) partitions to provide improved recovery capabilities. ReFS is a file system in Windows Server 2012 and later that is designed to be more resilient against data corruption thereby maximizing data availability and integrity. Specifically, ReFS brings improvements in the way that metadata is updated which offers better protection for data and reduces data corruption cases. It also uses checksums to verify the integrity of file data and metadata ensuring that data corruption is easily found and repaired. 

Exchange Online takes advantage of several ReFS benefits: 
- More resiliency in data integrity means fewer data corruption incidents. Reducing the number of corruption incidents means fewer unnecessary database reseeds. 
- Checksum running on metadata enabling detections of corruption cases sooner and more deterministically, allowing us to fix customer data corruption before grey failures occur on data volumes.
- Designed to work well with extremely large data sets—petabytes and larger—without performance impact
- Support for other features used by Exchange Online, such as BitLocker encryption. 

Exchange Online also benefits from other ReFS features: 
- **Integrity (Integrity Streams)** - ReFS stores data in a way that protects it from many of the common errors that can normally cause data loss. Microsoft 365 Search uses Integrity Streams to help with early disk corruption detection and checksums of file content. The feature also reduces corruption incidents caused by “Torn Writes” (when a write operation does not complete due to power outages, etc.). 
- **Availability (Salvage)** - ReFS prioritizes the availability of data. Historically, file systems were often susceptible to data corruption that would require the system to be taken offline for repair. Although rare, if corruption does occur, ReFS implements salvage, a feature that removes the corrupt data from the namespace on a live volume and ensures that good data is not adversely affected by non-repairable corrupt data. Applying the Salvage feature and isolating data corruption to Exchange Online database volumes means that we can keep non-affected databases on a corrupted volume healthy between the time of corruption and repair action. This increases the availability of databases that would normally be affected by such disk corruption issues. 