---
title: Manage data for Microsoft Whiteboard in GCC environments
ms.author: v-jdeweese
author: johnddeweese
manager: alexfaulkner
ms.reviewer: 
ms.date: 06/17/2022
audience: admin
ms.topic: article
ms.custom: 
ms.service: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn how to enable, disable, and manage access to Whiteboard.
---

# Manage data for Microsoft Whiteboard in GCC environments

>[!NOTE]
> This guidance applies to US Government Community Cloud (GCC) environments.

Data is stored as .whiteboard files in OneDrive for Business. An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where new data is created, see [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations). Look at the location for OneDrive for Business. All properties that apply to general files in OneDrive for Business also apply to Whiteboard, except for external sharing.

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

In order to manage data, you must first ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard in GCC environments](manage-whiteboard-access-gcc.md).

## Data controls supported

The following data controls are currently supported in Whiteboard:

- Retention policies
- Quota
- Legal hold
- Data Loss Prevention (DLP)
- Basic eDiscovery: Whiteboards are stored as .whiteboard files in the creator's OneDrive for Business. They're indexed for keyword and file type search, but aren't available to preview/review. Upon export, an admin needs to upload the file back to OneDrive for Business to view the content. More support is planned for the future.

## Data controls planned

The following data controls are planned for future releases of Whiteboard:

- Sensitivity labels
- Analytics
- More eDiscovery support
- Storing whiteboards in SharePoint sites

## See also

[Manage access to Whiteboard - GCC](manage-whiteboard-access-gcc.md)

[Manage sharing for Whiteboard - GCC](manage-sharing-gcc.md)

[Manage clients for Whiteboard - GCC](manage-clients-gcc.md)
