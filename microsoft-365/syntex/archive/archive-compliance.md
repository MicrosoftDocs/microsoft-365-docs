---
title: Compliance features in Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 10/17/2023
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
> This feature is currently in limited preview and subject to change.

Archived SharePoint sites, just like active SharePoint sites, maintain a baseline level of data promises. These promises include the following:

- **Durability** – All archived data is equally as durable as active SharePoint Online data.

- **Security** – Archived sites or data have the same level of security as active sites or data.

- **Geo residence** – All archived data stays within your geo compliance boundary.

- **Microsoft EU data boundary** – All archived data complies with the EU data boundary promise.

The impact of Microsoft 365 Archive on compliance offerings includes the following:

- **Data lifecycle management and records management** – Archived sites will still honor the retention and deletion periods from any retention policies or retention labels.

- **eDiscovery** – eDiscovery will still be able to find all content even if archived. However, eDiscovery won't be able to directly reactivate located files.  Before exporting or viewing content of an eDiscovery case, the SharePoint admin will have to reactivate the relevant sites.

- **Bring your own key (BYOK)** – All archived content will comply with the BYOK promises, for any tenant who already uses the BYOK feature or enables it after archiving sites.

- **Permissions and access policies** – These settings and policies will be retained on the site throughout the archive and reactivation lifecycle (that is, archiving the site and then reactivating doesn't change the application of permissions or related access policies).

<br>

> [!div class="nextstepaction"]
> [Back to list of preview documentation](archive-overview#preview-documentation.md)