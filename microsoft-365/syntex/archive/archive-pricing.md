---
title: Pricing model for Microsoft 365 Archive (Preview)
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
description: Learn about the pricing model for storage consumption and site reactivation in Microsoft 365 Archive.
---

# Pricing model for Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

Pricing for Microsoft 365 Archive is based on two separate activities:  

- **Storage consumption** that is charged at a per-GB monthly rate. This meter is only charged when archived storage plus active storage in SharePoint exceeds a tenant’s included or licensed allocated SharePoint storage quota limit. In other words, there's no additional storage cost for archived sites if the tenant hasn't yet consumed its already licensed Storage quota. For more information about storage quota limits, see [SharePoint limits](https://learn.microsoft.com/en-us/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits).

- **Site reactivation** that is charged at a per-GB rate. The reactivation fee is charged regardless of whether a tenant is above or below its SharePoint quota limit and only if reactivation is executed more than seven days after the site was most recently put into an archive state. This seven-day grace period provides you with the opportunity to reverse a mistaken archival without reaction costs.  

Monthly archive usage is calculated as the sum of the usage of all currently archived sites. Each site’s usage is equal to the site storage usage of that site, which can be seen on the site itself or from the Active sites page in the SharePoint admin center. The size of an archived site, and therefore the storage for which it's billed, can only change if the content in the site changes (for example, from recycle bin content naturally expiring or a retention policy deleting content within the site directly from archive to the recycle bin).

The following table shows the pricing for Microsoft 365 Archive.

|Service|What's counted?|What's billed? (USD)|
|:----|:--------------|:-------------|
|Microsoft 365 Archive (Preview)  |Monthly site archive is calculated as the sum (in gigabytes) of the usage of all currently archived sites.<br>Site reactivation is charged based on the site storage usage (in gigabytes) of the site being restored. |$0.05/GB/month<br><br>$0.60/GB|

<!---
Microsoft 365 Archive storage consumption is charged at a per-GB monthly rate and site reactivation at a per-GB rate. The Microsoft 365 Archive storage usage is only charged when archived storage plus active SharePoint storage exceeds the tenant’s included or licensed allocated SharePoint storage quota. For more information about storage limits, see [SharePoint limits](https://learn.microsoft.com/en-us/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits).

When included or licensed storage quota is exceeded, Microsoft 365 Archive is charged for monthly archive usage and reactivations of archived sites back to the active state.

Monthly archive usage is calculated as the sum of the usage of all currently archived sites.  Each site’s usage is equal to the site storage usage of that site, which can be seen on the site itself or from the **Active sites** page in the SharePoint admin center. The size of an archived site, and the storage it's billed for, only changes if the content on the site changes (for example, from recycle bin content naturally expiring).

Reactivations are charged based on the Site Storage usage of the site being restored, charged per GB upon the successful reactivation of the site. 
--->
<!--- To see the pricing for Microsoft 365 Archive, see [Pay-as-you-go services and pricing for Microsoft Syntex](../syntex-pay-as-you-go-services.md).--->

<br>

> [!div class="nextstepaction"]
> [Back to overview](archive-overview.md)