---
title: Overview of Microsoft 365 Archive
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/26/2024
ms.topic: conceptual
ms.service: microsoft-365-archive
ms.custom: archive
search.appverid:
ms.collection:
    - essentials-overview
ms.localizationpriority:  medium
description: Learn about how Microsoft 365 Archive can provide your with organization cost-effective storage solutions.
---

# Overview of Microsoft 365 Archive

Microsoft 365 Archive offers cost-effective storage for inactive SharePoint sites.

Your organization might need to keep inactive or aging data for long periods of time in case you need to retrieve it later. You might prefer to store the data in SharePoint to simplify searchability, security, compliance, and data lifecycle management.

Microsoft 365 Archive allows you to retain this inactive data by moving it into a cold storage tier (archive) within SharePoint. Any data archived with Microsoft 365 Archive will have the same searchability, security, and [compliance](archive-compliance.md) standards applied automatically at a much reduced cost.

Some additional advantages of using Microsoft 365 Archive are:

- **Speed** – Ultra-fast archive of sites of any size and any number of sites.

- **Cost savings** – A lower list price on storage consumption beyond your license-allocated Microsoft 365 storage quota.

- **Lossless metadata** – A site will retain all of its metadata and permissions upon reactivation.

- **Decluttering** – Explicit separation between active and inactive content to help you manage your site's lifecycle.

Microsoft 365 Archive, coupled with the Microsoft 365 search index and the [Microsoft Purview](/purview/purview) feature set, provides a powerful combination for your long-term data management needs at a price point that matches the lifecycle of your content. Microsoft 365 Archive is controlled in the SharePoint admin center by [SharePoint Administrators](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrators](/entra/identity/role-based-access-control/permissions-reference#global-administrator).

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

When a site is archived, it goes into an explicitly colder tier, no longer consumes a tenant’s active storage quota, and instead drives Microsoft 365 Archive storage consumption. Being in this colder tier means the site is no longer accessible by anyone in the organization outside of Microsoft Purview or admin search.

Archiving a site archives everything within it, including:

- Document libraries and files
- Lists and list data

Administrators should notify the site owners and end users before a site is archived so they're aware that the site won't be accessible.

## Limitations

Publishing sites, Teams with channel sites, and a handful of legacy site template types are not available to archive with Microsoft 365 Archive.

## Related articles

[Education offering](archive-education-offering.md)


<!---
## Preview limitations

> [!NOTE]
> These limitations are temporary during the preview. Unless otherwise stated, these limitations will be resolved when the product is available for general release.

- As a part of the preview, tenants with more than 50,000 sites might face issues while trying to enumerate archived sites on the **Archived sites** page. Applicable enhancements are scheduled to roll out in the future. In this scenario, PowerShell can be used to more efficiently archive sites and manage archived content.

- Currently, archived content exported via eDiscovery doesn't require site reactivation for exporting, but will require it before general release.

- Currently, end user search results won't show any archived content.

- Columns such as Archived Date and Archived By aren't currently available but are planned and will be rolled out when available.

- For multi-geo tenants, while data residency requirements are honored, site moves aren't supported. Archived sites will need to be reactivated prior to any move.

- Currently, tenant rename isn't supported on archived sites. Sites will need to be reactivated before a tenant rename is triggered.

- Archiving a site that is currently enrolled in Microsoft 365 Backup will be blocked.

- If you archive a site that has a library syncing to a device, that device's sync client will display errors after the site is archived. We recommend that you remove syncing libraries before archiving a site.
--->