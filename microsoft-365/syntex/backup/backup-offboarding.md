---
title: Offboarding in Microsoft 365 Backup (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 01/17/2024
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: backup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about how to offboard usage in Microsoft 365 Backup.
---

# Offboarding in Microsoft 365 Backup (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change.

To no longer use the Microsoft 365 Backup tool, you must offboard usage. This action includes pausing and deleting all active policies and deleting all of the backed-up data. During the preview, there are three ways that offboarding is initiated:

- Disable the tool in the pay-as-you-go billing setup panel where you first enabled the tool.

- Call into support to ask Microsoft to offboard you from the tool. If you’d like offboarding to happen faster than default (with a minimum of 30 days), you can do this via the support call.

- If your billing account goes into an unhealthy state.

## Offboarding recovery undo period

If offboarding from Microsoft 365 Backup has begun due to either an explicit request from you or due to an unhealthy billing state, the grace periods shown in the following table initiate.

![Screenshot of a data table showing the offboarding undo periods.](../../media/content-understanding/backup-offboarding-time.png)

By bringing your billing back to a healthy state or by asking support to reverse the offboarding, the tool becomes usable again and no backups are lost.

## GDPR special handling, compliance, and backup data deletion

> [!IMPORTANT]
> Given that compliance tooling actions might destroy primary data, we administratively isolate those destructive actions from flowing through to backed up data automatically. In other words, **compliance actions that automatically delete your primary data will not automatically delete data from your backups**.

The core purpose of the backup and restore service is to provide you with a way to recover from common data deletion, overwrite, or encryption events.

### eDiscovery

Data in the Exchange Online backups is eDiscoverable via existing eDiscovery tooling, assuming you have sufficient licenses to operate that tool.

Data in the OneDrive account and SharePoint site backups that aren't currently part of your live latest version data in your tenant aren't eDiscoverable. An eDiscovery search won't discover data that exists solely in the OneDrive or SharePoint backups.

### General Data Protection Regulations (GDPR) workflow instructions

GDPR workflows aren't directly executable on all data in Microsoft 365 Backup.

GDPR data service request (DSR) data deletion actions operated on the tenant won't delete data in the backups. Those actions must be executed again after a Backup restoration to ensure the original DSR is honored.

DSRs related to the discovery of data using eDiscovery is possible for Exchange Online backups, but the same isn't possible for OneDrive or SharePoint backups.

### Retention policies

Retention and deletion policies don't “flow through” to the backups. This means that backup retention is governed solely by the backup policy. That policy currently has a nonvariable one year retention period. Once data is restored from the backups, that now-live data will be governed by applicable retention or deletion policies.

### Sensitivity labels

Restoration of any data (such as sites or mailbox items) reverts the sensitivity labels of the data to the state of that protected item at the prior point in time from which it's being restored (that is, the state of labeling at the point in time from which the content is being restored; in other words, the state reverts to the prior point in time).

## Backup data deletion and undo grace periods

If you need to delete data from the backups during the preview period, you must offboard from the offering entirely and delete all backups. In the future, we'll enable more granular restore point deletion capabilities.

Any offboarding or backup deletion activities trigger a 29-day grace period where we'll hold the backup data. If you re-enable the tool, the backups are present in the tool again.  


