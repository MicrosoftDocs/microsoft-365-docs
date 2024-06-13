---
title: Pricing model for Microsoft 365 Backup Storage (Preview)
ms.author: diksha
author: diksha
manager: mohitthakur
audience: admin
ms.reviewer: chuckedmonson
ms.date: 06/13/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - essentials-get-started
ms.localizationpriority:  medium
description: Learn about the charge model and pricing calculator for Microsoft 365 Backup Storage.
---

# Microsoft 365 Backup Storage Pricing Model for third-party developers (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change.

## Microsoft 365 Backup Storage charge model

A partner application integrated with Microsoft 365 Backup storage will be based on [pay-as-you-go consumption-based service](/microsoft-365/syntex/syntex-pay-as-you-go-services). The preview list price is $0.07/GB/month of protected content.

### What’s counted towards protected backup storage?

Microsoft 365 Backup Storage will charge partners for content size of the following for 365 days from when it is added to backup protection:

- Cumulative back up size of the mailboxes, SharePoint sites, and OneDrive accounts being protected. Size of OneDrive accounts and SharePoint sites are the size of the live OneDrive accounts and SharePoint sites as displayed in the live sites’ usage reports. Mailboxes are the size of the user's mailbox plus their online archives plus deleted items held for Backup.

- Deleted content in user’s Recycle Bin and second-stage Recycle Bin (also known as Site Collection Recycle Bin).

> [!NOTE]
> Restore points or size of restores will not be charged. Although Azure is being used to process the payments, there are no additional Azure API or storage costs beyond the Microsoft 365 Backup usage charges mentioned above.

As an example, if you have a site under protection that is currently 1 GB for the first month, you'll be charged 1 GB of Backup usage. If you delete content in that site such that it's now only 0.5 GB, your next monthly bill will still be for 1 GB since the backup tool is retaining that deleted content for a year. After a year when the backup of that deleted content expires, the 0.5 GB being retained for backup purposes will no longer be charged for Backup.

> [!NOTE]
> These prices are subject to change when the product becomes generally available. 

## Pricing calculator

The [Microsoft 365 Backup Storage pricing calculator](/microsoft-365/backup/backup-pricing.md#pricing-calculator) is a tool that helps you estimate the amount of backup storage and the costs that you'll incur to protect and back up your Microsoft 365 data.

> [!NOTE]
> The tool is not intended to provide an exact prediction of your backup consumption, but rather to give you an estimate based on your current usage reports that are forecasted for the next 24 months based on historical trends.
