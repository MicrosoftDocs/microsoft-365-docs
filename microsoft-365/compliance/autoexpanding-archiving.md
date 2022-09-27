---
title: "Learn about auto-expanding archiving"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
- tier2
search.appverid:
- MOE150
- MET150
ms.assetid: 37cdbb02-a24a-4093-8bdb-2a7f0b3a19ee
description: "Learn about auto-expanding archiving, which provides additional archive storage for Exchange Online mailboxes."
---

# Learn about auto-expanding archiving

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Archive mailboxes in Microsoft Purview provide users with additional mailbox storage space. After a user's archive mailbox is enabled, up to 100 GB of additional storage becomes available.

This archiving feature in Microsoft Purview (called *auto-expanding archiving*) provides up to 1.5 TB of additional storage in archive mailboxes. When the storage quota in the archive mailbox is reached, Microsoft Purview automatically (and incrementally) increases the size of the archive until the archive mailbox reaches 1.5 TB.

For step-by-step instructions for turning on auto-expanding archiving, see [Enable auto-expanding archiving](enable-autoexpanding-archiving.md).

> [!NOTE]
> Auto-expanding archiving also supports shared mailboxes.

## How auto-expanding archiving works

As explained in the introduction, additional mailbox storage space is created when a user's archive mailbox is enabled. When auto-expanding archiving is enabled, Microsoft Purview periodically checks the size of the archive mailbox. When an archive mailbox gets close to its storage limit, additional storage space is automatically created for the archive. If the user runs out of this additional storage space, more storage space is automatically added to the user's archive. This process continues until the user's archive reaches a size 1.5 TB. This process happens automatically, which means administrators don't have to request additional archive storage or manage auto-expanding archiving.

Here's a quick overview of the process.

![Overview of the auto-expanding archiving process.](../media/74355385-d990-44fe-8a87-6c3639d1f63f.png)

1. Archiving is enabled for a user mailbox or a shared mailbox. An archive mailbox with 100 GB of storage space is created, and the warning quota for the archive mailbox is set to 90 GB.

2. An administrator enables auto-expanding archiving for the mailbox. If the mailbox has a hold or retention policy applied to it, the storage quota for the archive mailbox is increased to 110 GB and the archive warning quota is increased to 100 GB.
    
    Then, when the archive mailbox (including the Recoverable Items folder) reaches its storage quota, the archive mailbox is converted to an auto-expanding archive. Extra storage space is added until it reaches a maximum size of 1.5 TB. It can take up to 30 days for the additional storage space to be provisioned.

3. Microsoft Purview automatically adds more storage space when necessary.

> [!IMPORTANT]
> Auto-expanding archiving is supported only for mailboxes used for individual users (or shared mailboxes) with a growth rate that doesn't exceed 1 GB per day. A user's archive mailbox is intended for just that user. Using journaling, transport rules, or auto-forwarding rules to copy messages to an archive mailbox is not permitted. Microsoft reserves the right to deny additional archiving in instances where a user's archive mailbox is used to store archive data for other users or in other cases of the inappropriate use.

## What gets moved to the additional archive storage space?

To make efficient use of auto-expanding archive storage, folders may get moved. Microsoft Purview determines which folders get moved when additional storage is added to the archive. Sometimes when a folder is moved, one or more subfolders are automatically created and items from the original folder are distributed to these folders to facilitate the moving process. When viewing the archive portion of the folder list in Outlook, these subfolders are displayed under the original folder. The naming convention that Microsoft 365 uses to name these subfolders is **\<folder name\>_yyyy (Created on mmm dd, yyyy h_mm)**, where:

- **yyyy** is the year the messages in the folder were received.

- **mmm dd, yyyy h_m** is the date and time that the subfolder was created by Office 365, in UTC format, based on the user's time zone and regional settings in Outlook.

The following screenshots show a folder list before and after messages are moved to an auto-expanded archive.

 **Before additional storage is added**

![Folder list of archive mailbox before auto-expanding archive is provisioned.](../media/5d6d6420-e562-4912-aaab-1c111762b3f6.png)

 **After additional storage is added**

![Folder list of archive mailbox after auto-expanding archive is provisioned.](../media/c03c5f51-23fa-4fc2-b887-7e7e5cce30da.png)

> [!NOTE]
> As previously described, Microsoft Purview moves items to subfolders (and names them using the naming convention described above) to help distribute content to an auxiliary archive. But moving items to subfolders may not always be the case. Sometimes an entire folder may be moved to an auxiliary archive. In this case, the folder will retain its original name. It won't be apparent in the folder list in Outlook that the folder was moved to an auxiliary archive.

## Outlook requirements for accessing items in an auto-expanded archive

To access messages that are stored in an auto-expanded archive, users have to use one of the following Outlook clients:

- Outlook as a part of Microsoft 365 Apps for enterprise (previously named Office 365 ProPlus)

- Outlook as a part of Microsoft 365 Apps for business (previously named Office 365 Business)

- Outlook 2016 or Outlook 2019 for Windows

- Outlook on the web when the primary mailbox is in Exchange Online rather than on-premises

- Outlook 2016 or Outlook 2019 for Mac

Here are some things to consider when using Outlook or Outlook on the web to access messages stored in an auto-expanded archive.

- You can access any folder in your archive mailbox, including ones that were moved to the auto-expanded storage area.

- If an archive mailbox has at least one auto-expanded storage area, you can't delete a folder from the archive mailbox or from the auxiliary archive. In other words, after an auto-expanded storage area has been provisioned, you can't delete any folders in the archive.

- You can delete items in an auto-expanded storage area. However, you can't use the Recover Deleted Items feature to recover an item after auto-expanding archiving is enabled for a mailbox.

- Search for auto-expanded archiving is available in Outlook for the web (OWA). Similar to Online Archive, you can search for items that were moved to an additional storage area. When archive is selected as the search scope in OWA, all archives (including auto-expanded archives) and their corresponding subfolders will be searched.

- Auto-expanded archive search is available in Outlook for Windows in Monthly Enterprise Channel. With this update the Current Mailbox scope is available, thus allowing you to search the auto-expanded archive. Note that search is not supported for the auto-expanded archive feature in a cloud-only archive situation (primary mailbox still on-premises). For more information about this and other Microsoft Search support features, see [How Outlook for Windows connected to Exchange Online utilizes Microsoft Search](https://techcommunity.microsoft.com/t5/outlook-global-customer-service/how-outlook-for-windows-connected-to-exchange-online-utilizes/ba-p/1715045). 

- Item counts in Outlook and Read/Unread counts (in Outlook and Outlook on the web) in an auto-expanded archive might not be accurate.

## Auto-expanding archiving and other compliance features

This section explains the functionality between auto-expanding archiving and other compliance and data governance features.

- **eDiscovery:** When you use an eDiscovery tool, such as Content Search or In-Place eDiscovery, the additional storage areas in an auto-expanded archive are also searched.

- **Retention:** When you put a mailbox on hold by using tools such as Litigation Hold in Exchange Online or eDiscovery case holds and retention policies in the Microsoft Purview compliance portal, content located in an auto-expanded archive is also placed on hold.

- **Messaging records management (MRM):** If you use MRM deletion policies in Exchange Online to permanently delete expired mailbox items, expired items located in the auto-expanded archive will also be deleted.

- **Import service:** You can use the Office 365 Import service to import PST files to a user's auto-expanded archive. You can import up to 100 GB of data from PST files to the user's archive mailbox.

## Next steps

For more technical details about auto-expanding archiving, see [Microsoft 365: Auto-Expanding Archives FAQ](https://techcommunity.microsoft.com/t5/exchange-team-blog/office-365-auto-expanding-archives-faq/ba-p/607784).

If you're ready to enable auto-expanding archiving, see [Enable auto-expanding archiving](enable-autoexpanding-archiving.md).
