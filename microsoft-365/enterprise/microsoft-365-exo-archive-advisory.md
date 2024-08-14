---
title: "Service advisories for auto-expanding archive utilization in Exchange Online monitoring"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/08/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Use service advisories to monitor mailboxes that are at risk of reaching or exceeding the auto-expanding archive size limits."
ROBOTS: NOINDEX
---

# Service advisories for auto-expanding archive utilization in Exchange Online monitoring

We released a new Exchange Online service advisory that informs you of auto-expanding archives attached to mailboxes at risk of reaching the 1.5TB limit on total auto-expanding archive size. These service advisories provide visibility to the mailboxes in your organization that can require admin intervention.

These service advisories are displayed in the Microsoft 365 admin center. To view these service advisories, go to **Health** \> **Service health** \> **Exchange Online** and then select the **Active issues** tab.

## What do these service advisories indicate?

This service advisory informs you of potential data storage limits being reached in your organization. Mailboxes with archive mailboxes that have the auto-expanding archive feature enabled can store a maximum of 1.5 TB of data in the auto-expanding archive. The service advisory contains a link under "User Impact" that shows a flyout window listing impacted mailbox Globally Unique Identifiers (GUIDs) for your tenant.

:::image type="content" alt-text="Auto-expanding archive alert details page." source="../media/auto-expand-archive-extended-details.png" lightbox="../media/auto-expand-archive-extended-details.png":::

Here's an example of the flyout:

:::image type="content" alt-text="Auto-expanding archive alert flyout extended view." source="../media/auto-expand-archive-flyout.png" lightbox="../media/auto-expand-archive-flyout.png":::

The following list describes each column in the previous example.

- **mailboxGuid** : The GUID of the main archive for the mailbox or one of the other storage units in the auxiliary archive ("AuxArchive").
- **Status** : _Warning_ if the auto-expanding archive total size is over 1.2 TB but less than 1.4 TB; _Critical_ if the auto-expanding archive total size is over 1.4TB.
- **SizeInGB** : The total size of the auto-expanding archive associated with the mailbox.

### Identifying affected users

Use PowerShell to determine the user associated with the archive: `Get-Mailbox yourtenantdomain.onmicrosoft.com\GUID-of-archive`

## More information

For more information about auto-expanding archive limits and considerations, see the following articles:

- [Learn about auto-expanding archiving](/microsoft-365/compliance/autoexpanding-archiving)

- [Customize an archive and deletion policy for mailboxes in your organization](/microsoft-365/compliance/set-up-an-archive-and-deletion-policy-for-mailboxes)
