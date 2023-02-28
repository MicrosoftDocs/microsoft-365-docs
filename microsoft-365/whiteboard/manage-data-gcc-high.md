---
title: Manage data for Microsoft Whiteboard in GCC High environments
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

# Manage data for Microsoft Whiteboard in GCC High environments

>[!NOTE]
> This guidance applies to US Government Community Cloud (GCC) High environments.

Data is stored as .whiteboard files in OneDrive for Business. An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where new data is created, see [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations). Look at the location for OneDrive for Business. All properties that apply to general files in OneDrive for Business also apply to Whiteboard, except for external sharing.

In order to manage data, you must first ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard in GCC High environments](manage-whiteboard-access-gcc-high.md).

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

## Data controls supported

The following data controls are currently supported in Whiteboard:

- Retention policies
- Quota
- DLP
- eDiscovery
- Legal hold

## Data controls planned

The following data controls are planned for future releases of Whiteboard:

- Sensitivity labels
- Auditing
- Analytics
- Storing whiteboards in SharePoint sites

## See also

[Manage access to Whiteboard - GCC High](manage-whiteboard-access-gcc-high.md)

[Manage sharing for Whiteboard - GCC High](manage-sharing-gcc-high.md)

[Manage clients for Whiteboard - GCC High](manage-clients-gcc-high.md)
