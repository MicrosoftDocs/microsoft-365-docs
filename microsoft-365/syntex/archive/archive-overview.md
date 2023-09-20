---
title: Overview of Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/19/2023
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

> [!NOTE]
> This feature is currently in limited preview and subject to change. Before you begin, read the [Microsoft 365 preview terms and conditions](archive-preview-terms.md).

In addition to this overview, the documentation for the preview includes the following help articles.

|Article  |Description  |
|---------|---------|
|[Set up Microsoft 365 Archive (Preview)](archive-setup.md)   | Learn how to set up and configure Microsoft 365 Archive, including required licensing, permissions, pay-as-you-go billing, and how to turn on the service.        |
|[Manage Microsoft 365 Archive (Preview)](archive-manage.md)   | Learn how to archive and manage SharePoint sites, how to reactivate archived sites, and about the various archive states.        |
|[Compliance features in Microsoft 365 Archive (Preview)](archive-compliance.md)    | Learn about durability, security, geo residency, and other compliance considerations.         |
|[End user experience for Microsoft 365 Archive (Preview)](archive-end-user.md)    | Learn about how an end user might experience archived sites, and some of the options an admin can use to help the user find information.         |

## Introduction

Microsoft 365 Archive offers cost-effetive storage for inactive SharePoint sites without the need to move any content outside of Microsoft 365.

Your organization might often need to keep inactive or aging data for long periods of time in case you need to retrieve it later. You prefer to store the data where it is to simplify compliance and data lifecycle management. Microsoft 365 Archive lets you keep the data within the Microsoft 365 trust boundary and ensures the same security and compliance standards as any data in SharePoint. Microsoft 365 Archive reinforces [compliance features for archive sites](archive-compliance.md), and works well with Microsoft Purview tools to help manage archived content.

Some additional advantages of using Microsoft 365 Archive are:

- Ultra-fast archive of sites of any size and any number of sites
- Cost savings on storage consumption beyond the allocated Microsoft 365 storage quota
- In-place reactivation of archived sites whenever needed with full site fidelity and lossless metadata reactivation
- Declutter active sites by moving content to archivable sites and decluttering of search indexes

Microsoft 365 Archive is administered in the SharePoint admin center by global admins or SharePoint admins.

When a site is archived, it goes into an explicitly colder tier, no longer consumes a tenant’s active storage quota, and instead drives Microsoft 365 Archive storage consumption. Being in this colder tier means the site is no longer accessible by anyone in the organization outside of Microsoft Purview or admin search.

Archiving a site archives everything within it, including:

- Document libraries and files
- Lists and list data

> [!NOTE]
> Microsoft 365 Archive (Preview) is currently rolling out. More features will be rolled out as they become available.

Administrators should notify the site owners and end users before a site is archived so they're aware that the site won't be accessible.

## Preview limitations

- As a part of the preview, tenants with more than 50,000 sites might face issues while trying to enumerate archived sites on the **Archived sites** page. Applicable enhancements are scheduled to roll out in the future. In this scenario, PowerShell can be used to more efficiently archive sites and manage archived content.

- Currently, end user search results won't show any archived content. Columns such as Archived Date and Archived By aren't currently available, but are planned and will be rolled out when available.

- For multi-geo tenants, while data residency requirements are honored, site moves aren't supported. Archived sites will need to be reactivated prior to any move.

- Currently, tenant rename isn't supported on archived sites. Sites will need to be reactivated before a tenant rename is triggered.

- Sites that are backed up as part of the Microsoft 365 Backup shouldn't be archived.  
