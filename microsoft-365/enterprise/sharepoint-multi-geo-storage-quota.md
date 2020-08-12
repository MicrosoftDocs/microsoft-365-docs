---
title: "SharePoint storage quotas in multi-geo environments"
ms.reviewer: adwood
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: o365-solutions
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.collection: 
- Strat_SP_gtc
- SPO_Content
localization_priority: Normal
description: Learn about SharePoint storage quotas in multi-geo environments and how quotas can be managed by the SharePoint Online admin.
---

# SharePoint storage quotas in multi-geo environments

By default, all geo locations of a multi-geo environment share the available tenant storage quota.

With the SharePoint geo storage quota setting, you can manage the storage quota for each geo location. When you allocate a storage quota for a geo location, it becomes the maximum amount of storage available for that geo location, and is deducted from the available tenant storage quota. The remaining available tenant storage quota is then shared across the configured geo locations for which a specific storage quota has not been allocated.

The SharePoint storage quota for any geo location can be allocated by the SharePoint Online administrator by connecting to the central location. Geo administrators for satellite locations can view the storage quota but cannot allocate it.

## Configure a storage quota for a geo location

Use the [Microsoft SharePoint Online Module](https://www.microsoft.com/download/details.aspx?id=35588 ) and connect to the central location to allocate the storage quota for a geo location. 

To allocate Storage Quota for a location, run cmdlet:

`Set-SPOGeoStorageQuota -GeoLocation <geolocationcode> -StorageQuotaMB <value>`

To view Storage Quota for the current geo location, run:

`Get-SPOGeoStorageQuota`

![Screenshot of PowerShell window showing Get-SPOGeoStorageQuota cmdlet](../media/multi-geo-storage-quota.png)

To view Storage Quota for all geo locations, run:

`Get-SPOGeoStorageQuota -AllLocations`

To remove the allocated storage quota for a geo location, set `StorageQuota value = 0`:

`Set-SPOGeoStorageQuota -GeoLocation <geolocationcode> -StorageQuotaMB 0`
