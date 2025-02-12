---
title: Overview of Microsoft 365 Backup
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
    - essentials-overview
ms.localizationpriority:  medium
description: Learn about the backup and recovery capabilities for OneDrive, SharePoint, and Exchange Online using Microsoft 365 Backup.
---

# Overview of Microsoft 365 Backup

Microsoft 365 Backup is designed to ensure your organization’s data is always protected and easily recoverable. With the ability to back up all or select SharePoint sites, OneDrive accounts, and Exchange mailboxes, Microsoft 365 Backup provides comprehensive coverage for your critical data.
<!---
Key features include:

- **Granular and massive scale restorations**: Restore files, sites, and mailbox items to a prior point in time, whether you need to recover a single document or an entire site.

- **Seamless integration**: Managed directly from the Microsoft 365 admin center, making it easy to set up and manage your backup policies.

- **Business continuity**: Ensures quick recovery from ransomware attacks, accidental deletions, or other data loss events, minimizing downtime and maintaining business operations.

- **Partner ecosystem**: Leverage additional features and workflows through integrated partner applications to manage all your backups in one place.
--->
> [!Note]
> Microsoft 365 Backup is currently not available for Government Community Cloud (GCC) organizations. 

## Scenarios and value proposition

Business continuity assurance is a top-of-mind concern for many companies. Microsoft 365 Backup delivers business continuity peace of mind by providing performance and reliable restore confidence. When evaluating a backup and restore offering, what really matters isn't solely the backup, but the ability to restore your data to a healthy state quickly when you need to do so. Recovering large volumes of content is difficult when copying data at a scale from a remote, air-gapped location requiring weeks or even months to get your business back up and running.

In cases of a ransomware attack that encrypts large swaths of your data, or instances of an internal accidental or malicious data deletion or overwrite event, you need to be able to get your business back to a healthy state as soon as possible. This is what the Microsoft 365 Backup product offers, both through the Microsoft 365 admin center, and via partner applications built on the Microsoft 365 Backup Storage platform.

To summarize, applications built on top of the Microsoft 365 Backup Storage platform deliver the following benefits regardless of the size or scale of the protected tenant:

- Fast backup within hours.

- Fast restore within hours (see [performance expectations](#performance-expectations) later in this article).

- Full SharePoint site and OneDrive account restore fidelity, meaning the site and OneDrive are restored to their exact state (excluding, for example, taxonomy mastered outside the site scope) at specific prior points in time via a rollback operation.

- Full Exchange mailbox item restores or granular item restores using search, for modified or deleted items.

- Consolidated security and compliance domain management.

## Feature summary

|Feature  |OneDrive  |SharePoint  |Exchange Online |
|---------|---------|---------|---------|
|**Retention period**     | 1 year        | 1 year        | 1 year        |
|**Recovery points**     |10 minutes for two weeks prior<br><br>Weekly snapshots 2-52 weeks prior |10 minutes for two weeks prior<br><br>Weekly snapshots 2-52 weeks prior | 10 minutes for prior 52 weeks   |
|**Backup granularity**     | OneDrive account |SharePoint site  |Exchange user account  |
|**Restore granularity**     |OneDrive accounts<br><br>Files restorable via versions (coming soon)  |SharePoint sites<br><br>Files restorable via versions (coming soon)    |Mail/Contacts/Calendar/Task items  |
|**Restore options**     |**Location**: Same or new URL<br><br>**OneDrive** restore rolls back to the state of the site at the prior point in time, overwriting all content and metadata since that prior point in time<br><br>**File version** restore rolls forward the file to the state at the prior point in time, but retains prior versions    |**Location**: Same or new URL<br><br>**Full site** restore rolls back to the state of the site at the prior point in time, overwriting all content and metadata since that prior point in time<br><br>**File version** restore rolls forward the file to the state at the prior point in time, but retains prior versions  |**Location**: Same or new folder within user’s mailbox<br><br>**Full and item level mailbox** restores only modified/deleted items from prior point in time  |
|**Restore speeds (RTO)**     |Up to 1,000 average-sized OneDrive accounts at a rate of up to 1-3 TB per hour    |Up to 1,000 average-sized sites, at a rate of up to 1-3 TB per hour    |Up to 1,000 average-sized mailboxes at a rate of up to 1-3 TB per hour    |
|**Auditability** |Actions fully auditable |Actions fully auditable |Actions fully auditable |
|**Geographic residency**    |Physically redundant & geographically replicated<br><br>Honors tenant’s geographic residency requirements    |Physically redundant & geographically replicated<br><br>Honors tenant’s geographic residency requirements    |Physically redundant & geographically replicated<br><br>Honors tenant’s geographic residency requirements    |
|**Billing model**    |$0.15 per GB per month for all data protected by Backup<br><br>Restores are free  |$0.15 per GB per month for all data protected by Backup<br><br>Restores are free   |$0.15 per GB per month for all data protected by Backup<br><br>Restores are free  |

## Architectural overview and performance expectations

### Architecture

Microsoft 365 Backup provides ultra-fast backup and restore capabilities by creating backups within the protected services’ data boundaries.

Microsoft 365 Backup not only provides uniquely fast recovery from common business continuity and disaster recovery (BCDR) scenarios like ransomware or accidental/malicious employee content overwrite/deletion. More BCDR scenario protections are also built directly into the service. For example, OneDrive, SharePoint, and Exchange Online have a proprietary architecture design for resiliency with replicated copies of customer data to failover to live active copies seamlessly without the need for end customer intervention.

Our backups are protected from malicious overwrites because OneDrive, SharePoint, and Exchange use Append-Only backup storage. This means that SharePoint can only add new content blobs and can never change old ones until they're permanently deleted. The Exchange items are backed up in an immutable manner and can't be accessed by a client process (such as Outlook, OWA, or MFCMAPI). This process ensures that items can't be changed after an initial save, protecting against attackers that try to corrupt old versions. For more information about the built-in service and data resiliency, see [SharePoint and OneDrive data resiliency in Microsoft 365](/compliance/assurance/assurance-sharepoint-onedrive-data-resiliency) and [Exchange Online data resiliency in Microsoft 365](/compliance/assurance/assurance-exchange-data-resiliency).

Key architectural takeaways:

- Data never leaves the Microsoft 365 data trust boundary or the geographic locations of your current data residency.

- The backups are immutable unless expressly deleted by the Backup tool admin via product offboarding.

- OneDrive, SharePoint, and Exchange have multiple physically redundant copies of your data to mitigate the impact of physical disasters.

    ![Diagram showing the Microsoft 365 data trust boundaries.](../media/m365-backup/backup-boundaries-diagram.png)

### Performance expectations

#### Backup policy performance

Creating a new protection policy initiates the process of backing up selected OneDrive accounts, SharePoint sites, and Exchange mailboxes. Once you submit a request to activate a valid protection policy, it takes on average up to 60 minutes to process and another 60 minutes to create restore points. Initial backups take approximately 15 minutes per 1,000 protection units initially or incrementally added to a policy.

Restore points are physically created in the service as soon as the policy is confirmed to be activated in the tool, even if those restore points take some more time to become visible in the restore tool.

#### Restoration performance

Restoration performance correlates with your recovery time objective, or the time it takes for you to restore a healthy state of your data and recover from a data destruction event.
For full OneDrive account and SharePoint site restores, the fastest recovery happens when choosing in-place restore rather a new URL restore. Additionally, choosing one of the recommended express restore points presented in the restore workflow user interface yields the quickest recovery results.

All restore points and restores to new URLs are relatively fast, but same URL restores using a recommended express restore point will typically yield better results. The Exchange Online restore workflow doesn't have or require the "faster" restore points.

The following table summarizes expected performance for a normally distributed tenant, including tenants of large size and scale.

|Protection units  |OneDrive and SharePoint  |Exchange Online  |
|---------|---------|---------|
|1     |30 minutes         |2 hours         |
|50     |3 hours         |2.5 hours         |
|250     |4 hours         | 3 hours        |
|1,000     |10 hours         |4 hours         |
|More than 1,000    |250/hour<br>Up to 3 TB/hour         |250+/hour<br>Up to 2.7 TB/hour         |

<sup>*Single protection unit OneDrive and SharePoint restores using express restore points can take on average between 10 minutes and 120 minutes.</sup>

<sup>**Exchange Online performance times based on an average sized mailbox of 26K items and a size of 10 GB.  Actual times will depend on the number and size of the items in each mailbox.  For a single mailbox, restore times typically fall in the 200 - 300 item/minute range.</sup>

<!---
|Scenario |Restore of all protection units* complete |
|:-------|:--------|
| 1,000 accounts, sites, or mailboxes<br>(10-GB average size)  |Less than 12 hours  |

<sup>*A *protection unit* is a OneDrive account, SharePoint site, or Exchange mailbox.</sup>
--->
## Integrated partner solutions

We partner with many independent software vendors (ISVs) to provide differentiated versions of their applications integrated with the Microsoft 365 Backup Storage platform—all providing the same underlying performance value proposition for your Microsoft 365 data.

For a partner application, operation of the Microsoft 365 Backup tool will be managed and paid for entirely through the partner's application. Those applications have the ability to provide a single pane of glass for all of your data estates that require backups, and they might provide more enhanced experiences or workflows.

## General Data Protection Regulations (GDPR)

For information about GDPR and Microsoft 365 Backup, see [GDPR special handling, compliance, and backup data deletion](backup-offboarding.md#gdpr-special-handling-compliance-and-backup-data-deletion).
