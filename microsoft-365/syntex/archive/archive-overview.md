---
title: Overview of Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/14/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: CSH, archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about Microsoft 365 Archive.
---

# Overview of Microsoft 365 Archive (Preview)

Microsoft 365 Archive offers lower-cost storage for inactive SharePoint sites without the need to move any content outside of Microsoft 365.

> [!NOTE]
> This feature is currently in limited preview and subject to change. Before you begin, read the [Microsoft 365 preview terms and conditions](archive-preview-terms.md).

## Introduction

There's a growing need for enterprises to store inactive or aging data for ever-longer periods of time for possible later retrieval. They ideally want to keep the data in place to make compliance and data lifecycle management easy. Microsoft 365 Archive enables them to store this inactive data in place, within the Microsoft trust boundary to maintain the security and compliance standards that would apply to any data in SharePoint. Microsoft 365 Archive doesn't directly provide compliance features, but the suite of Microsoft Purview tools does operate seamlessly on archived content. Some additional advantages of using Microsoft 365 Archive are:

- Ultra-fast archive of sites of any size and any number of sites
- Cost savings on storage consumption beyond the allocated Microsoft 365 storage quota
- In-place reactivation of archived sites whenever needed with full site fidelity and lossless metadata reactivation
- Decluttering active sites by moving content to archivable sites and decluttering of search indexes

Microsoft 365 Archive is administered in the SharePoint admin center by Global and SharePoint or administrators.

When a site is archived, it goes into an explicitly colder tier, no longer consumes a tenant’s active storage quota, and instead drives Microsoft 365 Archive storage consumption. Being in this colder tier means the site is no longer accessible by anyone in the organization outside of Microsoft Purview or admin search.

Archiving a site archives everything within it, including:

- Document libraries and files
- Lists and list data

> [!NOTE]
> Microsoft 365 Archive is currently rolling out. More features will become available to organizations through November 2023.

Administrators should notify the site owners and end users before a site is archived so they're aware that the site won't be accessible.

## Limitations of the public preview

- As a part of the public preview, tenants with more than 50,000 sites might face issues while trying to enumerate archived sites on the Archived Sites page. Applicable enhancements are scheduled to roll out in the future. In this scenario, PowerShell can be used to more efficiently archive sites and manage archived content.

- Currently, end user search results won't show any archived content. Currently, columns such as Archived Date and Archived By aren't available. They will be available by December 2023.

- For multi-geo tenants, while data residency requirements are honored, site moves aren't supported. Archived sites will need to be reactivated prior to any move.

- Currently, tenant rename isn't supported on archived sites. Sites will need to be reactivated before a tenant rename is triggered.

- Sites that are backed up as part of the Microsoft 365 Backup shouldn't be archived.  
