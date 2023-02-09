---
title: "Service advisories for auto-expanding archive utilization in Exchange Online monitoring"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Use service advisories to monitor mailboxes that are at risk of reaching or exceeding the auto-expanding archive size limits."
ROBOTS: NOINDEX
---

# Service advisories for auto-expanding archive utilization in Exchange Online monitoring

We've released a new Exchange Online service advisory that informs you of auto-expanding archives attached to mailboxes that are at risk of reaching or exceeding the 1.5TB cumulative limit on auto-expanding archive size.  These service advisories provide visibility to the mailboxes in your organization that may require admin intervention.

These service advisories are displayed in the Microsoft 365 admin center. To view these service advisories, go to **Health** \> **Service health** \> **Exchange Online** and then click the **Active issues** tab.

## What do these service advisories indicate?

This service advisory informs you of potential data storage limits being reached in your organization.  Mailboxes with archive mailboxes that have the auto-expanding archive feature enabled may store a maximum of 1.5TB of data in the auto-expanding archive.  The service advisory contains a table with information about the mailboxes nearing this limit in your organization. Here's an example of the table:

| mailboxGuid | Status | SizeInGB |
| --- | --- | --- |
| b47c25fd-3d78-481c-970b-6799bc454275 | Warning | 1312 |
| faf1c53e-9214-48aa-b91e-f908f3c1c762 | Warning | 1316 |
| c874b925-989a-4119-aa39-b6280a456b9e | Critical | 1499 |

The following list describes each column in the previous example.

- **mailboxGuid** : The GUID of the main archive for the mailbox or one of the additional storage units in the auxiliary archive ("AuxArchive").
- **Status** : _Warning_ if the auto-expanding archive total size is over 1.2TB but less than 1.4TB; _Critical_ if the auto-expanding archive total size is over 1.4TB.
- **SizeInGB** : The total size of the auto-expanding archive associated with the mailbox.

## More information

For more information about auto-expanding archive limits and considerations, see the following articles:

- [Learn about auto-expanding archiving](/microsoft-365/compliance/autoexpanding-archiving)

- [Customize an archive and deletion policy for mailboxes in your organization](/microsoft-365/compliance/set-up-an-archive-and-deletion-policy-for-mailboxes)
