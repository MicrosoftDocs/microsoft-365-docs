---
title: Compliance features in Microsoft 365 Archive
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 04/30/2024
ms.topic: conceptual
ms.service: microsoft-365-archive
ms.custom: archive
search.appverid:
ms.collection:
    - essentials-compliance
ms.localizationpriority:  medium
description: Learn about compliance features for archived sites in Microsoft 365 Archive.
---

# Compliance features in Microsoft 365 Archive

> [!NOTE]
> Microsoft Purview features work seamlessly with archived content. For example, you can apply retention hold on archived content without needing to unarchive it. Likewise, you can also archive content in retention hold without needing to move or delete it from retention scope.

Archived SharePoint sites, just like active SharePoint sites, maintain a baseline level of data promises. These promises include the following considerations:

- **Durability** – All archived data is equally as durable as active SharePoint data.

- **Security** – Archived sites or data have the same level of security as active sites or data.

- **Geo residence** – All archived data stays within your geo compliance boundary.

- **Microsoft EU data boundary** – All archived data complies with the EU data boundary promise.

The affect of Microsoft 365 Archive on compliance offerings includes the following elements:

- **Data lifecycle management and records management** – Archived sites still honor the retention and deletion periods from any retention policies or retention labels. For more information, see [How retention works with Microsoft 365 Archive](/purview/retention-policies-sharepoint#how-retention-works-with-microsoft-365-archive).

- **eDiscovery** – eDiscovery still finds all content even if archived. However, eDiscovery won't be able to directly reactivate located files.  Before exporting or viewing content of an eDiscovery case, the SharePoint admin has to reactivate the relevant sites.

- **Bring your own key (BYOK)** – All archived content will comply with the BYOK promises, for any tenant who already uses the BYOK feature or enables it after archiving sites.

- **Permissions and access policies** – These settings and policies are retained on the site throughout the archive and reactivation lifecycle (that is, archiving the site and then reactivating doesn't change the application of permissions or related access policies).
