---
title: Overview of Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 10/17/2023
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

## Preview documentation

In addition to this overview, the documentation for the preview includes the following help articles.

|Article  |Description  |
|---------|---------|
|[Set up Microsoft 365 Archive (Preview)](archive-setup.md)   | Learn how to set up and configure Microsoft 365 Archive, including required licensing, permissions, pay-as-you-go billing, and how to turn on the service.|
|[Pricing model for Microsoft 365 Archive (Preview)](archive-pricing.md)   | Learn how archive usage is calculated, including for monthly usage and reactivations. |
|[Archived states in Microsoft 365 Archive (Preview)](archive-states.md)   | Learn about the various archived states, what they mean, and their allowed operations. |
|[Manage Microsoft 365 Archive (Preview)](archive-manage.md)   | Learn how to archive and manage SharePoint sites, and how to reactivate archived sites. |
|[Compliance features in Microsoft 365 Archive (Preview)](archive-compliance.md)    | Learn about durability, security, geo residency, and other compliance considerations. |
|[End user experience for Microsoft 365 Archive (Preview)](archive-end-user.md)    | Learn about how an end user might experience archived sites, and some of the options an admin can use to help the user find information. |

## Introduction

Microsoft 365 Archive offers cost-effective storage for inactive SharePoint sites.

Your organization might need to keep inactive or aging data for long periods of time in case you need to retrieve it later. You might prefer to store the data in SharePoint to simplify searchability, security, compliance, and data lifecycle management.

Microsoft 365 Archive allows you to retain this inactive data by moving it into a cold storage tier (archive) within SharePoint. Any data archived with Microsoft 365 Archive will have the same searchability, security, and [compliance](archive-compliance.md) standards applied automatically at a much reduced cost.

Some additional advantages of using Microsoft 365 Archive are:

- **Speed** – Ultra-fast archive of sites of any size and any number of sites.

- **Cost savings** – A lower list price on storage consumption beyond your license-allocated Microsoft 365 storage quota.

- **Lossless Metadata** – A site will retain all of its metadata and permissions upon reactivation.

- **Decluttering** – Explicit separation between active and inactive content to help you manage your site's lifecycle.

Microsoft 365 Archive, coupled with the Microsoft 365 search index and the [Microsoft Purview](https://learn.microsoft.com/en-us/purview/purview) feature set, provides a powerful combination for your long-term data management needs at a price point that matches the lifecycle of your content. Microsoft 365 Archive is controlled in the SharePoint admin center by global or SharePoint admins.

When a site is archived, it goes into an explicitly colder tier, no longer consumes a tenant’s active storage quota, and instead drives Microsoft 365 Archive storage consumption. Being in this colder tier means the site is no longer accessible by anyone in the organization outside of Microsoft Purview or admin search.

Archiving a site archives everything within it, including:

- Document libraries and files
- Lists and list data

> [!NOTE]
> Microsoft 365 Archive (Preview) is currently rolling out. More features will be rolled out as they become available.

Administrators should notify the site owners and end users before a site is archived so they're aware that the site will not be accessible.

## Preview limitations

- As a part of the preview, tenants with more than 50,000 sites might face issues while trying to enumerate archived sites on the **Archived sites** page. Applicable enhancements are scheduled to roll out in the future. In this scenario, PowerShell can be used to more efficiently archive sites and manage archived content.

- Currently, end user search results will not show any archived content. Columns such as Archived Date and Archived By are not currently available, but are planned and will be rolled out when available.

- For multi-geo tenants, while data residency requirements are honored, site moves are not supported. Archived sites will need to be reactivated prior to any move.

- Currently, tenant rename isn't supported on archived sites. Sites will need to be reactivated before a tenant rename is triggered.

- Sites that are backed up as part of the Microsoft 365 Backup shouldn't be archived.  

<br>

> [!div class="nextstepaction"]
> [Back to list of preview documentation](archive-overview.md#preview-documentation)