---
title: "Restrict SharePoint site content to a geo location"
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
ms.collection: Strat_SP_gtc
localization_priority: Normal
description: In this article, learn how to restrict SharePoint sites to a specified geo location in a multi-geo environment.
---

# Restrict SharePoint site content to a geo location

Under some circumstances you may choose to enforce a site and its file content to remain in the geo location where the site was created, either by preventing the site from being moved or by preventing the caching of the site's file content in another geo location.

You can do this by using the [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) cmdlet with the **RestrictedToGeo** parameter. This parameter has a default value of NULL, but you can change it to one of the following:

|Restriction|Description|
|:----------|:----------|
|NoRestriction|The site can be moved to another geo location.|
|BlockMoveOnly|Site cannot be moved to another geo location, but site content can be cached in other geo locations.|
|BlockFull|Site cannot be moved to another geo location, and full file content is not cached in other geo locations. Files' title (harvested from the content), file name, and other properties of the file can still be cached in other geo-locations.<br>Content stored in the site before it was configured to BlockFull, may continue to be cached in other geo locations.|

Use the following syntax:

`Set-SPOSite -Identity <siteURL> -RestrictedToGeo <restriction>`

For example:

`Set-SPOSite -Identity https://contoso.sharepoint.com/sites/RegionRestrictedTeamSite -RestrictedToGeo BlockFull`