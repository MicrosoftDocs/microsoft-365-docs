---
title: "Restrict SharePoint site content to a geo location"
ms.reviewer: anfra
ms.date: 09/26/2024
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.collection: Strat_SP_gtc
ms.localizationpriority: medium
description: In this article, learn how to restrict SharePoint sites to a specified geo location in a multi-geo environment.
---

# Restrict SharePoint site content to a geo location

Under certain circumstances you may choose to enforce a site and its file content to remain in the _Geography_ location where the site was created, either by preventing the site from being moved or by preventing the caching of the site's file content in another _Geography_ location.

You can do this task by using the [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) cmdlet with the **RestrictedToGeo** parameter. This parameter has a default value of NULL, but you can change it to one of the following restrictions:

|Restriction|Description|
|:----------|:----------|
|NoRestriction|The site can be moved to another _Geography_ location.|
|BlockMoveOnly|Site can't be moved to another _Geography_ location, but site content can be cached in other _Geography_ locations.|
|BlockFull|Site can't be moved to another _Geography_ location, and full file content isn't cached in other _Geography_ locations. Files' title (harvested from the content), file name, and other properties of the file can still be cached in other _Geography_ locations.<br>Content stored in the site before it was configured to BlockFull, may continue to be cached in other _Geography_ locations.|

Use the following syntax:

```powershell
Set-SPOSite -Identity <siteURL> -RestrictedToGeo <restriction>
```

For example:

```powershell
Set-SPOSite -Identity https://contoso.sharepoint.com/sites/RegionRestrictedTeamSite -RestrictedToGeo BlockFull
```
