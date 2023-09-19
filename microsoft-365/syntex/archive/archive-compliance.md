---
title: Compliance features in Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/01/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about compliance features for archived sites in Microsoft 365 Archive.
---

# Compliance features in Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change. Before you begin, read the [Microsoft 365 preview terms and conditions](archive.preview-terms.md).

Archived sites, just like active sites, maintain a baseline level of data promises.  This includes the following:

- Durability – All archived data is equally as durable as active SPO data.

- Security – Archived sites/data have the same level of security as active sites or data.

- Geo residence – All archived data stays within your geo compliance boundary.

- Microsoft EU data boundary – All archived data complies with the EU data boundary promise.

The impact of Microsoft 365 Archive on compliance offerings includes the following:

- Preservation hold – Archived sites will still honor preservation holds.  Any file that is deleted via retention policies will still be maintained in the usual preservation hold library.

- eDiscovery – eDiscovery will still be able to find all content even if archived.  However, eDiscovery won't be able to directly reactivate located files.  Before exporting or viewing content of an eDiscovery case, the SharePoint admin will have to reactivate the relevant sites.

- Bring your own key (BYOK) – All archived content will comply with the BYOK promises, for any tenant who already uses the BYOK feature or enables it after archiving sites.

- Permissions and access policies – These settings and policies will be retained on the site throughout the archive and reactivation lifecycle (that is, archiving the site and then reactivating doesn't change the application of permissions or related access policies).
