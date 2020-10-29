---
title: "Microsoft 365 SharePoint Online Data Deletion"
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
- SPO_Content
f1.keywords:
- NOCSH
description: Learn how data deletion works in SharePoint Online, such as where deleted content is stored and for how long.
ms.custom: seo-marvel-apr2020
---

# SharePoint Online Data Deletion in Microsoft 365

SharePoint Online stores objects as abstracted code within application databases. When a user uploads a file to SharePoint Online, that file is disassembled and translated into application code and stored in multiple tables across multiple databases. In SharePoint Online, all content that a customer uploads is broken into chunks, encrypted (with one or more AES 256-bit keys), and distributed across the datacenter. 

In SharePoint Online, items are retained for 93 days from the time you delete them from their original location. They stay in the site Recycle Bin the entire time, unless someone deletes them from there or empties that Recycle Bin. In that case, the items go to the site collection Recycle Bin, where they stay for the remainder of the 93 days. For info about restoring deleted items, see [Restore items in the Recycle Bin of a SharePoint site](https://support.office.com/article/6df466b6-55f2-4898-8d6e-c0dff851a0be#ID0EAADAAA=Online
) and [Restore deleted items from the site collection recycle bin](https://support.office.com/article/5fa924ee-16d7-487b-9a0a-021b9062d14b). The Recycle Bin retention time is not configurable in SharePoint Online.

When you delete a site collection, you're also deleting the hierarchy of sites in the collection, and all content within them:

- Documents and document libraries
- Lists and list data
- Site configuration settings
- Role and security information that is related to the site or its subsites
- Subsites of the top-level website, their contents, and user information

If you accidentally delete a site collection, it can be restored by a global or SharePoint admin using the SharePoint admin center.

Deleted site collections are retained for 93 days. After 93 days, sites and all their content and settings are permanently deleted, including lists, libraries, pages, and any subsites.

Hard deletion occurs when a user purges deleted items from the site collection Recycle Bin, when the retention and backup periods expire, or when an administrator permanently deletes a site collection using the [Remove-SPODeletedSite cmdlet](/powershell/module/sharepoint-online/Remove-SPODeletedSite?view=sharepoint-ps). When a user hard deletes (permanently deletes, or purges) content from SharePoint Online, all encryption keys for the deleted chunks are also deleted. The blocks on the disks that previously stored the deleted chunks are marked as unused and available for re-use.
