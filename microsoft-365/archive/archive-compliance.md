---
title: Compliance features in Microsoft 365 Archive
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 01/27/2025
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

## Data promises for archive sites

Just like active SharePoint sites, archived sites maintain a baseline level of data promises, ensuring that your information is always protected and accessible:

- **Durability** – All archived data is equally as durable as active SharePoint data, meaning it remains intact and reliable over time.

- **Security** – Archived sites or data have the same level of security as active sites or data, safeguarding your information from unauthorized access.

- **Geo residence** – All archived data stays within your geo compliance boundary, ensuring that your data residency requirements are met.

- **Microsoft EU data boundary** – All archived data complies with the EU data boundary promise, adhering to stringent data protection regulations.

## Impact on compliance offerings

Microsoft 365 Archive also affects various compliance offerings, ensuring that your archived data remains manageable and discoverable:

- **Data lifecycle management and records management** – Archived sites still honor the retention and deletion periods from any retention policies or retention labels. For more information, see [How retention works with Microsoft 365 Archive](/purview/retention-policies-sharepoint#how-retention-works-with-microsoft-365-archive).

- **eDiscovery** – eDiscovery still finds all content even if archived. eDiscovery will also be able to export directly from archived content but might take longer to export.  

- **Bring your own key (BYOK)** – All archived content will comply with the BYOK promises, for any tenant who already uses the BYOK feature or enables it after archiving sites.

- **Permissions and access policies** – These settings and policies are retained on the site throughout the archive and reactivation lifecycle. Archiving the site and then reactivating it doesn't change the application of permissions or related access policies.
